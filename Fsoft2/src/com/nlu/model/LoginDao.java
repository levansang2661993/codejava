package com.nlu.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nlu.util.ConnectionUtil;


public class LoginDao {
	public static boolean checkLogin(String email, String password) {
		try {
			Connection conn = ConnectionUtil.getConnection();
			String sql = "select * from Accounts where email=? and npassword=?";
			PreparedStatement pre = conn.prepareStatement(sql);
			pre.setString(1, email);
			pre.setString(2, password);
			ResultSet rs = pre.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
