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
					<img style="width:270px;"src="./resources/img/high_logo.png" alt="Logo">
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
				<c:if test="${user_grade eq 'teacher'}">
					<div class="col-md-3 md-margin-bottom-40">
						<img class="teacherImg img-responsive profile-img margin-bottom-20"
							src="displayFile?fileName=${classMainList.prof_photo}"
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
								<a href="testPage?ext_id=${ext_id}"><i class="fa fa-comments"></i> 시험</a>
							</li>
							<%-- <li class="list-group-item">
								<a href="testPage?ext_id=${ext_id}"><i class="fa fa-comments"></i> 오답노트</a>
							</li> --%>
							<li class="list-group-item">
								<a href="/Highlighter/listAll?ext_id=${ext_id}"><i class="fa fa-history"></i> 다시보기</a>
							</li>
							<li class="list-group-item">
								<a href="/Highlighter/classSTManagementList?ext_id=${ext_id}"><i class="fa fa-group"></i> 수강 학생 관리</a>
							</li>
							<%-- <li class="list-group-item">
								<a href="/Highlighter/classDeval?user_id=${id}&ext_id=${ext_id}&user_grade=${user_grade}"><i class="fa fa-cog"></i> 진단평가</a>
							</li> --%>
						</ul>
					</div>
				</c:if>
				<!-- 학생 화면 -->
				<c:if test="${user_grade ne 'teacher' }">
					<div class="col-md-3 md-margin-bottom-40">
						<img class="teacherImg img-responsive profile-img margin-bottom-20"
							src="displayFile?fileName=${classMainList.prof_photo}"
							onerror="javascript:this.src='./resources/unify/assets/img/team/img32-md.jpg'"
							alt="studentProfile" />
						<ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
							<li id="StudyRoom" class="list-group-item">
								<a href="/Highlighter/newLecturePage?ext_id=${ext_id}"><i class="fa fa-bar-chart-o"></i> StudyRoom<br>과외 정보 관리</a>
							</li>
							<li class="list-group-item">
								<a href="homeworkPage?ext_id=${ext_id }&user_id=${user_id}"><i class="fa fa-user"></i> 숙제</a>
							</li>
							<li class="list-group-item">
								<a href="testPage?ext_id=${ext_id}"><i class="fa fa-comments"></i> 시험</a>
							</li>
							<%-- <li class="list-group-item">
								<a href="testPage?ext_id=${ext_id}"><i class="fa fa-comments"></i> 오답노트</a>
							</li> --%>
							<li class="list-group-item">
								<a href="/Highlighter/listAll?ext_id=${ext_id}"><i class="fa fa-history"></i> 다시보기</a>
							</li>
							<%-- <li class="list-group-item">
								<a href="/Highlighter/classDeval?user_id=${id}&ext_id=${ext_id}&user_grade=${user_grade}"><i class="fa fa-cog"></i> 진단평가</a>
							</li> --%>
						</ul>
					</div>
				</c:if>
				<!--End Left Sidebar-->

				<!-- Profile Content -->
				<div class="col-md-9">
					<div class="profile-body">
						<!-- Lecture introduce and enter -->
						<div id="classIntro">
							<img src="./resources/img/male-cartoon-pointing-to-white-board.png"><span style="font-weight:100; color:black;">과외 소개</span>
							<c:if test="${user_grade eq 'teacher' }">
								<c:if test="${open_stus eq 'y'}">
									<button id="classExit">강의 닫기</button>
								</c:if>
								<c:if test="${open_stus eq 'n'}">
									<button id="classGoIn">강의 열기</button>
								</c:if>
							</c:if>
							<c:if test="${user_grade eq 'student' }">
								<c:if test="${open_stus eq 'y'}">
									<button id="classGoIn">강의 입장</button>
								</c:if>
							</c:if>
						</div>
						<!-- end row -->
						<div class="profile-bio">
							<div class="row">
								<div class="col-md-12">
									<!-- 강사 정보 -->
									
										<div style="margin-left:15px; margin-right:16px;border:1px solid lightgray;" class="panel-heading">
											<h3 style="text-align:center"class="panel-title">
												과외 정보
											</h3>
										</div>
										<div style="border:1px solid white;" class="panel-body">
											<table class="table table-bordered">
												<thead>
													<tr>
														<td>과목</td>
														<td>
															<script>
																var classCode = '${classMainList.ext_id}';
																var subject = classCode.substr(2,2);
																if (subject == "01") 
																{
																	document.write("국어");
																}
																else if (subject == "02") 
																{
																	document.write("영어");
																} 
																else if (subject == "03") 
																{
																	document.write("수학");
																}
															</script>
														</td>
														<td class="hidden-sm">온/오프라인</td>
														<td>
															<script>
																var classCode = '${classMainList.ext_id}';
																var subject = classCode.substr(0,1);
																if (subject = "1") 
																{
																	document.write("온라인");
																} 
																else if (subject = "2") 
																{
																	document.write("오프라인");
																}
															</script>
														</td>														
													</tr>
												</thead>	
												<tbody>
													<tr>
														<td>수강학생 수</td>
														<td>
															<script>
																var numclassReq = '${count_student}';
																document.write(numclassReq);
															</script>
														</td>
														<td class="hidden-sm">과외 대상</td>
														<td>
															<script>
																var extObj = '${classMainList.ext_obj}';
																document.write(extObj);
															</script>
														</td>
													</tr>
													<tr>
														<td>수업난이도</td>
														<td>
															<script>
																var classlev = '${classMainList.class_lev}';
																document.write(classlev);
															</script>
														</td>
														<td class="hidden-sm">과외 형태</td>
														<td>
															<script>
																var extWay = '${classMainList.ext_way}';
																document.write(extWay)
															</script>
														</td>
													</tr>
													<tr>
														<td>강의시작날짜</td>
														<td>
															<script>
																var startdate = '${classMainList.str_class_date}';
																document.write(startdate)
															</script>
														</td>
														<td class="hidden-sm">강의종료날짜</td>
														<td>
															<script>
																var enddate = '${classMainList.end_class_date}';
																document.write(enddate)
															</script>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
								
									<!-- 강사 정보 끝 -->
								</div>
							</div>
						</div><!--/end row-->

						<div class="row">
							<!-- Lecture intro -->
							<div class="col-sm-6 sm-margin-bottom-30">
								<div style="background-color:#f7f7f7;"class="panel panel-profile">
									<div style="border-bottom:1px solid lightgray;"class="panel-heading overflow-h">
										<h2 class="panel-title heading-sm pull-left"><i class="fa fa-lightbulb-o"></i> 수업소개 </h2>
									</div>
									<div style="overflow:auto; height:158px;"class="panel-body">
										${classMainList.intro_class}
									</div>
								</div>
							</div>
							<!--End Lecture intro-->

							<!-- preview -->
							<div class="col-sm-6 sm-margin-bottom-30">
								<div style="background-color:#f7f7f7;"class="panel panel-profile">
									<div style="border-bottom:1px solid lightgray;" class="panel-heading overflow-h">
										<h2 class="panel-title heading-sm pull-left"><i class="fa fa-pencil"></i> 공지사항</h2>
										<form method="post">
											<c:if test="${user_grade eq 'teacher' }">
												<!-- <a id="noticeResi"> 등록 </a> -->
											</c:if>
										</form>
										<script>
											$("#noticeResi").on("click",function(){
														$("form").attr("action","noticeResi");
														$("form").attr("method","get");
														$("form").submit();
													});
										</script>
									</div>
									<div class="panel-body">
										<div class="notice"><img src="./resources/img/checked.png"> 수업 시간은 꼭 지켜주세요.</div>
										<div class="notice"><img src="./resources/img/checked.png"> 복습은 꾸준히 합시다.</div>
										<div class="notice"><img src="./resources/img/checked.png"> 숙제는 잊어버리지마세요.</div>
									</div>
								</div>
							</div>
							<!--End preview-->
						</div>
						<!--/end row-->

						<!--Schedule-->
						<div style="background-color:#f7f7f7;" class="panel panel-profile">
							<div style="border-bottom:1px solid lightgray;"class="panel-heading overflow-h">
								<img src="./resources/img/timetable.png"><h2 class="panel-title heading-sm pull-left"> 시간표 </h2>
							</div>
							<div class="panel-body margin-bottom-40">
								<div id="timeTable" class="tableDiv">
						    		<div id="base">
									    <div class="line">
									      <div class="null">&nbsp;</div>	<div class="textalign tableRow">월</div><div class="textalign tableRow">화</div><div class="textalign tableRow">수</div><div class="textalign tableRow">목</div><div class="textalign tableRow">금</div><div class="textalign tableRow">토</div><div class="textalign tableRow">일</div>
									    </div>
									    <div class="line">
									      <div class="tableColumn">9:00~10:00</div>	<div id="a9" class="block">&nbsp;</div><div id="b9" class="block">&nbsp;</div><div id="c9" class="block">&nbsp;</div><div id="d9" class="block">&nbsp;</div><div id="e9" class="block">&nbsp;</div><div id="f9" class="block">&nbsp;</div><div id="g9" class="block">&nbsp;</div>
									    </div>
									    <div class="line">
									      <div class="tableColumn">10:00~11:00</div>  <div id="a10" class="block">&nbsp;</div><div id="b10" class="block">&nbsp;</div><div id="c10" class="block">&nbsp;</div><div id="d10" class="block">&nbsp;</div><div id="e10" class="block">&nbsp;</div><div id="f10" class="block">&nbsp;</div><div id="g10" class="block">&nbsp;</div>
									    </div>
									    <div class="line">
									      <div class="tableColumn">11:00~12:00</div>  <div id="a11" class="block">&nbsp;</div><div id="b11" class="block">&nbsp;</div><div id="c11" class="block">&nbsp;</div><div id="d11" class="block">&nbsp;</div><div id="e11" class="block">&nbsp;</div><div id="f11" class="block">&nbsp;</div><div id="g11" class="block">&nbsp;</div>
									    </div>
									    <div class="line">
									      <div class="tableColumn">12:00~13:00</div>  <div id="a12" class="block">&nbsp;</div><div id="b12" class="block">&nbsp;</div><div id="c12" class="block">&nbsp;</div><div id="d12" class="block">&nbsp;</div><div id="e12" class="block">&nbsp;</div><div id="f12" class="block">&nbsp;</div><div id="g12" class="block">&nbsp;</div>
									    </div>
									    <div class="line">
									      <div class="tableColumn">13:00~14:00</div>  <div id="a13" class="block">&nbsp;</div><div id="b13" class="block">&nbsp;</div><div id="c13" class="block">&nbsp;</div><div id="d13" class="block">&nbsp;</div><div id="e13" class="block">&nbsp;</div><div id="f13" class="block">&nbsp;</div><div id="g13" class="block">&nbsp;</div>
									    </div>
									    <div class="line">
									      <div class="tableColumn">14:00~15:00</div>  <div id="a14" class="block">&nbsp;</div><div id="b14" class="block">&nbsp;</div><div id="c14" class="block">&nbsp;</div><div id="d14" class="block">&nbsp;</div><div id="e14" class="block">&nbsp;</div><div id="f14" class="block">&nbsp;</div><div id="g14" class="block">&nbsp;</div>
									    </div>
									    <div class="line">
									      <div class="tableColumn">15:00~16:00</div>  <div id="a15" class="block">&nbsp;</div><div id="b15" class="block">&nbsp;</div><div id="c15" class="block">&nbsp;</div><div id="d15" class="block">&nbsp;</div><div id="e15" class="block">&nbsp;</div><div id="f15" class="block">&nbsp;</div><div id="g15" class="block">&nbsp;</div>
									    </div>
									    <div class="line">
									      <div class="tableColumn">16:00~17:00</div>  <div id="a16" class="block">&nbsp;</div><div id="b16" class="block">&nbsp;</div><div id="c16" class="block">&nbsp;</div><div id="d16" class="block">&nbsp;</div><div id="e16" class="block">&nbsp;</div><div id="f16" class="block">&nbsp;</div><div id="g16" class="block">&nbsp;</div>
									    </div>
									    <div class="line">
									      <div class="tableColumn">17:00~18:00</div>  <div id="a17" class="block">&nbsp;</div><div id="b17" class="block">&nbsp;</div><div id="c17" class="block">&nbsp;</div><div id="d17" class="block">&nbsp;</div><div id="e17" class="block">&nbsp;</div><div id="f17" class="block">&nbsp;</div><div id="g17" class="block">&nbsp;</div>
									    </div>
									    <div class="line">
									      <div class="tableColumn">18:00~19:00</div>  <div id="a18" class="block">&nbsp;</div><div id="b18" class="block">&nbsp;</div><div id="c18" class="block">&nbsp;</div><div id="d18" class="block">&nbsp;</div><div id="e18" class="block">&nbsp;</div><div id="f18" class="block">&nbsp;</div><div id="g18" class="block">&nbsp;</div>
									    </div>
									    <div class="line">
									      <div class="tableColumn">19:00~20:00</div>  <div id="a19" class="block">&nbsp;</div><div id="b19" class="block">&nbsp;</div><div id="c19" class="block">&nbsp;</div><div id="d19" class="block">&nbsp;</div><div id="e19" class="block">&nbsp;</div><div id="f19" class="block">&nbsp;</div><div id="g19" class="block">&nbsp;</div>
									    </div>
									    <div class="line">
									      <div class="tableColumn">20:00~21:00</div>  <div id="a20" class="block">&nbsp;</div><div id="b20" class="block">&nbsp;</div><div id="c20" class="block">&nbsp;</div><div id="d20" class="block">&nbsp;</div><div id="e20" class="block">&nbsp;</div><div id="f20" class="block">&nbsp;</div><div id="g20" class="block">&nbsp;</div>
									    </div>
									    <div class="line">
									      <div class="tableColumn">21:00~22:00</div>  <div id="a21" class="block">&nbsp;</div><div id="b21" class="block">&nbsp;</div><div id="c21" class="block">&nbsp;</div><div id="d21" class="block">&nbsp;</div><div id="e21" class="block">&nbsp;</div><div id="f21" class="block">&nbsp;</div><div id="g21" class="block">&nbsp;</div>
									    </div>
									    <div class="line">
									      <div class="tableColumn">22:00~23:00</div>  <div id="a22" class="block">&nbsp;</div><div id="b22" class="block">&nbsp;</div><div id="c22" class="block">&nbsp;</div><div id="d22" class="block">&nbsp;</div><div id="e22" class="block">&nbsp;</div><div id="f22" class="block">&nbsp;</div><div id="g22" class="block">&nbsp;</div>
									    </div>
									    <div class="line">
									      <div class="tableColumn">23:00~24:00</div>  <div id="a23" class="block">&nbsp;</div><div id="b23" class="block">&nbsp;</div><div id="c23" class="block">&nbsp;</div><div id="d23" class="block">&nbsp;</div><div id="e23" class="block">&nbsp;</div><div id="f23" class="block">&nbsp;</div><div id="g23" class="block">&nbsp;</div>
									    </div>
									    <div class="line">
									      <div class="tableColumn">24:00~1:00</div>  <div id="a24" class="block">&nbsp;</div><div id="b24" class="block">&nbsp;</div><div id="c24" class="block">&nbsp;</div><div id="d24" class="block">&nbsp;</div><div id="e24" class="block">&nbsp;</div><div id="f24" class="block">&nbsp;</div><div id="g24" class="block">&nbsp;</div>
									    </div>
					  				</div>
						    	</div>
							</div>
						</div>
						<!--End Schedule-->
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
	<script type="text/javascript">
		jQuery(document).ready(function() { /* bootstrap - scroll 최상위로 */
			App.init();
			App.initScrollBar();
			Datepicker.initDatepicker();
			CirclesMaster.initCirclesMaster1();
			StyleSwitcher.initStyleSwitcher();
		});
	</script>
	<script>
	$("#logout").on("click", function(){
		window.location.href="logout";
	});
	
	$(document).ready(function() {
	$("#classGoIn").click(function(){
				var ext_id = '${ext_id}';
				var user_id = '${user_id}';
				var user_grade='${user_grade}';
				
				if(user_grade=="teacher")
				{
					$.ajax({
							url : "classOpen",
							type:"POST",
							dataType : "text",
							contentType: "application/json; charset=UTF-8",
							data: JSON.stringify({
								ext_id : ext_id,
								user_id : user_id
							}),
							success : function(data) {
								if(data=="success"){
									alert("성공!");
									window.location.reload();
									window.open("https://192.168.43.136:443/board.html?ext_id=${ext_id}&id=${user_id}"); //106.249.38.98,192.168.43.136 106.249.38.110 192.168.43.136
								}
							},
							error : function(data) {
								alert("실패!");
							}
						});
				}
				else if(user_grade=="student")
				{
					window.open("https://192.168.43.136:443/board.html?ext_id=${ext_id}&id=${user_id}"); //192.168.51.19
				}
			});
			$("#classExit").click(function(){ //이거 추가해야함 그리고 버튼도 만들고 css도 추가같이 해야함
				var ext_id = '${ext_id}';
				var user_id = '${user_id}';
				$.ajax({
						url : "classClose",
						type : "post",
						dataType : "text",
						contentType : "application/json",
						data : JSON.stringify({
							ext_id : ext_id,
							user_id : user_id

						}),
						success : function(data) {
							if (data == "success"){
								alert("성공!");
								window.location.reload();
							}
						},
						error : function(data) {
							alert("실패!");
						}
					});
				});
			});
	</script>
	<script>
	$(document).ready(function(){
		$.ajax({
			type : "GET",
			url : "lectureSchedule",
			data : {
				ext_id : '${ext_id}'
			},
			contentType : "text",
			dataType : "json",
			success : function(data){
				for(var i = 0 ; i < data.length; i++){
					var day_week = data[i].day_week;
					var class_str_time = data[i].class_str_time;
					var class_end_time = data[i].class_end_time;
					
					var ext_id = '${ext_id}';
					var subject = "";
					if(ext_id.substr(2,2) == "01"){subject = "국어"}
					else if(ext_id.substr(2,2) == "02"){subject = "영어"}
					else if(ext_id.substr(2,2) == "03"){subject = "수학"}
					
					for(var k = class_str_time; k < class_end_time; k++){
						if(day_week == "월"){
							day_week = "a";
		    			} else if(day_week == "화"){
		    				day_week = "b";
		    			} else if(day_week == "수"){
		    				day_week = "c";
		    			} else if(day_week == "목"){
		    				day_week = "d";
		    			} else if(day_week == "금"){
		    				day_week = "e";
		    			} else if(day_week == "토"){
		    				day_week = "f";
		    			} else if(day_week == "일"){
		    				day_week = "g";
		    			}
						var strBlock = day_week+k;
						$("#"+strBlock).css("background-color","#f5f5f5");
						$("#"+strBlock).html('<a style="color:gray;">'+subject+'</a><br/><a style="font-size:11px; color:gray;">'+"("+data[i].user_name+" 강사님)</a>");
					}
					
				}
				
			},
			error : function(data){
				alert("강의 시간표 DB 불러오기 실패!");
			}
		});
	});
	</script>
</body>
</html>
