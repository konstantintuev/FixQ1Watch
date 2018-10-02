package tuev.konstantin.fixq1watch;

import android.app.AndroidAppHelper;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.SystemClock;
import android.support.annotation.Nullable;
import android.view.KeyEvent;

public class BroadcastListenerService extends Service {
    BroadcastReceiver receiver;
    BroadcastReceiver spotifyReceiver;
    String lastArtistName = "";
    String lastTrackName = "";
    boolean wasPlaying = false;
    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {
        Intent launchIntent = getPackageManager().getLaunchIntentForPackage("com.spotify.music");
        if (launchIntent == null) {
            launchIntent = new Intent(this, MainActivity.class);
        }
        final NotificationManager manager = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
            NotificationChannel channel = new NotificationChannel("service", "Service", NotificationManager.IMPORTANCE_LOW);
            NotificationChannel channelSpotify = new NotificationChannel("spotify", "Spotify", NotificationManager.IMPORTANCE_LOW);
            if (manager != null) {
                if (manager.getNotificationChannel("service") == null) {
                    manager.createNotificationChannel(channel);
                }
                if (manager.getNotificationChannel("spotify") == null) {
                    manager.createNotificationChannel(channelSpotify);
                }
            }
        }
        PendingIntent pi = PendingIntent.getActivity(this, 2423, launchIntent, 0);
        Notification notification = null;
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
            notification = new Notification.Builder(this,"service")
                    .setContentTitle("Controlling Spotify")
                    .setContentIntent(pi)
                    .build();
        } else {
            notification = new Notification.Builder(this)
                    .setContentTitle("Controlling Spotify")
                    .setContentIntent(pi)
                    .build();
        }
        final AudioManager audioManager = (AudioManager) getApplicationContext().getSystemService(Context.AUDIO_SERVICE);

        startForeground(2423, notification);
        receiver = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                if (intent != null) {
                    Bundle extras = intent.getExtras();
                    if (extras != null) {
                        String action = extras.getString("tickerText", "empty");
                        System.out.println("Music Receiver: label="+extras.getString("label", "empty")+"&tickerText="+action);
                        long eventtime = SystemClock.uptimeMillis();
                        switch (action) {
                            case "togglepause":

                                Intent downIntent = new Intent(Intent.ACTION_MEDIA_BUTTON, null);
                                downIntent.setPackage("com.spotify.music");
                                KeyEvent downEvent = new KeyEvent(eventtime, eventtime, KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE, 0);
                                downIntent.putExtra(Intent.EXTRA_KEY_EVENT, downEvent);
                                sendOrderedBroadcast(downIntent, null);

                                Intent upIntent = new Intent(Intent.ACTION_MEDIA_BUTTON, null);
                                KeyEvent upEvent = new KeyEvent(eventtime, eventtime, KeyEvent.ACTION_UP, KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE, 0);
                                upIntent.putExtra(Intent.EXTRA_KEY_EVENT, upEvent);
                                upIntent.setPackage("com.spotify.music");
                                sendOrderedBroadcast(upIntent, null);
                                break;
                            case "next": {
                                Intent pauseSpotify = new Intent("com.spotify.mobile.android.ui.widget.NEXT");
                                pauseSpotify.setPackage("com.spotify.music");
                                sendBroadcast(pauseSpotify);

                                /*NEXT
                                Intent downIntent = new Intent(Intent.ACTION_MEDIA_BUTTON, null);
                                KeyEvent downEvent = new KeyEvent(eventtime, eventtime, KeyEvent.ACTION_DOWN,   KeyEvent.KEYCODE_MEDIA_NEXT, 0);
                                downIntent.putExtra(Intent.EXTRA_KEY_EVENT, downEvent);
                                downIntent.setPackage("com.spotify.music");
                                sendOrderedBroadcast(downIntent, null);*/
                                break;
                            }
                            case "previous": {
                                Intent pauseSpotify = new Intent("com.spotify.mobile.android.ui.widget.PREVIOUS");
                                pauseSpotify.setPackage("com.spotify.music");
                                sendBroadcast(pauseSpotify);

                                /*PREVIOUS
                                Intent downIntent = new Intent(Intent.ACTION_MEDIA_BUTTON, null);
                                KeyEvent downEvent = new KeyEvent(eventtime, eventtime, KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_MEDIA_PREVIOUS, 0);
                                downIntent.putExtra(Intent.EXTRA_KEY_EVENT, downEvent);
                                downIntent.setPackage("com.spotify.music");
                                sendOrderedBroadcast(downIntent, null);*/
                                break;
                            }
                            case "volume-up":
                                System.out.println("pre 1 raise");
                                if (audioManager != null) {
                                    System.out.println("pre 2 raise");

                                    audioManager.adjustStreamVolume(AudioManager.STREAM_MUSIC,
                                            AudioManager.ADJUST_RAISE, AudioManager.FLAG_SHOW_UI);
                                    System.out.println("raise");
                                }
                                break;
                            case "volume-down":
                                if (audioManager != null) {
                                    audioManager.adjustStreamVolume(AudioManager.STREAM_MUSIC,
                                            AudioManager.ADJUST_LOWER, AudioManager.FLAG_SHOW_UI);
                                }
                                break;
                            case "open-spotify":
                                Intent launchIntent = context.getPackageManager().getLaunchIntentForPackage("com.spotify.music");
                                if (launchIntent != null) {
                                    context.startActivity(launchIntent);//null pointer check in case package name was not found
                                }
                                break;
                        }
                    }
                }
            }
        };

        registerReceiver(receiver, new IntentFilter("tuev.konstantin.fixq1watchPhone"));

        spotifyReceiver = new BroadcastReceiver() {
            static final String SPOTIFY_PACKAGE = "com.spotify.music";
            static final String PLAYBACK_STATE_CHANGED = SPOTIFY_PACKAGE + ".playbackstatechanged";
            static final String QUEUE_CHANGED = SPOTIFY_PACKAGE + ".queuechanged";
            static final String METADATA_CHANGED = SPOTIFY_PACKAGE + ".metadatachanged";
            @Override
            public void onReceive(Context context, Intent intent) {
                // This is sent with all broadcasts, regardless of type. The value is taken from
                // System.currentTimeMillis(), which you can compare to in order to determine how
                // old the event is.
                long timeSentInMs = intent.getLongExtra("timeSent", 0L);

                String action = intent.getAction();

                if (action.equals(METADATA_CHANGED)) {
                    String artistName = intent.getStringExtra("artist");
                    String trackName = intent.getStringExtra("track");
                    if (!artistName.equals(lastArtistName) && !trackName.equals(lastArtistName)) {
                        lastArtistName = artistName;
                        lastTrackName = trackName;
                        Notification notification1;
                        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
                            notification1 = new Notification.Builder(context, "spotify")
                                    .setContentTitle("spotify")
                                    .setSmallIcon(R.mipmap.ic_launcher_round)
                                    .setContentText("spotify/-name#-"+artistName+"#-"+trackName).build();
                        } else {
                            notification1 = new Notification.Builder(context)
                                    .setContentTitle("spotify")
                                    .setSmallIcon(R.mipmap.ic_launcher_round)
                                    .setContentText("spotify/-name#-"+artistName+"#-"+trackName).build();
                        }
                        manager.notify(32646, notification1);
                    }
                } else if (action.equals(PLAYBACK_STATE_CHANGED)) {
                    boolean playing = intent.getBooleanExtra("playing", false);
                    if (playing != wasPlaying) {
                        wasPlaying = playing;
                        Notification notification1;
                        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
                            notification1 = new Notification.Builder(context, "spotify")
                                    .setContentTitle("spotify")
                                    .setSmallIcon(R.mipmap.ic_launcher_round)
                                    .setContentText("spotify/-"+(wasPlaying ? "play" : "pause")).build();
                        } else {
                            notification1 = new Notification.Builder(context)
                                    .setContentTitle("spotify")
                                    .setSmallIcon(R.mipmap.ic_launcher_round)
                                    .setContentText("spotify/-"+(wasPlaying ? "play" : "pause")).build();
                        }
                        manager.notify(32626, notification1);
                    }

                } else if (action.equals(QUEUE_CHANGED)) {
                    // Sent only as a notification, your app may want to respond accordingly.
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.spotify.music.playbackstatechanged");
        intentFilter.addAction("com.spotify.music.metadatachanged");
        intentFilter.addAction("com.spotify.music.queuechanged");
        registerReceiver(spotifyReceiver, intentFilter);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(receiver);
        unregisterReceiver(spotifyReceiver);
    }
}
