package tuev.konstantin.fixq1watch;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;

import java.util.Random;

import static android.content.Context.MODE_PRIVATE;

public class MusicUpdate extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                System.out.println("Music Receiver: action="+extras.getString("action", "empty"));
                if (extras.containsKey("ids")) {
                    SharedPreferences manager = context.getSharedPreferences("main_prefs", Context.MODE_WORLD_WRITEABLE);
                    StringBuilder out = new StringBuilder();
                    for (int i : extras.getIntArray("ids")) {
                        out.append(i).append(",");
                    }
                    out = new StringBuilder(out.substring(0, out.length() - 1));
                    manager.edit().putString("ids", out.toString()).apply();
                }
            }
        }
        Intent intent1 = new Intent("tuev.konstantin.fixq1watch.music.update-state");
        intent1.putExtra("title", "Set The Title "+ new Random().nextInt());
        intent1.putExtra("playing", true);
        context.sendBroadcast(intent1);
    }
}
