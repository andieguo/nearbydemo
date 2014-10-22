package com.andieguo.nearby.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andieguo.nearby.message.NearbyInfo;
import com.andieguo.nearby.service.Service;

public class QueryServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("gb2312");
		response.setContentType("text/html;charset=gb2312");
		PrintWriter pw = response.getWriter();
		pw.println("<html>");
		pw.println("<head>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<table>");
		pw.println("<tr>");
		pw.println("<th>用户名</th>");
		pw.println("<th>纬度</th>");
		pw.println("<th>经度</th>");
		pw.println("</tr>");
		String userId = request.getParameter("user_id");
		String latitude = request.getParameter("latitude");
		String longitude = request.getParameter("longitude");
		Service service = new Service();
		try {
			List<NearbyInfo> list = service.findList(userId, longitude,latitude);
			for(NearbyInfo info:list){
				pw.println("<tr>");
				pw.println("<td>" + info.getName() + "</td>");
				pw.println("<td>" +	info.getLatitude()+ "</td>");
				pw.println("<td>" +	info.getLongitude()+ "</td>");
				pw.println("</tr>");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		pw.println("</table>");
		pw.println("</body>");
		pw.println("</html>");
	}

}
