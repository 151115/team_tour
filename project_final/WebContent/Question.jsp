<%@page import="com.model.Mail_DAO"%>
<%@page import="com.model.Mail_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">

.left>a{
color : black;
text-decoration: none;


</style>


<meta charset="UTF-8">
<link rel="stylesheet" href="css/review.css">

</head>





<body>

<jsp:include page="header2.jsp"></jsp:include>


	<div id="mainWrapper" style="margin-top: 50px;">
	<%String str_title= "문의사항"; %>
		<h1 class="title" align="center" >문의사항</form></h1>
		<br><br><br>

		<ul id="ulTable">
		
			<li>
				<ul>
					<li>No</li>
					<li>문의내용</li>
					<li>작성자</li>
					<li>email</li>
				</ul>
			</li>
<!-- ------------------------------------------------------------------------------- -->
	
			
			<%
				Mail_DAO dao = new Mail_DAO();
				ArrayList<Mail_DTO> list = dao.getMailList();

				
					for (int i = list.size() ; i >0; i--) {
					
					out.print("<li>");
					out.print("<ul>");
					out.print("<li>");
					out.print(i);
					out.print("</li>");
					
					out.print("<li class='left'>");
					out.print("<a href='Question_main_contents.jsp?num="+list.get(i-1).getQuestionNum()+ "'>" + list.get(i-1).getQuestionText() + "</a>");
					out.print("</li>");
					out.print("<li>");
					out.print(list.get(i-1).getQuestionName());
					out.print("<li>");
					out.print(list.get(i-1).getQuestionEmail() );
					out.print("</li>");
					out.print("</ul>");
					out.print("</li>");
					}

				/* 	String email = (String) session.getAttribute("email");
					String manager_email = (String) session.getAttribute("email");
					if (email.equals(manager_email)) {
						
					} */
			%>
			
			
			
	<div >
<!-- 	<input type="button" onclick="go_index()" value="문의사항 보내기" class="button">
	
	
	<input type="button" onclick="manager_login()" value="관리자 로그인" class="button">
	 -->
	
	
	</div>

			<!-- 게시판 페이징 영역 -->
			<br>
			<br>
			<br>
			<div class="page_wrap">
				<div class="page_nation">
					<a class="arrow pprev" href="#"><</a> <a class="arrow prev"
						href="#"><<</a> <a href="#" class="active">1</a> <a href="#">2</a>
					<a href="#">3</a> <a href="#">4</a> <a href="#">5</a> <a href="#">6</a>
					<a href="#">7</a> <a href="#">8</a> <a href="#">9</a> <a href="#">10</a>
					<a class="arrow next" href="#">></a> <a class="arrow nnext"
						href="#">>></a>
				</div>
			</div>


		</ul>

<!-- 		<script type="text/javascript">
		
			function go_index() {
				alert("홈페이지 하단을 확인해주세요");
				location.href="index.jsp";

			}
			
			function manager_login(){

				location.href="manager_login.jsp";
			
			}
		</script> -->
	</div>
</body>
</html>
