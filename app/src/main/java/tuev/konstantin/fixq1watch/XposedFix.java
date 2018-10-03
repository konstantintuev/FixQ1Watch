package tuev.konstantin.fixq1watch;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.AndroidAppHelper;
import android.app.Dialog;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.appwidget.AppWidgetManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.RemoteViews;
import android.widget.TextView;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.regex.Pattern;

import de.robv.android.xposed.IXposedHookInitPackageResources;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.IXposedHookZygoteInit;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XC_MethodReplacement;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.callbacks.XC_InitPackageResources;
import de.robv.android.xposed.callbacks.XC_LayoutInflated;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

import static de.robv.android.xposed.XposedHelpers.callMethod;
import static de.robv.android.xposed.XposedHelpers.findAndHookMethod;
import static de.robv.android.xposed.XposedHelpers.newInstance;

public class XposedFix implements IXposedHookLoadPackage, IXposedHookInitPackageResources {
    public static String trackName = "Track Name";
    public static String artistName = "Artist Name";
    public static boolean isPlaying = true;
    private int[] iArr;
    private float downX;
    private float downY;
    private Rect titleRest = new Rect(0, 0, 320, 20);
    private boolean isDownInTitleRestDown;


    @Override
    public void handleInitPackageResources(XC_InitPackageResources.InitPackageResourcesParam resparam) throws Throwable {
        if (!resparam.packageName.equals("com.android.music"))
            return;

        resparam.res.hookLayout("com.android.music", "layout", "album_appwidget", new XC_LayoutInflated() {
            @Override
            public void handleLayoutInflated(LayoutInflatedParam liparam) throws Throwable {
                int dip45 = convertDipToPixels(55);
                int dip55 = convertDipToPixels(70);

                int dip65 = convertDipToPixels(85);
                int dip50 = convertDipToPixels(70);

                View prev = liparam.view.findViewById(
                        liparam.res.getIdentifier("control_prev", "id", "com.android.music"));
                RelativeLayout.LayoutParams prev_pa = (RelativeLayout.LayoutParams) prev.getLayoutParams();
                prev_pa.height = dip50;
                prev_pa.width = dip45;
                prev.setLayoutParams(prev_pa);

                View next = liparam.view.findViewById(
                        liparam.res.getIdentifier("control_next", "id", "com.android.music"));
                RelativeLayout.LayoutParams next_params = (RelativeLayout.LayoutParams) next.getLayoutParams();
                next_params.height = dip50;
                next_params.width = dip45;
                next.setLayoutParams(next_params);

                View volue_up = liparam.view.findViewById(
                        liparam.res.getIdentifier("volue_up", "id", "com.android.music"));
                RelativeLayout.LayoutParams volue_up_p = (RelativeLayout.LayoutParams) volue_up.getLayoutParams();
                volue_up_p.height = dip50;
                volue_up_p.width = dip45;
                volue_up_p.topMargin = 5;
                volue_up.setLayoutParams(volue_up_p);

                View volue_down = liparam.view.findViewById(
                        liparam.res.getIdentifier("volue_down", "id", "com.android.music"));
                RelativeLayout.LayoutParams volue_down_p = (RelativeLayout.LayoutParams) volue_down.getLayoutParams();
                volue_down_p.height = dip50;
                volue_down_p.width = dip45;
                volue_down_p.bottomMargin = 5;
                volue_down.setLayoutParams(volue_down_p);

                View control_play = liparam.view.findViewById(
                        liparam.res.getIdentifier("control_play", "id", "com.android.music"));
                RelativeLayout.LayoutParams control_play_p = (RelativeLayout.LayoutParams) control_play.getLayoutParams();
                control_play_p.height = dip65;
                control_play_p.width = dip55;
                control_play.setLayoutParams(control_play_p);

                TextView title = liparam.view.findViewById(
                        liparam.res.getIdentifier("title", "id", "com.android.music"));
                //title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 40);
            }
        });
        //XModuleResources modRes = XModuleResources.createInstance(MODULE_PATH, resparam.res);
        //resparam.res.setReplacement("com.android.music", "layout", "album_appwidget", modRes.fwd(R.raw.album_appwidget));
    }

    public static int convertDipToPixels(float dips)
    {
        return (int) (dips * AndroidAppHelper.currentApplication().getResources().getDisplayMetrics().density + 0.5f);
    }

    public static int convertDpToPixel(float dp){
        Resources resources = AndroidAppHelper.currentApplication().getResources();
        DisplayMetrics metrics = resources.getDisplayMetrics();
        return (int) (dp * (metrics.densityDpi / DisplayMetrics.DENSITY_DEFAULT));
    }
    @Override
    public void handleLoadPackage(final XC_LoadPackage.LoadPackageParam lpparam) throws Throwable {
        switch (lpparam.packageName) {
            case "com.android.launcher":
                findAndHookMethod("com.android.launcher2.Launcher", lpparam.classLoader, "showAppsCustomizeHelper", boolean.class, boolean.class, new XC_MethodReplacement() {
                    @Override
                    protected Object replaceHookedMethod(MethodHookParam param) throws Throwable {
                        Context context = AndroidAppHelper.currentApplication();
                        Intent launchIntent = context.getPackageManager().getLaunchIntentForPackage("source.nova.com.bubblelauncherfree");
                        if (launchIntent != null) {
                            context.startActivity(launchIntent);//null pointer check in case package name was not found
                        }
                        return null;
                    }
                });
                findAndHookMethod("com.android.launcher2.DragLayer", lpparam.classLoader,
                        "dispatchTouchEvent", MotionEvent.class, new XC_MethodHook() {
                            @Override
                            protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                                FrameLayout thisOBJ = (FrameLayout) param.thisObject;
                                MotionEvent motionEvent = (MotionEvent) param.args[0];
                                switch (motionEvent.getAction()) {
                                    case 0:
                                        downY = motionEvent.getY();
                                        downX = motionEvent.getX();
                                        if (titleRest.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                                            isDownInTitleRestDown = true;
                                            break;
                                        }
                                        break;
                                    case 1:
                                        if (Math.abs(motionEvent.getX() - downX) < 100.0f) {
                                            float y = motionEvent.getY();
                                            if (y - downY > 10.0f) {
                                                if (isDownInTitleRestDown) {
                                                    isDownInTitleRestDown = false;
                                                    break;
                                                }
                                            }
                                            if (!isDownInTitleRestDown && motionEvent.getY() - downY > ((float) 100)) {
                                                final Pair<Integer, ListView> lv = Classes.getClassTimetables(thisOBJ.getContext());
                                                long diffMins = -1;
                                                if (lv.first >= 0) {
                                                    String end = Classes.classTimetables[lv.first].end;

                                                    Date time2 = null;
                                                    try {
                                                        time2 = new SimpleDateFormat("HH.mm", Locale.GERMANY).parse(end);
                                                    } catch (ParseException e) {
                                                        e.printStackTrace();
                                                    }
                                                    Calendar calendar2 = Calendar.getInstance();
                                                    calendar2.setTime(time2);
                                                    calendar2.set(10, 5, 5);

                                                    Calendar calendar3 = Calendar.getInstance();
                                                    calendar3.set(10, 5, 5);

                                                    diffMins = (calendar2.getTime().getTime() - calendar3.getTime().getTime()) / (1000 * 60);
                                                    diffMins++;
                                                }


                                                final AlertDialog alertDialog = new AlertDialog.Builder(thisOBJ.getContext())
                                                        .setTitle((diffMins > 0) ? "Left "+diffMins+" min"+ (diffMins == 1 ? "" : "s") : "Class Timetable")
                                                        .setView(lv.second)
                                                        .setPositiveButton("OK", new DialogInterface.OnClickListener() {
                                                            @Override
                                                            public void onClick(DialogInterface dialog, int which) {

                                                            }
                                                        })
                                                        .create();
                                                if (lv.first >= 0) {
                                                    alertDialog.setOnShowListener(new DialogInterface.OnShowListener() {
                                                        @Override
                                                        public void onShow(DialogInterface dialog) {
                                                            lv.second.smoothScrollToPosition(lv.first);
                                                        }
                                                    });
                                                }
                                                lv.second.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                                                    @Override
                                                    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                                                        alertDialog.cancel();
                                                    }
                                                });
                                                alertDialog.show();
                                            }
                                        }
                                        break;
                                }
                            }
                        });

                break;
            case "com.android.BluetoothSocketTest":
                findAndHookMethod("android.app.NotificationManager", lpparam.classLoader, "notify", String.class, int.class, Notification.class, new XC_MethodHook() {
                            @Override
                            protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                                System.out.println("NotificationManager.beforeHookedMethod(): param=" + param);
                                Notification n = (Notification) param.args[2];
                                System.out.println("NotificationManager.beforeHookedMethod(): notification=" + n);
                                if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.KITKAT) {
                                    String title = n.extras.getCharSequence(Notification.EXTRA_TITLE).toString();
                                    String text = n.extras.getCharSequence(Notification.EXTRA_TEXT).toString();
                                    System.out.println("NotificationManager.beforeHookedMethod(): notification=title" + title + " text=" + text);
                                    XposedBridge.log("NotificationManager.beforeHookedMethod(): notification=title" + title + " text=" + text);
                                    if (title.contains("spotify") || text.contains("spotify")) {
                                        param.setResult(null);
                                    }
                                }
                            }
                        }
                );
                findAndHookMethod("com.android.BluetoothSocketTest.NotifyService", lpparam.classLoader,
                        "onCreate", new XC_MethodHook() {
                            @Override
                            protected void beforeHookedMethod(MethodHookParam param) throws Throwable {

                            }

                            @Override
                            protected void afterHookedMethod(final MethodHookParam param) throws Throwable {
                                System.out.println("afterHookedMethod onCreate");
                                ((Service)param.thisObject).getApplicationContext().registerReceiver(
                                        new BroadcastReceiver() {
                                            @Override
                                            public void onReceive(Context context, Intent intent) {
                                                System.out.println("afterHookedMethod onCreate: onReceive");
                                                if (intent != null) {
                                                    Bundle extras = intent.getExtras();
                                                    if (extras != null) {
                                                        try {
                                                            Class clazz = lpparam.classLoader.loadClass("com.android.BluetoothSocketTest.MyMessage");
                                                            System.out.println("afterHookedMethod Music Receiver clazz: "+clazz.getName());
                                                            final Object myMessage1 = newInstance(clazz, new byte[]{1, 0}, "Spotify", extras.getString("action", "empty"), 32324, 4112);
                                                            callMethod(param.thisObject, "b", myMessage1);
                                                            System.out.println("afterHookedMethod Music Receiver Xposed: action="+extras.getString("action", "empty"));
                                                        } catch (ClassNotFoundException e) {
                                                            e.printStackTrace();
                                                        }
                                                    }
                                                }
                                            }
                                        }, new IntentFilter("tuev.konstantin.fixq1watch.music")
                                );
                            }
                        });
                findAndHookMethod("com.android.BluetoothSocketTest.NotifyService", lpparam.classLoader,
                        "a", int.class, String.class, String.class, int.class, Bitmap.class, new XC_MethodHook() {
                            @SuppressLint("ResourceType")
                            @Override
                            protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                                System.out.println("a.beforeHookedMethod(): param=" + param);
                                String pkg = (String) param.args[1];
                                String text = (String) param.args[2];
                                Service context = (Service) param.thisObject;
                                System.out.println("NotificationManager.beforeHookedMethod(): pkg=" + pkg+"&text="+text);
                                if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.KITKAT) {
                                    if (pkg.contains("spotify") || text.contains("spotify")) {
                                        artistName = "";
                                        try {
                                            File data = new File(Environment.getExternalStorageDirectory(), "Music");
                                            if (!data.exists()) {
                                                data.mkdir();
                                            }
                                            data = new File(data, "data.txt");
                                            String ids = "";
                                            if (data.exists()) {
                                                InputStream fis = new FileInputStream(data);
                                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fis));
                                                StringBuilder stringBuilder = new StringBuilder();

                                                String receiveString;
                                                while ((receiveString = bufferedReader.readLine()) != null) {
                                                    stringBuilder.append(receiveString);
                                                }

                                                fis.close();
                                                String out = stringBuilder.toString();
                                                //ids#-trackName#-artistName#-isPlaying
                                                String[] split = out.split(Pattern.quote("#-"));
                                                ids = split[0];
                                                trackName = split[1];
                                                artistName = split[2];
                                                isPlaying = Boolean.parseBoolean(split[3]);
                                                data.delete();
                                            }
                                            if (ids.isEmpty()) {
                                                return;
                                            }
                                            String action = text.split(Pattern.quote("/-"))[1];
                                            switch (action) {
                                                case "play":
                                                    isPlaying = true;
                                                    break;
                                                case "pause":
                                                    isPlaying = false;
                                                    break;
                                            }
                                            if (action.startsWith("name")) {
                                                String[] split = action.split(Pattern.quote("#-"));
                                                trackName = split[1];
                                                artistName = split[2];
                                            }
                                            System.out.println("MainActivity Real Write: trackName: " + trackName);

                                            System.out.println("MainActivity Real Write: artistName: " + artistName);

                                            System.out.println("MainActivity Real Write: isPlaying: " + isPlaying);

                                            data.createNewFile();
                                            OutputStream outputStream = new FileOutputStream(data);
                                            String toWrite = ids + "#-" + trackName + "#-" + artistName + "#-" + isPlaying;
                                            outputStream.write(toWrite.getBytes());
                                            outputStream.flush();
                                            outputStream.close();
                                            String exec = "am broadcast " +
                                                    "-a "+AppWidgetManager.ACTION_APPWIDGET_UPDATE+" " +
                                                    "-n com.android.music/.MediaAppWidgetProvider "+
                                                    "--eia "+AppWidgetManager.EXTRA_APPWIDGET_IDS+" " + ids;
                                            System.out.println("idsRaw: "+ids + " exec: "+exec);
                                            try {
                                                Process p = Runtime.getRuntime().exec("su");
                                                DataOutputStream dos = new DataOutputStream(p.getOutputStream());
                                                dos.writeBytes(exec + "\n");
                                                dos.writeBytes("exit\n");
                                                dos.flush();
                                                dos.close();
                                                p.waitFor();
                                            } catch (Exception ex) {
                                                ex.printStackTrace();
                                            }
                                        } catch (Exception ex) {
                                            ex.printStackTrace();
                                        }
                                        final Dialog out = new Dialog(context);
                                        View view = new View(context);
                                        view.setId(2435);
                                        out.setContentView(view);
                                        param.setResult(out);
                                    }
                                }
                            }
                        });
                findAndHookMethod("android.app.Dialog", lpparam.classLoader,
                        "show", new XC_MethodHook() {
                            @SuppressLint("ResourceType")
                            @Override
                            protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                                Dialog th = (Dialog) param.thisObject;
                                if (th.findViewById(2435) != null) {
                                    param.setResult(null);
                                }
                            }
                        });
                break;
            case "com.android.music":
                findAndHookMethod("com.android.music.MediaAppWidgetProvider", lpparam.classLoader,
                        "performUpdate",
                        "com.android.music.MediaPlaybackService", int[].class, new XC_MethodReplacement() {
                            @Override
                            protected Object replaceHookedMethod(MethodHookParam param) throws Throwable {
                                return null;
                            }
                        });
                findAndHookMethod("com.android.music.MediaAppWidgetProvider", lpparam.classLoader,
                        "pushUpdate",
                        Context.class, int[].class, RemoteViews.class, new XC_MethodReplacement() {
                            @Override
                            protected Object replaceHookedMethod(MethodHookParam param) throws Throwable {
                                return null;
                            }
                        });
                findAndHookMethod("com.android.music.MediaAppWidgetProvider", lpparam.classLoader,
                        "onUpdate",
                        Context.class, AppWidgetManager.class, int[].class, new XC_MethodReplacement() {
                            @SuppressLint("ResourceType")
                            @Override
                            protected Object replaceHookedMethod(MethodHookParam param) throws Throwable {
                                Context context = AndroidAppHelper.currentApplication().getApplicationContext();
                                AppWidgetManager manager = (AppWidgetManager) param.args[1];
                                Resources resources = context.getResources();
                                RemoteViews remoteViews = new RemoteViews(context.getPackageName(), 2130903040);
                                remoteViews.setViewVisibility(2131558409, 8);
                                remoteViews.setImageViewResource(2131558402, 2130837590);
                                remoteViews.setTextViewText(2131558408, resources.getText(2131230837));
                                Intent localIntent = new Intent("tuev.konstantin.fixq1watch.music");
                                localIntent.putExtra("action", "open-spotify");
                                remoteViews.setOnClickPendingIntent(2131558407, PendingIntent.getBroadcast(context, 24, localIntent, 0));
                                localIntent = new Intent("tuev.konstantin.fixq1watch.music");
                                localIntent.putExtra("action", "togglepause");
                                remoteViews.setOnClickPendingIntent(2131558402, PendingIntent.getBroadcast(context, 435, localIntent, 0));
                                localIntent = new Intent("tuev.konstantin.fixq1watch.music");
                                localIntent.putExtra("action", "next");
                                remoteViews.setOnClickPendingIntent(2131558404, PendingIntent.getBroadcast(context, 32, localIntent, 0));
                                localIntent = new Intent("tuev.konstantin.fixq1watch.music");
                                localIntent.putExtra("action", "previous");
                                remoteViews.setOnClickPendingIntent(2131558401, PendingIntent.getBroadcast(context, 64, localIntent, 0));
                                localIntent = new Intent("tuev.konstantin.fixq1watch.music");
                                localIntent.putExtra("action", "volume-down");
                                remoteViews.setOnClickPendingIntent(2131558406, PendingIntent.getBroadcast(context, 23, localIntent, 0));
                                localIntent = new Intent("tuev.konstantin.fixq1watch.music");
                                localIntent.putExtra("action", "volume-up");
                                remoteViews.setOnClickPendingIntent(2131558405, PendingIntent.getBroadcast(context, 622, localIntent, 0));

                                File data = new File(Environment.getExternalStorageDirectory(), "Music");
                                if (!data.exists()) {
                                    data.mkdir();
                                }
                                data = new File(data, "data.txt");
                                if (data.exists()) {
                                    InputStream fis = new FileInputStream(data);
                                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fis));
                                    StringBuilder stringBuilder = new StringBuilder();

                                    String receiveString;
                                    while ( (receiveString = bufferedReader.readLine()) != null ) {
                                        stringBuilder.append(receiveString);
                                    }

                                    fis.close();
                                    String out = stringBuilder.toString();
                                    //ids#-trackName#-artistName#-isPlaying
                                    String[] split = out.split(Pattern.quote("#-"));
                                    trackName = split[1];
                                    artistName = split[2];
                                    isPlaying = Boolean.parseBoolean(split[3]);
                                    data.delete();
                                }
                                System.out.println("MainActivity: trackName: "+trackName);

                                System.out.println("MainActivity: artistName: "+artistName);

                                System.out.println("MainActivity: isPlaying: "+isPlaying);

                                if (iArr == null) {
                                    final Class clazz = lpparam.classLoader.loadClass("com.android.music.MediaAppWidgetProvider");
                                    iArr = manager.getAppWidgetIds(new ComponentName(context, clazz));
                                }

                                StringBuilder out = new StringBuilder();
                                for (int i : iArr) {
                                    out.append(i).append(",");
                                }
                                out = new StringBuilder(out.substring(0, out.length() - 1));
                                data.createNewFile();
                                OutputStream outputStream = new FileOutputStream(data);
                                String toWrite = out.toString()+"#-"+trackName+"#-"+artistName+"#-"+isPlaying;
                                outputStream.write(toWrite.getBytes());
                                outputStream.flush();
                                outputStream.close();

                                remoteViews.setTextViewText(2131558408, artistName);
                                remoteViews.setTextViewText(2131558409, trackName);
                                remoteViews.setViewVisibility(2131558409, View.VISIBLE);

                                if (isPlaying) {
                                    remoteViews.setImageViewResource(2131558402, 2130837589);
                                } else {
                                    remoteViews.setImageViewResource(2131558402, 2130837590);
                                }
                                System.out.println("On Update: track: "+trackName
                                        +" artist: "+artistName+
                                        "isPlaying: "+isPlaying);
                                manager.updateAppWidget(iArr, remoteViews);
                                return null;
                            }
                        });
                break;
        }
    }
}
