<%@page import="com.model.EwcChargeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.EwcChargeDAO"%>
<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>장애인 여행정보</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<style>
*{

}
table {
	width: 1500px;
	text-align: left;
}

th {
	padding-left: 12px;
	padding-right: 18px;
	padding-bottom: 10px;
	padding-top: 20px;
	src: url('/fonts/NANUMBARUNGOTHIC.TTF');
	font-family: JejuGothic.ttf;
	/* 	border-top: 1px solid black; */
}

tr {
	border: 1px solid black;
	border-bottom-color: #eaeaea;
	border-left-color: white;
	border-right-color: white;
	padding-left: 12px;
	padding-right: 18px;
	padding-bottom: 18px;
	padding-top: 18px;
	padding-left: 12px;
}

td {
	padding-left: 12px;
	padding-right: 18px;
	padding-bottom: 10px;
	padding-top: 18px;
}

h4 {
	align: center;
}

p {
	margin: 20px 0px;
}

.img_rent {
	width: 210px;
	height: 70px;
}

.gwangju{
	width: 210px;
	height: 70px;
}

.chonnam{
	width: 210px;
	height: 70px;
}

.page_wrap {
	align: center;
}

/* ------ */
(//
fonts.googleapis.com /earlyaccess/jejugothic.css ); .jejugothic * {
	font-family: 'Jeju Gothic', sans-serif;
}

p {
margin-top: 100px;
	text-align: center;
	font-size: 50px;
	src: url('.../font/JALNAN.TTF');
	font-family: JALNAN;
	color: #393939;
}

body {
	color: #393939;
	-webkit-font-smoothing: antialiased;
	width: 100%;
	/* margin: auto; */
	padding-bottom: 100px;
	font-size: 15px;
	font-family: '나눔고딕', serif;
	align-content: center;
	box-sizing: border-box;
	align-items: center;
}

@charset "EUC-KR";

body {
	text-align: center;
	display: block;
	margin: 50px;
	font-size: 16px;
	color: #999;
}

div {
	color: #393939;
	font-family: 'Jeju Gothic', sans-serif;
}

.h4_txt {
	font-size: 15px;
}

/* .tour {
	font-weight: bold;
	padding: 20px;
	font-size: 30px;
} */
.one_td {
	text-align: right;
}

input {
	width: 539px;
	height: 27px;
	background-color: #ffffff;
	border-radius: 6px;
	border: 0.1px solid;
	padding: 10px;
	margin-top: 3px;
	font-size: 0.9em;
	color: #3a3a3a;
}

input:focus {
	border: 1px solid #97d6eb;
}

.button {
	width: 127px;
	height: 48px;
	color: white;
	background-color: #216282;
	text-align: center;
	border: none;
	margin-top: 20px;
	cursor: pointer;
}

button:hover {
	color: #fff;
	background-color: #216282;
	opacity: 0.9;
}

.contents {
	display: grid;
	grid-template-columns: 550px 550px 550px;
	grid-auto-rows: 650px;
	grid-gap: 30px;
	padding-left: 90px;
}

.cont_inner_wrap {
	align-items: center;
}

.spot_img {
	margin-top: 10px;
	height: 400px;
	weight: 30%;
}

/* .table {
	margin-top: 20px;
	margin-bottom: 10px;
	margin-left: auto;
	margin-right: auto;
	margin-left: auto;
} */
.spotinfo {
	padding-top: 7px;
	border-color: #393939;
	border-style: solid;
	border-width: 1px;
	border-radius: 10px;
}

a {
	color: #393939;
}

hr {
	width: 30%;
	color: black;
}

.separ {
	width: 100%;
	color: #dedede;
}

.nav-item {
	/* font-family: '여기어때 잘난체', sans-serif; */
}

.Travel1 {
	width: 150px;
	height: 48px;
	text-align: center;
	border-width: 1px;
	border-style: 1px;
	border-color: #efefef;
	border-radius: 5px;
	margin-top: 20px;
	cursor: pointer;
	background-color: white;
	font-size: 20px;
}

.Travel2 {
	width: 200px;
	height: 48px;
	text-align: center;
	border-width: 1px;
	border-style: 1px;
	border-color: #efefef;
	border-radius: 5px;
	margin-top: 20px;
	cursor: pointer;
	background-color: white;
	font-size: 20px;
}

.Travel3 {
	width: 180px;
	height: 48px;
	text-align: center;
	border-width: 1px;
	border-style: 1px;
	border-color: #efefef;
	border-radius: 5px;
	margin-top: 20px;
	cursor: pointer;
	background-color: white;
	font-size: 20px;
}
hr{
border:0.5px solid #adadad; 
width: 10000px;
float: left;
}
</style>

</head>
<body>

<div style="float: left;"><jsp:include page="header4.jsp"></jsp:include></div>
<br><br><br>
<hr></hr>
	<div>

		<p>장애인 여행정보</p>
	</div>
<br><br><br>
	</div>


	<!-- 	<hr class="separ" width="500px"></hr> -->
	<br>


	<div class="container">
		<div class="row">
			<div width="50px" class="col">

				<ul style="align:center;" class="nav nav-pills">
				<!-- style="borderbackground-color:yellow " -->
					<li class="nav-item" ><a class="nav-link active"
						data-toggle="tab" href="#qwe"><h3>휠체어 대여</h3></a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#asd"><h3>전동휠체어 충전소</h3></a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#zxc"><h3>휠체어 콜택시</h3></a></li>
				</ul>
				<div class="tab-content">
					<!-- ---------------------------------------------------------------------------------------- -->
					<div class="tab-pane fade show active" id="qwe">
						<br> <br>

						<TABLE
							style="margin-left: -220px; cellspacing: 10px; border-left-color: none;">
							<tr
								style="border-bottom-color: #eaeaea; border-top-color: black;">

								<th width="100px"><h4 align="center">이름</h4></th>
								<th width="140px"><h4 align="center">지원내용</h4></th>
								<th width="140px"><h4 align="center">이용지역</h4></th>
								<th width="400px"><h4 align="center">선정기준</h4></th>
								<th width="120px"><h4 align="center">전화번호</h4></th>
								<th width="200px"><h4 align="center">홈페이지</h4></th>
							</tr>

							<tr style="border-bottom-color: #eaeaea;">
								<td align="center"><img class="img_rent"
									src='images_info/1.png' alt='국민건강보험공단 휠체어 대여'><br></td>
								<td align="center">휠체어 대여</td>
								<td align="center">전국</td>
								<td align="center">국민건강보험 가입자(피부양자)및 의료급여 대상자
								<td align="center">1577-1000</td>
								<td align="center"><a
									href="https://minwon.nhis.or.kr/menu/retriveMenuSet.xx?menuId=MENU_WBMAF">국민건강보험공단<br>
										바로가기
								</a></td>
							</tr>

							<tr></tr>
						</TABLE>

					</div>

					<!-- ---------------------------------------------------------------------------------------- -->
					<div class="tab-pane fade" id="asd">
						<br> <br>
						<TABLE style="margin-left: -220px;">
							<tr>
								<th><h4 align="center">번호</h4></th>
								<th><h4 align="center">이름</h4></th>
								<th><h4 align="center">주소</h4></th>
								<th><h4 align="center">전화번호</h4></th>

							</tr>

							<%
								EwcChargeDAO dao = new EwcChargeDAO();
								ArrayList<EwcChargeDTO> list = dao.show_spots();

								for (int i = 0; i < list.size(); i++) {
									out.print("<tr cellspacing='10'>");

									out.print("<td><h4 align='center'>");
									out.print(i + 1);
									out.print("</h4></td>");

									out.print("<td><h4>");
									out.print(list.get(i).getName());
									out.print("</h4></td>");

									out.print("<td>");
									out.print("광주 " + list.get(i).getAddress());
									out.print("</td>");

									out.print("<td align='center'>");
									out.print(list.get(i).getPhonenumber());
									out.print("</td>");
									out.print("</tr>");
								}
							%>


						</TABLE>

						<!-- 			<!-- 페이징 영역 -->
						<br> <br> <br>
						<div class="page_wrap">
							<div class="page_nation">
								<a class="arrow pprev" href="#"><</a> <a class="arrow prev"
									href="#"><<</a> <a href="#" class="active">1</a> <a href="#">2</a>
								<a href="#">3</a> <a href="#">4</a> <a href="#">5</a> <a
									href="#">6</a> <a href="#">7</a> <a href="#">8</a> <a href="#">9</a>
								<a href="#">10</a> <a class="arrow next" href="#">></a> <a
									class="arrow nnext" href="#">>></a>
							</div>
						</div>


					</div>

					<!-- ---------------------------------------------------------------------------------------- -->


					<div class="tab-pane fade" id="zxc">
						<br> <br>
						<TABLE style="margin-left: -220px; cellpadding: 20px">
							<tr>
								<th><h4 align="center">이름</h4></th>
								<th><h4 align="center">지원내용</h4></th>

								<!-- <th><h4 align="center">이용지역</h4></th> -->
								<th><h4 align="center">선정기준</h4></th>
								<th><h4 align="center">전화번호</h4></th>
								<th><h4 align="center">홈페이지</h4></th>
							</tr>

							<tr>
								<td><img class="gwangju" align="center"
									src="images_info/2.JPG" alt="광주광역시 교통약자 이동지원센터 로고"></td>
								<td>교통약자 이동지원(휠체어 콜택시)</td>
								<!-- 		<td>광주광역시</td> -->
								<td>1) 장애정도가 심한 장애인 중 보행성 장애가 있는 사람<br> 2)
									보행장애로 인해 휠체어를 이용하는 만 65세 이상 노인<br> 3) 위의 사항에 해당하는 광주광역시를
									방문하는 외국인<br> 4) 위의 사항에 해당하는 교통약자를 동반하는 가족 및 보호자와<br>
									광주광역시 조례에서 정하는 자<br>
								<td rowspan=2>1899-1110</td>
								<td><a href="http://gjtsc.com/">광주광역시교통약자이동지원센터<br>
										바로가기
								</a></td>
							</tr>
							<tr>
								<td><img class="chonnam" src="images_info/3.JPG" alt="광주광역시 교통약자 이동지원센터 로고"></td>
								<td>교통약자 이동지원(휠체어 콜택시)</td>
								<!-- <td>전라남도 도내</td> -->
								<td>1) 장애의 정도가 “심한 장애인” 대중교통 이용이 어려운 자<br> 2)
									65세 이상으로 대중교통 이용이 어려운 자 <br> 3) 대중교통 이용이 어려운 임산부, 일시적 휠체어
									이용자 <br>4) 이용대상자를 동반하는 가족 및 보호자 2인 이내<br></td>

								<td><a href="http://www.doumcall.kr/index_main.html">전라남도
										광역이동지원센터<br> 바로가기
								</a></td>
							</tr>
							<tr></tr>
							<tr></tr>
						</TABLE>

					</div>


				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>
</html>