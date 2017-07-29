<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<title>Highlighter</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="./resources/css/bootstrap.css" rel="stylesheet">
<link href="./resources/css/bootstrap-responsive.css" rel="stylesheet">
<link href="./resources/css/docs.css" rel="stylesheet">
<link href="./resources/css/prettyPhoto.css" rel="stylesheet" type="text/css">
<link href="./resources/js/google-code-prettify/prettify.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="./resouces/js/html5.js"></script>
<![endif]-->
<link rel="shortcut icon" href="./resources/ico/HL.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="./resources/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="./resources/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="./resources/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="./resources/ico/apple-touch-icon-57-precomposed.png">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
#classIntro {
	margin-top: 10px;
	border: 3px solid #1bbc9b;
	height: auto;
	padding:10px;
}

#classIndex {
	margin-left: 10px;
	margin-top: 120px;
	margin-bottom: 10px;
	margin-right: 50px;
	border: 1px solid #1bbc9b;
	height: auto;
	float: left;
}
.nav-agency {
	border-bottom: 1px solid #DDD;
}

#div1 {
	float: left;
	width: 80%;
	margin-top:70px;
	
}

.MyPage {
	margin: 0px;
}

.MyPage li:not(#MyPage) {
	list-style: none;
	border-top:1px solid rgba(0,0,0,0.25);
	height:35px;
	padding-left:10px;
	padding-top:5px;
	font-size:13px;
	width:140px;
}
.MyPage li:not(#MyPage):hover {
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
#MyPage{
	padding-top:10px;
	padding-left:20px;
	padding-bottom:10px;
	background-color:#1bbc9b;
	color:white;
}
/* #intro{
	margin:10px;
	width:100px;
	position:relative;
} */
#user-profile-1{
	margin: 0 auto;
	margin-top : 50px;
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
<body data-spy="scroll" data-target=".bs-docs-sidebar">
<div class="nav-agency">
  <div class="navbar navbar-static-top">
    <div class="navbar-inner">
      <div class="container"> <a class="brand" href="/Highlighter"> <img src="./resources/img/logo.png" alt=""></a>
        <div id="main-nav">
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class=""><a href="/Highlighter">Home</a> </li>
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
<!-- GNB 끝 -->
<!-- 과외 정보 관리 NAV -->
<div style="width:80%; margin:0 auto;">
	<div id="classIndex" >
		<div id="classMain" >
			<ul class="MyPage">
				<li id="MyPage">MyPage<br>마이 페이지</li>
				<li id="updateInfo">정보수정</li>
				<li id="attendingLecture">수강 중인 과외</li>
				<li id="endLecture">수강 완료 과외</li>
				<li id="applicationList">수강 신청 목록</li>
				<li id="message">메시지 함</li>
				<li id="trophy">트로피 / 뱃지</li>
			</ul>
		</div>
	</div>
<!-- 과외 정보 관리 NAV 끝 -->
	<%
 		int a = 0;
		int b = 1;
 	%>
	<div id="div1">
	<!-- 과외 소개 및 강의 입장 타이틀 -->
		<div id="classIntro">수강 완료 과외</div>
	<!-- 과외 소개 및 강의 입장 타이틀 끝 -->
	<!--  -->
		<div id="user-profile-1" class="user-profile row">
			<div class="col-xs-12 col-sm-3 center"></div>			
			<!-- 빈공간 -->
			
			<!-- 빈공간 -->
			<table id="ext" class="table">
				<tr>
					<th class="hidden-xs">번호</th>
					<th>강사 명</th>
					<th>과목 명</th>
					<th class="hidden-xs">강의 시작 날짜</th>
					<th class="hidden-xs">강의 종료 날짜</th>
					<th>강의입장</th>
				</tr>
				<c:forEach items="${list}" var="list"> 
				<tr id="row<%=a%>">
					<td class="hidden-xs"><%=b%></td>
					<td>${list.user_name }</td>
					<td>
						<c:if test="${list.subject eq '00' }">과목없음</c:if>
						<c:if test="${list.subject eq '01' }">국어</c:if>
						<c:if test="${list.subject eq '02' }">영어</c:if>
						<c:if test="${list.subject eq '03' }">수학</c:if>
					</td>
					<td>${list.str_class_date }</td>
					<td class="hidden-xs text-semi-muted">${list.end_class_date }</td>
					<td><button>강의입장</button>
				</tr>
				<%
 					a++;
					b++;
 				%>
				</c:forEach>		
		</table>
		</div>
	</div>		
	
	<div id="classIntro2">
		<!-- 빈공간 -->
		
		<!-- 빈공간 -->
	</div>
</div>

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
		$("#MyPage").click(function(){
			location.href="/Highlighter/myPage";
		});
		$("#updateInfo").click(function(){
			//alert("개발 중입니당~!");
			location.href="/Highlighter/modifyMyInfo";
		});
		$("#attendingLecture").click(function(){
			//alert("개발 중입니당~!");
			location.href="/Highlighter/attendingLecture";
		});
		$("#endLecture").click(function(){
			//alert("개발 중입니당~!");
			location.href="/Highlighter/endLecture";
		});
		$("#applicationList").click(function(){
			//alert("개발 중입니당~!");
			location.href="/Highlighter/applicationList";
		});
		$("#message").click(function(){
			window.location.href="/Highlighter/message";
		});
		$("#trophy").click(function(){
			alert("개발 중입니당~!");
			/* location.href="/Highlighter/trophy"; */
		});
</script>
</body>
</html>