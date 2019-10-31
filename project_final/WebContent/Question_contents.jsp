<%@page import="com.model.Mail_DTO"%>
<%@page import="com.model.Mail_DAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- <script type="text/javascript" src="check.js"></script> -->
<link rel="stylesheet" href="css/review_main.css" />

</head>
<body>
<% String email =  (String)session.getAttribute("email");
	String num_str ="";
	String str= "";
	String Question_ans_text = "";
	
	%>
<% if(email == null){%>
	<script>alert("로그인이 필요합니다");
	document.location.href="login.jsp";
	</script>

<%}else{%>

	<jsp:include page="header2.jsp"></jsp:include>

<div style="margin-top: 50px;">
  <div>
		<div>
			<hr></hr>
			<h3 class="title">문의답변</h3>
			<div>review</div>
			<hr></hr>
			<br>
				<form action = "Question_ans" method = "post">
				<table style="margin: auto;">
					<tr>
						<td class="one_td" style=" font-size: 15px; ">문의번호  : </td>

						<td style=" font-size: 20px; " name="num_str">
								<% 
								num_str = request.getParameter("num");  }
								%>
								<input type= "text" value="<% out.print(num_str); %>" name = "num_str">
								<%-- <input  type="text" name="name<%=num_str%>" >  --%>								
						</td>
					</tr>
					<tr><td><br></td></tr>
					<tr>
						<td class="one_td" style=" font-size: 15px; "> 답변 :  </td>

						<td>
						<input type="text" placeholder="문의사항 답변 내용 입력" name="Question_ans_text"
							required="required" style="height: 300px;" onclick="check();"> 
							</td>
					<tr>
					<td></td>
						<td colspan="2"><input type="submit" style="float: right;"
							value="등록하기" class="button">
					</tr>
				</table>

			</form>

		</div>
	</div>
</body>
</html>