package com.andieguo.location;

public class Record {
	private double lat ;
	private double lng ;
	private int user;
	private double ctime;
	
	public Record(double lat, double lng, int user, double ctime) {
		super();
		this.lat = lat;
		this.lng = lng;
		this.user = user;
		this.ctime = ctime;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLng() {
		return lng;
	}
	public void setLng(double lng) {
		this.lng = lng;
	}
	public int getUser() {
		return user;
	}
	public void setUser(int user) {
		this.user = user;
	}
	public double getCtime() {
		return ctime;
	}
	public void setCtime(double ctime) {
		this.ctime = ctime;
	}
	
	
}
