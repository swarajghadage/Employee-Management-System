package com.nt.entity;

public class Atd {

	private int  id;
	private String name;
	private String day;
	private String  attendance;
	public Atd(int id, String name, String day, String attendance) {
		super();
		this.id = id;
		this.name = name;
		this.day = day;
		this.attendance = attendance;
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
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getAttendance() {
		return attendance;
	}
	public void setAttendance(String attendance) {
		this.attendance = attendance;
	}
	
}
