<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">
<title>함께 오랑께</title>
<link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css" />
<link
	href='https://fonts.googleapis.com/css?family=Merriweather:400,300,700,300italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/bootstrap/bootstrap.min.css" />
<link rel="stylesheet" href="css/animat/animate.min.css" />
<link rel="stylesheet" href="css/fancybox/jquery.fancybox.css" />
<link rel="stylesheet" href="css/nivo-lightbox/nivo-lightbox.css" />
<link rel="stylesheet" href="css/themes/default/default.css" />
<link rel="stylesheet" href="css/owl-carousel/owl.carousel.css" />
<link rel="stylesheet" href="css/owl-carousel/owl.theme.css" />
<link rel="stylesheet" href="css/owl-carousel/owl.transitions.css">

<link rel="stylesheet" href="css/style.css?v=3" />
<link rel="stylesheet" href="css/responsive.css" />
</head>


<body>


	<div class='preloader'>

		<div class='loaded'>&nbsp;</div>
	</div>
	<header id="home" class="header">
		<div class="main_menu_bg navbar-fixed-top wow slideInDown"
			data-wow-duration="1s">
			<div class="container">
				<div class="row">
					<div class="nave_menu"
						style="font-family: font-family : 'Jeju Gothic', sans-serif">
						<nav class="navbar navbar-default">
							<div class="container-fluid">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed"
										data-toggle="collapse"
										data-target="#bs-example-navbar-collapse-1"
										aria-expanded="false">
										<span class="sr-only">Toggle navigation</span> <span>
											class="icon-bar"></span> <span class="icon-bar"></span> <span>
											class="icon-bar"></span>
									</button>

								</div>

								<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-1">

									<ul class="nav navbar-nav navbar-right">
										<li class="active"><a href="#home">Home</a></li>

										<li><a href="#picto">여행지 탐색</a></li>
										<li><a href="info_disabled.jsp">장애인 여행정보</a></li>

										<li><a href="#footer">건의사항</a></li>
										<li><a href="Community_list.jsp">자유게시판</a></li>
										<li><a href="review.jsp">리뷰</a></li>



										<%
											
											String email = (String) session.getAttribute("email");
										
											if (email == null) {
										%>
										<li class="join" style="cursor: pointer"
											onclick="login_start()"><a>LOGIN</a></li>
										<%
											}
											else {											
												if (email.equals("admin@admin.com")){%>
										<li class="join"><a href="Question.jsp">문의사항</a></li>
												<%}else{%>
										<li class="join"><a> <%	out.print(email); %>님 환영합니다</a></li>
										
										 <% 	}
											%>	
										 <li class="join" style="cursor: pointer"><a
											href="Member_logout">LOGOUT</a></li>
										<%	} %>

									</ul>
								</div>
								<!-- /.navbar-collapse -->
							</div>
							<!-- /.container-fluid -->
						</nav>
					</div>
				</div>
				<!--End of row -->

			</div>
			<!--End of container -->
			<div class="audio" style="float: right; float: top">
				<audio controls="controls">
					<source src="song_01.mp3">
				</audio>
			</div>

		</div>
	</header>
	<!--End of header -->


	<section id="banner" class="banner">

		<div class="container">
			<div class="row">




				<div class="main_banner_area text-center">


					<div class="col-md-5 col-sm-5 col-md-offset-7 col-sm-offset-7">


						<div class="single_banner_text wow zoomIn" data-wow-duration="1s">
							<!-- <p class="title" style="color: white">봄</p> -->


						
						</div>
					</div>
				</div>


			</div>
		</div>
	</section>

	<!-- End of Banner Section -->


	<br>
	<br>
	<br>
	<br>
	<section id="picto" class="picto sections" style="margin-top: -20px;">
		<section id="picto" class="picto sections">
   <form action="SearchInput" method="post">
      <table style="margin: auto; margin-top: -80px;">
         <tr>
            <td><input type="text" placeholder="어디로 떠나 볼까요?" class="search"
               id="input" onkeyup="add()" name="input"></td>
            <td><input type="submit" id="btn_test_search_01" value="검색"></td>
         </tr>
      </table>
   </form>



			<div class="container">
				<div class="row">
					<div class="head_title text-center wow slideInLeft"
						data-wow-duration="1.5s"></div>
				</div>
				<div class="main_picto text-center wow slideInUp"
               data-wow-duration="3s">
               <form action="SpotFilter" method="post">
                  <div class="col-md-2 col-sm-3 col-xs-6 single_picto">
                     <label for="check_test1">
                        <div class="single_picto_img">
                           <input type="checkbox" value="SPOT_PICTOGRAM_01" name="check"
                              id="check_test1"> <img src="images/pp01.png" alt="장애인 전용 화장실 안내그림" />
                           <h3>장애인 전용 화장실</h3>
                        </div>
                     </label>
                  </div>

                  <!-- style="visibility: hidden" -->
                  <div class="col-md-2 col-sm-3 col-xs-6 single_picto">

                     <label for="check_test2">
                        <div class="single_picto_img">
                           <input type="checkbox" value="SPOT_PICTOGRAM_02" name="check"
                              id="check_test2"> <img src="images/pp02.png" alt="장애인 전용 승강기 인내그림" />
                           <h3>장애인 전용 승강기</h3>
                        </div>
                     </label>
                  </div>

                  <div class="col-md-2 col-sm-3 col-xs-6 single_picto" style = "weight: ">
                     <label for="check_test3">
                        <div class="single_picto_img">

                           <input type="checkbox" value="SPOT_PICTOGRAM_03" name="check"
                              id="check_test3"> <img src="images/pp03.png" alt="장애인 주차구역 안내그림" />

                           <h3>장애인 주차구역</h3>
                        </div>
                     </label>
                  </div>

                  <div class="col-md-2 col-sm-3 col-xs-6 single_picto">
                     <label for="check_test4">
                        <div class="single_picto_img">

                           <input type="checkbox" value="SPOT_PICTOGRAM_04" name="check"
                              id="check_test4"> <img src="images/pp04.png" alt="무장애 접근로 안내그림" />

                           <h3>무장애<br>접근로</h3>
                        </div>
                     </label>
                  </div>

                  <div class="col-md-2 col-sm-3 col-xs-6 single_picto">
                     <label for="check_test5">
                        <div class="single_picto_img">

                           <input type="checkbox" value="SPOT_PICTOGRAM_05" name="check"
                              id="check_test5"> <img src="images/pp05.png" alt="장애인 이용시 동반자 권장 안내그림" />

                           <h3>동반자 권장<br><br></h3>
                        </div>
                     </label>
                  </div>

                  <div class="col-md-2 col-sm-3 col-xs-6 single_picto">
                     <label for="check_test6">
                        <div class="single_picto_img">

                           <input type="checkbox" value="SPOT_PICTOGRAM_06" name="check"
                              id="check_test6"> <img src="images/pp06.png" alt="장애인 이용시 단독 접근가능 안내그림" />

                           <h3>단독접근가능<br><br></h3>
                        </div>
                     </label>
                  </div>

                  <div class="col-md-2 col-sm-3 col-xs-6 single_picto">
                     <label for="check_test7">
                        <div class="single_picto_img">

                           <input type="checkbox" value="SPOT_PICTOGRAM_07" name="check"
                              id="check_test7"> <img src="images/pp07.png" alt="휠체어 대여소 안내그림" />

                           <h3>휠체어<br>대여소<br><br></h3>
                        </div>
                     </label>
                  </div>
                  <div class="col-md-2 col-sm-3 col-xs-6 single_picto">
                     <label for="check_test8">
                        <div class="single_picto_img">

                           <input type="checkbox" value="SPOT_PICTOGRAM_08" name="check"
                              id="check_test8"> <img src="images/pp08.png" alt="관광안내소 안내그림" />
                           <h3>장애인<br>관광안내소<br><br></h3>
                        </div>
                     </label>
                  </div>
                  <div class="col-md-2 col-sm-3 col-xs-6 single_picto">
                     <label for="check_test9">
                        <div class="single_picto_img">

                           <input type="checkbox" value="SPOT_PICTOGRAM_09" name="check"
                              id="check_test9"> <img src="images/pp09.png" alt="장애인이용 매표소 안내그림" />
                           <h3>장애인이용<br>매표소</h3>
                        </div>
                     </label>
                  </div>

                  <div class="col-md-2 col-sm-3 col-xs-6 single_picto">
                     <label for="check_test10">
                        <div class="single_picto_img">

                           <input type="checkbox" value="SPOT_PICTOGRAM_10" name="check"
                              id="check_test10"> <img src="images/pp010.png" alt="수유실 안내그림" />
                           <h3>수유실<br></h3>
                        </div>
                     </label>
                  </div>

                  <div class="col-md-2 col-sm-3 col-xs-6 single_picto">
                     <label for="check_test11">
                        <div class="single_picto_img">

                           <input type="checkbox" value="SPOT_PICTOGRAM_11" name="check"
                              id="check_test11"> <img src="images/pp011.png" alt="청각장애 편의서비스 안내그림" />
                           <h3>청각장애<br>편의서비스</h3>

                        </div>
                     </label>
                  </div>
                  <div class="col-md-2 col-sm-3 col-xs-6 single_picto">
                     <label for="check_test12">
                        <div class="single_picto_img">

                           <input type="checkbox" value="SPOT_PICTOGRAM_12" name="check"
                              id="check_test12"> <img src="images/pp012.png" alt="시각장애 편의서비스 안내그림" />
                           <h3>시각장애<br>편의서비스</h3>
                        </div>
                     </label>
                  </div>
            </div>
         </div>
         </div>
      </section>
    <table class="search search_trval" style="width: 200px; margin: auto; padding-top: -350px;">
               <!--    style="background-color: #393939 "  -->
                     <tr>
                        <td class="search_td" style="padding-right: 5PX;"><input  type="submit" id="전체보기" class="btn_전체보기 Travel1" value="모든 여행지"
                           name="allsearch"></td>
                        <td class="search_td"><input type="submit" id="선택보기" class="btn_선택보기 Travel2" value="편의 시설별 여행지"></td>
                     </tr>
                     </form>
                  </table>
      <input type="checkbox" id="box2"><label for="box2"><div
            style="width: 100px; height: 100px;"></div></label>


	









		<!-- footer Section -->

		<footer id="footer" class="footer">
			<div class="container">
				<div class="row">

					<div class="col-sm-5 col-sm-offset-7 col-xs-10 col-xs-offset-2">
						<div class="contact_area wow slideInLeft" data-wow-duration="2s">
							<div class="head_title text-center">
								<h2 style="color: white;">단체 소개</h2>
								
							</div>

							<div class="main_contact_content">
								<div class="row">
									<div class="col-sm-6">
										<div class="single_contact text-left" style="color: white;">
											<h5 style="font-weight: bold; color: white;">함께 오랑께</h5>
											<br> <span>스마트미디어인재개발원</span> <span>지역전략산업,<br>
												빅데이터서비스개발자과정
											</span>
										</div>
									</div>

									<div class="col-sm-6">
										<div class="single_contact text-left" style="color: white;">
											<h5>
												<span style="font-weight: bold; color:white ;">무장애 관광 정보 제공 서비스</span>
											</h5>
											<span>reservations@vegggie.com</span> <span>+062
												202-555-0114</span>
										</div>
									</div>
								</div>

								<div class="contact_form_area">
									<h5 style="color: white;">문의 메일 보내기</h5>
									<form action="Mail_Send" id="formid">
										<div class="row">
											<div class="col-sm-6 col-xs-6">
												<div class="form-group">
													<input type="text" class="form-control" name="Q_Name"
														placeholder="성함">
												</div>
											</div>

											<div class="col-sm-6 col-xs-6">
												<div class="form-group">
													<input type="email" class="form-control" name="Q_email"
														placeholder="메일주소">
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-sm-12">
												<div class="form-group">
													<textarea class="form-control" name="Q_text" rows="3"
														placeholder="문의내용을 적어주세요"></textarea>
												</div>


											</div>

											<div class="form_btn_area text-center">
												<input type="submit" class="btn" value="전송">
											</div>
										</div>
									</form>
								</div>

							</div>

						</div>
					</div>
				</div>


				<div class="row">
					<div class="copyright_text_area">
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="single_footer text-right wow zoomIn"
								data-wow-duration="2s">
								<p>
									Made with <i class="fa fa-heart"></i> by <a
										href="http://bootstrapthemes.co">함께 오랑께</a>2019. All
									Rights Reserved
								</p>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="single_footer text-right">

								<div class="footer_socail wow zoomIn" data-wow-duration="1.5s">
									<a href="https://www.facebook.com/smhrd0317"><i
										class="fa fa-facebook"></i></a> <a href="https://www.smhrd.or.kr"><i
										class="fa fa-linkedin"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>


		<!-- STRAT SCROLL TO TOP -->

		<div class="scrollup">
			<a href="#"><i class="fa fa-chevron-up"></i></a>
		</div>






		<script type="text/javascript" src="js/jquery/jquery.js"></script>

		<script type="text/javascript" src="js/script.js"></script>

		<script type="text/javascript" src="js/bootstrap/bootstrap.min.js"></script>

		<script type="text/javascript"
			src="js/fancybox/jquery.fancybox.pack.js"></script>

		<script type="text/javascript"
			src="js/nivo-lightbox/nivo-lightbox.min.js"></script>

		<script type="text/javascript"
			src="js/owl-carousel/owl.carousel.min.js"></script>



		<script type="text/javascript"
			src="js/jquery-easing/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="js/wow/wow.min.js"></script>
		<script type="text/javascript" src="js/slide.js" charset="UTF-8"></script>



		<script type="text/javascript" src="js/join.js"></script>
		<script type="text/javascript" src="js/searchJS.js"></script>
<!-- 		<script type="text/javascript" src="js/searchSpot.js"></script> -->
</body>
</html>