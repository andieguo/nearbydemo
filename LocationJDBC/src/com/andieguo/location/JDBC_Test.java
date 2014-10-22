package com.andieguo.location;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.util.Random;

import junit.framework.TestCase;

public class JDBC_Test extends TestCase {
	// 创建静态全局变量
	private static Connection conn;
	private static Statement statement;
	double lat;
	double lng;
	int user;
	double ctime;

	public void recordInsert(){
		for(int i=0;i<1000;i++){
			randomDoubletest();
		}
	}
	
	public  void randomDoubletest() {
		Random random = new Random();
		DecimalFormat df = new DecimalFormat("0.000000");
		lat = random.nextDouble() * 180 - 90;// 输出-90，90
		lng = random.nextDouble() * 360 - 180;// 输出-180,180
		user = random.nextInt(20000);
		ctime = random.nextDouble() + random.nextInt(100000);
		lat = new Double(df.format(lat).toString());
		lng = new Double(df.format(lng).toString());
		df = new DecimalFormat("0.000");
		ctime = new Double(df.format(ctime).toString());

		conn = getConnection(); // 首先要获取连接，即连接到数据库
		try {
			System.out.println("lat:" + lat + ",lng:" + lng + ",user:" + user + ",ctime:" + ctime);
			String sql = "INSERT INTO index1(lat,lng,user,ctime)" + " VALUES (" + lat + "," + lng + "," + user + "," + ctime + ")"; // 插入数据的sql语句
			statement = (Statement) conn.createStatement(); // 创建用于执行静态sql语句的Statement对象
			int count = statement.executeUpdate(sql); // 执行插入操作的sql语句，并返回插入数据的个数
			conn.close(); // 关闭数据库连接
		} catch (SQLException e) {
			System.out.println("插入数据失败" + e.getMessage());
		}
	}

	public static void insert() {
		conn = getConnection(); // 首先要获取连接，即连接到数据库
		try {

			String sql = "INSERT INTO staff(name, age, sex,address, depart, worklen,wage)" + " VALUES ('Tom1', 32, 'M', 'china','Personnel','3','3000')"; // 插入数据的sql语句
			statement = (Statement) conn.createStatement(); // 创建用于执行静态sql语句的Statement对象
			int count = statement.executeUpdate(sql); // 执行插入操作的sql语句，并返回插入数据的个数
			System.out.println("向staff表中插入 " + count + " 条数据"); // 输出插入操作的处理结果
			conn.close(); // 关闭数据库连接
		} catch (SQLException e) {
			System.out.println("插入数据失败" + e.getMessage());
		}
	}

	public static Connection getConnection() {
		Connection con = null; // 创建用于连接数据库的Connection对象
		try {
			Class.forName("com.mysql.jdbc.Driver");// 加载Mysql数据驱动
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/location", "root", "root");// 创建数据连接
		} catch (Exception e) {
			System.out.println("数据库连接失败" + e.getMessage());
		}
		return con; // 返回所建立的数据库连接
	}
}
