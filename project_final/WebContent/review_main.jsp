<%@page import="java.util.ArrayList"%>
<%@page import="com.model.SearchDAO"%>
<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" href="css/review_main.css" />

</head>
<body>
<% String email =  (String)session.getAttribute("email"); %>
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
			<h3 class="title">�����ۼ�</h3>
			<div>review</div>
			<hr></hr>
			<br>
			<form action="Review_Serv" method="post">
				<table style="margin: auto;">
					<tr>
						<td class="one_td">�������� :</td>
						<td><select name="place_title" placeholder="�������� �Է��ϼ���"
							required="required">
								<%
									SearchDAO dao = new SearchDAO();
										ArrayList<String> list = dao.selectbox();
										for (String spot : list) {
								%><option value="<%out.print(spot);%>">
									<%
										out.print(spot);
									%>
								</option>
								<%
									}
								%>
						</select></td>
					</tr>
					<tr>
						<td class="one_td">���� :</td>
						<td><input type="text" name="title" placeholder="������ �Է��ϼ���"
							required="required"></td>
					</tr>
					<tr>
						<td class="one_td">���� :</td>
						<td><input type="text" name="text" placeholder="������ �Է��ϼ���"
							required="required" style="height: 300px;"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" style="float: right;"
							value="����ϱ�" class="button"></td>
					</tr>
				</table>
			</form>

		</div>
	</div>
<% }%>
</body>
</html>