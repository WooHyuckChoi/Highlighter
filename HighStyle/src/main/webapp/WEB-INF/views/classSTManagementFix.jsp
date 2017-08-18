<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
	<link rel="stylesheet" href="./resources/unify/assets/css/custom.css">
	<!-- ico -->
	<link rel="shortcut icon" href="./resources/ico/highlighter.ico">
	
	<!-- morris JS -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
	<script type="text/javascript" src="./resources/morris/morris.min.js"></script>
	<script type="text/javascript" src="./resources/morris/raphael.min.js"></script>

	<%--캘린더 --%>
	<link rel='stylesheet' href='./resources/fullCalendar/fullcalendar.css' />
	<script src='./resources/fullCalendar/moment.min.js'></script>
	<script src='./resources/fullCalendar/jquery.min.js'></script>
	<script src='./resources/fullCalendar/fullcalendar.js'></script>
<style>
#noticeResi {
	float: right;
	width: 90px;
	background-color: #1279ff;
	padding-top: 5px;
	padding-left: 10px;
	padding-bottom: 5px;
	margin-top: -5px;
	color: white;
	border-radius: 5px;
	border: solid 1px #1279ff;
	margin-top: 2px;
}

#StudyRoom {
	background-color: #1279ff;
}

#StudyRoom a {
	color: white;
	font-size: 16px;
}

.tab-v1 .nav-tabs>.active>a, .tab-v1 .nav-tabs>.active>a:hover, .tab-v1 .nav-tabs>.active>a:focus
	{
	background: #60a6fd;
}

.tab-v1 .nav-tabs {
	border-bottom: solid 2px #60a6fd;
}

.tab-v1 .nav-tabs>li>a:hover {
	background: #60a6fd;
}

#studentscore table {
	border-collapse: collapse;
	width: 100%;
}

#studentscore th, td {
	text-align: left;
	padding: 8px;
}

#table123 {
	margin-left: 15%;
}

#studentscore {
	float: left;
}

/* 수강 정보 관리 */
   .toggler { width: 500px; height: 200px; position: relative; }
   #button { float:left; margin-top:160px; position:relative; width:70px; height:70px; background:url(./resources/img/in.png) no-repeat; text-indent:-9999px; cursor:pointer;}
   #effect { width: 500px; height: 135px;  position: fixed;  left:-300px; top:0%;}
   #content { width:300px; float:left; font: 28px/1.6 NanumBrushWeb; height:730%; background-color:rgba(0,0,0,0.9); color:white;}
/* */

#infoWrap{
	width:250px;
	height:120px;
	margin: 0 auto;	
}
#infoWrap img{
	float:left;
	width: 110px;
	height: 100px;
}
#infoWrap p{
	font-size:14px;
	width:60px;
	overflow: hidden;
}
#infoWrap button{
	font-size:14px;
	float:right;
	width:80px;
	overflow: hidden;
}
</style>
</head>
<body>
	<div class="wrapper">
		<!--=== Header ===-->
		<div class="header" style="z-index: 0;">
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
				<!-- 강사화면 -->
				<c:if test="${user_grade eq 'teacher' }">
					<div class="col-md-3 md-margin-bottom-40">
						<img class="img-responsive profile-img margin-bottom-20"
						src="displayFile?fileName=${user_info.prof_photo }"
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
								<a href="/Highlighter/classSTManagementList?ext_id=${ext_id}"><i class="fa fa-group"></i> 수강 학생 관리</a>
							</li>
							<li class="list-group-item">
								<a href="testPage?ext_id=${ext_id}"><i class="fa fa-comments"></i> 시험</a>
							</li>
							<li class="list-group-item">
								<a href="testPage?ext_id=${ext_id}"><i class="fa fa-comments"></i> 오답노트</a>
							</li>
							<li class="list-group-item">
								<a href="/Highlighter/listAll?ext_id=${ext_id}"><i class="fa fa-history"></i> 다시보기</a>
							</li>
							<li class="list-group-item">
								<a href="/Highlighter/classDeval?user_id=${id}&ext_id=${ext_id}&user_grade=${user_grade}"><i class="fa fa-cog"></i> 진단평가</a>
							</li>
						</ul>
					</div>
				</c:if>
				<!-- Profile Content -->
				<div class="col-md-9">
					<div class="profile-body">
						<!-- Lecture introduce and enter -->
						<div id="classIntro">
							<span>수강 학생 관리</span>
						</div>
						<!-- end row -->
						<div class="profile-bio">
							<div class="row">
								<div class="col-md-12">
									<!-- 강사 정보 -->
									<div id="teacherInfo" class="panel margin-bottom-40">
										<div class="panel-heading">
											<h3 class="panel-title">
												학생 정보
											</h3>
										</div>
										<div class="panel-body">
											<table class="table table-bordered">
												<thead>
													<tr>
														<td>이름</td>
														<td>
															${listProfile.user_name}
														</td>
														<td class="hidden-sm">주소</td>
														<td>
															${listProfile.address}
														</td>														
													</tr>
												</thead>	
												<tbody>
													<tr>
														<td>나이</td>
														<td>
															<script>
																var today = new Date();
																var years = today.getFullYear()
																var birth_date = '${listProfile.birth_date}';
																var year = birth_date.substr(0, 4);
																document.write(years - year + 1);
															</script>
														</td>
														<td class="hidden-sm">이메일</td>
														<td>
															${listProfile.user_email}
														</td>
													</tr>
													<tr>
														<td>학교</td>
														<td>
															${listProfile.college}
														</td>
														<td class="hidden-sm">휴대폰</td>
														<td>
															${listProfile.phone}
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<!-- 강사 정보 끝 -->
								</div>
							</div>
						</div><!--/end row-->

						<hr>

						<div class="row">
							<!-- Lecture intro -->
							<div class="col-sm-12 sm-margin-bottom-30">
								<div class="panel panel-profile">
									<div class="panel-heading overflow-h">
										<div class="tab-v1">
											<h2 class="panel-title heading-sm pull-left">
												<ul class="nav nav-tabs">
													<li class="active"><a href="#home-1" data-toggle="tab">학생성적
															및 통계</a></li>
													<li><a href="#profile-1" data-toggle="tab">학습 태도</a></li>
												</ul>
											</h2>
										</div>
									</div>
									<div class="panel-body">
										<div class="tab-content">
											<!-- 통계 Forms -->
											<div class="tab-pane fade in active" id="home-1">
												<!-- 통계 -->
												<div id="statistics">
													<div id="statistics1"></div>
													<div id="studentscore">
														<table id="table124">
															<tr>
																<th>주차</th>
																<th>시험일</th>
																<th>점수</th>
																<th>오답노트</th>
															</tr>

															<c:forEach items="${ListWeeksCorrect}" var="stuList">
																<tr>
																	<td>${stuList.test_id }</td>
																	<td>${stuList.test_date }</td>
																	<td>${stuList.count }</td>
																	<td>${stuList.wrong_note }</td>
																</tr>
															</c:forEach>
														</table>
													</div>
												</div>
												<!-- end -->
												<!--/ Success states for elements -->
											</div>
											<%-- 학습태도 Form --%>
											<div class="tab-pane fade" id="profile-1">
												<div id=attitude>
													<!-- 캘린터 div를 클릭하였을때 controller의 cal에 접근하여서 view를 반환해줘야 한다. -->
													<iframe
														src="/Highlighter/cal?ext_id=${ext_id }&user_id=${stu_id}"
														width="800px" height="615px" frameborder="0"
														scrolling="no"></iframe>
													<div class="col-md-9">
														<ul class="timeline-v2">
															<c:forEach items="${calList }" var="calList">
																<li class="equal-height-columns">
																	<div class="cbp_tmtime equal-height-column">
																		<span style="width:80px;">${calList.post_date }</span>
																		<span>
																			<script>
																				var weekday = getWeekday("${calList.post_date }");
																				document.write(weekday);
																				
																				function getWeekday(sDate)
																				{
																					/* var yy = parseInt(sDate.substr(0, 4), 10);
																				    var mm = parseInt(sDate.substr(5, 2), 10);
																				    var dd = parseInt(sDate.substr(8), 10);
																				    var d = new Date(yy,mm - 1, dd); */
																				    var d = new Date(sDate);
																				    var weekday=new Array(7);
																				    
																				    weekday[0]="Sunday";
																				    weekday[1]="Monday";
																				    weekday[2]="Tuesday";
																				    weekday[3]="Wednesday";
																				    weekday[4]="Thursday";
																				    weekday[5]="Friday";
																				    weekday[6]="Saturday";
																				    
																				    return weekday[d.getDay()];
																				}
																			</script>
																		</span>
																	</div> <i class="cbp_tmicon rounded-x hidden-xs"></i>
																	<div class="cbp_tmlabel equal-height-column">
																		<div class="row">
																			<div class="col-md-4">
																				<img class="img-responsive"
																					src="assets/img/main/img1.jpg" alt="">
																				<div class="md-margin-bottom-20"></div>
																			</div>
																			<div class="col-md-8">
																				<p>${calList.learn_att }</p>
																			</div>
																		</div>
																	</div>
																</li>
															</c:forEach>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--End Lecture intro-->
							</div>
							<!--/end row-->
						</div>
					</div>
				<!-- End Profile Content -->
			</div>
		</div>
		<!--=== End Profile ===-->
	</div><!--/wrapper-->
</div>
		<!--=== Footer Version 1 ===-->
		<div class="footer-v1">
			<div class="footer">
				<div class="container">
					<div class="row">
						<!-- About -->
						<div class="col-md-3 md-margin-bottom-40">
							<a href="index.html"><img id="logo-footer"
								class="footer-logo" src="./resources/img/logo.png" alt="logo"></a>
							<p>과외 중개 사이트가 아닌 매칭 사이트.</p>
							<p>온라인 과외 사이트</p>
						</div>
						<!--/col-md-3-->
						<!-- End About -->
					</div>
				</div>
			</div>
			<!--/footer-->

			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<p>
								2015 &copy; All Rights Reserved. <a href="#">Privacy Policy</a>
								| <a href="#">Terms of Service</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<!--/copyright-->
		</div>
		<!--=== End Footer Version 1 ===-->
	
	<script>
		Morris.Bar({
			  element: 'statistics1',
		      data: ${json},
			  xkey: 'times',
			  ykeys: ['점수'],
			  labels: ['점수'],
			  parseTime : false
			});
	</script>
	
	
	<div id="effect">
		<div id="content">
			<div style="font-size: 15px;">
				<%-- <img src="displayFile?fileName=${list.prof_photo }" style="width:50px; height:50px; border:1px solid #626262; margin:10px;border-radius: 50px; "> --%>
				[${user_name}] 강사님
			</div>
			<div
				style="margin: 10px; height: 30px; font-size: 13px; position: relative; font-size: 20px; text-align: center;">학생목록</div>
			<hr />
			<c:forEach items="${info }" var="info">
				<div id="infoWrap">
					<%-- <img src="displayFile?fileName=${info.prof_photo }" /> --%>
					<p style="font-size: 14px;">${info.user_name}</p>
					<a style="color:white; text-decoration: none;"
						href="/Highlighter/classSTManagementFix?ext_id=${ext_id }&user_id=${info.user_id}">바로가기</a>
				</div>
			</c:forEach>
		</div>
		<div id="button">
			<p>
				<a href="#">Toggle</a>
			</p>
		</div>
	</div>
	
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
	
	<script type="text/javascript">
		jQuery(document).ready(function() { /* bootstrap - scroll 최상위로 */
			App.init();
			App.initScrollBar();
			Datepicker.initDatepicker();
			CirclesMaster.initCirclesMaster1();
			StyleSwitcher.initStyleSwitcher();
			
			jQuery( "#button" ).toggle(
				      function() {
				         jQuery( "#effect" ).animate({left: 0}, 500 );
				         jQuery( "#button" ).css({"background":"url(./resources/img/in.png) no-repeat"});
				      },
				      function() {
				         jQuery( "#effect" ).animate({left: '-300px'}, 500 );
				         jQuery( "#button" ).css({"background":"url(./resources/img/out.png) no-repeat"});
				      }
				   );
		});
	</script>
	<script>
	$("#logout").on("click", function(){
		window.location.href="logout";
	});
	</script>
</body>
</html>
