package com.nt.entity;
 
public class Employee {

	private int  id;
	private String name;
	private  String dob;
	private int sal;
	private  String address;
	private long phone;
	private String email;
	private String education;
	private String designation;
	private long aadhar;
	public Employee(int id, String name, String dob, int sal, String address, long phone, String email,
			String education, String designation, long aadhar) {
		super();
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.sal = sal;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.education = education;
		this.designation = designation;
		this.aadhar = aadhar;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public int getSal() {
		return sal;
	}
	public void setSal(int sal) {
		this.sal = sal;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public long getAadhar() {
		return aadhar;
	}
	public void setAadhar(long aadhar) {
		this.aadhar = aadhar;
	}
	
}
