package com.andieguo.nearby.bean;
/**
 * 用户信息
 * @author Administrator
 *
 */
public class UserInfo {

	private String id;
	private String name;//姓名/昵称
	private String picUrl;//头像 url
	private String sex;//性别
	private String describe;//签名

	public UserInfo() {
		super();
	}

	public UserInfo(String id) {
		super();
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPicUrl() {
		return picUrl;
	}

	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

}
