
<%@page import="com.model.ReviewDTO"%>
<%@page import="com.model.ReviewDAO"%>
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




<meta charset="EUC-KR">
<link rel="stylesheet" href="css/review.css">

</head>





<body>

<jsp:include page="header2.jsp"></jsp:include>


	<div id="mainWrapper" style="margin-top: 50px;">
		<!-- <h1 class="title" align="center" >리뷰</h1> -->

		<ul id="ulTable">
			<li>
				<ul>
					<li>No</li>
					<li>관광지</li>
					<li>제목</li>
					<li>작성일</li>
				</ul>
			</li>
<!-- ------------------------------------------------------------------------------- -->
	
			
			<%
				ReviewDAO dao = new ReviewDAO();
				ArrayList<ReviewDTO> list = dao.show_Review();
					int num =0;
					for (int i = 0; i < list.size(); i++) {

					out.print("<li>");
					out.print("<ul>");
					out.print("<li>");
					num = list.size() -i;
					out.print( num );
					out.print("</li>");
					out.print("<li>");
					out.print(list.get(i).getPlace_title());
					out.print("</li>");
					out.print("<li class='left'>");
					out.print("<a href='review_main_contents.jsp?num="+ list.get(i).getNum() + "'>" + list.get(i).getTitle() + "</a>");
					out.print("</li>");
					out.print("<li>");
					out.print(list.get(i).getDate());
					out.print("</li>");
					out.print("</ul>");
					out.print("</li>");
					}
	
	
			%>
	<div><input type="button" onclick="go_review_main()" value="리뷰작성하기" class="button"></div>

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
				location.href = "review_main.jsp";

			}
		</script>
	</div>
</body>
</html>
