package com.sofia.propertysample;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends Activity {

    // Used to load the 'native-lib' library on application startup.
    static {
        System.loadLibrary("native-lib");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button bOn = (Button) findViewById(R.id.buttonOn);
        Button bOff = (Button) findViewById(R.id.buttonOff);

        bOn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                enableProp();
            }
        });

        bOff.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                disableProp();
            }
        });

    }

    /**
     * A native method that is implemented by the 'native-lib' native library,
     * which is packaged with this application.
     */
    public native void enableProp();
    public native void disableProp();

}
