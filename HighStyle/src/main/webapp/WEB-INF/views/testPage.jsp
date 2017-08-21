<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
	<title>Highlighter</title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Favicon -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Web Fonts -->
	<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="./resources/unify/assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="./resources/unify/assets/css/style.css">

	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="./resources/unify/assets/css/headers/header-default.css">
	<link rel="stylesheet" href="./resources/unify/assets/css/footers/footer-v1.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="./resources/unify/assets/plugins/animate.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">

	<!-- CSS Page Style -->
	<link rel="stylesheet" href="./resources/unify/assets/css/pages/profile.css">
	<link rel="stylesheet" href="./resources/unify/assets/css/pages/shortcode_timeline2.css">

	<!-- CSS Theme -->
	<link rel="stylesheet" href="./resources/unify/assets/css/theme-colors/default.css" id="style_color">
	<link rel="stylesheet" href="./resources/unify/assets/css/theme-skins/dark.css">

	<!-- CSS Customization : 시간표 -->
	<link rel="stylesheet" href="./resources/unify/assets/css/exam_custom.css" />
	<!-- ico -->
	<link rel="shortcut icon" href="./resources/ico/highlighter.ico">
	
	<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css">
	<style>
		#StudyRoom {
			background-color: #1279ff;
		}
		
		#StudyRoom a {
			color: white;
			font-size: 16px;
		}
		.teacherImg{
			margin:0 auto; 
			border:1px solid lightgray;
			height:180px;
			width:150px;
			margin-bottom:50px;
			margin-top:50px;
		}
	</style>
</head>
<body>
	<div class="wrapper">
		<!--=== Header ===-->
		<div class="header">
			<div class="container">
				<!-- Logo -->
				<a class="logo" href="/Highlighter">
					<img src="./resources/img/blue_Logo.png" alt="Logo">
				</a>
				<!-- End Logo -->

				<!-- Topbar -->
				<div class="topbar">
					<ul class="loginbar pull-right">
						<%--<li class="topbar-devider"></li> 이거 그거임 구분 짝대기 --%>
						<li id="logout"><a href="javascript:void(0);">Logout</a></li>
					</ul>
				</div>
				<!-- End Topbar -->

				<!-- Toggle get grouped for better mobile display -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="fa fa-bars"></span>
				</button>
				<!-- End Toggle -->
			</div><!--/end container-->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
				<div class="container">
					<ul class="nav navbar-nav">
						<!-- Home -->
						<li class="dropdown">
							<a href="/Highlighter">Home</a>
						</li>
						<!-- End Home -->

						<!-- teacher -->
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								강사
							</a>
							<ul class="dropdown-menu">
								<!-- About Pages -->
								<li class="dropdown-submenu">
									<a href="#">강사 이용방법</a>
								</li>
								<!-- End About Pages -->

								<!-- regist lecture -->
								<li class="dropdown-submenu">
									<a href="javascript:void(0);">과외등록</a>
								</li>
								<!-- End regist lecture -->

								<!--  -->
								<li class="dropdown-submenu">
									<a href="javascript:void(0);">강사평가</a>
								</li>
								<!-- End  -->
							</ul>
						</li>
						<!-- End teacher -->

						<!-- Student -->
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								학생
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-submenu">
									<a href="#">학생 이용방법</a>
								</li>
								<li class="dropdown-submenu">
									<a href="#">과외 검색</a>
								</li>
							</ul>
						</li>
						<!-- End Student -->

						<!-- Parents -->
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								학부모
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-submenu">
									<a href="#">학부모 이용방법</a>
								</li>
							</ul>
						</li>
						<!-- End Parents -->

						<!-- Site intro -->
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								사이트 소개
							</a>
						</li>
						<!-- End Site intro -->

						<!--  -->
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								문의
							</a>
						</li>
						<!-- End Demo Pages -->
					</ul>
				</div><!--/end container-->
			</div><!--/navbar-collapse-->
		</div>
		<!--=== End Header ===-->

		<!--=== Profile ===-->
		<div class="container content profile">
			<div class="row">
				<!--Left Sidebar-->
				<div class="col-md-3 md-margin-bottom-40">
					<img class="teacherImg img-responsive profile-img margin-bottom-20"
							src="displayFile?fileName=${TImage}"
							onerror="javascript:this.src='./resources/unify/assets/img/team/img32-md.jpg'"
							alt="teacherProfile" />
					<!-- src="displayFile?fileName=${list.prof_photo }" -->
					<ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
						<li id="StudyRoom" class="list-group-item">
							<a href="/Highlighter/newLecturePage?ext_id=${ext_id}"><i class="fa fa-bar-chart-o"></i> StudyRoom<br>과외 정보 관리</a>
						</li>
						<li class="list-group-item">
							<a href="homeworkPage?ext_id=${ext_id }&user_id=${user_id}"><i class="fa fa-user"></i> 숙제</a>
						</li>
						<li class="list-group-item">
							<a href="/Highlighter/testPage?ext_id=${ext_id}"><i class="fa fa-comments"></i> 시험</a>
						</li>
						<li class="list-group-item">
							<a href="/Highlighter/listAll?ext_id=${ext_id}"><i class="fa fa-history"></i> 다시보기</a>
						</li>
						<c:if test="${user_grade eq 'teacher'}">
							<li class="list-group-item">
								<a href="/Highlighter/classSTManagementList?ext_id=${ext_id}"><i class="fa fa-group"></i> 수강 학생 관리</a>
							</li> 
						</c:if>
						<%-- <li class="list-group-item">
							<a href="/Highlighter/classDeval?user_id=${id}&ext_id=${ext_id}&user_grade=${user_grade}"><i class="fa fa-cog"></i> 진단평가</a>
						</li> --%>
					</ul>
				</div>
				<!--End Left Sidebar-->

				<!-- Profile Content -->
				<div class="col-md-9">
					<div class="profile-body" style="border: 1px solid lightgray;">
						<!-- Lecture introduce and enter -->
						<div id="classIntro" style="border-left: 1px solid lightgray; border-top: 1px solid lightgray;border-right: 1px solid lightgray;">
							<span><img src="./resources/img/alarm-clock.png">시험 <c:if test="${user_grade eq 'teacher' }"><button style="border:1px solid lightgray; background:lightgray;" id="deleteExam">삭제</button><a id="registerExam" href="registerExam?ext_id=${ext_id}">시험 등록</a></c:if></span>
						</div>
						<!-- end row -->
						<div class="profile-bio" style="border-left: 1px solid lightgray; border-right: 1px solid lightgray;border-bottom: 1px solid lightgray;">
							<div class="row">
								<div class="col-md-12">
									<!-- 강사 정보 -->
									<div id="teacherInfo" class="panel margin-bottom-40" >
										<div  class="panel-body">
											<div class="teacher-testInfo">
												<!-- <div>최근 친 시험:</div>
												<div>전체 학생 수:</div>
												<div>시험 평균:</div> -->
												<c:if test="${test_InfoVO ne '[]'}">
												<table id="test_InfoTable">
													<tr>
														<th style="width:3%;"></th>
														<th style="width:13%;">주차</th>
														<th style="width:17%; ">제목</th>
														<th style="width:35%;">시험 기간</th>
														<th style="width:13%;">시험 시간(분)</th>
														<th style="width:13%;">상태</th>
													</tr>
													<c:forEach items="${test_InfoVO}" var="list">
														<tr>
															<td><input type="checkbox" id = "${list.test_id}" name="${list.test_id}"></td>
															<td>
																<script>
																	var test_id = '${list.test_id}';
																	var test_id2 = parseInt(test_id.substr(8,9));
																	document.write(test_id2+"주차");
																</script>
															</td>
															<td>${list.test_title}</td>
															<td style="font-size:12px;">
																<script>
																	var test_time = '${list.test_time}';
																	var test_date = '${list.test_date}';
																	var test_date2 = (test_date.substr(0,10)).split("/");
																	var test_date3 = (test_date.substr(10)).split(":");
																	console.log(test_date3);
																	var test_date4 = parseInt(test_date3[1])+parseInt(test_time);
																	if(test_date4 >= 60){
																		test_date4 = parseInt(test_date4) - 60;
																		if(test_date4 < 10){
																			test_date4 = "0"+test_date4
																		}
																		test_date3[0] = parseInt(test_date3[0])+1;
																		if(test_date3[0] < 10){
																			test_date3[0] = "0"+test_date3[0];
																		}
																		if(test_date3[0] > 24){
																			test_date3[0] = parseInt(test_date3[0]) - 24;
																		}
																	}
																	var end_date = test_date2[0]+"/"+test_date2[1]+"/"+test_date2[2]+" "+test_date3[0]+":"+test_date4;
																	document.write(test_date+"~"+end_date);
																</script>
															</td>
															<td>${list.test_time}</td>
															<td class="test_Stus">
																<script>
																	var test_id = '${list.test_id}';
																	var test_Minute = '${list.test_time}';
																	var test_date = '${list.test_date}';
																	var test_date2 = (test_date.substr(0,10)).split("/");
																	var test_date3 = (test_date.substr(11)).split(":");
																	var insertTime = new Date( Number(test_date2[0]), Number(test_date2[1])-1,Number(test_date2[2]),Number(test_date3[0]),Number(test_date3[1]),0);
																	var insertTime2 = new Date(Date.parse(insertTime) + 1000 * 60 * test_Minute);     // 1분후
																	console.log(insertTime);
																	console.log(insertTime2);
																	var now = new Date();
																	console.log(now);
																	if(insertTime.getTime() > now.getTime()){
																	    document.write('<div id="'+test_id+'"class="stus">시험대기</div>');
																	}
																	if(insertTime.getTime()<= now.getTime() && now.getTime() <= insertTime2.getTime()){
																		var test_state = '${list.test_state}';
																		var user_grade = '${user_grade}';
																		if(test_state == "clear"){
																			if(user_grade == "student"){
																				document.write('<div id="'+test_id+'"class="stus">결과보기</div>');
																			}
																			else{
																				if(insertTime2.getTime() > now.getTime()){
																					document.write('<div style="color:red" id="'+test_id+'"class="stus">시험 중</div>');
																				}
																			}
																		}
																		else{
																			if(user_grade == "student"){
																				document.write('<div style="color:red" id="'+test_id+'"class="stus">시험시작</div>');
																			}
																			else{
																				document.write('<div style="color:red" id="'+test_id+'"class="stus">시험 중</div>');
																			}
																		}
																	}
																	if(insertTime2.getTime() < now.getTime()){
																		/* document.write("결과보기"); */
																		document.write('<div id="'+test_id+'"class="stus">결과보기</div>');
																	}	
																</script>
															</td>
														</tr>
													</c:forEach>
												</table>
												</c:if>
												<c:if test="${test_InfoVO eq '[]'}">
													<div>출제된 시험이 존재하지 않습니다.</div>
												</c:if>
											</div>
										</div>
									</div>
									<!-- 강사 정보 끝 -->
								</div>
							</div>
						</div><!--/end row-->
			
					
						<!--/end row-->
					</div>
				</div>
				<!-- End Profile Content -->
			</div>
		</div>
		<!--=== End Profile ===-->

		<!--=== Footer Version 1 ===-->
		<div class="footer-v1">
			<div class="footer">
				<div class="container">
					<div class="row">
						<!-- About -->
						<div class="col-md-3 md-margin-bottom-40">
							<a href="index.html"><img id="logo-footer" class="footer-logo" src="./resources/img/logo.png" alt="logo"></a>
							<p>과외 중개 사이트가 아닌 매칭 사이트.</p>
							<p>온라인 과외 사이트</p>
						</div><!--/col-md-3-->
						<!-- End About -->
					</div>
				</div>
			</div><!--/footer-->

			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<p>
								2015 &copy; All Rights Reserved.
								<a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
							</p>
						</div>
					</div>
				</div>
			</div><!--/copyright-->
		</div>
		<!--=== End Footer Version 1 ===-->
	</div><!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="./resources/unify/assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="./resources/unify/assets/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/plugins/circles-master/circles.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/plugins/sky-forms-pro/skyforms/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript" src="./resources/unify/assets/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="./resources/unify/assets/js/app.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/js/plugins/datepicker.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/js/plugins/circles-master.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/js/plugins/style-switcher.js"></script>
	<script type="text/javascript"> /* bootstrap - scroll 최상위로 */
		jQuery(document).ready(function() {
			App.init();
			App.initScrollBar();
			Datepicker.initDatepicker();
			CirclesMaster.initCirclesMaster1();
			StyleSwitcher.initStyleSwitcher();
		});
	</script>
	<script>
		$(".stus").on("click", function(){
			if($(this).text() == "결과보기"){
				var test_id = $(this).attr("id");
				$.ajax({
					url : 'testResultCount',
					type : 'POST',
					dataType : 'text',
					data :{
						test_id : test_id
					},
					success:function(data){
						var user_grade = '${user_grade}';

						if(data != "0"){
							if(user_grade == "student"){
								window.open("wAnswNote?test_id="+test_id,"Highlighter","width=1300, height=830, resizable=no");
							}
							else{
								window.open("checkTestResult?test_id="+test_id,"Highlighter","width=800, height=400, resizable=no");
							}
						}
						else{
							alert("이전에 친 시험 기록이 없습니다.");
						}
					},
					error:function(data){
						
					}
				});
			}
			else if($(this).text() == "시험시작"){
				var currentExt_id = $(this).attr("id");
				var test_id = $(this).attr("id");
				$.ajax({
					url : 'changeTestState',
					type : 'POST',
					data :{
						currentExt_id : currentExt_id
					},
					success:function(data){
						if(data == "success"){
							window.open("examPage?test_id="+test_id,"Highlighter","width=1300, height=800, resizable=no");
						}
					}
				});	
			}
			else{
				alert("시험을  칠 수 있는 시간이 아닙니다.");
			}
		});
	</script>
	<script>
		$("#deleteExam").on("click", function(){
			
		});
	</script>
</body>
</html>
