package com.model;

public class Mail_DTO {

	private String questionNum;
	private String questionName;
	private String questionEmail;
	private String questionText;
	private String questionDate;
	private String questionAns;
	

	public Mail_DTO(String nu, String n, String e, String t, String d, String a) {

		questionNum = nu;
		questionEmail = e;
		questionName = n;
		questionText = t;
		questionDate = d;
		questionAns = a;

	}
	

	public Mail_DTO(String n, String e, String t) {

		questionEmail = e;
		questionName = n;
		questionText = t;

	}
	
	public Mail_DTO(String num, String text) {
		
		questionNum=num;
		questionAns = text;
	}

	
	public String getQuestionAnswer() {
		return questionAns;
	}

	public void setQuestionAnswer(String questionAns) {
		this.questionAns = questionAns;
	}

	
	public String getQuestionNum() {
		return questionNum;
	}

	public void setQuestionNum(String questionNum) {
		this.questionNum = questionNum;
	}

	public String getQuestionName() {
		return questionName;
	}

	public void setQuestionName(String questionName) {
		this.questionName = questionName;
	}

	public String getQuestionEmail() {
		return questionEmail;
	}

	public void setQuestionEmail(String questionEmail) {
		this.questionEmail = questionEmail;
	}

	public String getQuestionText() {
		return questionText;
	}

	public void setQuestionText(String questionText) {
		this.questionText = questionText;
	}

	public String getQuestionDate() {
		return questionDate;
	}

	public void setQuestionDate(String questionDate) {
		this.questionDate = questionDate;
	}

	
}
