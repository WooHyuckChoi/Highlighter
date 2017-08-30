<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Highlighter</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--  -->
<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="./resources/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="./resources/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="./resources/assets/css/jquery-ui.custom.min.css" />
		<link rel="stylesheet" href="./resources/assets/css/jquery.gritter.min.css" />
		<link rel="stylesheet" href="./resources/assets/css/select2.min.css" />
		<link rel="stylesheet" href="./resources/assets/css/bootstrap-datepicker3.min.css" />
		<link rel="stylesheet" href="./resources/assets/css/bootstrap-editable.min.css" />
		<link rel="stylesheet" href="./resources/assets/css/jquery-ui.min.css" />
		
		<!-- text fonts -->
		<link rel="stylesheet" href="./resources/assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="./resources/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="./resources/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="./resources/assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="./resources/assets/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->

<!--  -->
<link href="./resources/css/privateSearch.css" rel="stylesheet">
<link href="./resources/css/bootstrap.css" rel="stylesheet">
<link href="./resources/css/bootstrap-responsive.css" rel="stylesheet">
<link href="./resources/css/docs.css" rel="stylesheet">
<link href="./resources/css/prettyPhoto.css" rel="stylesheet" type="text/css">
<link href="./resources/js/google-code-prettify/prettify.css" rel="stylesheet">
<link rel="shortcut icon" href="./resources/ico/HL.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="./resources/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="./resources/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="./resources/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="./resources/ico/apple-touch-icon-57-precomposed.png">
<!-- 시간표 팝업 띄우기 -->
<script type="text/javascript">
	function login() {
	  
    $('#popup').bPopup();
   
  };
</script>
<style type="text/css">
/* 시간표 팝업 */
.layer {display:none; position:fixed; _position:absolute; top:0; left:0; width:100%; height:100%; z-index:100;}

.layer .bg {position:absolute; top:0; left:0; width:100%; height:100%; background:#000; opacity:.5; filter:alpha(opacity=50);}

.layer .pop-layer {display:block;}

.pop-layer {display:none; position: absolute; top: 50%; left: 50%; width: 410px; height:auto;  background-color:#fff; border: 5px solid #3571B5; z-index: 10;} 

.pop-layer .pop-container {padding: 20px 25px;}

.pop-layer p.ctxt {color: #666; line-height: 25px;}

.pop-layer .btn-r {width: 100%; margin:10px 0 20px; padding-top: 10px; border-top: 1px solid #DDD; text-align:right;}

a.cbtn {display:inline-block; height:25px; padding:0 14px 0; border:1px solid #304a8a; background-color:#3f5a9d; font-size:13px; color:#fff; line-height:25px;}

a.cbtn:hover {border: 1px solid #091940; background-color:#1f326a; color:#fff;}

div#locationSelect1{margin:0;}
div#locationSelect2{margin:0;}
#step1{width:10%; height:100%; text-align:center; float:left;}
	#step2{width:10%; height:100%; text-align:center; float:left;}
	.step{border-top:solid black 5px; border-left:solid gray 1px; border-right:solid gray 1px; border-bottom:solid gray 1px;}
	.insertArea{border:solid black 1px;}
	#insertArea1{display:block;}
	#insertArea2{display:none;}
	.banner{width:70%; background-color:#F6F6F6;}
	#houlyWage{float:left;}
	#houlyWageInput{float:left;}
	#account{clear:both;}
	.paddingTop{padding-top:3%;}
	.insertMargin1{margin-left:15%; clear:both;}
	.insertMargin2{margin-left:25%; }
	#insertAccount{width:70%; margin-left:15%;}
	.insertDiv{width:10%; float:left; clear:both; margin-top:2%;}
	.insertForm{float:left; margin-top:2%;}
	.tableDiv{width:100%; height:100%; float:left; clear:both;}
	 #base {width: 100%; height: 100%; margin-top:5%; margin-left:15%;}
    #base > .line {clear: both;}
    #base > .line > .null{width:4%; height:4%; border: 1px solid gray; text-align:right; float: left;}
    #base > .line > .tableColumn{width:4%; height:8%; border-right: 1px solid gray; border-left: 1px solid gray; border-bottom: 1px solid gray;  text-align:right; float: left;}
    #base > .line > .tableRow{width:10%; height:4%; border-top: 1px solid gray; border-right: 1px solid gray; border-bottom: 1px solid gray; float: left;}
    #base > .line > .block{width:10%; height:8%; border-right: 1px solid gray; border-bottom: 1px solid gray; float: left;}
    .timeActive{background-color: red;}
	
	.textalign{text-align:center;}
	#subjectSelect{width:%; margin-left:8%; margin-top:10%;}
	#nextBtn {width:10%; clear:both; border: none; color: white; padding: 16px 32px; text-align: center; text-decoration: none; font-size: 16px; margin-left: 40%; margin-top: 15%; margin-bottom:5%; -webkit-transition-duration: 0.4s; /* Safari */ transition-duration: 0.4s; cursor: pointer; background-color: #008CBA; color: white;}
	#nextBtn:hover {background-color: white; color: black; border: 2px solid #008CBA;}
	#beforeBtn {width:10%; border: none; color: white; padding: 16px 32px; text-align: center; text-decoration: none; font-size: 16px; -webkit-transition-duration: 0.4s; /* Safari */ transition-duration: 0.4s; cursor: pointer; background-color: #008CBA; color: white; float:left;}
	#beforeBtn:hover {background-color: white; color: black; border: 2px solid #008CBA;}
	#submitBtn {width:10%; border: none; color: white; padding: 16px 32px; text-align: center; text-decoration: none; font-size: 16px; -webkit-transition-duration: 0.4s; /* Safari */ transition-duration: 0.4s; cursor: pointer; background-color: #008CBA; color: white; float:left;}
	#submitBtn:hover {background-color: white; color: black; border: 2px solid #008CBA;}
	#textArea{width:500%; height:100%;}
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
	background-color:red;
}

/* on/off 스위치 */
.onoffswitch {
    position: relative; width: 90px;
    -webkit-user-select:none; -moz-user-select:none; -ms-user-select: none;
}
.onoffswitch-checkbox {
    display: none;
}
.onoffswitch-label {
    display: block; overflow: hidden; cursor: pointer;
    border: 2px solid #FFFFFF; border-radius: 20px;
}
.onoffswitch-inner {
    display: block; width: 200%; margin-left: -100%;
    transition: margin 0.3s ease-in 0s;
}
.onoffswitch-inner:before, .onoffswitch-inner:after {
    display: block; float: left; width: 50%; height: 30px; padding: 0; line-height: 30px;
    font-size: 14px; color: white; font-family: Trebuchet, Arial, sans-serif; font-weight: bold;
    box-sizing: border-box;
}
.onoffswitch-inner:before {
    content: "ON";
    padding-left: 10px;
    background-color: #EBB552; color: #FFFFFF;
}
.onoffswitch-inner:after {
    content: "OFF";
    padding-right: 10px;
    background-color: #D6D6D6; color: #999999;
    text-align: right;
}
.onoffswitch-switch {
    display: block; width: 14px; margin: 8px;
    background: #FFFFFF;
    position: absolute; top: 0; bottom: 0;
    right: 56px;
    border: 2px solid #FFFFFF; border-radius: 20px;
    transition: all 0.3s ease-in 0s; 
}
.onoffswitch-checkbox:checked + .onoffswitch-label .onoffswitch-inner {
    margin-left: 0;
}
.onoffswitch-checkbox:checked + .onoffswitch-label .onoffswitch-switch {
    right: 0px; 
}
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
<body data-spy="scroll" data-target=".bs-docs-sidebar" >
  <%
  	String user_id = (String)session.getAttribute("id");
  	pageContext.setAttribute("user_id",user_id) ;
  %>
<div class="nav-agency">
  <div class="navbar navbar-static-top">
    <div class="navbar-inner">
      <div class="container"> <a class="brand" href="/Highlighter"> <img src="./resources/img/logo.png" alt=""></a>
      <c:if test="${user_id eq null}">
     	 <ul id="work-filter">
            <li><a data-filter="*" class="btn btn-success ione-col" id="login" onclick="login()">로그인</a></li>
            <li><a href="selectRegister" data-filter=".graphics" class="btn ione-col">회원가입</a></li>
         </ul>
      </c:if>
      <c:if test="${user_id ne null}" >
       	<ul id="work-filter">
      		<li><a href="logout" data-filter=".graphics" class="btn ione-col">로그아웃</a></li>
      	</ul>
      </c:if>
        <div id="main-nav">
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class=""><a href="index.html">Home</a> </li>
              <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> 강사 <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="work.html">강사 이용방법</a></li>
                  <li><a href="work-two-columns.html">과외 등록</a></li>
                </ul>
              </li>
              <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> 학생 <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="pricing.html">학생 이용방법</a></li>
                  <li><a href="pricing-three-columns.html">과외 검색</a></li>
                </ul>
              </li>
              <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> 학부모 <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="faq.html">학부모 이용방법</a></li>
                  <li><a href="contact.html">자녀 학습 관리</a></li>
                </ul>
              </li>
              <li><a href="index.html">사이트 소개</a> </li>
              <li><a href="index.html">문의</a> </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- 게시판 전체 영역  -->
	<div class="container">
		<!-- 게시판 타이틀 -->
		<div class="row-fluid">
			<div class="span12">
				<div class="page-header">
					<div class="row-fluid">
						<div class="span12" style="color: #303030; font-size: 30px;">
							<img src="./resources/img/group.png">&nbsp;&nbsp;과외 조회
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- user profile -->
		<div id="user-profile-1" class="user-profile row">
			<div class="col-xs-12 col-sm-3 center">
				<div>
					<!-- 강사 프로필 사진 -->
					<span class="profile-picture" style="width:200px;"> <img id="avatar"
						class="editable img-responsive" alt="Alex's Avatar"
						src="./resources/img/${T_Image}" >
					</span>

					<div class="space-4"></div>

					<div
						class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
						<div class="inline position-relative">
							<!-- 강사 명 -->
							<a href="#" class="user-title-label dropdown-toggle"
								data-toggle="dropdown"> <i
								class="ace-icon fa fa-circle light-green"></i> &nbsp; <span
								class="white">${user_info.user_name }</span>
							</a>

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
					<div class="profile-contact-links align-left">
						<a href="#" class="btn btn-link"> <i
							class="ace-icon fa fa-plus-circle bigger-120 green"></i> 즐겨찾기 추가
						</a> <a href="#" class="btn btn-link"> <i
							class="ace-icon fa fa-envelope bigger-120 pink"></i> 메시지 보내기
						</a> <a href="#" class="btn btn-link" onclick="app_class()"> <i
							class="ace-icon fa fa-globe bigger-125 blue" ></i> 수강 신청　　　　　　
						</a>
					</div>

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
				<div class="hr hr12 dotted"></div>

				<div class="clearfix">
					<div class="grid2">
						<span class="bigger-175 blue">${classCount}</span> <br /> 수업 진행
						횟수
					</div>

					<div class="grid2">
						<span class="bigger-175 blue">냥냥</span> <br /> 마지막 접속 시간
					</div>
				</div>
				<div class="hr hr16 dotted"></div>
			</div>

			<div class="col-xs-12 col-sm-9">
				<!-- 과외 정보 강조 버튼 6개 -->
				<!-- <div class="center">
					<span class="btn btn-app btn-sm btn-light no-hover"> <span
						class="line-height-1 bigger-170 blue"> 1,411 </span> <br /> <span
						class="line-height-1 smaller-90"> Views </span>
					</span> <span class="btn btn-app btn-sm btn-yellow no-hover"> <span
						class="line-height-1 bigger-170"> 32 </span> <br /> <span
						class="line-height-1 smaller-90"> Followers </span>
					</span> <span class="btn btn-app btn-sm btn-pink no-hover"> <span
						class="line-height-1 bigger-170"> 4 </span> <br /> <span
						class="line-height-1 smaller-90"> Projects </span>
					</span> <span class="btn btn-app btn-sm btn-grey no-hover"> <span
						class="line-height-1 bigger-170"> 23 </span> <br /> <span
						class="line-height-1 smaller-90"> Reviews </span>
					</span> <span class="btn btn-app btn-sm btn-success no-hover"> <span
						class="line-height-1 bigger-170"> 7 </span> <br /> <span
						class="line-height-1 smaller-90"> Albums </span>
					</span> <span class="btn btn-app btn-sm btn-primary no-hover"> <span
						class="line-height-1 bigger-170"> 55 </span> <br /> <span
						class="line-height-1 smaller-90"> Contacts </span>
					</span>
				</div> -->

				<!-- 강사 정보 -->
				<div class="space-12"></div>
				<h4 class="widget-title blue smaller" style="color: black;">강사
					정보</h4>
				<div class="profile-user-info profile-user-info-striped"
					style="border-top: 1px solid #1bbc9b">
					<div class="profile-info-row">
						<div class="profile-info-name">강사 명</div>

						<div class="profile-info-value">
							<span class="editable" id="username">${user_info.user_name }(${user_info.user_id})</span>
						</div>
					</div>

					<div class="profile-info-row">
						<div class="profile-info-name">나이</div>

						<div class="profile-info-value">
							<span class="editable" id="country">${user_info.birth_date}</span>
						</div>
					</div>

					<div class="profile-info-row">
						<div class="profile-info-name">이메일</div>

						<div class="profile-info-value">
							<span class="editable" id="age">${user_info.user_email}</span>
						</div>
					</div>

					<div class="profile-info-row">
						<div class="profile-info-name">학력</div>

						<div class="profile-info-value">
							<span class="editable" id="login">${user_info.college}</span>
						</div>
					</div>

					<div class="profile-info-row">
						<div class="profile-info-name">뱃지</div>

						<div class="profile-info-value">
							<span class="editable" id="about">없음.</span>
						</div>
					</div>
				</div>
				<!-- 강사 정보 끝 -->

				<!-- 과외 정보 -->
				<div class="space-12"></div>
				<h4 class="widget-title blue smaller" style="color: black;">과외
					정보</h4>
				<div class="profile-user-info profile-user-info-striped"
					style="border-top: 1px solid #1bbc9b">
					<div class="profile-info-row">
						<div class="profile-info-name">온/오프라인</div>

						<div class="profile-info-value">
							<span class="editable" id="username"> <c:if
									test="${onoff eq 1}">온라인</c:if> <c:if test="${onoff eq 0}">오프라인</c:if>
							</span>
						</div>
					</div>

					<div class="profile-info-row">
						<div class="profile-info-name">수업 가능 지역</div>

						<div class="profile-info-value">
							<span class="editable" id="about">Editable as WYSIWYG</span>
						</div>
					</div>

					<div class="profile-info-row">
						<div class="profile-info-name">개인/그룹</div>

						<div class="profile-info-value">
							<i class="fa fa-map-marker light-orange bigger-110"></i> <span
								class="editable" id="country"> <c:if test="${pg eq 1}">개인</c:if>
								<c:if test="${pg ne 1}">그룹 /(모집 인원 : ${pg}명)</c:if>
							</span>
						</div>
					</div>

					<div class="profile-info-row">
						<div class="profile-info-name">수업 과목</div>

						<div class="profile-info-value">
							<span class="editable" id="age"> <c:if
									test="${subject eq 01}">국어</c:if> <c:if test="${subject eq 02}">영어</c:if>
								<c:if test="${subject eq 03}">수학</c:if>
							</span>
						</div>
					</div>

					<div class="profile-info-row">
						<div class="profile-info-name">모집 종료 날짜</div>

						<div class="profile-info-value">
							<span class="editable" id="signup">${ext_info.end_rc_date}</span>
						</div>
					</div>

					<div class="profile-info-row">
						<div class="profile-info-name">시간당 수업료</div>

						<div class="profile-info-value">
							<span class="editable" id="login">${ext_info.tuit_fees}원/(1시간)</span>
						</div>
					</div>

					<div class="profile-info-row">
						<div class="profile-info-name">과외 대상</div>

						<div class="profile-info-value">
							<span class="editable" id="about">${ext_info.ext_obj}</span>
						</div>
					</div>

					<div class="profile-info-row">
						<div class="profile-info-name">과외 방식</div>

						<div class="profile-info-value">
							<span class="editable" id="about">${ext_info.ext_way}</span>
						</div>
					</div>

					<div class="profile-info-row">
						<div class="profile-info-name">과외 레벨</div>

						<div class="profile-info-value">
							<span class="editable" id="about">${ext_info.class_lev}</span>
						</div>
					</div>
				</div>
				<!-- 과외 정보 끝 -->

				<!-- 시간표/교습계획 -->
				<div class="space-20"></div>

				<div class="widget-box transparent">
					<div class="widget-header widget-header-small">
						<h4 class="widget-title blue smaller">
							<i class="ace-icon fa fa-rss orange"></i> 시간표/교습계획
						</h4>
					</div>
				</div>

				<div class="hr hr2 hr-double"></div>
				<!-- 시간표/교습계획 출력하는 공간 -->
				<div class="col-sm-6">
					<h3 class="header blue lighter smaller">
						<i class="ace-icon fa fa-folder-o smaller-90"></i> Tabs
					</h3>

					<div id="tabs" >
						<ul>
							<li><a href="#tabs-1">수업 시간표</a></li>

							<li><a href="#tabs-2">수업 소개</a></li>
						</ul>

<!-- 						<div id="tabs-1" style="height:420px;">
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
						</div>  --> 

						<div id="tabs-2">
							<p>
							<c:if test="${ext_info.intro_class eq null}">등록된 수업 소개가 없습니다.</c:if>
							<c:if test="${ext_info.intro_class ne null}">${ext_info.intro_class}</c:if>
							</p>
						</div>

					</div>
				</div>
				<!-- ./col -->
				
		<!-- 시간표/교습계획 출력하는 공간 끝-->
				<div class="space-6"></div>
			
				<div class="center">
					<button type="button"
						class="btn btn-sm btn-primary btn-white btn-round">
						<i class="ace-icon fa fa-rss bigger-150 middle orange2"></i> <span
							class="bigger-110">View more activities</span> <i
							class="icon-on-right ace-icon fa fa-arrow-right"></i>
					</button>
				</div>
			</div>
		</div>
	</div>
	
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
	<!-- user profile -->
<!-- footer -->
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
<!-- <script src="./resources/js/custom.js"></script> -->
<script src="./resources/js/jquery.bpopup.min.js"></script>
<!--  -->
		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="./resources/assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
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

<!--  -->
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