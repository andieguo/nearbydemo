package com.andieguoe.locationdemo;

import java.io.IOException;
import java.util.List;

import android.app.Activity;
import android.location.Address;
import android.location.Criteria;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

public class NetWorkActivity extends Activity {
	private static final String TAG = "NetWorkActivity";
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.network);
		// 获取到LocationManager对象
		LocationManager locationManager = (LocationManager) getSystemService(LOCATION_SERVICE);
		// 创建一个Criteria对象
		Criteria criteria = new Criteria();
		// 设置粗略精确度
		criteria.setAccuracy(Criteria.ACCURACY_FINE);
		// 设置是否需要返回海拔信息
		criteria.setAltitudeRequired(false);
		// 设置是否需要返回方位信息
		criteria.setBearingRequired(false);
		// 设置是否允许付费服务
		criteria.setCostAllowed(true);
		// 设置电量消耗等级
		criteria.setPowerRequirement(Criteria.POWER_HIGH);
		// 设置是否需要返回速度信息
		criteria.setSpeedRequired(false);

		// 根据设置的Criteria对象，获取最符合此标准的provider对象
		String currentProvider = locationManager.getBestProvider(criteria, true);
		Log.d(TAG, "currentProvider: " + currentProvider);
		// 根据当前provider对象获取最后一次位置信息
		Location currentLocation = locationManager.getLastKnownLocation(currentProvider);
		// 如果位置信息为null，则请求更新位置信息
		if (currentLocation == null) {
			locationManager.requestLocationUpdates(currentProvider, 0, 0, locationListener);
		}
		// 直到获得最后一次位置信息为止，如果未获得最后一次位置信息，则显示默认经纬度
		// 每隔10秒获取一次位置信息
		while (true) {
			currentLocation = locationManager.getLastKnownLocation(currentProvider);
			if (currentLocation != null) {
				Log.d(TAG, "Latitude: " + currentLocation.getLatitude());
				Log.d(TAG, "location: " + currentLocation.getLongitude());
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

		// 解析地址并显示
		Geocoder geoCoder = new Geocoder(this);
		try {
			int latitude = (int) currentLocation.getLatitude();
			int longitude = (int) currentLocation.getLongitude();
			List<Address> list = geoCoder.getFromLocation(latitude, longitude, 2);
			for (int i = 0; i < list.size(); i++) {
				Address address = list.get(i);
				Toast.makeText(NetWorkActivity.this, address.getCountryName() + address.getAdminArea()+address.getSubLocality()+ address.getFeatureName(), Toast.LENGTH_LONG).show();
			}
		} catch (IOException e) {
			Toast.makeText(NetWorkActivity.this, e.getMessage(), Toast.LENGTH_LONG).show();
		}
	}
	// 创建位置监听器
		private LocationListener locationListener = new LocationListener() {
			// 位置发生改变时调用
			@Override
			public void onLocationChanged(Location location) {
				Log.d(TAG, "onLocationChanged");
				Log.d(TAG, "onLocationChanged Latitude" + location.getLatitude());
				Log.d(TAG, "onLocationChanged location" + location.getLongitude());
			}

			// provider失效时调用
			@Override
			public void onProviderDisabled(String provider) {
				Log.d(TAG, "onProviderDisabled");
			}

			// provider启用时调用
			@Override
			public void onProviderEnabled(String provider) {
				Log.d(TAG, "onProviderEnabled");
			}

			// 状态改变时调用
			@Override
			public void onStatusChanged(String provider, int status, Bundle extras) {
				Log.d(TAG, "onStatusChanged");
			}
		};

	
}
