package com.nlu.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nlu.util.ConnectionUtil;

public class LoginM {
	private String email;
	private String password;

	public LoginM() {
	}

	public LoginM(String nEmail, String nPassword) {
		this.email = nEmail;
		this.password = nPassword;
	}

	public static boolean checkLogin(String email, String password) {
		try {
			Connection conn = ConnectionUtil.getConnection();
			String sql = "select * from Accounts where email=? and npassword=?";
			PreparedStatement pre = conn.prepareStatement(sql);
			pre.setString(1, email);
			pre.setString(2, password);
			ResultSet rs = pre.executeQuery();
			while (rs.next()) {
				String emails = rs.getString("email");
				String passwords = rs.getString("npassword");
				if (email.equals(emails) && password.equals(passwords)) {
					return true;
				}
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
