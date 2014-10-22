package com.andieguo.nearby.message;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;


public class NearbyInfo {

	private String user_id;
	private String longitude;
	private String latitude;
	
	@Expose
	private String name;
	@Expose
	@SerializedName("pic_url")
	private String picUrl;
	@Expose
	private String sex;
	@Expose
	private String describe;
	@Expose
	private String distance;//距离
	
	
	public String getDistance() {
		return distance;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPicUrl() {
		return picUrl;
	}
	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public void setDistance(String distance) {
		this.distance = distance;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "NearbyInfo [user_id=" + user_id + ", longitude=" + longitude
				+ ", latitude=" + latitude + ", name=" + name + ", picUrl="
				+ picUrl + ", sex=" + sex + ", describe=" + describe
				+ ", distance=" + distance + "]";
	}
	
}
