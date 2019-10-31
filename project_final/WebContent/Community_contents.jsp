<%@page import="com.model.CommunityDTO"%>
<%@page import="com.model.CommunityDAO"%>
<%@page import="com.model.ReviewDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.ReviewDAO"%>
<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/Community_contents.css" />
<meta charset="EUC-KR">
<title>Insert title here</title>



</head>


<body>
<jsp:include page="header2.jsp"></jsp:include>



	<%
		String c_num = request.getParameter("community_num");

		CommunityDAO dao = new CommunityDAO();
		ArrayList<CommunityDTO> list = dao.Community_list();
		for (CommunityDTO community : list) {
			if (community.getNum().equals(c_num)) {

				
	%>
       
       <div style="margin-top: 50px;">
             <br>
             <table style="margin: auto; width: 800px; padding-bottom: 100px;"  >
             <tr>
	             <td class="one_td"><%= community.getFree_title() %> </td>
             </tr>
             
             <tr>
	             <td class="one_td"><%=community.getEmail()%> </td>
             </tr>
             
            <%--  <tr>
	             <td class="one_td"><%=community.getPlace_title() %> </td>
             </tr> --%>
             <tr>
	             <td class="one_td" style="border: none; text-align: right;"><%=community.getDate()%> </td>
             </tr>
             
             <tr>
	             <td class="one_td" height="500px;"><%=community.getFree_contents()%> </td>
             </tr>
       		  </table>
        
            
             	
               <a href="Community_list.jsp"> <input value="목록" class="button"></a>
              
               </div>
               
          
             
         
    





	<%
		}
	%>
	<%
		}
	%>


</DIV>



</body>
</html>