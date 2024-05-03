package com.entity;

public class User {

	private int id;
	private String fullname;
	private String email;
	private String ph;
	private String aadhar;
	private String password;

	public User(String fullname, String email, String aadhar, String ph, String password) {
		super();
		this.fullname = fullname;
		this.email = email;
		this.aadhar = aadhar;
		this.ph = ph;
		this.password = password;
	}

	public User() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPh() {
		return ph;
	}

	public void setPh(String ph) {
		this.ph = ph;
	}

	public String getAadhar() {
		return aadhar;
	}

	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
