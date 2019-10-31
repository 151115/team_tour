package com.model;

public class ReviewDTO {
	private String place_title;
	private String name;
	private String title;
	private String text;
	private String email;
	private String num;
	private String date;

	public ReviewDTO(String place_title, String title, String text, String email) {
		this.place_title = place_title;
		this.title = title;
		this.text = text;
		this.email = email;
	}

	public ReviewDTO(String place_title, String title, String text, String email, String num, String date) {
		this.place_title = place_title;
		this.title = title;
		this.text = text;
		this.email = email;
		this.num = num;
		this.date = date;
	}

	public ReviewDTO(String place_title, String title, String email, String num, String date) {
		super();
		this.place_title = place_title;
		this.title = title;
		this.email = email;
		this.num = num;
		this.date = date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public ReviewDTO(String title, String email) {
		super();
		this.title = title;
		this.email = email;
	}

	public String getPlace_title() {
		return place_title;
	}

	public void setPlace_title(String place_title) {
		this.place_title = place_title;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}