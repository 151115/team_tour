package com.model;

public class Member_DTO {

	private String memberEmail ;
	private String memberPw;
	private String memberName;

	

	public Member_DTO(String memberEmail, String memberPw) {
		this.memberEmail = memberEmail;
		this.memberPw = memberPw;
	} // 로그인
	
	public Member_DTO(String memberEmail, String memberPw, String memeberName) {
		this.memberEmail = memberEmail;
		this.memberPw = memberPw;
		this.memberName = memeberName;
	} // 회원가입
	
	
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemeberName() {
		return memberName;
	}
	public void setMemeberName(String memeberName) {
		this.memberName = memeberName;
	}

}
