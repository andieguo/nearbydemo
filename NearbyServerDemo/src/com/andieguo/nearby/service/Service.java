package com.andieguo.nearby.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.andieguo.nearby.bean.GPS;
import com.andieguo.nearby.bean.UserInfo;
import com.andieguo.nearby.dao.GpsDao;
import com.andieguo.nearby.dao.UserDao;
import com.andieguo.nearby.message.NearbyInfo;
import com.andieguo.nearby.util.GPSUtil;

public class Service {

	public void saveOrUpdateGPS(GPS gps) throws SQLException {
		GpsDao dao = new GpsDao();
		GPS gpsinfo = dao.findGPS(gps.getUser().getId());
		if (gpsinfo == null) {
			dao.saveGPS(gps);
		} else {
			dao.updateGPS(gps);
		}

	}

	public List<NearbyInfo> findNearByGeoHash(String userId){
		
		return null;
	}
	/**
	 * 内部使用GeoHash区域查询，并对查询到的区域用户进行测距
	 * @param userId
	 * @param longitude
	 * @param latitude
	 * @return
	 * @throws SQLException
	 */
	public List<NearbyInfo> findList(String userId, String longitude,
			String latitude) throws SQLException {
		GpsDao dao = new GpsDao();

		List<NearbyInfo> list = new ArrayList<NearbyInfo>();

		for (NearbyInfo info : dao.findGPSListByGeoHash(userId)) {
			if (!info.getUser_id().equals(userId)) {
				Double d = GPSUtil.computeDistance(Double.valueOf(latitude),
						Double.valueOf(longitude),
						Double.valueOf(info.getLatitude()),
						Double.valueOf(info.getLongitude()));
				info.setDistance(d.intValue() + "米");
				if (d < 5000) {
					list.add(info);
				}
			}
		}
		return list;
	}

	public void saveOrUpdateUser(UserInfo user) throws SQLException {
		UserDao dao = new UserDao();

		UserInfo u = dao.findUser(user.getId());

		if (null == u) {
			dao.saveUser(user);
		} else {
			dao.updateUser(user);
		}
	}

}
