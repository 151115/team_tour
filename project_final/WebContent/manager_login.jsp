<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" href="css/login.css" />

</head>

<body>
<jsp:include page="header2.jsp"></jsp:include>

     <div>
      <!--    <div class="modal-content"> -->
      <div style="margin-top: 50px;">
          <h3 class="title">�����ڷα���</h3><br>
             <form action="Member_login" method="post">
               <input type="email" name="email" placeholder="���̵�" required="required" style="margin-bottom: 5px;">
               <label></label>
               <input type="password" name="pw" placeholder="��й�ȣ" required="required">
               <label></label>

              <input type="submit" id="cancel" value="�α���" name = "managerLogin">
             </form>
         </div>
     </div>

<script type="text/javascript" src="js/join.js"></script>


</body>
</html>