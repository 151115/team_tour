<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Mail_DTO"%>
<%@page import="com.model.Mail_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="css/Question_main_contents.css" />
<meta charset="UTF-8">
<title>문의사항보기</title>
</head>

<body>

	<%
		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		String num_str = request.getParameter("num");

		Mail_DAO dao = new Mail_DAO();
		ArrayList<Mail_DTO> list = dao.getMailList();

		for (Mail_DTO Q : list) {
			if (Q.getQuestionNum().equals(num_str)) {
	%>





	<br>
	<form action="Question_contetns.jsp" method="post">
		<table style="margin: auto; width: 800px;">
			<tr>
				<td class="one_td_title"
					style="border: none; text-align: right; width: 10px;">작성자</td>
				<td class="one_td"><%=Q.getQuestionName()%></td>
			</tr>

			<tr>
				<td class="one_td_title"
					style="border: none; text-align: right; width: 10px;">email</td>
				<td class="one_td"><%=Q.getQuestionEmail()%></td>
			</tr>

			<tr>
				<td class="one_td_title"
					style="border: none; text-align: right; width: 10px;">내용</td>
				<td class="one_td" height="300px;"><%=Q.getQuestionText()%></td>
			</tr>

			<tr>
				<td class="one_td"
					style="border: none; text-align: right; width: 10px;"></td>
				<td class="one_td" style="border: none; text-align: right;"><%=Q.getQuestionDate()%>
				</td>
			</tr>


			<tr>
				<td class="one_td_title"
					style="border: none; text-align: right; width: 10px;">답변</td>

				<td class="one_td" height="200px;"><%=Q.getQuestionAnswer()%>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="border: none;"><a
					href="Question_contents.jsp?num=<%out.print(num_str);%>"
					URIEncoding="UTF-8"><input style="float: right;" value="답변작성"
						class="button"></a> &nbsp; <a href="Question.jsp"
					URIEncoding="UTF-8"> <input style="float: right; margin-right: 3px;" value="목록"
						class="button" ></a></td>
			</tr>
		</table>

	</form>


	<%
		}
	%>
	<%
		}
	%>






</body>
</html>