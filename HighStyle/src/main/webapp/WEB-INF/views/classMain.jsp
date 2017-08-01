<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Highlighter</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 강사 프로필 STYLE -->
<link rel="stylesheet" href="./resources/assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="./resources/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
<!-- 강사 프로필 STYLE 끝 -->

<link href="./resources/css/bootstrap.css" rel="stylesheet">
<link href="./resources/css/bootstrap-responsive.css" rel="stylesheet">
<link href="./resources/css/docs.css" rel="stylesheet">
<link href="./resources/css/prettyPhoto.css" rel="stylesheet"
	type="text/css">
<link href="./resources/js/google-code-prettify/prettify.css"
	rel="stylesheet">
<link rel="shortcut icon" href="./resources/ico/HL.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="./resources/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="./resources/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="./resources/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="./resources/ico/apple-touch-icon-57-precomposed.png">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
#classIntro {
	margin-top: 10px;
	border: 3px solid #ff6600;
	height: auto;
	padding:10px;
}

#classGoIn {
	float: right;
	width:90px;
	background-color:#ff6600;
	padding-top:5px;
	padding-left:10px;
	padding-bottom:5px;
	margin-top:-5px;
	color:white;
	border-radius:5px;
	border:solid 1px #ff6600;
}
#classExit{
	float: right;
	width:90px;
	background-color:#ff6600;
	padding-top:5px;
	padding-left:10px;
	padding-bottom:5px;
	margin-top:-5px;
	color:white;
	border-radius:5px;
	border:solid 1px #ff6600;
}
#teacherImage img {
	float: left;
}

#classIntro2 {
	margin-top: 10px;
	margin-bottom: 20%;
	
	height: 40%;
	padding: 10px;
}

#classIndex {
	margin-left: 10px;
	margin-top: 120px;
	margin-bottom: 10px;
	margin-right: 50px;
	border: 1px solid #C2C1C1;
	height: auto;
	float: left;
}

#classIntro3 {
	margin-bottom: 10px;
	border: 1px solid #C5C5C5;
	height: 100px;
	padding: 10px;
}

#classIntro4 {
	margin-bottom: 10px;
	border: 1px solid #C5C5C5;
	padding: 10px;
	height: 100px;
}

#classIntro5 {
	margin-bottom: 10px;
	border: 1px solid #C5C5C5;
	height: 500px;
	padding: 10px;
}

.nav-agency {
	border-bottom: 1px solid #DDD;
}

#div1 {
	float: left;
	width: 80%;
	margin-top:70px;
	
}

#classIndex {
	margin-left: 10px;
	margin-top: 120px;
	margin-bottom: 10px;
	margin-right: 50px;
	border: 1px solid #C2C1C1;
	height: auto;
	float: left;
}

.StudyRoom {
	margin: 0px;
}

.StudyRoom li:not(#StudyRoom) {
	list-style: none;
	border-top:1px solid rgba(0,0,0,0.25);
	height:35px;
	padding-left:10px;
	padding-top:5px;
	font-size:13px;
	width:140px;
}
.StudyRoom li:not(#StudyRoom):hover {
	list-style: none;
	border-color:1px solid rgba(0,0,0,0.25);
	height:35px;
	padding-top:5px;
	font-size:13px;
	background-color:#5D5D5D;
	color:white;
}
#noticeResi {
	float: right;
}

.w3table {
	float: left;
}
#StudyRoom{
	padding-top:10px;
	padding-left:20px;
	padding-bottom:10px;
	background-color:#ff6600;
	color:white;
}
/* #intro{
	margin:10px;
	width:100px;
	position:relative;
} */
.tableDiv{width:100%; height:100%; float:left; clear:both;}
 #base {width: 100%; height: 100%; margin-top:5%; margin-left:15%;}
    #base > .line {clear: both;}
    #base > .line > .null{width:4%; height:4%; border: 1px solid gray; text-align:right; float: left;}
    #base > .line > .tableColumn{width:4%; height:8%; border-right: 1px solid gray; border-left: 1px solid gray; border-bottom: 1px solid gray;  text-align:right; float: left;}
    #base > .line > .tableRow{width:10%; height:4%; border-top: 1px solid gray; border-right: 1px solid gray; border-bottom: 1px solid gray; float: left;}
    #base > .line > .block{width:10%; height:8%; border-right: 1px solid gray; border-bottom: 1px solid gray; float: left;}
    .timeActive{background-color: #FC9312;}
    .textalign{text-align:center;}
</style>

</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
<!-- nav -->
	<div class="nav-agency">
		<div class="navbar navbar-static-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="brand" href="/Highlighter"><img src="./resources/img/logo.png" alt=""></a>
					<div id="main-nav">
						<div class="nav-collapse collapse">
							<ul class="nav">
								<li class=""><a href="/Highlighter">Home</a></li>
								<li class="dropdown"><a class="dropdown-toggle"
									data-toggle="dropdown" href="#"> 강사 <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="work.html">강사 이용방법</a></li>
										<li><a href="work-two-columns.html">과외 등록</a></li>
									</ul></li>
								<li class="dropdown"><a class="dropdown-toggle"
									data-toggle="dropdown" href="#"> 학생 <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="pricing.html">학생 이용방법</a></li>
										<li><a href="pricing-three-columns.html">과외 검색</a></li>
									</ul></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown"> 학부모 <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="faq.html">학부모 이용방법</a></li>
										<li><a href="contact.html">자녀 학습 관리</a></li>
									</ul></li>
								<li><a href="index.html">사이트 소개</a></li>
								<li><a href="index.html">문의</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- nav끝 -->

<!-- 수업소개/공지사항 변화 -->	
	<script>
		$(document).ready(function() {
			$('#classIntro3').show();
			$('#classIntro4').hide();

			$('#classIntroButton1').click(function() {
				$('#classIntro3').show();
				$('#classIntro4').hide();
			});

			$('#classIntroButton2').click(function() {
				$('#classIntro3').hide();
				$('#classIntro4').show();
			});
			return false;
		});
	</script>

<!-- 전체 내용  -->
<div style="width:80%; margin:0 auto;">
<!-- 과외 정보 관리 NAV -->
	<div id="classIndex" >
		<div id="classMain" >
			<ul class="StudyRoom">
				<li id="StudyRoom">StudyRoom<br>과외 정보 관리</li>
				<li id="StudyHomework">숙제</li>
				<li id="StudyClassData">강의자료</li>
				<li id="StudyStudyManagement">수강 학생 관리</li>
				<li id="StudyClassTest">시험</li>
				<li id="StudyReplay">다시보기</li>
				<li id="StudyClassDeval">진단평가</li>
			</ul>
		</div>
	</div>
<!-- 과외 정보 관리 NAV 끝 -->

	<div id="div1">
	<!-- 과외 소개 및 강의 입장 타이틀 -->
		<div id="classIntro">
			과외 소개
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
	<!-- 과외 소개 및 강의 입장 타이틀 끝 -->
	<!--  -->
	<div id="user-profile-1" class="user-profile row">
			<div class="col-xs-12 col-sm-3 center">
				<div>
					<!-- 강사 프로필 사진 -->
					<span class="profile-picture" style="width:130px; margin-top:30px;"> 
					 <img id="avatar"class="editable img-responsive" alt="Alex's Avatar" src="./resources/img/${TImage}" > 
					 </span>

					<div class="space-4"></div>

					<div
						class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
						<div class="inline position-relative">
							<!-- 강사 명 -->
							<span style="font-size:15px;">${classMainList.user_id}</span>

							<ul
								class="align-left dropdown-menu dropdown-caret dropdown-lighter">
								<li class="dropdown-header">Change Status</li>

								<li><a href="#"> <i class="ace-icon fa fa-circle green"></i>
										&nbsp; <span class="green">Available</span>
								</a></li>

								<li><a href="#"> <i class="ace-icon fa fa-circle red"></i>
										&nbsp; <span class="red">Busy</span>
								</a></li>

								<li><a href="#"> <i class="ace-icon fa fa-circle grey"></i>
										&nbsp; <span class="grey">Invisible</span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 강사 프로필 밑에 3가지 메뉴 -->
				<div class="space-6"></div>

				<div class="profile-contact-info">
					

					<div class="space-6"></div>

					<div class="profile-social-links align-center">
						<a href="#" class="tooltip-info" title=""
							data-original-title="Visit my Facebook"> <i
							class="middle ace-icon fa fa-facebook-square fa-2x blue"></i>
						</a> <a href="#" class="tooltip-info" title=""
							data-original-title="Visit my Twitter"> <i
							class="middle ace-icon fa fa-twitter-square fa-2x light-blue"></i>
						</a> <a href="#" class="tooltip-error" title=""
							data-original-title="Visit my Pinterest"> <i
							class="middle ace-icon fa fa-pinterest-square fa-2x red"></i>
						</a>
					</div>
				</div>
				<!-- 수업 진행 횟수/여긴 미정   -->
			</div>

			<div class="col-xs-12 col-sm-9">
				<!-- 강사 정보 -->
				<div class="space-12"></div>
				<h4 style="color: #ff6600; font-size:15px;">강사
					정보</h4>
				<div class="profile-user-info profile-user-info-striped"
					style="border: 1px solid #C5C5C5">
					<div class="profile-info-row">
						<div class="profile-info-name" >과목</div>

						<div class="profile-info-value">
							<span class="editable" id="username">
							<script>
							var classCode = '${classMainList.ext_id}';
							var subject = classCode.substr(2, 2);
							if (subject == "01") {
								document.write(":국어");
							} else if (subject == "02") {
								document.write(":영어");
							} else if (subject == "03") {
								document.write(":수학");
							}
							</script>
							</span>
						</div>
						<div class="profile-info-name">온/오프라인</div>

						<div class="profile-info-value">
							<span class="editable" id="username">
							<script>
							var classCode = '${classMainList.ext_id}';
							var subject = classCode.substr(0, 1);
							if (subject = "1") {
								document.write(":온라인");
							} else if (subject = "2") {
								document.write(":오프라인");
							} 
							</script>
							</span>
						</div>
					</div>

					<div class="profile-info-row">
						<div class="profile-info-name">수강학생수</div>

						<div class="profile-info-value">
							<span class="editable" id="country">
							<script>
							var numclassReq = '${classMainList.num_class_req}';
							document.write(":"+numclassReq)
							</script>
							</span>
						</div>
						<div class="profile-info-name">과외 대상</div>

						<div class="profile-info-value">
							<span class="editable" id="country">
							<script>var extObj = '${classMainList.ext_obj}';
							document.write(":"+extObj)</script>
							</span>
						</div>
					</div>

					<div class="profile-info-row">
						<div class="profile-info-name">수업난이도</div>

						<div class="profile-info-value">
							<span class="editable" id="age">
							<script>var classlev = '${classMainList.class_lev}';
							document.write(":"+classlev)</script>
							</span>
						</div>
						<div class="profile-info-name">과외 형태</div>

						<div class="profile-info-value">
							<span class="editable" id="age">
							<script>var extWay = '${classMainList.ext_way}';
							document.write(":"+extWay)</script>
							</span>
						</div>
					</div>

					<div class="profile-info-row">
						<div class="profile-info-name">강의시작날짜</div>

						<div class="profile-info-value">
							<span class="editable" id="login">
							<script>var startdate = '${classMainList.str_class_date}';
						
							document.write(":"+startdate)</script>
							</span>
						</div>
						<div class="profile-info-name">강의종료날짜</div>

						<div class="profile-info-value">
							<span class="editable" id="login">
							<script>var enddate = '${classMainList.end_class_date}';
							document.write(":"+enddate)</script>
							</span>
						</div>
					</div>
				</div>
				<!-- 강사 정보 끝 -->
				
			<!-- 수업 소개/공지사항 -->	
			<div class="space-12"></div><div class="space-12"></div>
			<div class="space-12"></div><div class="space-12"></div>
			<div class="space-12"></div><div class="space-12"></div>
			<div class="space-12"></div><div class="space-12"></div>
			</div>
			<div id="classIntroButton">
					<button id="classIntroButton1" style="margin-left:30px; ">수업소개</button>
					<button id="classIntroButton2">공지사항</button>
			</div>
			
			<!-- -수업 소개 DIV -->
			<div id="classIntro3" style="margin-left:30px; margin-right:30px;">
				${classMainList.intro_class}
			</div>
			
			<!-- 공지 사항 DIV -->
			<div id="classIntro4" style="margin-left:30px; margin-right:30px;">
				공지사항
				<form method="post">
					<button id="noticeResi">등록</button>
				</form>

				<script>
					$("#noticeResi").on("click", function() {
						$("form").attr("action", "noticeResi");
						$("form").attr("method", "get");
						$("form").submit();
					});
				</script>
			</div>
			<!-- 빈공간 -->
			<div class="space-12"></div><div class="space-12"></div>
			<div class="space-12"></div><div class="space-12"></div>
			<!-- 빈공간 -->
			
			<!-- 시간표 -->
			<div id="classIntroButton">
				<button id="classIntroButton3" style="margin-left:30px;">시간표</button>
			</div>
			
			<!-- 시간표가 출력되는 부분 -->
			<div id="classIntro5" style="margin-left:30px; margin-right:30px;">
			<!-- 시간표 영역 -->
				<div id="timeTable" class="tableDiv">
		    		<div id="base">
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
			<!--  -->
			</div>
		</div>
	<!-- user profile -->
	</div>		
		<!--  -->
		<div id="classIntro2">
		<!-- 빈공간 -->
			<div id="teacherImageName"
				style="width: 10%; height: 20%; position: relative; float: left;">
			</div>
		<!-- 빈공간 -->
	</div>
</div>
<!--  -->
	<hr class="soften1 copyhr">
	<div class="row-fluid copyright">
		<div class="span12">Copyright &copy; 2012. Greepit.com</div>
	</div>
	<script src="http://platform.twitter.com/widgets.js"></script>
	<script src="./resources/js/jquery.js"></script>
	<script src="./resources/js/google-code-prettify/prettify.js"></script>
	<script src="./resources/js/bootstrap-transition.js"></script>
	<script src="./resources/js/bootstrap-alert.js"></script>
	<script src="./resources/js/bootstrap-modal.js"></script>
	<script src="./resources/js/bootstrap-dropdown.js"></script>
	<script src="./resources/js/bootstrap-scrollspy.js"></script>
	<script src="./resources/js/bootstrap-tab.js"></script>
	<script src="./resources/js/bootstrap-tooltip.js"></script>
	<script src="./resources/js/bootstrap-popover.js"></script>
	<script src="./resources/js/bootstrap-button.js"></script>
	<script src="./resources/js/bootstrap-collapse.js"></script>
	<script src="./resources/js/bootstrap-carousel.js"></script>
	<script src="./resources/js/bootstrap-typeahead.js"></script>
	<script src="./resources/js/bootstrap-affix.js"></script>
	<script src="./resources/js/application.js"></script>
	<script src="./resources/js/superfish.js"></script>
	<script src="./resources/js/custom.js"></script>
	<script>
		$("#StudyRoom").click(function(){
			location.href="/Highlighter/classMain?ext_id=${ext_id}";
		});
		$("#StudyHomework").click(function(){
			alert("개발 중입니당~!");
			location.href="/Highlighter/cal?ext_id=${ext_id}";
		});
		$("#StudyClassData").click(function(){
			alert("개발 중입니당~!");
			/* location.href="/Highlighter/classData"; */
		});
		$("#StudyStudyManagement").click(function(){
			location.href="/Highlighter/classSTManagementList?ext_id=${ext_id}";
		});
		$("#StudyClassTest").click(function(){
			location.href="/Highlighter/classTest?ext_id=${ext_id}&user_id=${id}";
		});
		$("#StudyReplay").click(function(){
			window.location.href="/Highlighter/listAll?ext_id=${ext_id}";
		});
		$("#StudyClassDeval").click(function(){
			location.href="/Highlighter/classDeval?user_id=${id}&ext_id=${ext_id}&user_grade=${user_grade}";
			/* location.href="/Highlighter/classDeval"; */
		});
	
		$(document).ready(function() {
			$("#check_id").click(function() {
				var id = {
					id : $("#user_id").val()
				};

				if ($("#user_id").val().trim() == "")
					alert('아이디를 입력해주세요!');
				else {
					$.ajax({
						type : "post",
						url : "/Highlighter/checkId",
						data : id,
						success : function(data) {
							if (data == 0) {
								alert("사용할 수 있는 아이디입니다.");
								$("#check_yn").val('y');
							} else {
								alert("사용할 수 없는 아이디 입니다.");
								$("#check_yn").val('n');
							}
						},
						error : function(data) {
							alert("오류래여 !!");
						}
					});
				}
			});
			$("#submit").click(function() {
				if ($("#check_yn").val() == "n") {
					alert("아이디 중복확인을 해주세요.");
					$("#user_id").val('');
				}
			});
			
			$("#classGoIn").click(function(){
				var ext_id = '${ext_id}';
				var user_id = '${user_id}';
				var user_grade='${user_grade}';
				
				if(user_grade=="teacher")
				{
					$.ajax({
							url : "classMain",
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
									window.open("https://192.168.43.136/?ext_id=${ext_id}&id=${user_id}"); //106.249.38.98,192.168.43.136
								}
							},
							error : function(data) {
								alert("실패!");
							}
						});
				}
				else if(user_grade=="student")
				{
					window.open("https://192.168.43.136/?ext_id=${ext_id}&id=${user_id}"); //192.168.51.19
				}
			});
			$("#classExit").click(function(){ //이거 추가해야함 그리고 버튼도 만들고 css도 추가같이 해야함
				var ext_id = '${ext_id}';
				var user_id = '${user_id}';
				$.ajax({
						url : "classMain2",
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
						$("#"+strBlock).css("background-color","#1279ff");
					}
					
				}
				
			},
			error : function(data){
				alert("에러 시바아아아아알");
			}
		});
	});
	</script>
</body>
</html>