<%@page import="com.model.ReviewDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.ReviewDAO"%>
<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/review_main_contents.css" />
<meta charset="EUC-KR">
<title>Insert title here</title>



</head>


<body>
<jsp:include page="header2.jsp"></jsp:include>

	<%
		String num = request.getParameter("num");

		ReviewDAO dao = new ReviewDAO();
		ArrayList<ReviewDTO> list = dao.show_Review();
		for (ReviewDTO review : list) {
			if (review.getNum().equals(num)) {
	%>



       
      <div style="margin-top: 50px;">
             <br>
             <table style="margin: auto; width: 800px; padding-bottom: 100px;" >
             <tr>
	             <td class="one1_td"><%=review.getTitle() %> </td>
             </tr>
             
             <tr>
	             <td class="one1_td"><%=review.getEmail()%> </td>
             </tr>
             
             <tr>
	             <td class="one1_td"><%=review.getPlace_title() %> </td>
             </tr>
             <tr>
	             <td class="one1_td date" style="text-align: right; border-left: none; border-right: none;"><%=review.getDate()%> </td>
             </tr>
             
             <tr>
	             <td class="one_td" height="500px;"><%=review.getText()%> </td>
             </tr>
               </table>  	

               
                <a href="review.jsp"> <input value="목록" class="button"></a>
          
             
         
    



</div>

	<%
		}
	%>
	<%
		}
	%>






</body>
</html>