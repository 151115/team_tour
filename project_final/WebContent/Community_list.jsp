<%@page import="com.model.CommunityDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.CommunityDAO"%>
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

<link rel="stylesheet" href="css/Community_list.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="header2.jsp"></jsp:include>

<div id="mainWrapper"  style="margin-top: 50px;">
		<h6 class="title" align="center" >자유게시판 목록</h6>

		<ul id="ulTable">
			<li>
				<ul>
					<li>No</li>
					<li>제목</li>
					<li>작성일</li>
					<li>email</li>
				</ul>
			</li>
			
<!-- ------------------------------------------------------------------------------- -->
<%  CommunityDAO dao = new CommunityDAO();
	ArrayList<CommunityDTO> list = dao.Community_list();
	int num =0;
				for (int i = 0; i < list.size(); i++) {

					out.print("<li>");
					out.print("<ul>");
					out.print("<li>");
					num = list.size() -i;
					out.print( num );
					out.print("</li>");
					out.print("<li class='left'>");
					out.print("<a href='Community_contents.jsp?community_num="+ list.get(i).getNum() + "'>" + list.get(i).getFree_title()+ "</a>");
					out.print("</li>");
					out.print("<li>");
					out.print(list.get(i).getDate());
					out.print("</li>");
					out.print("<li>");
					out.print(list.get(i).getEmail());
					out.print("</li>");
					out.print("</ul>");
					out.print("</li>");
					}
	
	
			%>
			
				<div><input type="button" onclick="go_review_main()" value="게시물작성하기" class="button"></div>

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

		<script type="text/javascript">
			function go_review_main() {
				location.href = "Community.jsp";

			}
		</script>
	
	





</body>
</html>