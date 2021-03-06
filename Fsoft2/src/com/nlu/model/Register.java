package com.nlu.model;

public class Register {
	private String id;
	private String email;
	private String password;
	private String name;
	private String address;
	private String country;
	private String phone;
	private String sex;
	private String age;

	public Register() {
	}

	public Register(String email, String password, String name, String address,
			String country, String phone, String sex, String age) {
		super();
		this.email = email;
		this.password = password;
		this.name = name;
		this.address = address;
		this.country = country;
		this.phone = phone;
		this.sex = sex;
		this.age = age;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}
}
