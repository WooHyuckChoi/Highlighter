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
<!-- 부트스트랩 -->
<link href="./resources/bootstrap/css/application-ie9-part2.css" rel="stylesheet">
<link href="./resources/bootstrap/css/application.min.css" rel="stylesheet">

<!-- 끝 -->
<!-- 강사 프로필 STYLE -->
<!-- <link rel="stylesheet" href="./resources/assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="./resources/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" /> -->
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
#notExistleft{
	float:left;
}

#notExist {
   margin-left : 3%;
   background-color: #D5D4D3;
   height: 380px;
   text-align: center;
}
#classIntro {
	margin-top: 10px;
	border: 3px solid #ff6600;
	height: auto;
	padding:10px;
}

#jindanstart{
	width:120px;
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


#mainde{
	width:120px;
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


#devalResi {
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
		<div id="div1">
			<!-- 과외 소개 및 강의 입장 타이틀 -->
			<div id="classIntro">
				진단 평가
	
			</div>
			<div id="user-profile-1" class="user-profile row">
				<div id="content" class="content" role="main">
					<div class="row gallery shuffle" id="grid"
						style="position: relative;	 overflow: hidden; height: 879px; transition: height 250ms ease-out;">





      	
             	<div id="notExist">
             	<br>
             	<br>
             	<div id="notExistleft">
             	<img src="./resources/img/jindanimg.jpg"
						style="width: 100%; height: 300px; margin-right: 60%; margin-left: 10%">   
					</div>
					<div id="notExistright"><br><br><br>
					<h3>진단평가를 완료했습니다.</h3>
					<br>진단평가 실시 여부에 따라 수업진행에 도움이 됩니다.
					<br>
					<br>
					<br>
					평가완료
					<br>
					<br>
					<button id="mainde">메인으로</button>
					</div>
						</div>
			
        
					</div>
				</div>
			</div>
		</div>
		
	</div>
	<!-- resources/bootstrap-->
	<script src="./resources/bootstrap/vendor/jquery/dist/jquery.min.js"></script>
<!--  -->
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
			/* location.href="/Highlighter/homework"; */
		});
		$("#StudyClassData").click(function(){
			alert("개발 중입니당~!");
			/* location.href="/Highlighter/classData"; */
		});
		$("#StudyStudyManagement").click(function(){
			location.href="/Highlighter/classSTManagement";
		});
		$("#StudyClassTest").click(function(){
			location.href="/Highlighter/classTest?ext_id=${ext_id}";
		});
		$("#StudyReplay").click(function(){
			//window.location.href="/Highlighter/listAll?ext_id=${ext_id}"
		});
		$("#StudyClassDeval").click(function(){
			alert("개발 중입니당~!");
			/* location.href="/Highlighter/classDeval"; */
		});
		
		$("#devalResi").click(function(){
			window.location.href="/Highlighter/devalResi?ext_id=${ext_id}&user_id=${user_id}";
		});
		$(".detailReview").on("click",function(){
			var post_id=$(this).attr("alt");
			alert(post_id);
			window.open("boardDetail?post_id="+post_id);
		});
		$("#jindanstart").click(function(){
			window.location.href="/Highlighter/classMain?ext_id=${ext_id}&user_id=${user_id}";
		});
		$("#mainde").click(function(){
			location.href="/Highlighter/classMain?ext_id=${ext_id}";
		});
		
	</script>
</body>
</html>