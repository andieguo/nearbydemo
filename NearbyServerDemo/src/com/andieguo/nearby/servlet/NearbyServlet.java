package com.andieguo.nearby.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andieguo.nearby.bean.GPS;
import com.andieguo.nearby.bean.UserInfo;
import com.andieguo.nearby.message.NearbyInfo;
import com.andieguo.nearby.message.NearbyInfoResponse;
import com.andieguo.nearby.service.Service;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

/**
 * 类说明
 * 
 */
public class NearbyServlet extends HttpServlet {

	public static void main(String[] args) {//测试方法

		Service service = new Service();
		UserInfo user = new UserInfo();
		user.setId("861344022478010");

		// 保存或更新用户gps数据
		GPS gps = new GPS();
		gps.setLatitude("50");
		gps.setLongitude("110");
		gps.setUser(user);
		gps.setTime(new Date());
		try {
			service.saveOrUpdateGPS(gps);// 如果gps表中包含这个用户，则跟新；如果没有该用户则保存
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String longitude = req.getHeader("longitude");
		String latitude = req.getHeader("latitude");
		String userId = req.getHeader("user_id");
		System.out.println("userId:" + userId + ",longitude:" + longitude
				+ ",latitude:" + latitude);

		Service service = new Service();

		UserInfo user = new UserInfo();
		user.setId(userId);

		// 保存或更新用户gps数据
		GPS gps = new GPS();
		gps.setLatitude(latitude);
		gps.setLongitude(longitude);
		gps.setUser(user);
		gps.setTime(new Date());
		try {
			service.saveOrUpdateGPS(gps);// 1、如果gps表中包含这个用户，则跟新(latitude、longitude、geohash)；2、如果没有该用户则保存(latitude、longitude、geohash)
		} catch (SQLException e) {
			e.printStackTrace();
		}

		// 查找附近的人
		NearbyInfoResponse result = new NearbyInfoResponse();

		try {
			//在上一步已经根据最新的latitude和longitude生成了最新的geohash。根据userId找到GPS数据中最新的geohash.
			List<NearbyInfo> list = service.findList(userId, longitude,
					latitude);
			result.setList(list);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		setSuccess(resp, result);
	}

	protected String getStringParameter(HttpServletRequest req,
			String parameter, String defaultValue) {
		String value = req.getParameter(parameter);
		if (value == null || value.trim().isEmpty()) {
			value = defaultValue;
		}
		return value.trim();
	}

	protected void setSuccess(HttpServletResponse resp, Object obj)
			throws IOException {

		GsonBuilder builder = new GsonBuilder();
		// 不转换没有 @Expose 注解的字段
		builder.excludeFieldsWithoutExposeAnnotation();
		Gson gson = builder.create();

		String json = gson.toJson(obj);

		resp.setStatus(HttpServletResponse.SC_OK);
		resp.setContentType("application/json");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		out.print(json);
		out.flush();
		out.close();

	}

}
