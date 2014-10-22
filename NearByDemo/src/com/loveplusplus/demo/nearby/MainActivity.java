package com.loveplusplus.demo.nearby;

import java.util.HashMap;
import java.util.Map;

import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;

import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.android.volley.toolbox.Volley;
import com.baidu.location.BDLocation;
import com.baidu.location.BDLocationListener;
import com.baidu.location.GeofenceClient;
import com.baidu.location.LocationClient;
import com.baidu.location.LocationClientOption;
import com.baidu.location.LocationClientOption.LocationMode;
import com.loveplusplus.demo.nearby.message.NearbyInfoResponse;
import com.loveplusplus.demo.nearby.util.PhoneUtil;

public class MainActivity extends ListActivity {

	protected static final String TAG = "MainActivity";
	private RequestQueue reqQueue;
	private ImageLoader imageLoader;
	public static final String BASE_URL = "http://192.168.0.9:8080/NearbyServerDemo";
	public static LocationClient mLocationClient;
	public GeofenceClient mGeofenceClient;
	private MyLocationListener mMyLocationListener;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		boolean first = getSharedPreferences("userinfo", Context.MODE_PRIVATE).getBoolean("first", false);

		if (!first) {
			Intent intent = new Intent(this, LoginActivity.class);
			startActivity(intent);
		}

		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		reqQueue = Volley.newRequestQueue(this);
		imageLoader = new ImageLoader(reqQueue, new BitmapLruCache());
		
		
		//百度地图定位
		mLocationClient = new LocationClient(getApplicationContext());//是否有问题？？
		mMyLocationListener = new MyLocationListener();
		mLocationClient.registerLocationListener(mMyLocationListener);
		
		
		LocationClientOption option = new LocationClientOption();
		option.setLocationMode(LocationMode.Hight_Accuracy);// 设置定位模式
		option.setCoorType("bd09ll");// 返回的定位结果是百度经纬度，默认值gcj02
		option.setIsNeedAddress(true);// 返回的定位结果包含地址信息
		option.setNeedDeviceDirect(true);// 返回的定位结果包含手机机头的方向
		mLocationClient.setLocOption(option);

	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.main, menu);
		return super.onCreateOptionsMenu(menu);
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		switch (item.getItemId()) {
		case R.id.action_settings:
			//getLocation(this);
			getLoc();
			return true;
		default:
			return super.onOptionsItemSelected(item);
		}

	}

	private void requestServer(Map<String, String> map) {

		GsonRequest<NearbyInfoResponse> jr = new GsonRequest<NearbyInfoResponse>(MainActivity.BASE_URL+"/api/list", NearbyInfoResponse.class, map,
				new Response.Listener<NearbyInfoResponse>() {

					@Override
					public void onResponse(NearbyInfoResponse response) {
						Log.d(TAG, response.toString());

						MyListAdapter adapter = new MyListAdapter(MainActivity.this, response.getList(), imageLoader);
						setListAdapter(adapter);

					}
				}, new Response.ErrorListener() {

					@Override
					public void onErrorResponse(VolleyError error) {
						Log.d(TAG, error.toString());
					}
				});

		reqQueue.add(jr);
	}
	
	public void getLoc(){
		// 开始定位
		mLocationClient.start();
		if (mLocationClient != null && mLocationClient.isStarted()) {
			mLocationClient.requestLocation();
			Log.d(TAG, "locClient is started");
		} else {
			Log.d(TAG, "locClient is null or not started");
		}
	}

	// Get the Location by GPS or WIFI
	public void getLocation(Context context) {
		LocationManager locationManager = (LocationManager) this.getSystemService(Context.LOCATION_SERVICE);
		// 设置Criteria的信息
		Criteria criteria = new Criteria();
		// 经度要求
		criteria.setAccuracy(Criteria.ACCURACY_FINE);
		criteria.setAltitudeRequired(false);
		criteria.setBearingRequired(false);
		criteria.setCostAllowed(false);
		criteria.setPowerRequirement(Criteria.POWER_LOW);
		// 根据设置的Criteria对象，获取最符合此标准的provider对象
		// 取得效果做好的criteria
		String currentProvider = locationManager.getBestProvider(criteria, true);
		Log.d(TAG, "currentProvider: " + currentProvider);
		// 根据当前provider对象获取最后一次位置信息
		Location currentLocation = locationManager.getLastKnownLocation(currentProvider);
		if (currentLocation == null) {
			locationManager.requestLocationUpdates(currentProvider, 0, 0, new getGpsLocationListner());
		}
		// 直到获得最后一次位置信息为止，如果未获得最后一次位置信息，则显示默认经纬度
		// 每隔10秒获取一次位置信息
		while (true) {
			currentLocation = locationManager.getLastKnownLocation(currentProvider);
			if (currentLocation != null) {
				Log.d(TAG, "Latitude: " + currentLocation.getLatitude());
				Log.d(TAG, "location: " + currentLocation.getLongitude());
				Map<String, String> map = new HashMap<String, String>();
				map.put("latitude", String.valueOf(currentLocation.getLatitude()));
				map.put("longitude", String.valueOf(currentLocation.getLongitude()));
				map.put("user_id", PhoneUtil.getImei(MainActivity.this));
				requestServer(map);
				break;
			} else {
				Log.d(TAG, "Latitude: " + 0);
				Log.d(TAG, "location: " + 0);
			}
			try {
				Thread.sleep(10000);
			} catch (InterruptedException e) {
				Log.e(TAG, e.getMessage());
			}
		}
	}
	
	public class MyLocationListener implements BDLocationListener {

		@Override
		public void onReceiveLocation(BDLocation location) {
			//Receive Location 
			StringBuffer sb = new StringBuffer(256);
			sb.append("\nlatitude : ");
			sb.append(location.getLatitude());
			sb.append("\nlontitude : ");
			sb.append(location.getLongitude());
			Log.d(TAG, "Latitude: " + location.getLatitude());
			Log.d(TAG, "location: " + location.getLongitude());
			Map<String, String> map = new HashMap<String, String>();
			map.put("latitude", String.valueOf(location.getLatitude()));
			map.put("longitude", String.valueOf(location.getLongitude()));
			map.put("user_id", PhoneUtil.getImei(MainActivity.this));
			requestServer(map);
			Log.i(TAG, sb.toString());
		}

		@Override
		public void onReceivePoi(BDLocation arg0) {
			
		}
	}

	private class getGpsLocationListner implements LocationListener {
		@Override
		public void onLocationChanged(Location location) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("latitude", String.valueOf(location.getLatitude()));
			map.put("longitude", String.valueOf(location.getLongitude()));
			map.put("user_id", PhoneUtil.getImei(MainActivity.this));

			requestServer(map);

		}

		public void onProviderDisabled(String provider) {
		}

		public void onProviderEnabled(String provider) {
		}

		public void onStatusChanged(String provider, int status, Bundle extras) {
		}
	}

	@Override
	protected void onStop() {
		super.onStop();
		reqQueue.cancelAll(this);
	}
}
