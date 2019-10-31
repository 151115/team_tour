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
          <!--    <h6 class="title">로그인</h6><br> -->
             <form action="Member_login" method="post">
               <input type="email" name="email" placeholder="아이디" required="required" style="margin-bottom: 5px;">
               <label></label>
               <input type="password" name="pw" placeholder="비밀번호" required="required">
               <label></label>

              <input type="submit" id="cancel" value="로그인" name = "reviewLogin">
               <input class="login_go" onclick="join_start()" type="button" id="submit" value="회원가입">
             </form>
         </div>
     </div>

<script type="text/javascript" src="js/join.js"></script>


</body>
</html>