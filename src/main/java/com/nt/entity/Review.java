package com.nt.entity;

public class Review {
	private int  id;
	private String name;
	private String review;
	public Review(int id, String name, String review) {
		super();
		this.id = id;
		this.name = name;
		this.review = review;
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
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	
	
}
