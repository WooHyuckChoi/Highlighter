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
<meta name="description" content="Common form elements and layouts" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<!-- reviewList.jsp 부트스트랩 
<link href="./resources/bootstrap/css/application-ie9-part2.css" rel="stylesheet">
<link href="./resources/bootstrap/css/application.min.css" rel="stylesheet">
-->
<!-- uploadVideo 부트스트랩 -->
<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="./resources/assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="./resources/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

<!-- page specific plugin styles -->
<link rel="stylesheet" href="./resources/assets/css/jquery-ui.custom.min.css" />
<link rel="stylesheet" href="./resources/assets/css/chosen.min.css" />
<link rel="stylesheet" href="./resources/assets/css/bootstrap-datepicker3.min.css" />
<link rel="stylesheet" href="./resources/assets/css/bootstrap-timepicker.min.css" />
<link rel="stylesheet" href="./resources/assets/css/daterangepicker.min.css" />
<link rel="stylesheet"
	href="./resources/assets/css/bootstrap-datetimepicker.min.css" />
<link rel="stylesheet" href="./resources/assets/css/bootstrap-colorpicker.min.css" />

<!-- text fonts -->
<link rel="stylesheet" href="./resources/assets/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="./resources/assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<!--[if lte IE 9]>
			<link rel="stylesheet" href="./resources/assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
<link rel="stylesheet" href="./resources/assets/css/ace-skins.min.css" />
<link rel="stylesheet" href="./resources/assets/css/ace-rtl.min.css" />

<!--[if lte IE 9]>
		  <link rel="stylesheet" href="./resources/assets/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="./resources/assets/js/ace-extra.min.js"></script>
<!-- 끝 -->
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
	text-decoration: none;
	border:solid 1px #ff6600;
}

#addResi{
	float: right;
	width:90px;
	background-color:#ff6600;
	padding-top:5px;
	padding-left:10px;
	padding-bottom:5px;
	margin-top:-5px;
	color:white;
	border-radius:5px;
	text-decoration: none;
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
	height: 200px;;
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
#content{
	background-color: rgba(255,255,255,0.1);
}
input{
	height:30px;
}
/* #intro{
	margin:10px;
	width:100px;
	position:relative;
} */
</style>

</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
<!-- nav -->
	<div class="nav-agency">
		<div class="navbar navbar-static-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="brand" href="/Highlighter"> <img
						src="./resources/img/logo.png" alt=""></a>
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



<!-- 전체 내용  -->
	<div style="width: 80%; margin: 0 auto;">
		<!-- 과외 정보 관리 NAV -->
		<div id="classIndex">
			<div id="classMain">
				<ul class="StudyRoom">
					<li id="StudyRoom">StudyRoom<br>과외 정보 관리
					</li>
					<li id="StudyHomework">숙제</li>
					<li id="StudyClassData">강의자료</li>
					<li id="StudyStudyManagement">수강 학생 관리</li>
					<li id="StudyClassTest">시험</li>
					<li id="StudyReplay">다시보기</li>
					<li id="StudyClassDeval">진단평가</li>
				</ul>
			</div>
		</div>
		<div id="div1">
			<!-- 과외 소개 및 강의 입장 타이틀 -->
			<div id="classIntro">
				진단 평가 등록
				<button id="classGoIn">진단 평가</button>
			</div>
			<div class="main-container ace-save-state" id="main-container">
	
				<div class="main-content">
					<div class="main-content-inner">
						<div class="page-content">
			
							<div class="page-content">
								<div class="ace-settings-container" id="ace-settings-container">
									<div class="ace-settings-box clearfix" id="ace-settings-box"></div>
								</div>

								<div class="row">
									<div class="col-xs-12">
										<!-- PAGE CONTENT BEGINS -->




										
										<form method="post" action="classDeval?ext_id=${ext_id }&user_id=${user_id}" enctype="multipart/form-data" class="form-horizontal" role="form">
									<br>
										<input type="button" value="추가" id="addResi" onclick="add_div()"><br>
<span id="numberUpDown">진단평가 문항을 등록하세요</span>
<div id="room_type">

<div class="form-group">
	
	<input type="text" id="title" name="title" class="form-control" ></input>
	
</div>

<input type="button" value="삭제" id="minusResi" onclick="remove_div(this)">

</div>

<div id="field"></div>

	
										<div class="clearfix form-actions">
												<div class="col-md-offset-3 col-md-9">
													<button class="btn btn-info" type="submit" id="Resi">
														<i class="ace-icon fa fa-check bigger-110"></i> 등록
													</button>

													&nbsp; &nbsp; &nbsp;
													<button class="btn" type="reset">
														<i class="ace-icon fa fa-undo bigger-110"></i> Reset
													</button>
												</div>
											</div>
											<div class="hr hr-24"></div>
										</form>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

									<script type="text/javascript">

function add_div(){

    var div = document.createElement('div');



    div.innerHTML = document.getElementById('room_type').innerHTML;

    document.getElementById('field').appendChild(div);

}



function remove_div(obj){

document.getElementById('field').removeChild(obj.parentNode);

}


</script>


					<!--[if !IE]> -->
					<script src="./resources/assets/js/jquery-2.1.4.min.js"></script>

					<!-- <![endif]-->

					<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
					<script src="./resources/assets/js/bootstrap.min.js"></script>

					<!-- page specific plugin scripts -->

					<!--[if lte IE 8]>
		  <script src="./resources/assets/js/excanvas.min.js"></script>
		<![endif]-->
					<script src="./resources/assets/js/jquery-ui.custom.min.js"></script>
					<script src="./resources/assets/js/jquery.ui.touch-punch.min.js"></script>
					<script src="./resources/assets/js/chosen.jquery.min.js"></script>
					<script src="./resources/assets/js/spinbox.min.js"></script>
					<script src="./resources/assets/js/bootstrap-datepicker.min.js"></script>
					<script src="./resources/assets/js/bootstrap-timepicker.min.js"></script>
					<script src="./resources/assets/js/moment.min.js"></script>
					<script src="./resources/assets/js/daterangepicker.min.js"></script>
					<script src="./resources/assets/js/bootstrap-datetimepicker.min.js"></script>
					<script src="./resources/assets/js/bootstrap-colorpicker.min.js"></script>
					<script src="./resources/assets/js/jquery.knob.min.js"></script>
					<script src="./resources/assets/js/autosize.min.js"></script>
					<script src="./resources/assets/js/jquery.inputlimiter.min.js"></script>
					<script src="./resources/assets/js/jquery.maskedinput.min.js"></script>
					<script src="./resources/assets/js/bootstrap-tag.min.js"></script>

					<!-- ace scripts -->
					<script src="./resources/assets/js/ace-elements.min.js"></script>
					<script src="./resources/assets/js/ace.min.js"></script>

					<!-- inline scripts related to this page -->



					<script>
		$("#StudyRoom").click(function() {
			location.href = "/Highlighter/classMain?ext_id=${ext_id}";
		});
		$("#StudyHomework").click(function() {
			alert("개발 중입니당~!");
			/* location.href="/Highlighter/homework"; */
		});
		$("#StudyClassData").click(function() {
			alert("개발 중입니당~!");
			/* location.href="/Highlighter/classData"; */
		});
		$("#StudyStudyManagement").click(function() {
			location.href = "/Highlighter/classSTManagement";
		});
		$("#StudyClassTest").click(function() {
			location.href = "/Highlighter/classTest?ext_id=${ext_id}";
		});
		$("#StudyReplay").click(function() {
			//window.location.href="/Highlighter/listAll?ext_id=${ext_id}"
		});
		$("#StudyClassDeval").click(function() {
			alert("개발 중입니당~!");
			/* location.href="/Highlighter/classDeval"; */
		});

		$("#classGoIn").click(function() {
			window.location.href="/Highlighter/classDeval?user_grade=${user_grade}&user_id=${id}&ext_id=${ext_id}";
		});

	</script>
	
	</body>
</html>