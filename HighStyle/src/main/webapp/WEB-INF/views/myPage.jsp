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
<link rel='stylesheet' type='text/css'
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="./resources/unify/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/unify/assets/css/style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet"
	href="./resources/unify/assets/css/headers/header-default.css">
<link rel="stylesheet"
	href="./resources/unify/assets/css/footers/footer-v1.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet"
	href="./resources/unify/assets/plugins/animate.css">
<link rel="stylesheet"
	href="./resources/unify/assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="./resources/unify/assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="./resources/unify/assets/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
<link rel="stylesheet"
	href="./resources/unify/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
<link rel="stylesheet"
	href="./resources/unify/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">

<!-- CSS Page Style -->
<link rel="stylesheet"
	href="./resources/unify/assets/css/pages/profile.css">
<link rel="stylesheet"
	href="./resources/unify/assets/css/pages/shortcode_timeline2.css">

<!-- CSS Theme -->
<link rel="stylesheet"
	href="./resources/unify/assets/css/theme-colors/default.css"
	id="style_color">
<link rel="stylesheet"
	href="./resources/unify/assets/css/theme-skins/dark.css">

<!-- CSS Customization : 시간표 -->
<link rel="stylesheet" href="./resources/unify/assets/css/custom.css">
<!-- ico -->
<link rel="shortcut icon" href="./resources/ico/highlighter.ico">
<style>
#noticeResi {
	float: right;
	width: 120px;
	background-color: #1279ff;
	padding-top: 5px;
	padding-left: 10px;
	padding-bottom: 1px;
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
</style>
</head>
<body>
	<div class="wrapper">
		<!--=== Header ===-->
		<div class="header">
			<div class="container">
				<!-- Logo -->
				<a class="logo" href="/Highlighter"> <img
					src="./resources/img/blue_Logo.png" alt="Logo">
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
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-responsive-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="fa fa-bars"></span>
				</button>
				<!-- End Toggle -->
			</div>
			<!--/end container-->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div
				class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
				<div class="container">
					<ul class="nav navbar-nav">
						<!-- Home -->
						<li class="dropdown"><a href="/Highlighter">Home</a></li>
						<!-- End Home -->

						<!-- teacher -->
						<li class="dropdown"><a href="javascript:void(0);"
							class="dropdown-toggle" data-toggle="dropdown"> 강사 </a>
							<ul class="dropdown-menu">
								<!-- About Pages -->
								<li class="dropdown-submenu"><a href="#">강사 이용방법</a></li>
								<!-- End About Pages -->

								<!-- regist lecture -->
								<li class="dropdown-submenu"><a href="javascript:void(0);">과외등록</a>
								</li>
								<!-- End regist lecture -->

								<!--  -->
								<li class="dropdown-submenu"><a href="javascript:void(0);">강사평가</a>
								</li>
								<!-- End  -->
							</ul></li>
						<!-- End teacher -->

						<!-- Student -->
						<li class="dropdown"><a href="javascript:void(0);"
							class="dropdown-toggle" data-toggle="dropdown"> 학생 </a>
							<ul class="dropdown-menu">
								<li class="dropdown-submenu"><a href="#">학생 이용방법</a></li>
								<li class="dropdown-submenu"><a href="#">과외 검색</a></li>
							</ul></li>
						<!-- End Student -->

						<!-- Parents -->
						<li class="dropdown"><a href="javascript:void(0);"
							class="dropdown-toggle" data-toggle="dropdown"> 학부모 </a>
							<ul class="dropdown-menu">
								<li class="dropdown-submenu"><a href="#">학부모 이용방법</a></li>
							</ul></li>
						<!-- End Parents -->

						<!-- Site intro -->
						<li class="dropdown"><a href="javascript:void(0);"
							class="dropdown-toggle" data-toggle="dropdown"> 사이트 소개 </a></li>
						<!-- End Site intro -->

						<!--  -->
						<li class="dropdown"><a href="javascript:void(0);"
							class="dropdown-toggle" data-toggle="dropdown"> 문의 </a></li>
						<!-- End Demo Pages -->
					</ul>
				</div>
				<!--/end container-->
			</div>
			<!--/navbar-collapse-->
		</div>
		<!--=== End Header ===-->

		<!--=== Profile ===-->
		<div class="container content profile">
			<div class="row">
				<!--Left Sidebar-->
				<div class="col-md-3 md-margin-bottom-40">
					<img class="img-responsive profile-img margin-bottom-20"
						src="./resources/unify/assets/img/team/img32-md.jpg"
						alt="teacherProfile">
					<!-- src="displayFile?fileName=${list.prof_photo }" -->
					<ul class="list-group sidebar-nav-v1 margin-bottom-40"
						id="sidebar-nav-1">
						<li id="StudyRoom" class="list-group-item"><a
							href="/Highlighter/myPage"><i class="fa fa-bar-chart-o"></i>
								MyPage<br>나의 정보</a></li>
						<li class="list-group-item"><a href="/Highlighter/modifyMyInfo"><i
								class="fa fa-user"></i>정보수정</a></li>
						<li class="list-group-item"><a
							href="/Highlighter/attendingLecture"><i class="fa fa-group"></i>
								수강중인 과외</a></li>
						<li class="list-group-item"><a
							href="/Highlighter/endLecture"><i
								class="fa fa-comments"></i> 수강완료 과외</a></li>
						<li class="list-group-item"><a
							href="/Highlighter/applicationList"><i
								class="fa fa-history"></i> 수강신청 목록</a></li>
						<li class="list-group-item"><a
							href="/Highlighter/message"><i
								class="fa fa-history"></i> 메세지</a></li>
						<li class="list-group-item"><a href="/Highlighter/trophy"><i
								class="fa fa-history"></i> 트로피 / 뱃지</a></li>
						<li class="list-group-item"><a href="/Highlighter/eva_read"><i
								class="fa fa-history"></i> 진단평가</a></li>
					</ul>
				</div>
				<!--End Left Sidebar-->

				<!-- Profile Content -->
				<div class="col-md-9">
					<div class="profile-body">

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
	</div>
	<!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript"
		src="./resources/unify/assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript"
		src="./resources/unify/assets/plugins/back-to-top.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/plugins/circles-master/circles.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/plugins/sky-forms-pro/skyforms/js/jquery-ui.min.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript"
		src="./resources/unify/assets/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="./resources/unify/assets/js/app.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/js/plugins/datepicker.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/js/plugins/circles-master.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/js/plugins/style-switcher.js"></script>
	
	<script>
		$(document).ready(function(){
			$("#noticeResi").click(function(){
				window.location.href="/Highlighter/uploadTrophy"
			});
		});
	</script>
</body>
</html>