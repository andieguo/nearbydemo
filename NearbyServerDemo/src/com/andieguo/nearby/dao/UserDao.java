package com.andieguo.nearby.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.andieguo.nearby.bean.UserInfo;
import com.andieguo.nearby.util.DBUtil;

/**
 * 
 * @author Administrator
 *
 */
public class UserDao {

	public void saveUser(UserInfo user) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.getDBConn();
			String sql = "INSERT INTO user_info(id,name,personal_note) VALUES(?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getId());
			ps.setString(2, user.getName());
			ps.setString(3, user.getDescribe());

			ps.executeUpdate();

		} finally {
			DBUtil.closeDB(rs, ps, conn);
		}
	}

	public UserInfo findUser(String id) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.getDBConn();
			String sql = "SELECT * FROM  user_info where id=? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();

			if (rs.next()) {

				UserInfo info = new UserInfo();
				info.setId(rs.getString("id"));
				info.setDescribe(rs.getString("personal_note"));
				info.setName(rs.getString("name"));
				return info;
			}

		} finally {
			DBUtil.closeDB(rs, ps, conn);
		}
		return null;
	}

	public void updateUser(UserInfo user) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.getDBConn();
			String sql = "UPDATE user_info SET name=? , personal_note=? WHERE id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getDescribe());
			ps.setString(3, user.getId());
			ps.executeUpdate();

		} finally {
			DBUtil.closeDB(rs, ps, conn);
		}
	}

}
