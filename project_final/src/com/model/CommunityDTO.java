package com.model;

public class CommunityDTO {
 private String num;
 private String free_title;
 private String free_contents;
 private String email;
 private String free_pw;
 private String date;
 
 
 
public CommunityDTO(String free_title, String free_contents, String email, String free_pw) {
	this.free_title = free_title;
	this.free_contents = free_contents;
	this.email = email;
	this.free_pw = free_pw;
}



public CommunityDTO(String num, String free_title, String free_contents, String email, String date) {
	this.num = num;
	this.free_title = free_title;
	this.free_contents = free_contents;
	this.email = email;
	this.date = date;
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



public String getFree_title() {
	return free_title;
}



public void setFree_title(String free_title) {
	this.free_title = free_title;
}



public String getFree_contents() {
	return free_contents;
}



public void setFree_contents(String free_contents) {
	this.free_contents = free_contents;
}



public String getEmail() {
	return email;
}



public void setEmail(String email) {
	this.email = email;
}



public String getFree_pw() {
	return free_pw;
}



public void setFree_pw(String free_pw) {
	this.free_pw = free_pw;
}


}


 
 