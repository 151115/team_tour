<%@page import="com.model.SearchDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/searchMain.css?v=3">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header3.jsp"></jsp:include>
	<div class="cont_wrap">
		<div>
			<hr></hr>
			<p>무장애 관광지 안내</p>
			<div class="h3_txt">함께 즐기는 광주·전남 여행</div>
			<hr></hr>
		</div>
		<!---->
		<div class="cont_inner_wrap">
			<div class="tour">장애인 시설 제공 관광지</div>
			<div class="contents">
				<%
					ArrayList<SearchDTO> spotlist = (ArrayList<SearchDTO>) request.getAttribute("spotlist");
					if (spotlist != null) {
						for (SearchDTO spot : spotlist) {
				%>
				<div class="spotinfo">
					<img src="<%out.print(spot.getSpot_img());%>" class="spot_img">
					<div class="divtable">
						<table class="table">
							<tr>
								<td id="spotName">
									<%
										out.print(spot.getSpot_name());
									%>
								</td>
							</tr>
							<tr>
								<td>
								</td>
							</tr>
							<tr>
								<td id="address">
									<%
										out.print(spot.getSpot_address());
									%>
								</td>
							</tr>
							<tr>
								<td id="address"><a href=<%out.print(spot.getSpot_url());%> style="text-decoration:none">홈페이지가기</a></td>
							</tr>
							<tr>
								<td id="address"><a
									href=<%out.print(spot.getSpot_info());%>><img
										id="tripadvisor" alt="트립어드바이저" src="images/tripadvisor.png"></a></td>
							</tr>
							<tr id="pictogram">
								<td>
									<% String [] pic_list = {spot.getPictogram_01(),spot.getPictogram_02(), spot.getPictogram_03(),spot.getPictogram_04(),spot.getPictogram_05(),spot.getPictogram_06(),spot.getPictogram_07(),spot.getPictogram_08(),spot.getPictogram_09(),spot.getPictogram_10(),spot.getPictogram_11(),spot.getPictogram_12()};
									for (int i = 0; i< pic_list.length; i++){
										if(pic_list[i].equals("1")){
									%> <img alt="picto" src="images/pp0<%out.print(i+1);%>.png" class = "pictogram_img" >
									<% }
								}%>
								</td>
							</tr>

						</table>
					</div>
				</div>
				<%
					}
					} else {
				%>
				<h2 style="text-align: center;">
					찾으시는 관광지가 없습니다
					<h2>
						<%
							}
						%>
					
			</div>
		</div>
	</div>
	</div>
	</div>
</body>
</html>