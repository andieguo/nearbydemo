package com.andieguo.nearby.bean;

import java.util.Date;

public class GPS {

	private int id;
	private UserInfo user;//一对一的关系
	private String longitude;
	private String latitude;
	private Date time;
	private String geohash;
	
	public GPS() {
		super();
	}
	public GPS(UserInfo user, String longitude, String latitude, Date time) {
		super();
		this.user = user;
		this.longitude = longitude;
		this.latitude = latitude;
		this.time = time;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public UserInfo getUser() {
		return user;
	}
	public void setUser(UserInfo user) {
		this.user = user;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getGeohash() {
		return geohash;
	}
	public void setGeohash(String geohash) {
		this.geohash = geohash;
	}
	
	
}
