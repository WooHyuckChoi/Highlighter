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

	<!-- CSS Theme -->
	<link rel="stylesheet" href="./resources/unify/assets/css/theme-colors/default.css" id="style_color">
	<link rel="stylesheet" href="./resources/unify/assets/css/theme-skins/dark.css">

	<!-- ico -->
	<link rel="shortcut icon" href="./resources/ico/highlighter.ico">
	

<!-- 시간표 팝업 띄우기 -->
<script type="text/javascript">
	function login() {
	  
    $('#popup').bPopup();
   
  };
</script>
<style type="text/css">
/* 시간표 팝업 */
.layer {
	display: none;
	position: fixed;
	_position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 100;
}

.layer .bg {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #000;
	opacity: .5;
	filter: alpha(opacity = 50);
}

.layer .pop-layer {
	display: block;
}

.pop-layer {
	display: none;
	position: absolute;
	top: 50%;
	left: 50%;
	width: 410px;
	height: auto;
	background-color: #fff;
	border: 5px solid #3571B5;
	z-index: 10;
}

.pop-layer .pop-container {
	padding: 20px 25px;
}

.pop-layer p.ctxt {
	color: #666;
	line-height: 25px;
}

.pop-layer .btn-r {
	width: 100%;
	margin: 10px 0 20px;
	padding-top: 10px;
	border-top: 1px solid #DDD;
	text-align: right;
}

a.cbtn {
	display: inline-block;
	height: 25px;
	padding: 0 14px 0;
	border: 1px solid #304a8a;
	background-color: #3f5a9d;
	font-size: 13px;
	color: #fff;
	line-height: 25px;
}

a.cbtn:hover {
	border: 1px solid #091940;
	background-color: #1f326a;
	color: #fff;
}

div#locationSelect1 {
	margin: 0;
}

div#locationSelect2 {
	margin: 0;
}

#step1 {
	width: 10%;
	height: 100%;
	text-align: center;
	float: left;
}

#step2 {
	width: 10%;
	height: 100%;
	text-align: center;
	float: left;
}

.step {
	border-top: solid black 5px;
	border-left: solid gray 1px;
	border-right: solid gray 1px;
	border-bottom: solid gray 1px;
}

.insertArea {
	border: solid black 1px;
}

#insertArea1 {
	display: block;
}

#insertArea2 {
	display: none;
}

.banner {
	width: 70%;
	background-color: #F6F6F6;
}

#houlyWage {
	float: left;
}

#houlyWageInput {
	float: left;
}

#account {
	clear: both;
}

.paddingTop {
	padding-top: 3%;
}

.insertMargin1 {
	margin-left: 15%;
	clear: both;
}

.insertMargin2 {
	margin-left: 25%;
}

#insertAccount {
	width: 70%;
	margin-left: 15%;
}

.insertDiv {
	width: 10%;
	float: left;
	clear: both;
	margin-top: 2%;
}

.insertForm {
	float: left;
	margin-top: 2%;
}

.tableDiv {
	width: 100%;
	height: 100%;
	float: left;
	clear: both;
}

#base {
	width: 100%;
	height: 100%;
	margin-top: 5%;
	margin-left: 15%;
}

#base>.line {
	clear: both;
}

#base>.line>.null {
	width: 4%;
	height: 4%;
	border: 1px solid gray;
	text-align: right;
	float: left;
}

#base>.line>.tableColumn {
	width: 4%;
	height: 8%;
	border-right: 1px solid gray;
	border-left: 1px solid gray;
	border-bottom: 1px solid gray;
	text-align: right;
	float: left;
}

#base>.line>.tableRow {
	width: 10%;
	height: 4%;
	border-top: 1px solid gray;
	border-right: 1px solid gray;
	border-bottom: 1px solid gray;
	float: left;
}

#base>.line>.block {
	width: 10%;
	height: 8%;
	border-right: 1px solid gray;
	border-bottom: 1px solid gray;
	float: left;
}

.timeActive {
	background-color: red;
}

.textalign {
	text-align: center;
}

#subjectSelect {
	width: %;
	margin-left: 8%;
	margin-top: 10%;
}

#nextBtn {
	width: 10%;
	clear: both;
	border: none;
	color: white;
	padding: 16px 32px;
	text-align: center;
	text-decoration: none;
	font-size: 16px;
	margin-left: 40%;
	margin-top: 15%;
	margin-bottom: 5%;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	background-color: #008CBA;
	color: white;
}

#nextBtn:hover {
	background-color: white;
	color: black;
	border: 2px solid #008CBA;
}

#beforeBtn {
	width: 10%;
	border: none;
	color: white;
	padding: 16px 32px;
	text-align: center;
	text-decoration: none;
	font-size: 16px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	background-color: #008CBA;
	color: white;
	float: left;
}

#beforeBtn:hover {
	background-color: white;
	color: black;
	border: 2px solid #008CBA;
}

#submitBtn {
	width: 10%;
	border: none;
	color: white;
	padding: 16px 32px;
	text-align: center;
	text-decoration: none;
	font-size: 16px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	background-color: #008CBA;
	color: white;
	float: left;
}

#submitBtn:hover {
	background-color: white;
	color: black;
	border: 2px solid #008CBA;
}

#textArea {
	width: 500%;
	height: 100%;
}

}
/* 팝업창 */
.Pstyle {
	opacity: 0;
	display: none;
	position: relative;
	width: auto;
	border: 5px solid #fff;
	padding: 20px;
	background-color: #fff;
}

.b-close {
	position: absolute;
	right: 5px;
	top: 5px;
	padding: 5px;
	display: inline-block;
	cursor: pointer;
}

#search input {
	background-color: red;
}

/* on/off 스위치 */
.onoffswitch {
	position: relative;
	width: 90px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
}

.onoffswitch-checkbox {
	display: none;
}

.onoffswitch-label {
	display: block;
	overflow: hidden;
	cursor: pointer;
	border: 2px solid #FFFFFF;
	border-radius: 20px;
}

.onoffswitch-inner {
	display: block;
	width: 200%;
	margin-left: -100%;
	transition: margin 0.3s ease-in 0s;
}

.onoffswitch-inner:before, .onoffswitch-inner:after {
	display: block;
	float: left;
	width: 50%;
	height: 30px;
	padding: 0;
	line-height: 30px;
	font-size: 14px;
	color: white;
	font-family: Trebuchet, Arial, sans-serif;
	font-weight: bold;
	box-sizing: border-box;
}

.onoffswitch-inner:before {
	content: "ON";
	padding-left: 10px;
	background-color: #EBB552;
	color: #FFFFFF;
}

.onoffswitch-inner:after {
	content: "OFF";
	padding-right: 10px;
	background-color: #D6D6D6;
	color: #999999;
	text-align: right;
}

.onoffswitch-switch {
	display: block;
	width: 14px;
	margin: 8px;
	background: #FFFFFF;
	position: absolute;
	top: 0;
	bottom: 0;
	right: 56px;
	border: 2px solid #FFFFFF;
	border-radius: 20px;
	transition: all 0.3s ease-in 0s;
}

.onoffswitch-checkbox:checked+.onoffswitch-label .onoffswitch-inner {
	margin-left: 0;
}

.onoffswitch-checkbox:checked+.onoffswitch-label .onoffswitch-switch {
	right: 0px;
}

.tableDiv {
	width: 100%;
	height: 100%;
	float: left;
	clear: both;
}

#base {
	width: 100%;
	height: 100%;
	margin-top: 5%;
	margin-left: 15%;
}

#base>.line {
	clear: both;
}

#base>.line>.null {
	width: 4%;
	height: 4%;
	border: 1px solid gray;
	text-align: right;
	float: left;
}

#base>.line>.tableColumn {
	width: 4%;
	height: 8%;
	border-right: 1px solid gray;
	border-left: 1px solid gray;
	border-bottom: 1px solid gray;
	text-align: right;
	float: left;
}

#base>.line>.tableRow {
	width: 10%;
	height: 4%;
	border-top: 1px solid gray;
	border-right: 1px solid gray;
	border-bottom: 1px solid gray;
	float: left;
}

#base>.line>.block {
	width: 10%;
	height: 8%;
	border-right: 1px solid gray;
	border-bottom: 1px solid gray;
	float: left;
}

.timeActive {
	background-color: #FC9312;
}

.textalign {
	text-align: center;
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
				<div class="col-md-3 md-margin-bottom-40">
					<img class="teacherImg img-responsive profile-img margin-bottom-20"
							src="displayFile?fileName=${user_info.prof_photo}"
							onerror="javascript:this.src='./resources/unify/assets/img/team/img32-md.jpg'"
							alt="studentProfile" />

					<ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
						<li class="list-group-item">
							<a href="page_profile.html"><i class="fa fa-bar-chart-o"></i> 즐겨찾기 추가</a>
						</li>
						<li class="list-group-item">
							<a href="page_profile_me.html"><i class="fa fa-user"></i> 메세지 보내기</a>
						</li>
						<li class="list-group-item">
							<a href="#" onclick="app_class()"><i class="fa fa-group"></i> 수강 신청</a>
						</li>
					</ul>

					<div class="panel-heading-v2 overflow-h">
						<h2 class="heading-xs pull-left"><i class="fa fa-bar-chart-o"></i> 수업진행횟수자리</h2>
						<a href="#"><i class="fa fa-cog pull-right"></i></a>
					</div>
					<h3 class="heading-xs">Web Design <span class="pull-right">92%</span></h3>
					<div class="progress progress-u progress-xxs">
						<div style="width: 92%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="92" role="progressbar" class="progress-bar progress-bar-u">
						</div>
					</div>
					<h3 class="heading-xs">Unify Project <span class="pull-right">85%</span></h3>
					<div class="progress progress-u progress-xxs">
						<div style="width: 85%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="85" role="progressbar" class="progress-bar progress-bar-blue">
						</div>
					</div>
					<h3 class="heading-xs">Sony Corporation <span class="pull-right">64%</span></h3>
					<div class="progress progress-u progress-xxs margin-bottom-40">
						<div style="width: 64%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="64" role="progressbar" class="progress-bar progress-bar-dark">
						</div>
					</div>
					<div class="margin-bottom-50"></div>
				</div>
				<!--End Left Sidebar-->

				<!-- Profile Content -->
				<div class="col-md-9">
					<div class="profile-body margin-bottom-20">
						<div class="tab-v1">
							<ul class="nav nav-justified nav-tabs">
								<li class="active"><a data-toggle="tab" href="#profile">강사 정보</a></li>
								<li><a data-toggle="tab" href="#passwordTab">과외 정보</a></li>
								<li><a data-toggle="tab" href="#payment">시간표</a></li>
								<li><a data-toggle="tab" href="#settings">교습계획</a></li>
							</ul>
							<div class="tab-content">
								<div id="profile" class="profile-edit tab-pane fade in active">
									<h2 class="heading-md">강사 정보</h2>
									<br>
									<dl class="dl-horizontal">
										<dt><strong>이름 </strong></dt>
										<dd>
											${user_info.user_name }(${user_info.user_id})
										</dd>
										<hr>
										<dt><strong>나이 </strong></dt>
										<dd>
											${user_info.birth_date}
										</dd>
										<hr>
										<dt><strong>이메일 </strong></dt>
										<dd>
											${user_info.user_email}
										</dd>
										<hr>
										<dt><strong>학력 </strong></dt>
										<dd>
											${user_info.college}
										</dd>
										<hr>
										<dt><strong>뱃지 </strong></dt>
										<dd>
											<c:if test="${user_info.mark eq 'y' }">보유</c:if>
											<c:if test="${user_info.mark ne 'y' }">미보유</c:if>
										</dd>
										<hr>
									</dl>
								</div>

								<div id="passwordTab" class="profile-edit tab-pane fade">
									<h2 class="heading-md">과외 정보</h2>
									<br>
									<dl class="dl-horizontal">
										<dt><strong>온/오프라인 </strong></dt>
										<dd>
											<c:if test="${onoff eq 1}">온라인</c:if> <c:if test="${onoff eq 0}">오프라인</c:if>
										</dd>
										<hr>
										<dt><strong>수업가능지역 </strong></dt>
										<dd>
											<c:if test="${!empty ext_info.class_poss_area  }">
												${ext_info.class_poss_area }
											</c:if>
											<c:if test="${empty ext_info.class_poss_area }">
												온라인
											</c:if>
										</dd>
										<hr>
										<dt><strong>개인/그룹 </strong></dt>
										<dd>
											<c:if test="${pg eq 1}">개인</c:if>
											<c:if test="${pg ne 1}">그룹 /(모집 인원 : ${pg}명)</c:if>
										</dd>
										<hr>
										<dt><strong>수업 과목 </strong></dt>
										<dd>
											<c:if test="${subject eq 01}">국어</c:if>
											<c:if test="${subject eq 02}">영어</c:if>
											<c:if test="${subject eq 03}">수학</c:if>
										</dd>
										<hr>
										<dt><strong>모집 종료 날짜 </strong></dt>
										<dd>
											${ext_info.end_rc_date}
										</dd>
										<hr>
										<dt><strong>시간당 수업료 </strong></dt>
										<dd>
											${ext_info.tuit_fees}원/(1시간)
										</dd>
										<hr>
										<dt><strong>과외 대상 </strong></dt>
										<dd>
											${ext_info.ext_obj}
										</dd>
										<hr>
										<dt><strong>과외 방식 </strong></dt>
										<dd>
											${ext_info.ext_way}
										</dd>
										<hr>
										<dt><strong>과외 레벨 </strong></dt>
										<dd>
											${ext_info.class_lev}
										</dd>
										<hr>
									</dl>
								</div>

								<div id="payment" class="profile-edit tab-pane fade">
									<h2 class="heading-md">시간표</h2>
									<br>
									<p>시간표 들어갈 자리</p>
								</div>

								<div id="settings" class="profile-edit tab-pane fade">
									<h2 class="heading-md">수업 소개</h2>
									<br>
									<p>
										<c:if test="${ext_info.intro_class eq null}">등록된 수업 소개가 없습니다.</c:if>
										<c:if test="${ext_info.intro_class ne null}">${ext_info.intro_class}</c:if>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End Profile Content -->
			</div><!--/end row-->
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
		
		<!-- 시간표 선택 -->
 	<div class="layer">
		<div class="bg"></div>
			<div id="layer2" class="pop-layer">
				<div class="pop-container">
					<div class="pop-conts" ><p style="font-size:20px; width:200px; position:relative; margin:0px; float:left;">수강 신청</p>
					<a href="#" class="cbtn1" style="float:right; position:relative; font-size:20px;">X</a>
					<!--content //-->
					<div id="timeTable" class="tableDiv">
		    		<div id="base">
		    			<p>< 과외 시간대 선택 ></p>
		    			<p style="color:red;">표시된 부분만 선택할 수 있습니다.</p>
					    <div class="line">
					      <div class="null">&nbsp</div>	<div class="textalign tableRow">월</div><div class="textalign tableRow">화</div><div class="textalign tableRow">수</div><div class="textalign tableRow">목</div><div class="textalign tableRow">금</div><div class="textalign tableRow">토</div><div class="textalign tableRow">일</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">9</div>	<div id="a9" class="block">&nbsp</div><div id="b9" class="block">&nbsp</div><div id="c9" class="block">&nbsp</div><div id="d9" class="block">&nbsp</div><div id="e9" class="block">&nbsp</div><div id="f9" class="block">&nbsp</div><div id="g9" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">10</div>  <div id="a10" class="block">&nbsp</div><div id="b10" class="block">&nbsp</div><div id="c10" class="block">&nbsp</div><div id="d10" class="block">&nbsp</div><div id="e10" class="block">&nbsp</div><div id="f10" class="block">&nbsp</div><div id="g10" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">11</div>  <div id="a11" class="block">&nbsp</div><div id="b11" class="block">&nbsp</div><div id="c11" class="block">&nbsp</div><div id="d11" class="block">&nbsp</div><div id="e11" class="block">&nbsp</div><div id="f11" class="block">&nbsp</div><div id="g11" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">12</div>  <div id="a12" class="block">&nbsp</div><div id="b12" class="block">&nbsp</div><div id="c12" class="block">&nbsp</div><div id="d12" class="block">&nbsp</div><div id="e12" class="block">&nbsp</div><div id="f12" class="block">&nbsp</div><div id="g12" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">1</div>  <div id="a13" class="block">&nbsp</div><div id="b13" class="block">&nbsp</div><div id="c13" class="block">&nbsp</div><div id="d13" class="block">&nbsp</div><div id="e13" class="block">&nbsp</div><div id="f13" class="block">&nbsp</div><div id="g13" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">2</div>  <div id="a14" class="block">&nbsp</div><div id="b14" class="block">&nbsp</div><div id="c14" class="block">&nbsp</div><div id="d14" class="block">&nbsp</div><div id="e14" class="block">&nbsp</div><div id="f14" class="block">&nbsp</div><div id="g14" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">3</div>  <div id="a15" class="block">&nbsp</div><div id="b15" class="block">&nbsp</div><div id="c15" class="block">&nbsp</div><div id="d15" class="block">&nbsp</div><div id="e15" class="block">&nbsp</div><div id="f15" class="block">&nbsp</div><div id="g15" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">4</div>  <div id="a16" class="block">&nbsp</div><div id="b16" class="block">&nbsp</div><div id="c16" class="block">&nbsp</div><div id="d16" class="block">&nbsp</div><div id="e16" class="block">&nbsp</div><div id="f16" class="block">&nbsp</div><div id="g16" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">5</div>  <div id="a17" class="block">&nbsp</div><div id="b17" class="block">&nbsp</div><div id="c17" class="block">&nbsp</div><div id="d17" class="block">&nbsp</div><div id="e17" class="block">&nbsp</div><div id="f17" class="block">&nbsp</div><div id="g17" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">6</div>  <div id="a18" class="block">&nbsp</div><div id="b18" class="block">&nbsp</div><div id="c18" class="block">&nbsp</div><div id="d18" class="block">&nbsp</div><div id="e18" class="block">&nbsp</div><div id="f18" class="block">&nbsp</div><div id="g18" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">7</div>  <div id="a19" class="block">&nbsp</div><div id="b19" class="block">&nbsp</div><div id="c19" class="block">&nbsp</div><div id="d19" class="block">&nbsp</div><div id="e19" class="block">&nbsp</div><div id="f19" class="block">&nbsp</div><div id="g19" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">8</div>  <div id="a20" class="block">&nbsp</div><div id="b20" class="block">&nbsp</div><div id="c20" class="block">&nbsp</div><div id="d20" class="block">&nbsp</div><div id="e20" class="block">&nbsp</div><div id="f20" class="block">&nbsp</div><div id="g20" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">9</div>  <div id="a21" class="block">&nbsp</div><div id="b21" class="block">&nbsp</div><div id="c21" class="block">&nbsp</div><div id="d21" class="block">&nbsp</div><div id="e21" class="block">&nbsp</div><div id="f21" class="block">&nbsp</div><div id="g21" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">10</div>  <div id="a22" class="block">&nbsp</div><div id="b22" class="block">&nbsp</div><div id="c22" class="block">&nbsp</div><div id="d22" class="block">&nbsp</div><div id="e22" class="block">&nbsp</div><div id="f22" class="block">&nbsp</div><div id="g22" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">11</div>  <div id="a23" class="block">&nbsp</div><div id="b23" class="block">&nbsp</div><div id="c23" class="block">&nbsp</div><div id="d23" class="block">&nbsp</div><div id="e23" class="block">&nbsp</div><div id="f23" class="block">&nbsp</div><div id="g23" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">12</div>  <div id="a24" class="block">&nbsp</div><div id="b24" class="block">&nbsp</div><div id="c24" class="block">&nbsp</div><div id="d24" class="block">&nbsp</div><div id="e24" class="block">&nbsp</div><div id="f24" class="block">&nbsp</div><div id="g24" class="block">&nbsp</div>
					    </div>
	  				</div>
		    	</div>
 						<div>　　</div>
						<div>　　</div>
						<div class="btn-r">
							<a href="#" class="cbtn" id="app_class">수강 신청</a>
						</div>

					<!--// content-->
					</div>
				</div>
		</div>
	</div>
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
			if('ontouchstart' in document.documentElement) document.write("<script src='./resources/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="./resources/assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="./resources/assets/js/jquery-ui.min.js"></script>
		<script src="./resources/assets/js/jquery.ui.touch-punch.min.js"></script>

		<!-- ace scripts -->
		<script src="./resources/assets/js/ace-elements.min.js"></script>
		<script src="./resources/assets/js/ace.min.js"></script>

	<script src="./resources/js/jquery.bpopup.min.js"></script>
	<script src="./resources/js/bootstrap-tooltip.js"></script>
	<script src="./resources/js/bootstrap-popover.js"></script>
	<script src="./resources/js/bootstrap-button.js"></script>
	<script src="./resources/js/bootstrap-collapse.js"></script>
	<script src="./resources/js/bootstrap-carousel.js"></script>
	<script src="./resources/js/bootstrap-typeahead.js"></script>
	<script src="./resources/js/bootstrap-affix.js"></script>
	<script src="./resources/js/application.js"></script>
	<script src="./resources/js/superfish.js"></script>
	<script src="http://platform.twitter.com/widgets.js"></script>
	<script src="./resources/js/jquery.js"></script>
	<script src="./resources/js/google-code-prettify/prettify.js"></script>
	<script src="./resources/js/bootstrap-transition.js"></script>
	<script src="./resources/js/bootstrap-alert.js"></script>
	<script src="./resources/js/bootstrap-modal.js"></script>
	<script src="./resources/js/bootstrap-dropdown.js"></script>
	<script src="./resources/js/bootstrap-scrollspy.js"></script>
	<script src="./resources/js/bootstrap-tab.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() { /* bootstrap - scroll 최상위로 */
			App.init();
			App.initScrollBar();
			Datepicker.initDatepicker();
			CirclesMaster.initCirclesMaster1();
			StyleSwitcher.initStyleSwitcher();
		});
		$("#logout").on("click", function(){
			window.location.href="logout";
		});
	</script>

<script>
$(document).ready(function(){
	alert("아랑닐");
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
					$("#"+strBlock).css("background-color","#D0D0D0");
					var pg = ${pg};
					if(pg == '1'){
						$("#"+strBlock).append("<a class='possible'></a>");
					}
				}
				
			}
			
		},
		error : function(data){
			alert("에러 시바아아아아알");
		}
	});
});
</script>
<script type="text/javascript">
		
			jQuery(function($) {
			
				$( "#datepicker" ).datepicker({
					showOtherMonths: true,
					selectOtherMonths: false,
					//isRTL:true,
			
					
					/*
					changeMonth: true,
					changeYear: true,
					
					showButtonPanel: true,
					beforeShow: function() {
						//change button colors
						var datepicker = $(this).datepicker( "widget" );
						setTimeout(function(){
							var buttons = datepicker.find('.ui-datepicker-buttonpane')
							.find('button');
							buttons.eq(0).addClass('btn btn-xs');
							buttons.eq(1).addClass('btn btn-xs btn-success');
							buttons.wrapInner('<span class="bigger-110" />');
						}, 0);
					}
			*/
				});
			
			
				//override dialog's title function to allow for HTML titles
				$.widget("ui.dialog", $.extend({}, $.ui.dialog.prototype, {
					_title: function(title) {
						var $title = this.options.title || '&nbsp;'
						if( ("title_html" in this.options) && this.options.title_html == true )
							title.html($title);
						else title.text($title);
					}
				}));
			
				$( "#id-btn-dialog1" ).on('click', function(e) {
					e.preventDefault();
			
					var dialog = $( "#dialog-message" ).removeClass('hide').dialog({
						modal: true,
						title: "<div class='widget-header widget-header-small'><h4 class='smaller'><i class='ace-icon fa fa-check'></i> jQuery UI Dialog</h4></div>",
						title_html: true,
						buttons: [ 
							{
								text: "Cancel",
								"class" : "btn btn-minier",
								click: function() {
									$( this ).dialog( "close" ); 
								} 
							},
							{
								text: "OK",
								"class" : "btn btn-primary btn-minier",
								click: function() {
									$( this ).dialog( "close" ); 
								} 
							}
						]
					});
			
					/**
					dialog.data( "uiDialog" )._title = function(title) {
						title.html( this.options.title );
					};
					**/
				});
			
			
				$( "#id-btn-dialog2" ).on('click', function(e) {
					e.preventDefault();
				
					$( "#dialog-confirm" ).removeClass('hide').dialog({
						resizable: false,
						width: '320',
						modal: true,
						title: "<div class='widget-header'><h4 class='smaller'><i class='ace-icon fa fa-exclamation-triangle red'></i> Empty the recycle bin?</h4></div>",
						title_html: true,
						buttons: [
							{
								html: "<i class='ace-icon fa fa-trash-o bigger-110'></i>&nbsp; Delete all items",
								"class" : "btn btn-danger btn-minier",
								click: function() {
									$( this ).dialog( "close" );
								}
							}
							,
							{
								html: "<i class='ace-icon fa fa-times bigger-110'></i>&nbsp; Cancel",
								"class" : "btn btn-minier",
								click: function() {
									$( this ).dialog( "close" );
								}
							}
						]
					});
				});
			
			
				
				//autocomplete
				 var availableTags = [
					"ActionScript",
					"AppleScript",
					"Asp",
					"BASIC",
					"C",
					"C++",
					"Clojure",
					"COBOL",
					"ColdFusion",
					"Erlang",
					"Fortran",
					"Groovy",
					"Haskell",
					"Java",
					"JavaScript",
					"Lisp",
					"Perl",
					"PHP",
					"Python",
					"Ruby",
					"Scala",
					"Scheme"
				];
				$( "#tags" ).autocomplete({
					source: availableTags
				});
			
				//custom autocomplete (category selection)
				$.widget( "custom.catcomplete", $.ui.autocomplete, {
					_create: function() {
						this._super();
						this.widget().menu( "option", "items", "> :not(.ui-autocomplete-category)" );
					},
					_renderMenu: function( ul, items ) {
						var that = this,
						currentCategory = "";
						$.each( items, function( index, item ) {
							var li;
							if ( item.category != currentCategory ) {
								ul.append( "<li class='ui-autocomplete-category'>" + item.category + "</li>" );
								currentCategory = item.category;
							}
							li = that._renderItemData( ul, item );
								if ( item.category ) {
								li.attr( "aria-label", item.category + " : " + item.label );
							}
						});
					}
				});
				
				 var data = [
					{ label: "anders", category: "" },
					{ label: "andreas", category: "" },
					{ label: "antal", category: "" },
					{ label: "annhhx10", category: "Products" },
					{ label: "annk K12", category: "Products" },
					{ label: "annttop C13", category: "Products" },
					{ label: "anders andersson", category: "People" },
					{ label: "andreas andersson", category: "People" },
					{ label: "andreas johnson", category: "People" }
				];
				$( "#search" ).catcomplete({
					delay: 0,
					source: data
				});
				
				
				//tooltips
				$( "#show-option" ).tooltip({
					show: {
						effect: "slideDown",
						delay: 250
					}
				});
			
				$( "#hide-option" ).tooltip({
					hide: {
						effect: "explode",
						delay: 250
					}
				});
			
				$( "#open-event" ).tooltip({
					show: null,
					position: {
						my: "left top",
						at: "left bottom"
					},
					open: function( event, ui ) {
						ui.tooltip.animate({ top: ui.tooltip.position().top + 10 }, "fast" );
					}
				});
			
			
				//Menu
				$( "#menu" ).menu();
			
			
				//spinner
				var spinner = $( "#spinner" ).spinner({
					create: function( event, ui ) {
						//add custom classes and icons
						$(this)
						.next().addClass('btn btn-success').html('<i class="ace-icon fa fa-plus"></i>')
						.next().addClass('btn btn-danger').html('<i class="ace-icon fa fa-minus"></i>')
						
						//larger buttons on touch devices
						if('touchstart' in document.documentElement) 
							$(this).closest('.ui-spinner').addClass('ui-spinner-touch');
					}
				});
			
				//slider example
				$( "#slider" ).slider({
					range: true,
					min: 0,
					max: 500,
					values: [ 75, 300 ]
				});
			
			
			
				//jquery accordion
				$( "#accordion" ).accordion({
					collapsible: true ,
					heightStyle: "content",
					animate: 250,
					header: ".accordion-header"
				}).sortable({
					axis: "y",
					handle: ".accordion-header",
					stop: function( event, ui ) {
						// IE doesn't register the blur when sorting
						// so trigger focusout handlers to remove .ui-state-focus
						ui.item.children( ".accordion-header" ).triggerHandler( "focusout" );
					}
				});
				//jquery tabs
				$( "#tabs" ).tabs();
				
				
				//progressbar
				$( "#progressbar" ).progressbar({
					value: 37,
					create: function( event, ui ) {
						$(this).addClass('progress progress-striped active')
							   .children(0).addClass('progress-bar progress-bar-success');
					}
				});
			
				
				//selectmenu
				 $( "#number" ).css('width', '200px')
				.selectmenu({ position: { my : "left bottom", at: "left top" } })
					
			});
</script>
	
<!-- 수강 신청  -->
<script>
 function app_class(){
	user_id = "${id}";
	if(user_id == "")
		alert("로그인 후에 수강신청을 해주세요!");
	else{
		layer_open('layer2');
	}
		
}; 

//시간표 팝업
 function layer_open(el){
 	var temp = $('#' + el);
 	var bg = temp.prev().hasClass('bg');    //dimmed 레이어를 감지하기 위한 boolean 변수
 	if(bg){
 		$('.layer').fadeIn();   //'bg' 클래스가 존재하면 레이어가 나타나고 배경은 dimmed 된다.
 	}else{
 		temp.fadeIn();
 	}
 	// 화면의 중앙에 레이어를 띄운다.

 	if (temp.outerHeight() < $(document).height() ) temp.css('margin-top', '-'+temp.outerHeight()/2+'px');
 	else temp.css('top', '0px');
 	if (temp.outerWidth() < $(document).width() ) temp.css('margin-left', '-'+temp.outerWidth()/2+'px');
 	else temp.css('left', '0px');
 	temp.find('a.cbtn1').click(function(e){
 		if(bg){
 			$('.layer').fadeOut(); //'bg' 클래스가 존재하면 레이어를 사라지게 한다.
 		}else{
 			temp.fadeOut();
 		}
 		e.preventDefault();
 	});
 	
 	$('.layer .bg').click(function(e){  //배경을 클릭하면 레이어를 사라지게 하는 이벤트 핸들러
 		$('.layer').fadeOut();
 		e.preventDefault();
 	});
 }    

/* 수강 신청 팝업_과외 시간대 선택 */
 $('.block').click(function(){
	 var a="";
     if($(this).find('a')){
		 var a = ($(this).find('a')).attr('class');
		 if(a == "possible"){
			 if($(this).attr("class")=="block")
				 {
				 	$(this).toggleClass('timeActive');
				 	$(this).removeAttr("style");
				 }
			 else if($(this).attr('class')=="block timeActive"){
				 $(this).toggleClass('timeActive');
				 $(this).attr("style","background-color: #D0D0D0");
				 $(this).attr("display","none");
			 }
		 }
		 else{
			 var pg = ${pg};
			if(pg == '1'){
			 	alert("정해진 영역 안에서만 선택해주세요!");
			}
			else{
				alert("그룹 과외는 과외 시간대를 선택할 수 없습니다.");
			}
		 }

	 }
 });
 var timeArray = new Array();
 
// 수강 신청 팝업_수강 신청 버튼 클릭 시
 	    $("#app_class").click(function(){
 	    	var str="";	
 			var arr = new Array();
 	    	var startArr = new Array();
 	    	var endArr = new Array();
 	    	var arr1 = new Array();
 	    	var arr2 = new Array();
 	    	var arr3 = new Array();
 	    	var arr4 = new Array();
 	    	var arr5 = new Array();
 	    	var arr6 = new Array();
 	    	var arr7 = new Array();
 	    	
	    	for(var j=97; j<104; j++){
		    	for(var i=9; i<25; i++){
		    		// id = $("#a" + i).is(".timeActive").attr('id');
		    		var nowBlock = $("#" + String.fromCharCode(j) + i);
		    		var selectTime = nowBlock.is(".timeActive");
		    		if(selectTime){
		    			var selectTimeId = nowBlock.attr('id');
		    			var day = selectTimeId.substr(0,1);
		    			var dayMod;
		    			
		    			if(day == "a"){
		    				dayMod = "월";
		    			} else if(day == "b"){
		    				dayMod = "화";
		    			} else if(day == "c"){
		    				dayMod = "수";
		    			} else if(day == "d"){
		    				dayMod = "목";
		    			} else if(day == "e"){
		    				dayMod = "금";
		    			} else if(day == "f"){
		    				dayMod = "토";
		    			} else if(day == "g"){
		    				dayMod = "일";
		    			}
		    			var time = selectTimeId.substr(1);
		    			if(time == "9"){
		    				time = "09";
		    			}
		    			str += dayMod + time + "/";
		    			
		    			
		    		}
		    	}
	    	}
	    	//시간 배열 추출
	    	str = str.slice(0, -1);
	    	console.log("시간배열:"+str);
	    	
	    	//특수문사(슬래쉬)제거 
	    	arr = str.split('/');
	    	console.log(arr.length);
	    	for(var i=0; i<arr.length; i++){
	    		if(arr[i].substr(0,1) == "월"){
	    			arr1.push(arr[i]);
	    		}
	    		else if(arr[i].substr(0,1) == "화"){
	    			arr2.push(arr[i]);
	    		}
	    		else if(arr[i].substr(0,1) == "수"){
	    			arr3.push(arr[i]);
	    		}
	    		else if(arr[i].substr(0,1) == "목"){
	    			arr4.push(arr[i]);
	    		}
	    		else if(arr[i].substr(0,1) == "금"){
	    			arr5.push(arr[i]);
	    		}
	    		else if(arr[i].substr(0,1) == "토"){
	    			arr6.push(arr[i]);
	    		}
	    		else if(arr[i].substr(0,1) == "일"){
	    			arr7.push(arr[i]);
	    		}
	    	}
	    	


	    	
	    	if(0 < (arr1.length)){ // arr1의 길이를 확인 (0보다 클 경우 배열이 empty가 아님을 의미)
	    		startArr.push(arr1[0]); // 인덱스0 값은 항상 시작값
	    	  for(var i=0; i<arr1.length; i++){
	    	    if(i != arr1.length-1){
	    				    		if(Number(arr1[i].substr(1,3))+1 != arr1[i+1].substr(1,3)){
	    				    			startArr.push(arr1[i+1]);
	    				    			endArr.push("월" + (Number(arr1[i].substr(1,3))+1));
	    				    		}
	    			    		}
	    	  }
	    	  endArr.push("월" + (Number(arr1[(arr1.length-1)].substr(1,3))+1));
	    	}
	    	
	    	
	    	if(0 < (arr2.length)){ // arr1의 길이를 확인 (0보다 클 경우 배열이 empty가 아님을 의미)
	    		startArr.push(arr2[0]); // 인덱스0 값은 항상 시작값
	    	  for(var i=0; i<arr2.length; i++){
	    	    if(i != arr2.length-1){
	    				    		if(Number(arr2[i].substr(1,3))+1 != arr2[i+1].substr(1,3)){
	    				    			startArr.push(arr2[i+1]);
	    				    			endArr.push("화" + (Number(arr2[i].substr(1,3))+1));
	    				    		}
	    			    		}
	    	  }
	    	  endArr.push("화" + (Number(arr2[(arr2.length-1)].substr(1,3))+1));
	    	}
	    	
	    	if(0 < (arr3.length)){ // arr1의 길이를 확인 (0보다 클 경우 배열이 empty가 아님을 의미)
	    		startArr.push(arr3[0]); // 인덱스0 값은 항상 시작값
	    	  for(var i=0; i<arr3.length; i++){
	    	    if(i != arr3.length-1){
	    				    		if(Number(arr3[i].substr(1,3))+1 != arr3[i+1].substr(1,3)){
	    				    			startArr.push(arr3[i+1]);
	    				    			endArr.push("수" + (Number(arr3[i].substr(1,3))+1));
	    				    		}
	    			    		}
	    	  }
	    	  endArr.push("수" + (Number(arr3[(arr3.length-1)].substr(1,3))+1));
	    	}
	    	
	    	if(0 < (arr4.length)){ // arr1의 길이를 확인 (0보다 클 경우 배열이 empty가 아님을 의미)
	    		startArr.push(arr4[0]); // 인덱스0 값은 항상 시작값
	    	  for(var i=0; i<arr4.length; i++){
	    	    if(i != arr4.length-1){
	    				    		if(Number(arr4[i].substr(1,3))+1 != arr4[i+1].substr(1,3)){
	    				    			startArr.push(arr4[i+1]);
	    				    			endArr.push("목" + (Number(arr4[i].substr(1,3))+1));
	    				    		}
	    			    		}
	    	  }
	    	  endArr.push("목" + (Number(arr4[(arr4.length-1)].substr(1,3))+1));
	    	}
	    	
	    	if(0 < (arr5.length)){ // arr1의 길이를 확인 (0보다 클 경우 배열이 empty가 아님을 의미)
	    		startArr.push(arr5[0]); // 인덱스0 값은 항상 시작값
	    	  for(var i=0; i<arr5.length; i++){
	    	    if(i != arr5.length-1){
	    				    		if(Number(arr5[i].substr(1,3))+1 != arr5[i+1].substr(1,3)){
	    				    			startArr.push(arr5[i+1]);
	    				    			endArr.push("금" + (Number(arr5[i].substr(1,3))+1));
	    				    		}
	    			    		}
	    	  }
	    	  endArr.push("금" + (Number(arr5[(arr5.length-1)].substr(1,3))+1));
	    	}
	    	
	    	if(0 < (arr6.length)){ // arr1의 길이를 확인 (0보다 클 경우 배열이 empty가 아님을 의미)
	    		startArr.push(arr6[0]); // 인덱스0 값은 항상 시작값
	    	  for(var i=0; i<arr6.length; i++){
	    	    if(i != arr6.length-1){
	    				    		if(Number(arr6[i].substr(1,3))+1 != arr6[i+1].substr(1,3)){
	    				    			startArr.push(arr6[i+1]);
	    				    			endArr.push("토" + (Number(arr6[i].substr(1,3))+1));
	    				    		}
	    			    		}
	    	  }
	    	  endArr.push("토" + (Number(arr6[(arr6.length-1)].substr(1,3))+1));
	    	}
	    	
	    	if(0 < (arr7.length)){ // arr1의 길이를 확인 (0보다 클 경우 배열이 empty가 아님을 의미)
	    		startArr.push(arr7[0]); // 인덱스0 값은 항상 시작값
	    	  for(var i=0; i<arr7.length; i++){
	    	    if(i != arr7.length-1){
	    				    		if(Number(arr7[i].substr(1,3))+1 != arr7[i+1].substr(1,3)){
	    				    			startArr.push(arr7[i+1]);
	    				    			endArr.push("일" + (Number(arr7[i].substr(1,3))+1));
	    				    		}
	    			    		}
	    	  }
	    	  endArr.push("일" + (Number(arr7[(arr7.length-1)].substr(1,3))+1));
	    	}
	    	

	    	console.log("여기가 시작부분");
	    	for(var i=0; i<startArr.length; i++){
	    		console.log(startArr[i]);
	    	}
	    	console.log("여기가 종료부분");
	    	for(var i=0; i<endArr.length; i++){
	    		console.log(endArr[i]);
	    	}
		
			var arrlength = startArr.length;
			var user_id = "${id}";
			
			var test = JSON.stringify({
    			str : str,
    			//startArr : startArr,
    			//endArr : endArr,
    			arrlength : arrlength,
    			user_id : user_id
    		});
			
			console.log(test);  
    		
	    	$.ajax({
		    	url:"appClass",
		    	type:"POST",
		    	dataType : "text",
		    	contentType: "application/json; charset=UTF-8",
		    	data: JSON.stringify({
	    			str : str,
	    			startArr : startArr,
	    			endArr : endArr,
	    			arrlength : arrlength,
	    			ext_id : '${ext_info.ext_id}',
	    			user_id : user_id
	    		}),
		    	//data: test,
		    	success:function(result){
		    		if(result == "success"){
		    			$('.layer').fadeOut();
		    			alert("수강 신청이 완료 되었습니다.");
		    		}
		    	},
		    	error:function(result){
		    		alert("에러");
		    	}
	    	});
			
	    });
</script>
</body>
</html>
