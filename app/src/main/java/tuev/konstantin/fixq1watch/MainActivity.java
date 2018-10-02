package tuev.konstantin.fixq1watch;

import android.app.AlertDialog;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MotionEvent;

public class MainActivity extends AppCompatActivity {

    private float downY;
    private float downX;
    private Rect titleRest = new Rect(0, 0, 320, 20);
    private boolean isDownInTitleRestUp;
    private boolean isDownInTitleRestDown;

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
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
                    if (y - this.downY > 10.0f) {
                        if (this.isDownInTitleRestDown) {
                            new AlertDialog.Builder(this)
                                    .setTitle("UP status")
                                    .show();
                            this.isDownInTitleRestDown = false;
                            break;
                        }
                    }
                    if (!isDownInTitleRestDown && motionEvent.getY() - downY > ((float) 100)) {
                        new AlertDialog.Builder(this)
                                .setTitle("UP")
                                .show();
                    }
                }
                break;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        System.out.println("Build.BRAND: "+Build.BRAND);
        if (!Build.BRAND.equals("w602")) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                startForegroundService(new Intent(this, BroadcastListenerService.class));
            } else {
                startService(new Intent(this, BroadcastListenerService.class));
            }
        }
    }


}
