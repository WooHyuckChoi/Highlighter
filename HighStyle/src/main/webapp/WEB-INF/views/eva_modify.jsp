<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>question상세보기</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='http://api.mobilis.co.kr/webfonts/css/?fontface=NanumBrushWeb' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="./resources/css/bootstrap.css" rel="stylesheet">
<link href="./resources/css/bootstrap-responsive.css" rel="stylesheet">
<link href="./resources/css/docs.css" rel="stylesheet">
<link href="./resources/js/google-code-prettify/prettify.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="assets/js/html5.js"></script>
<![endif]-->
<link rel="shortcut icon" href="./resources/ico/HL.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="./resources/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="./resources/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="./resources/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="./resources/ico/apple-touch-icon-57-precomposed.png">
 
<script type="text/javascript">

  function go_popup() {
   
    $('#popup').bPopup();
   
  };
  
</script> 
<style type="text/css">
/* 수강 정보 관리 */
	.toggler { width: 500px; height: 200px; position: relative; }
	#button { float:left; position:relative; width:40px; height:30px; background:url(./resources/img/button1.gif); text-indent:-9999px; cursor:pointer;}
	#effect { width: 500px; height: 135px;  position: fixed;  left:-300px; top:0%;}
	#content { width:300px; float:left; font: 28px/1.6 NanumBrushWeb; height:730%; background-color:rgba(0,0,0,0.9); color:white;}
/* */
.my-box {
	border: 5px solid orange;
	background-color: ivory;
	width: 768px;
	color: black;
	text-align: left;
}
#classIntro {
	margin-top: 10px;
	border: 3px solid orange;
	height: auto;
	padding: 10px;
}

.nav-agency {
	border-bottom: 1px solid #DDD;
}

#div1 {
	float: left;
	width: 80%;
	margin-top: 70px;
	text-align: center;
}

table.type07 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border: 1px solid #1bbc9b;
    margin: 20px 10px;
}
table.type07 thead {
    border-right: 1px solid #1bbc9b;
    border-left: 1px solid #1bbc9b;
    background: #1bbc9b;
}
table.type07 thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #fff;
}
table.type07 tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #1bbc9b;
    background: #ffffff;
}
table.type07 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #1bbc9b;
}

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
#notAppClass{
	font-size:13px;
	border:1px solid #CBCBCB;
	border-style:dotted;
	margin:10px;
	height:200px;
	
}
.howButton{
	border:1px solid white;
	padding:10px 40px 10px 40px;
	margin:10px;
}
.search{
	border-radius:0px;
	width:180px;
}
.search2{
	background-color:white;
	color:black;
	padding:7px 10px 7px 10px;
	top:-3px;
	position:relative;
	
}
.search3{
	background-color:#1bbc9b;
	padding:7px 30px 7px 30px;
	top:-3px;
	position:relative;
}
.searchLabel{
	position:relative;
	left:-230px;
}
.searchLabel2{
	position:relative;
	left:-120px;
}
.searchLabel3{
	position:relative;
	left:0px;
}

/* 레이어 팝업 */
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
/* 레이어 팝업_끝 */
	
/* 유저 정보  */
.userMessage{
	color:black; 
	margin-top:8px;
}
.userMessage:hover{
	
}
.userProfile{
	color:black;
	margin-top:8px;
	padding-bottom:20px;
}

.userProfileMenu{
	border:1px solid black;
	border-radius:5px;
	margin-top:10px;
	display:none;
	z-index:5;
	position:fixed;
}
.userProfileMenu > div{
	padding:4px;
	z-index:6;
	border:1px solid rgba(0,0,0,0);
}
.userProfileMenu > div:hover{
	background-color:rgba(0,0,0,0.4);
	border-top:1px solid black;
	border-bottom:1px solid black;
	z-index:6;
	position:relative;
}
</style>
</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
  	
<!-- 마이 페이지에서 학생만 접근 가능! -->
<c:if test="${(id ne null) and (user_grade eq 'student')}">
<!--  -->
		<div id="home" style="position: relative; float: left; width: 100%">
			<div class="nav-agency">
				<div class="navbar navbar-static-top">
					<div class="navbar-inner">
						<div class="container">
							<a class="brand" href="/Highlighter"> <img src="./resources/img/logo.png" alt=""></a>
							<ul id="work-filter">
								<!-- 유저 정보 -->
								<li class="userMessage">메시지&nbsp;&nbsp;<img
									src="./resources/img/speech-bubble.png" /></li>
								<li class="userProfile">&nbsp;&nbsp;${user_name}&nbsp;&nbsp;<img
									src="./resources/img/user.png" />
									<div class="userProfileMenu">
										<div class="updateInfo">정보 수정</div>
										<div class="attendingLecture">수강 중인 강의</div>
										<div class="endLecture">수강 완료 강의</div>
										<div class="applicationList">수강 신청 목록</div>
										<div class="trophy">프로필 / 뱃지</div>
										<div class="logout">로그아웃</div>
									</div>
								</li>
								<!-- 유저 정보_끝 -->
							</ul>
							<div id="main-nav">
								<div class="nav-collapse collapse">
									<ul class="nav">
										<li class="active"><a href="/Highlighter">Home</a></li>
										<li class="dropdown"><a class="dropdown-toggle"
											data-toggle="dropdown" href="#"> 강사 <b class="caret"></b></a>
											<ul class="dropdown-menu">
												<li><a href="work.html">강사 이용방법</a></li>
												<li><a href="#" onclick="NotRegister2()">과외 등록</a></li>
												<li><a href="work-three-columns.html">강사 평가</a></li>
											</ul></li>
										<li class="dropdown"><a class="dropdown-toggle"
											data-toggle="dropdown" href="#"> 학생 <b class="caret"></b></a>
											<ul class="dropdown-menu">
												<li><a href="pricing.html">학생 이용방법</a>`</li>
												<li><a href="privateSearch">과외 검색</a></li>
											</ul></li>
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown"> 학부모 <b class="caret"></b></a>
											<ul class="dropdown-menu">
												<li><a href="faq.html">학부모 이용방법</a></li>
												<li><a href="contact.html">학부모 등록</a></li>
											</ul></li>
										<li><a href="index.html">사이트 소개</a></li>
										<li><a href="/Highlighter/question_listPage">문의</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="effect">
				<div id="content">
					<div style="font-size: 15px;">
						<img src="./resources/img/cycy.jpg"
							style="width: 50px; height: 50px; border: 1px solid #626262; margin: 10px; border-radius: 50px;">[${user_name}]
						학생,
					</div>
					<div
						style="margin: 10px; height: 30px; font-size: 13px; position: relative; font-size: 20px;">>>수강
						중인 강의</div>
					<!-- 수강 중인 강의 for문 -->
					<div style="overflow: auto; height: 25%;">
						<!-- 수강 중인 강의가 없을 때 -->
						<c:if test="${empty onGoingExt_Stu}">
							<div id="notAppClass"
								style="text-align: center; padding: 30px; opacity: 0.4;">
								<img src="./resources/img/close-button.png"
									style="width: 80px; opacity: 0.4;"> <br />
								<br />수강 중인 강의가 없습니다.
							</div>
						</c:if>
						<!-- 수강 중인 강의가 없을 때 끝 -->
						<c:if test="${!empty onGoingExt_Stu}">
							<c:forEach items="${onGoingExt_Stu}" var="list">
								<div
									style="border: 1px solid #424141; margin: 10px; height: 80px; font-size: 13px; position: relative; border-style: dotted;">
									<div
										style="width: 70px; margin-left: 10px; position: relative; top: 10px;">
										<div
											style="width: 25px; height: 25px; position: relative; float: left;">
											<img src="./resources/img/cycy.jpg"
												style="border: 1px solid white;">
										</div>
										<div
											style="width: 25px; height: 25px; position: relative; float: left;">
											<img src="./resources/img/cycy.jpg"
												style="border: 1px solid white;">
										</div>
										<div
											style="width: 25px; height: 25px; position: relative; float: left;">
											<img src="./resources/img/cycy.jpg"
												style="border: 1px solid white;">
										</div>
										<div
											style="width: 25px; height: 25px; position: relative; float: left;">
											<img src="./resources/img/cycy.jpg"
												style="border: 1px solid white;">
										</div>
									</div>
									<div style="position: relative; top: 10px; left: 10px;">${list.user_name}<a
											style="color: white;">(총 인원 : ${list.count_Stu}명)</a>
									</div>
									<div
										style="position: relative; top: 10px; left: 10px; color: gray;">${list.subject}</div>
									<div
										style="position: relative; top: 10px; left: 10px; color: gray;">${list.str_class_date}
										~ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
											href="classMain?ext_id=${list.ext_id}&prof_photo=${list.prof_photo}"
											style="color: white; border: 1px solid #626262; padding: 4px; font-size: 14px; margin_left: 40px;">강의입장</a>
									</div>
								</div>
							</c:forEach>
						</c:if>
					</div>
					<br />
					<div
						style="margin: 10px; height: 30px; font-size: 13px; position: relative; font-size: 20px;">>>수강
						신청 관리</div>

					<!-- 학생이 신청한 강의 목록 -->
					<div
						style="position: relative; top: 10px; left: 10px; color: white; font-size: 13px;">>>신청
						목록</div>
					<!-- 신청 목록이 없을 때 -->
					<c:if test="${empty appClassList_Stu}">
						<div id="notAppClass"
							style="text-align: center; padding: 30px; opacity: 0.4;">
							<img src="./resources/img/close-button.png"
								style="width: 80px; opacity: 0.4;"> <br />
							<br />신청한 목록이 없습니다.
						</div>
					</c:if>
					<!-- 신청 목록이 없을 때 끝 -->
					<div style="overflow: auto; height: 20%;">
						<c:forEach items="${appClassList_Stu}" var="list">
							<div
								style="border: 1px solid #424141; margin: 10px; height: 80px; font-size: 13px; position: relative; border-style: dotted;">
								<div
									style="width: 70px; margin-left: 10px; position: relative; top: 10px;">
									<div
										style="width: 25px; height: 25px; position: relative; float: left;">
										<img src="./resources/img/cycy.jpg"
											style="border: 1px solid white;">
									</div>
									<div
										style="width: 25px; height: 25px; position: relative; float: left;">
										<img src="./resources/img/cycy.jpg"
											style="border: 1px solid white;">
									</div>
									<div
										style="width: 25px; height: 25px; position: relative; float: left;">
										<img src="./resources/img/cycy.jpg"
											style="border: 1px solid white;">
									</div>
									<div
										style="width: 25px; height: 25px; position: relative; float: left;">
										<img src="./resources/img/cycy.jpg"
											style="border: 1px solid white;">
									</div>
								</div>
								<div style="position: relative; top: 10px; left: 10px;">
									강사 명 : ${list.user_name}<a style="color: white;">(${list.user_id})</a>
								</div>
								<div
									style="position: relative; top: 10px; left: 10px; color: gray;">신청날짜
									: ${list.reg_date}</div>
								<div
									style="position: relative; top: 10px; left: 10px; color: gray;">
									상태 : ${list.reg_stus}
									<button
										style="background-color: transparent !important; color: white; border: 1px solid #626262;"
										onclick="cancelClass('${list.ext_id}');">수강취소</button>
								</div>
							</div>
						</c:forEach>
					</div>
					<!-- 학생이 신청한 강의 목록 끝-->
				</div>
				<div id="button">
					<p>
						<a href="#">Toggle</a>
					</p>
				</div>
			</div>
		</div>
<!--  -->
<form role="form" method="post">	
	<div style="width: 50%; margin: 0 auto;">
		<div id="div1">
			<%-- <input type='hidden' name='user_id' value="${user_id}"> --%>
			<!-- 과외 소개 및 강의 입장 타이틀 -->
			<div id="classIntro">진단평가 수정 페이지 입니다</div>
			<br>
			<div class ="my-box">
				<p>
				&nbsp;&nbsp;1. 참고서 및 교재 필요 여부<br/>
				&nbsp;&nbsp;<input type="checkbox" name="book" value="1" onclick="doOpenCheck1(this);">나는 공책에 필기하는게 좋아요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="book" value="2" onclick="doOpenCheck1(this);">책을 구매하는 비용이 부담스러워요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="book" value="3" onclick="doOpenCheck1(this);">강의 화면 봤다 책 봤다하면 집중력이 떨어져요.<br>
			</p>
			<p>
				&nbsp;&nbsp;2. 외국인 강의<br/>
				&nbsp;&nbsp;<input type="checkbox" name="foreigner" value="1" onclick="doOpenCheck2(this);">I want to hear the lecture in English(영어 : 나는 강의를 영어로 듣고 싶어요)<br>
				&nbsp;&nbsp;<input type="checkbox" name="foreigner" value="2" onclick="doOpenCheck2(this);">私は講義を日本語で聞きたい&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(일본어 : 나는 강의를 일본어로 듣고 싶어요)<br>
				&nbsp;&nbsp;<input type="checkbox" name="foreigner" value="3" onclick="doOpenCheck2(this);">我要听的讲座中国&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(중국어 : 나는 강의를 중국어로 듣고 싶어요)<br>
			</p>
			<p>
				&nbsp;&nbsp;3. 본인이 생각했을 때 효율성이 높은 강의 스타일<br/>
				&nbsp;&nbsp;<input type="checkbox" name="style" value="1" onclick="doOpenCheck3(this);">수다스럽게 친구같은게 좋아요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="style" value="2" onclick="doOpenCheck3(this);">편안하고 진중한게 좋아요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="style" value="3" onclick="doOpenCheck3(this);">활기차고 즐거운게 좋아요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="style" value="4" onclick="doOpenCheck3(this);">철저하게 공부만 하는게 좋아요.<br>
			</p>
			<p>
				&nbsp;&nbsp;4. 원하는 강의 형태<br/>
				&nbsp;&nbsp;<input type="checkbox" name="level1" value="1" onclick="doOpenCheck4(this);">학교 수업이 너무 어렵고 따라가기 힘들어서 <strong>기초 강의</strong>가 필요해요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="level1" value="2" onclick="doOpenCheck4(this);">학교 수업이 어렵지만 조금은 이해가 되기 때문에 <strong>포괄적인 강의</strong>가 필요해요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="level1" value="3" onclick="doOpenCheck4(this);">학교 수업을 하면 전체적인 이해 하지만 <strong>교과서 중심</strong>의 강의가 필요해요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="level1" value="4" onclick="doOpenCheck4(this);">학교에서 남들 하는 만큼은 하기때문에 <strong>문제 풀이식 강의</strong>가 필요 해요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="level1" value="5" onclick="doOpenCheck4(this);">학교 수업이 이해가 쉽지만 더이상 올라가기는 힘들어서 <strong>쪽집계 강의</strong>가 필요해요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="level1" value="6" onclick="doOpenCheck4(this);">학교 수업이 쉬워 <strong>시험 대비용 강의</strong>가 필요해요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="level1" value="7" onclick="doOpenCheck4(this);">학교 수업이 너무 쉬워 <strong>선행 학습</strong>이 필요해요.<br>
			</p>
			<p>
				&nbsp;&nbsp;5. 원하는 강의 진도<br/>
				&nbsp;&nbsp;<input type="checkbox" name="student" value="1" onclick="doOpenCheck5(this);">초등학교 1학년
				<input type="checkbox" name="student" value="2" onclick="doOpenCheck5(this);">초등학교 2학년
				<input type="checkbox" name="student" value="3" onclick="doOpenCheck5(this);">초등학교 3학년<br/>
				&nbsp;&nbsp;<input type="checkbox" name="student" value="4" onclick="doOpenCheck5(this);">초등학교 4학년
				<input type="checkbox" name="student" value="5" onclick="doOpenCheck5(this);">초등학교 5학년
				<input type="checkbox" name="student" value="6" onclick="doOpenCheck5(this);">초등학교 6학년
				<br/><br/>
				&nbsp;&nbsp;<input type="checkbox" name="student" value="7" onclick="doOpenCheck5(this);">중학교 1학년
				<input type="checkbox" name="student" value="8" onclick="doOpenCheck5(this);">중학교 2학년
				<input type="checkbox" name="student" value="9" onclick="doOpenCheck5(this);">중학교 3학년
				<br/><br/>
				&nbsp;&nbsp;<input type="checkbox" name="student" value="10" onclick="doOpenCheck5(this);">고등학교 1학년
				<input type="checkbox" name="student" value="11" onclick="doOpenCheck5(this);">고등학교 2학년
				<input type="checkbox" name="student" value="12" onclick="doOpenCheck5(this);">고등학교 3학년
			</p>
			<p>
				&nbsp;&nbsp;6. 수화 강의<br/>
				&nbsp;&nbsp;<input type="checkbox" name="hand" value="1" onclick="doOpenCheck6(this);">나는 청각에 문제가 있어 수화강의를 듣고 싶어요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="hand" value="2" onclick="doOpenCheck6(this);">괜찮아요.<br>
			</p>
			</div>
			<br>
			<button type="submit" class="btn btn-primary">저장</button>
			<button type="submit" class="btn btn-warning">취소</button>		
		</div>
	</div>
</form>
</c:if>
<!-- 로그인 후/학생 끝 -->   
 
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script> 
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
<!-- <script src="http://code.jquery.com/jquery-1.7.js" type="text/javascript"></script>  -->
<script src="./resources/js/jquery.bpopup.min.js"></script>
<script>

$(".userMessage").on("click", function(){	
	window.location.href="message";
});

/* 유저 프로필 */
$(".userProfile").each(function(index) {
	$(this).mouseover(function() {
	    $(".userProfileMenu").css("display", "block");
	});
	$(this).mouseout(function() {
	    $(".userProfileMenu").css("display", "none");
	});
});

//정보 수정
$(".updateInfo").on("click", function(){
	window.location.href="myPage";
});
//수강 중인 강의
$(".attendingLecture").on("click", function(){
	window.location.href="attendingLecture";
});
//수강 완료 강의
$(".endLecture").on("click", function(){
	window.location.href="endLecture";
});
//수강 신청 목록
$(".applicationList").on("click", function(){
	window.location.href="applicationList";
});
//트로피 / 뱃지
$(".trophy").on("click", function(){
	window.location.href="trophy";
});
//로그아웃
$(".logout").on("click", function(){
	window.location.href="logout";
});
/* 유저 프로필_끝*/

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
	temp.find('a.cbtn').click(function(e){
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

//시간표
$('.block').click(function(){
	$(this).toggleClass('timeActive');
});
var timeArray = new Array();

$(".search3").on("click", function(){
	alert("아직 검색은 안 해썽");
	
	$.ajax({
    	type:"POST",
    	url:"privateSearch",
    	async : false,
    	data:{
    		onoff : $("#onoff option:selected").val(),
    		pg : $("#pg option:selected").val(),
    		subject : $("#subjected").val(),
    		easySearch : "y"
		},
    	
    	success:function(result){
    		location.href="privateSearch2";
    	},
    	error:function(result){
    		alert("에러다 시발시발시발빗바랍시바립사비라");
    	}
	});
});

/* 임시 권한 부여 */
function giveTime(ext_id){
	$.ajax({
		type:"POST",
		url:"giveTime",
    	async : false,
		data : {
			'ext_id' : ext_id,
		},
		success:function(data){
			if(data == "success"){
				alert("임시로 강의 시작 시간을 현재시간으로 교체하였습니다.");
				window.location.reload();
			}
		},
		error:function(data){
			alert("임시시간부여를 할 수 없습니다.");
		}
	});
}

/* 수강 취소 */
function cancelClass(ext_id){
	$.ajax({
		type:"POST",
		url:"cancelClass",
    	async : false,
		data : {
			'ext_id' : ext_id,
		},
		success:function(data){
			if(data == "success"){
				alert("수강이 취소 되었습니다.");
				window.location.reload();
			}
		},
		error:function(data){
			alert("수강을 취소 할 수 없습니다.");
		}
	});
}

/* 강의수락 */
function acceptClass(user_id, ext_id){
	$.ajax({
		type:"POST",
		url:"acceptClass",
    	async : false,
		data : {
			'user_id' : user_id,
			'ext_id' : ext_id
		},
		success:function(data){
			if(data == "success"){
				alert("해당 학생의 신청을 수락하였습니다.");
				window.location.reload();
			}
		},
		error:function(data){
			alert("해당 학생의 강의 수락을 실패하였습니다.");
		}
	});
}

/* 수락 취소 */
function cancelAcceptClass(user_id, ext_id){
	$.ajax({
		type:"POST",
		url:"cancelAcceptClass",
    	async : false,
		data : {
			'user_id' : user_id,
			'ext_id' : ext_id
		},
		success:function(data){
			if(data == "success"){
				alert("해당 학생의 수락을 취소하였습니다.");
				window.location.reload();
			}
		},
		error:function(data){
			alert("해당 학생의 수락 취소를 실패하였습니다.");
		}
	});
}

jQuery(function() {
	jQuery( "#button" ).toggle(
		function() {
			jQuery( "#effect" ).animate({left: 0}, 500 );
			jQuery( "#button" ).css({"background":"url(./resources/img/button2.gif)"});
		},
		function() {
			jQuery( "#effect" ).animate({left: '-300px'}, 500 );
			jQuery( "#button" ).css({"background":"url(./resources/img/button1.gif)"});
		}
	);
});

function NotRegister(){
	alert("로그인 후에 과외 등록을 해주세요.");
};

function NotRegister2(){
	alert("강사만 과외 등록을 할 수 있습니다.");
}
function NotRegister3(){
	alert("이미 모집 중인 과외가 있습니다.");
}

$(document).ready(function () {
	getAllList();
    var showCaseItems = $('.show-case-item').hide();
    var splashes = $('.splash').hide();
    splashes.eq(0).show();
    showCaseItems.eq(0).show();
    var prevIndex = -1;
    var nextIndex = 0;
    var currentIndex = 0;
    $('#banner-pagination li a').click(function () {
        nextIndex = parseInt($(this).attr('rel'));
        if (nextIndex != currentIndex) {
            $('#banner-pagination li a').html('<img src="./resources/img/slidedot.png" alt="slide">');
            $(this).html('<img src="./resources/img/slidedot-active.png" alt="slide">');
            currentIndex = nextIndex;
            if (prevIndex < 0) prevIndex = 0;
            splashes.eq(prevIndex).css({
                opacity: 1
            }).animate({
                opacity: 0
            }, 500, function () {
                $(this).hide();
            });
            splashes.eq(nextIndex).show().css({
                opacity: 0
            }).animate({
                opacity: 1
            }, 500, function () {});
            showCaseItems.eq(prevIndex).css({
                opacity: 1
            }).animate({
                opacity: 0
            }, 500, function () {
                $(this).hide();
                showCaseItems.eq(nextIndex).show().css({
                    opacity: 0
                }).animate({
                    opacity: 1
                }, 200, function () {});
            });
            prevIndex = nextIndex;
        }
        return false;
    });
   $("#user_login").click(function(){
	   var userdata = {
				user_id: $("#user_id").val(),
				user_pw: $("#user_pw").val(),
			};
	   if($("#user_id").val()=="")
		   alert("아이디를 입력해 주세요.");
	   else if($("#user_pw").val()=="")
		   alert("비밀번호를 입력해 주세요.");
	   else{
		   $.ajax({
			  type: "post",
			  url:"/Highlighter/login",
			  data:userdata,
			  success:function(data){
				  if(data == 0){
					 alert("아이디와 비밀번호를 확인해 주세요");
					$("#user_id").val('');
					$("#user_pw").val('');
				  }
				  else{
					  alert($("#user_id").val()+"야 안녕");
					  $("#user_id").val('');
					  $("#user_pw").val('');
					  location.href="/Highlighter/question_listPage";
				  }
			  },
			  error:function(data){
				  alert("에러가 났스여!!!");
			  }
		   });
	   }
   });
});
//수정
$(document).ready(function(){
	    	var formObj = $("form[role='form']");
	    	
	    	console.log(formObj);
	    	
	    	$(".btn-primary").on("click", function(){
	    		formObj.submit();
	    	});
	    	
	    	$(".btn-warning").on("click", function(){
	    		self.location = "/Highlighter/eva_read";
	    	});
	    });
//한개만 선택되게 하는거
function doOpenCheck1(chk){
   	
	var obj = document.getElementsByName("book");
   	
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}

function doOpenCheck2(chk){
   	
	var obj = document.getElementsByName("foreigner");
   	
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}

function doOpenCheck3(chk){
   	
	var obj = document.getElementsByName("style");
   	
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}

function doOpenCheck4(chk){
   	
	var obj = document.getElementsByName("level1");
   	
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}

function doOpenCheck5(chk){
   	
	var obj = document.getElementsByName("student");
   	
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}

function doOpenCheck6(chk){
   	
	var obj = document.getElementsByName("hand");
   	
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}
//체크박스 한개만 체크되게는거 끝 
</script>
</body>
</html>
