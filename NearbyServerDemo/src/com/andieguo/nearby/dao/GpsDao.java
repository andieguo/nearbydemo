package com.andieguo.nearby.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.andieguo.nearby.bean.GPS;
import com.andieguo.nearby.bean.UserInfo;
import com.andieguo.nearby.message.NearbyInfo;
import com.andieguo.nearby.util.DBUtil;

/**
 * 
 * @author Administrator
 *
 */
public class GpsDao {

	/**
	 * 使用GeoHash区域查询，缩小附近的人的范围
	 * @param user_id
	 * @return
	 * @throws SQLException
	 */
	public List<NearbyInfo> findGPSListByGeoHash(String user_id) throws SQLException{
		GPS gps = findGPS(user_id);
		String geohash = gps.getGeohash();
		String prefix = "";
		if(geohash.length() > 2){
			prefix = geohash.substring(0,geohash.length()-3);
		}
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<NearbyInfo> result = null;
		try {
			conn = DBUtil.getDBConn();//使用级联查询（暂时）
			String sql = "SELECT g.*,u.* FROM gps  g INNER JOIN user_info u ON g.user_id=u.id where geohash like ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, prefix+"%");
			rs = ps.executeQuery();

			result = new ArrayList<NearbyInfo>();
			NearbyInfo info;
			while (rs.next()) {

				info = new NearbyInfo();
				info.setDescribe(rs.getString("personal_note"));
				info.setLatitude(rs.getString("latitude"));
				info.setLongitude(rs.getString("longitude"));
				info.setName(rs.getString("name"));
				info.setPicUrl(rs.getString("pic_url"));
				info.setUser_id(rs.getString("user_id"));
				int sex = rs.getInt("sex");
				if (sex == 0) {
					info.setSex("女");
				} else {
					info.setSex("男");
				}
				result.add(info);
			}
		} finally {
			DBUtil.closeDB(rs, ps, conn);
		}
		return result;
	}
	/**
	 * 级联查询，遍历所有的用户
	 * @return
	 * @throws SQLException
	 */
	public List<NearbyInfo> findGPSList() throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<NearbyInfo> result = null;
		try {
			conn = DBUtil.getDBConn();
			String sql = "SELECT g.*,u.* FROM gps  g INNER JOIN user_info u ON g.user_id=u.id ";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			result = new ArrayList<NearbyInfo>();
			NearbyInfo info;
			while (rs.next()) {
				info = new NearbyInfo();
				info.setDescribe(rs.getString("personal_note"));
				info.setLatitude(rs.getString("latitude"));
				info.setLongitude(rs.getString("longitude"));
				info.setName(rs.getString("name"));
				info.setPicUrl(rs.getString("pic_url"));
				info.setUser_id(rs.getString("user_id"));
				int sex = rs.getInt("sex");
				if (sex == 0) {
					info.setSex("女");
				} else {
					info.setSex("男");
				}
				result.add(info);
			}

		} finally {
			DBUtil.closeDB(rs, ps, conn);
		}
		return result;
	}

	public GPS findGPS(String user_id) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.getDBConn();
			String sql = "SELECT * FROM gps where user_id = ? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, user_id);
			rs = ps.executeQuery();

			if (rs.next()) {
				GPS gpsinfo = new GPS();
				gpsinfo.setUser(new UserInfo(user_id));
				gpsinfo.setLatitude(rs.getString("latitude"));
				gpsinfo.setLongitude(rs.getString("longitude"));
				gpsinfo.setTime(rs.getDate("time"));
				gpsinfo.setGeohash(rs.getString("geohash"));
				return gpsinfo;
			}

		} finally {
			DBUtil.closeDB(rs, ps, conn);
		}
		return null;
	}
	/**
	 * 已经实现了对longitude latitude geohash 三者的同步更新
	 * @param gps
	 * @throws SQLException
	 */
	public void updateGPS(GPS gps) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.getDBConn();
			String sql = "UPDATE gps SET longitude = ?,latitude = ?,geohash = ?,time = ? WHERE user_id = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, gps.getLongitude());
			ps.setString(2, gps.getLatitude());
			ps.setString(3, getGeoHash(Double.valueOf(gps.getLatitude()), Double.valueOf(gps.getLongitude()), 8));
			ps.setTimestamp(4, new java.sql.Timestamp(gps.getTime().getTime()));
			ps.setString(5, gps.getUser().getId());
			ps.executeUpdate();
		} finally {
			DBUtil.closeDB(rs, ps, conn);
		}
	}
	/**
	 * 根据latitude和longitude获取到geohash
	 * @param latitude
	 * @param longitude
	 * @param precision
	 * @return
	 */
	public String getGeoHash(double latitude, double longitude, int precision) {
		String geohash = "";
		Connection conn = null;
		ResultSet rs = null;
		CallableStatement cstmt = null;
		String func = "select geohash_encode(?, ?,?)";// 不能加{}
		try {
			conn = DBUtil.getDBConn();// 首先要获取连接，即连接到数据库
			cstmt = conn.prepareCall(func);
			cstmt.setDouble(1, latitude);
			cstmt.setDouble(2, longitude);
			cstmt.setInt(3, precision);
			cstmt.execute();
			rs = cstmt.getResultSet();
			if (rs.next()) {
				geohash = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.closeDB(rs, cstmt, conn);//关闭资源很重要
		}
		return geohash;
	}

	/**
	 * 保存GPS经纬度的值的同时，还要自动生成geohash;
	 * @param gps
	 * @throws SQLException
	 */
	public void saveGPS(GPS gps) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.getDBConn();
			String sql = "INSERT INTO gps(user_id,longitude,latitude,geohash,time) VALUES(?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, gps.getUser().getId());
			ps.setString(2, gps.getLongitude());
			ps.setString(3, gps.getLatitude());
			ps.setString(4, getGeoHash(Double.valueOf(gps.getLatitude()), Double.valueOf(gps.getLongitude()), 8));
			ps.setTimestamp(5, new java.sql.Timestamp(gps.getTime().getTime()));
			ps.executeUpdate();
		} finally {
			DBUtil.closeDB(rs, ps, conn);
		}
	}
}
