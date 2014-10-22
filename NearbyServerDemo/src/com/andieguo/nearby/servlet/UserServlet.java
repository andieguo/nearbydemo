package com.andieguo.nearby.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andieguo.nearby.bean.UserInfo;
import com.andieguo.nearby.message.UserResponse;
import com.andieguo.nearby.service.Service;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class UserServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		StringBuilder sb = new StringBuilder();
		BufferedReader br = req.getReader();
		String str;
		while ((str = br.readLine()) != null) {
			sb.append(str);
		}
		String json = sb.toString();
		System.out.println("服务器端收到json数据："+json);

		Gson gson = new Gson();
		UserInfo user = gson.fromJson(json, UserInfo.class);

		Service service = new Service();
		
		UserResponse j = new UserResponse();
		j.setCode("1");
		j.setMsg("ok");

		try {
			service.saveOrUpdateUser(user);
		} catch (SQLException e) {
			e.printStackTrace();
			j.setCode("0");
			j.setMsg("error");
		}
		setSuccess(resp, j);
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
