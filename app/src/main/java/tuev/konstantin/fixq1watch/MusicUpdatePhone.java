package tuev.konstantin.fixq1watch;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

public class MusicUpdatePhone extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                String action = extras.getString("tickerText", "empty");
                System.out.println("Music Receiver: label="+extras.getString("label", "empty")+"&tickerText="+action);
                if (!action.startsWith("volume") && !action.equals("open-spotify")) {
                    Intent i = new Intent("com.android.music.musicservicecommand");
                    i.putExtra("command", action);
                    context.sendBroadcast(i);
                }
            }
        }
    }
}
