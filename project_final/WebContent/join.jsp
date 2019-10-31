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
        <div style="margin-top: 50px;">
           <!--   <h1 class="title">회원가입</h1> -->
           
             <form action="Member_join" method="post">
               <input type="email" name="email" placeholder="이메일" required="required">
               <label></label>
               <input type="password" name="pw" placeholder="비밀번호" required="required" style="margin-top: 5px; margin-bottom: 5px; color: #393939;">
               <label></label>
               <input type="text" name="name" placeholder="이름" required="required">
               <label></label>
               <input type="submit" id="submit" value="가입하기">
             </form>
         </div>
     </div>



</body>
</html>