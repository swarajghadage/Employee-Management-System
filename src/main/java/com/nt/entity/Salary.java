package com.nt.entity;

public class Salary {
	private int  id;
	private String name;
	private String dept;
	private long medical;
	private long ptax;
	private long bonus;
	private long providentFund;
	private long netSalary;
	public Salary(int id, String name, String dept, long medical, long ptax, long bonus, long providentFund,
			long netSalary) {
		super();
		this.id = id;
		this.name = name;
		this.dept = dept;
		this.medical = medical;
		this.ptax = ptax;
		this.bonus = bonus;
		this.providentFund = providentFund;
		this.netSalary = netSalary;
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
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public long getMedical() {
		return medical;
	}
	public void setMedical(long medical) {
		this.medical = medical;
	}
	public long getPtax() {
		return ptax;
	}
	public void setPtax(long ptax) {
		this.ptax = ptax;
	}
	public long getBonus() {
		return bonus;
	}
	public void setBonus(long bonus) {
		this.bonus = bonus;
	}
	public long getProvidentFund() {
		return providentFund;
	}
	public void setProvidentFund(long providentFund) {
		this.providentFund = providentFund;
	}
	public long getNetSalary() {
		return netSalary;
	}
	public void setNetSalary(long netSalary) {
		this.netSalary = netSalary;
	}
   
}
