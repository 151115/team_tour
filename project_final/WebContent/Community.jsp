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
         
             <h5 class="title">Ŀ�´�Ƽ</h5>
             <div>community</div>
           
             <br>
             <form action="Community" method="post">
             <table style="margin: auto;">
              <tr>
               <!--  <td class="one_td">����:  </td> -->
                <td><input type="text" name="free_title" placeholder="����" required="required"></td>
             </tr>
             <tr> 
               <!--  <td class="one_td">��й�ȣ :  </td> -->
                <td><input type="password" name="free_pw" placeholder="��й�ȣ �Է�" required="required"></td>
             </tr>
             
             <tr>
	             <!-- <td class="one_td">���� :  </td> -->
	             <td><input type="text" name="free_contents" placeholder="������ �Է��ϼ���" required="required" style="height: 300px;"></td>
             </tr>
             
          <!--     <tr>
                <td class="one_td">  </td>
                <td><input type="text" name="title" placeholder="������ �Է��ϼ���" required="required"></td>
             </tr>-->
             
           <tr>
                <!-- <td class="one_td">Email  </td> -->
                <td><input type="text" name="email" placeholder="Email�� �Է��ϼ���" required="required"></td>
             </tr>
            <!--  <tr>
                <td class="one_td">÷������ :  </td>
                <td><input type="file" name="file" required="required" value="���ϼ���"></td>
             </tr> -->
             <tr><td colspan="2">
               <input  type="submit" style="float: right;" value="����ϱ�" class="button">
              </tr>
               </table>
               </form>
             
         </div>
     </div>
     </div>

</body>
</html>