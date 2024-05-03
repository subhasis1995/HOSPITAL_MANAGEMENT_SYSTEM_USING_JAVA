package com.entity;

public class Doctor {

	private int id;
	private String fullName;
	private String dob;
	private String qualification;
	private String specialist;
	private String email;
	private String mobNo;
	private String password;
	private String off_days;
	private String timing;
	private String certificate_no;
	private String joining_date;
	private String salary;
	private String address;

	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Doctor(String full_name, String dob, String qualification, String off_days,String timing, String certificate_no, String joining_date, String salary , String address, String specialist, String email, String mobNo,
			String password) {
		super();
		this.fullName = full_name;
		this.dob = dob;
		this.off_days= off_days;
		this.timing = timing;
		this.qualification = qualification;
		this.certificate_no=certificate_no;
		this.specialist = specialist;
		this.joining_date=joining_date;
		this.salary=salary;
		this.address=address;
		this.email = email;
		this.mobNo = mobNo;
		this.password = password;
	}

	public Doctor(int id, String full_name, String dob, String qualification, String specialist, String email,String off_days,String timing, String certificate_no, String joining_date, String salary , String address,
			String mobNo, String password) {
		super();
		this.id = id;
		this.fullName = full_name;
		this.dob = dob;
		this.off_days= off_days;
		this.timing = timing;
		this.qualification = qualification;
		this.certificate_no=certificate_no;
		this.specialist = specialist;
		this.joining_date=joining_date;
		this.salary=salary;
		this.address=address;
		this.email = email;
		this.mobNo = mobNo;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getfullName() {
		return fullName;
	}

	public void setfullName(String fullName) {
		this.fullName = fullName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getSpecialist() {
		return specialist;
	}

	public void setSpecialist(String specialist) {
		this.specialist = specialist;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobNo() {
		return mobNo;
	}

	public void setMobNo(String mobNo) {
		this.mobNo = mobNo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getOff_days() {
		return off_days;
	}

	public void setOff_days(String off_days) {
		this.off_days = off_days;
	}

	public String getTiming() {
		return timing;
	}

	public void setTiming(String timing) {
		this.timing = timing;
	}

	public String getCertificate_no() {
		return certificate_no;
	}

	public void setCertificate_no(String certificate_no) {
		this.certificate_no = certificate_no;
	}

	public String getJoining_date() {
		return joining_date;
	}

	public void setJoining_date(String joining_date) {
		this.joining_date = joining_date;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}


}
