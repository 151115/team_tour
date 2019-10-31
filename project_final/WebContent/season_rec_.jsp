<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" href="css/style_season.css" />
</head>
<body>
	<jsp:include page="header3.jsp"></jsp:include>
	<div class="container">
		<div class="season_table">
			<table class="season_table" style="width: 300px;">
				<tbody class="season_table_tbody">
				<tr>
					<td class="spring">봄</td>
					<td class="summer">여름</td>
					<td class="autumn">가을</td>
					<td class="winter">겨울</td>
				</tr>
				</tbody>
			</table>
		</div>
		<div class="fullbody">
			<p class = "open">봄에 추천하는 무장애 관광지</p>
		<hr></hr>
		<br>
		<br>
	
			
				<img class="spot_img spot_1_img" alt="spring_01" src="images/season_page/spring_01.jpg">
			
			<div class="spot_1_info">
				<div id="tab-1">
				<p class="spot_1">광주호수생태원</p>
				<hr style="weight: 100px;">
				<table id="info_table" style="float:left;">
					<tr>
						<th scope="row">ㆍ주소</th>
						<td class = "spot_td">광주광역시 북구 충효동 443-5</td>
					</tr>

					<tr>
						<th scope="row">ㆍ전화</th>
						<td class = "spot_td">062-613-7891</td>
					</tr>
					<tr>
						<th scope="row">ㆍ관리</th>
						<td class = "spot_td">광주광역시 푸른도시사업소</td>
					</tr>
				</table>
			</div>
		</div>
		<br><br><br><br><br><br><br><br><br><br><br><br><br>
		
		<hr></hr>
		<div class="theme_deatil" style="weight: 50%;">
			<p class="information">
				광주호의 잔잔한 물결과 무등산의 시원한 바람을 함께 맛볼 수 있는 곳은 호수생태원 만한 곳이 없다. 호수생태원은 무등산
				원효사를 넘어서 소쇄원에 접근하기 직전 광주호 옆에 자리 잡고 있다.<br /> 2006년 3월에 개장한 후
				자연생태학습장이자 시민들의 휴식공간으로 사랑받고 있다. 2006년 3월에 개장한 후 자연생태학습장이자 시민들의 휴식공간으로
				사랑받고 있다.<br /> 수생식물원,생태연못,야생화테마원,목재 탐방로,전망대,수변관찰대 등이 있으며, 호수 안에는
				버드나무 군락지와 습지보전지역이 있다.
			</p>
		</div>
		<div class="contwrap">
		<br><br>
		<hr></hr>
		<br><br><br><br>
			<h3 class="cont_title">이용정보</h3>
			<div class="cont_wrap">
				<table class="cont_table">
					<caption>
						<p>이용시간 휴일 이용요금 주차시설 버스정류장 정보를 안내하는 표입니다.</p>
						
					</caption>
					<colgroup>
						<col style="width: 150px;" />
						<col />
					</colgroup>
					
					<tbody>
					<br>
						<tr class="tr1">
							<th scope="row" class = th1>이용시간</th>
							<td>하절기 : 09:00 ~ 19:00<br /> 동절기 : 09:00 ~ 18:00
							</td>
						</tr>
						<tr class="tr1">
							<th scope="row" class = th1>휴일</th>
							<td>없음</td>
						</tr>
						<tr>
							<th scope="row"  class = th1>이용요금</th>
							<td>없음</td>
						</tr>
						<tr class="tr1">
							<th scope="row"  class = th1>주차시설</th>
							<td>주차시설 보유 (180대 주차가능)</td>
						</tr>
						<tr class="tr1">
							<th scope="row"  class = th1>버스정류장</th>
							<td>
								<div>광주호수생태원 : 충효187 , 충효188</div>
								<div>광주호호수생태원 : 충효188 , 충효187</div>
								<div>수리 : 충효187 , 충효188</div>
								<div>충효동환벽당 : 충효188 , 충효187</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<h3 class="cont_title" id="PosInfoHelp">장애편의</h3>
			<div class="cont_wrap">
				<table class="cont_table">
					<caption>
						<p>장애편의 정보를 안내하는 표입니다.</p>
					</caption>
					<colgroup>
						<col style="width: 150px;" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">교통접근성</th>
							<td>대중교통을 이용하여 접근가능</td>
						</tr>
						<tr>
							<th scope="row">주차장</th>
							<td>장애인 전용 주차구역 지원</td>
						</tr>
						<tr>
							<th scope="row">안내소 및 매표소</th>
							<td>장애인 이용가능 관광안내소 지원</td>
						</tr>
						<tr>
							<th scope="row">화장실</th>
							<td>장애인 이용가능 화장실 지원</td>
						</tr>
						<tr>
							<th scope="row">출입로</th>
							<td>장애인 주출입구 접근가능</td>
						</tr>
						<tr>
							<th scope="row">보행로</th>
							<td>장애인 보행로 접근가능</td>
						</tr>
						<tr>
							<th scope="row">기타</th>
							<td>휠체어 대여가능</td>
						</tr>

					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

	<script type="text/javascript" src="js/season_change.js"
		charset="UTF-8"></script>
</body>
</html>