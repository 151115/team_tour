package com.model;

public class EwcChargeDTO {
	private String num;
	private String name;
	private String address;
	private String phonenumber;
	
	
	public EwcChargeDTO(String num, String name, String address, String phonenumber) {

		this.num = num;
		this.name = name;
		this.address = address;
		this.phonenumber = phonenumber;
	}


	public String getNum() {
		return num;
	}


	public void setNum(String num) {
		this.num = num;
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


	public String getPhonenumber() {
		return phonenumber;
	}


	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	
	

	
	
	
}