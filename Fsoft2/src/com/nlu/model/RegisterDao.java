package com.nlu.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nlu.util.ConnectionUtil;

public class RegisterDao {
	public static boolean addRegister(Register reg) {
		try {
			Connection conn = ConnectionUtil.getConnection();
			String sql = "insert into Register value ('" + reg.getEmail()
					+ "','" + reg.getPassword() + "','" + reg.getAddress()
					+ "','" + reg.getCountry() + "','" + reg.getPhone() + "','"
					+ reg.getSex() + "','" + reg.getAge() + "')";
			PreparedStatement pre = conn.prepareStatement(sql);
			pre.executeUpdate();
			return true;

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public static boolean getInfoUser(String username) {
		try {
			Connection conn = ConnectionUtil.getConnection();
			String sql = " select fullname from Accounts where fullname=?";
			PreparedStatement pre = conn.prepareStatement(sql);
			pre.setString(1, username);
			ResultSet rs = pre.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

}
