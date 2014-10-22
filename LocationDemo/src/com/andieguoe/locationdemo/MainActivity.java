package com.andieguoe.locationdemo;
import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main); 
		
	}
	public void telephonyLocation(View v){
		Intent intent = new Intent(MainActivity.this,TelephonyActivity.class);
		startActivity(intent);
	}
	public void gpsLocation(View v){
		Intent intent = new Intent(MainActivity.this,GpsActivity.class);
		startActivity(intent);
	}
	
	public void networkLocation(View v) {
		Intent intent = new Intent(MainActivity.this,NetWorkActivity.class);
		startActivity(intent);
	}

	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

}
