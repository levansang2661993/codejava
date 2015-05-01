package com.nlu.model;

public class Login {
	private String email;
	private String password;

	public Login() {
	}

	public Login(String nEmail, String nPassword) {
		this.email = nEmail;
		this.password = nPassword;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
