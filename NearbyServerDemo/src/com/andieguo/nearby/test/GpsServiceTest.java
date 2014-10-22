package com.andieguo.nearby.test;

import java.sql.Date;
import java.sql.SQLException;

import com.andieguo.nearby.bean.GPS;
import com.andieguo.nearby.bean.UserInfo;
import com.andieguo.nearby.dao.GpsDao;

import junit.framework.TestCase;
/**
 * 
 * @author Administrator
 *
 */
public class GpsServiceTest extends TestCase {

	public void testGetGeoHash() {
		GpsDao dao = new GpsDao();
		System.out.println(dao.getGeoHash(30.6296386, 114.4970454, 8));

	}

	public void testInsertGSP() {
		GpsDao dao = new GpsDao();
		try {
			dao.saveGPS(new GPS(new UserInfo("359836040135900"), "114.3380907",
					"30.5169561", new Date(2014, 5, 16)));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
