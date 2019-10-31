<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" href="css/Community.css" />

</head>
<body>

<jsp:include page="header2.jsp"></jsp:include>
<div style="margin-top: 50px;">

     <div >
         <div>
         
             <h5 class="title">커뮤니티</h5>
             <div>community</div>
           
             <br>
             <form action="Community" method="post">
             <table style="margin: auto;">
              <tr>
               <!--  <td class="one_td">제목:  </td> -->
                <td><input type="text" name="free_title" placeholder="제목" required="required"></td>
             </tr>
             <tr> 
               <!--  <td class="one_td">비밀번호 :  </td> -->
                <td><input type="password" name="free_pw" placeholder="비밀번호 입력" required="required"></td>
             </tr>
             
             <tr>
	             <!-- <td class="one_td">내용 :  </td> -->
	             <td><input type="text" name="free_contents" placeholder="내용을 입력하세요" required="required" style="height: 300px;"></td>
             </tr>
             
          <!--     <tr>
                <td class="one_td">  </td>
                <td><input type="text" name="title" placeholder="제목을 입력하세요" required="required"></td>
             </tr>-->
             
           <tr>
                <!-- <td class="one_td">Email  </td> -->
                <td><input type="text" name="email" placeholder="Email을 입력하세요" required="required"></td>
             </tr>
            <!--  <tr>
                <td class="one_td">첨부파일 :  </td>
                <td><input type="file" name="file" required="required" value="파일선택"></td>
             </tr> -->
             <tr><td colspan="2">
               <input  type="submit" style="float: right;" value="등록하기" class="button">
              </tr>
               </table>
               </form>
             
         </div>
     </div>
     </div>

</body>
</html>