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
	<script>alert("�α����� �ʿ��մϴ�");
	document.location.href="login.jsp";
	</script>

<%}else{%>

	<jsp:include page="header2.jsp"></jsp:include>

<div style="margin-top: 50px;">
  <div>
		<div>
			<hr></hr>
			<h3 class="title">���Ǵ亯</h3>
			<div>review</div>
			<hr></hr>
			<br>
				<form action = "Question_ans" method = "post">
				<table style="margin: auto;">
					<tr>
						<td class="one_td" style=" font-size: 15px; ">���ǹ�ȣ  : </td>

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
						<td class="one_td" style=" font-size: 15px; "> �亯 :  </td>

						<td>
						<input type="text" placeholder="���ǻ��� �亯 ���� �Է�" name="Question_ans_text"
							required="required" style="height: 300px;" onclick="check();"> 
							</td>
					<tr>
					<td></td>
						<td colspan="2"><input type="submit" style="float: right;"
							value="����ϱ�" class="button">
					</tr>
				</table>

			</form>

		</div>
	</div>
</body>
</html>