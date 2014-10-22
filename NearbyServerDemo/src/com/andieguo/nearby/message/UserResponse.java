package com.andieguo.nearby.message;

import com.google.gson.annotations.Expose;

public class UserResponse {

	@Expose
	private String msg;
	@Expose
	private String code;
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	
	
}
