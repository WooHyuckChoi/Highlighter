<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Highlighter</title>
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
	color:white; 
	margin-top:8px;
}
.userMessage:hover{
	
}
.userProfile{
	color:white;
	margin-top:8px;
	padding-bottom:20px;
}

.userProfileMenu{
	border:1px solid white;
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
	border-top:1px solid white;
	border-bottom:1px solid white;
	z-index:6;
	position:relative;
}
#parentLogin{
    width: 51px;
    height: 26px;
    font-size: 11px;
    line-height: 0;
    padding: 0px;
}
#parentLoginDiv{
	display:none;
	width:300px;
	height:350px;
	background:white;
}
#parentDivHeader{
	clear: both;
    font-size: 20px;
    margin-left: 30px;
    margin-right:30px;
}
#parentDivClose{
	float: right;
    font-size: 15px;
    margin-top: 30px;
    margin-right: 30px;
    cursor: pointer;
}

#parentDivChild{margin-left:30px;}
#parentDivParent{margin-left:30px; margin-right:30px;}
#parentLoginBtn{margin-left:110px;}
#parentDivBirth{margin-left:30px;}
</style>
</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
<!-- 로그인 전 화면 -->
<c:if test="${id eq null}">
<div id="home" style="position:relative; float:left; width:100%">
<div class="jumbotron masthead">
  <div class="splash"> <img src="./resources/img/rrrr.png" alt=""> </div>
  <div class="splash"> <img src="./resources/img/gg.png" alt=""> </div>
  <div class="splash"> <img src="./resources/img/aaaa.png" alt=""> </div>
  <div class="nav-agency">
    <div class="navbar navbar-static-top">
      <div class="navbar-inner">
        <div class="container"> <a class="brand" href="/Highlighter"> <img src="./resources/img/logo.png" alt=""></a>
            <ul id="work-filter">
              <li><a data-filter="*" class="btn btn-success ione-col" id="login" onclick="go_popup()">로그인</a></li>
              <li><input id="parentLogin" type="button" class="btn btn-success ione-col" value="학부모"></li>
              <li><a href="/Highlighter/selectRegister" data-filter=".graphics" class="btn ione-col">회원가입</a></li>
            </ul>
          <div id="main-nav">
            <div class="nav-collapse collapse">
              <ul class="nav">
                <li class="active"><a href="/Highlighter">Home</a> </li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> 강사 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="work.html">강사 이용방법</a></li>
                    <li><a href="#" onclick="NotRegister()">과외 등록</a></li>
                    <li><a href="/Highlighter/LectureEvaluation">강사 평가</a></li>
                  </ul>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> 학생 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="pricing.html">학생 이용방법</a></li>
                    <li><a href="privateSearch">과외 검색</a></li>
                  </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> 학부모 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="faq.html">학부모 이용방법</a></li>
                    <li><a href="contact.html">학부모 등록</a></li>
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
  <div class="container show-case-item">
    <h1>과외 매칭 및 온라인 과외 진행</h1>
    <p>검색을 통해 원하는 과외를 찾아보세요!</p>
    <a href="privateSearch" class="bigbtn">검색하기</a>
    <div class="clearfix"> </div>
  </div>
  <div class="container show-case-item">
    <h1>과외 매칭 및 온라인 과외 진행</h1>
    <p>검색을 통해 원하는 과외를 찾아보세요!</p>
    <a href="privateSearch" class="bigbtn">검색하기</a>
    <div class="clearfix"> </div>
  </div>
  <div class="container show-case-item">
    <h1>과외 매칭 및 온라인 과외 진행</h1>
    <p>검색을 통해 원하는 과외를 찾아보세요!</p>
    <a href="privateSearch" class="bigbtn">검색하기</a>
    <div class="clearfix"> </div>
  </div>
  <div id="banner-pagination">
    <ul>
      <li><a href="#" class="active" rel="0"> <img src="./resources/img/slidedot-active.png" alt=""></a></li>
      <li><a href="#" rel="1"> <img src="./resources/img/slidedot.png" alt=""></a></li>
      <li><a href="#" rel="2"> <img src="./resources/img/slidedot.png" alt=""></a></li>
    </ul>
  </div>
</div>
<div class="container">
  <div class="marketing">
  <h1> Let's Learn!</h1>
    <p class="marketing-byline"> Need reasons to use this template? See below.</p>
    <hr class="soften">
    <div class="row-fluid">
      <div class="span4"> <img src="./resources/img/responsive.png" alt="">
        <h2> <span class="firstword">강사</span> 이용 방법</h2>
        <p class="features"> 뭐라 설명 해야될까..</p>
      </div>
      <div class="span4"> <img src="./resources/img/think-creative.png" alt="">
        <h2> <span class="firstword">학생</span> 이용 방법</h2>
        <p> 뭐라 설명 해야될까..</p>
      </div>
      <div class="span4"> <img src="./resources/img/core-values.png" alt="">
        <h2> <span class="firstword">학부모</span> 이용 방법</h2>
        <p> 뭐라 설명 해야될까..</p>
      </div>
    </div>
    </div>
    </div>
    <hr class="soften">
    <hr class="soften1 copyhr">
    <div class="span12">Copyright &copy; 2012. Greepit.com</div>
 	<div id="popup" class="Pstyle">
	<span class="b-close">X</span>
		<div class="content" style="height: auto; width: auto;">
			<span style="width:200px; color:#474646; font-size:20px;">로그인</span>
         	 <hr />
			 <label for="user_id">아이디</label>
             <input type="text" name="user_id" id="user_id" tabindex="3" required>
             <label for="user_pw">비밀번호</label>
             <input type="text" name="user_pw" id="user_pw" tabindex="3" required>
             <hr/>
             <input name="submit" class="btn btn-success" type="submit" id="user_login" tabindex="5" value="로그인">
  		</div>
 	</div> 
</div>
</c:if>
<!-- 로그인 전 끝 -->

<!-- 로그인 후/강사 -->
<c:if test="${(id ne null) and (user_grade eq 'teacher')}">
<div style="">
<!--  -->
<div id="home" style="position:relative; float:left; width:100%">
<div class="jumbotron masthead">
  <div class="splash"> <img src="./resources/img/rrrr.png" alt=""> </div>
  <div class="splash"> <img src="./resources/img/gg.png" alt=""> </div>
  <div class="splash"> <img src="./resources/img/aaaa.png" alt=""> </div>
  <div class="nav-agency">
    <div class="navbar navbar-static-top">
      <div class="navbar-inner">
        <div class="container"> <a class="brand" href="/Highlighter"> <img src="./resources/img/logo.png" alt=""></a>
            <ul id="work-filter" >
              <!-- 유저 정보 -->
              <li class="userMessage">메시지&nbsp;&nbsp;<img src="./resources/img/speech-bubble.png"/></li>
      		  <li class="userProfile">&nbsp;&nbsp;${user_name}&nbsp;&nbsp;<img src="./resources/img/user.png"/>
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
                <li class="active"><a href="/Highlighter">Home</a> </li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> 강사 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="work.html">강사 이용방법</a></li>
                    
                    <c:if test="${appClassOne ne null}"><li><a href="#" onclick="NotRegister3()">과외 등록</a></li></c:if>
                    <c:if test="${appClassOne eq null}"><li><a href="tutoringRegister">과외 등록</a></li></c:if>
                    <li><a href="work-three-columns.html">강사 평가</a></li>
                  </ul>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> 학생 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="pricing.html">학생 이용방법</a></li>
                    <li><a href="privateSearch">과외 검색</a></li>
                  </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> 학부모 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="faq.html">학부모 이용방법</a></li>
                    <li><a href="contact.html">학부모 등록</a></li>
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
  <div class="container show-case-item">
    <h1>과외 매칭 및 온라인 과외 진행</h1>
    <p>검색을 통해 원하는 과외를 찾아보세요!</p>
    <a href="privateSearch" class="bigbtn">검색하기</a>
    <div class="clearfix"> </div>
  </div>
  <div class="container show-case-item">
    <h1>과외 매칭 및 온라인 과외 진행</h1>
    <p>검색을 통해 원하는 과외를 찾아보세요!</p>
    <a href="privateSearch" class="bigbtn">검색하기</a>
    <div class="clearfix"> </div>
  </div>
  <div class="container show-case-item">
    <h1>과외 매칭 및 온라인 과외 진행</h1>
    <p>검색을 통해 원하는 과외를 찾아보세요!</p>
    <a href="privateSearch" class="bigbtn">검색하기</a>
    <div class="clearfix"> </div>
  </div>
  <div id="banner-pagination">
    <ul>
      <li><a href="#" class="active" rel="0"> <img src="./resources/img/slidedot-active.png" alt=""></a></li>
      <li><a href="#" rel="1"> <img src="./resources/img/slidedot.png" alt=""></a></li>
      <li><a href="#" rel="2"> <img src="./resources/img/slidedot.png" alt=""></a></li>
    </ul>
  </div>
</div>
<div class="container">
  <div class="marketing">
  <h1> Let's Learn!</h1>
    <p class="marketing-byline"> Need reasons to use this template? See below.</p>
    <hr class="soften">
    <div class="row-fluid">
      <div class="span4"> <img src="./resources/img/responsive.png" alt="">
        <h2> <span class="firstword">강사</span> 이용 방법</h2>
        <p class="features"> 뭐라 설명 해야될까..</p>
      </div>
      <div class="span4"> <img src="./resources/img/think-creative.png" alt="">
        <h2> <span class="firstword">학생</span> 이용 방법</h2>
        <p> 뭐라 설명 해야될까..</p>
      </div>
      <div class="span4"> <img src="./resources/img/core-values.png" alt="">
        <h2> <span class="firstword">학부모</span> 이용 방법</h2>
        <p> 뭐라 설명 해야될까..</p>
      </div>
    </div>
    </div>
    </div>
    <hr class="soften">
    <hr class="soften1 copyhr">
    <div class="span12">Copyright &copy; 2012. Greepit.com</div>
 	<div id="popup" class="Pstyle">
	<span class="b-close">X</span>
		<div class="content" style="height: auto; width: auto;">
			<span style="width:200px; color:#474646; font-size:20px;">로그인</span>
         	 <hr />
			 <label for="user_id">아이디</label>
             <input type="text" name="user_id" id="user_id" tabindex="3" required>
             <label for="user_pw">비밀번호</label>
             <input type="text" name="user_pw" id="user_pw" tabindex="3" required>
             <hr/>
             <input name="submit" class="btn btn-success" type="submit" id="user_login" tabindex="5" value="로그인">
  		</div>
 	</div> 
</div>
</div>
<!--  -->
<div id="effect" >
	<div id="content">
		<div style="font-size:15px;"><img src="displayFile?fileName=${userInfo.prof_photo }" style="width:50px; height:50px; border:1px solid #626262; margin:10px;border-radius: 50px; ">[${user_name}] 강사님, </div>
		<div style="margin:10px; height:30px; font-size:13px; position:relative; font-size:20px; ">>>수강 중인 강의</div>
		<!-- 수강 중인 강의 for문 -->
		<c:if test="${homeList eq null}">
		<div style="border:1px solid white; margin:10px; height:150px; text-align:center; font-size:13px; position:relative; border-style:dotted;">
			<div style="position:relative; top:10px; left:10px; ">
				<img src="./resources/img/close-button.png" style="width:80px;opacity: 0.4;"><br/><br/>
					수업 중인 강의가 없습니다.
			</div>
		</div>
		</c:if>
		<c:if test="${homeList ne null}">
		<div style="overflow:auto; height:20%;">
		<c:forEach items="${homeList}" var="list">
		<div style="border:1px solid #424141; margin:10px; height:80px; font-size:13px; position:relative; border-style:dotted;">
			<div style="width:70px; margin-left:10px; position:relative; top:10px;">
				<%--<div style="width:25px; height:25px; position:relative; float:left;"><img src="./resources/img/cycy.jpg" style=" border:1px solid white;"></div>
				<div style="width:25px; height:25px; position:relative; float:left;"><img src="./resources/img/cycy.jpg" style=" border:1px solid white;"></div>
				<div style="width:25px; height:25px; position:relative; float:left;"><img src="./resources/img/cycy.jpg" style=" border:1px solid white;"></div>
				<div style="width:25px; height:25px; position:relative; float:left;"><img src="./resources/img/cycy.jpg" style=" border:1px solid white;"></div> --%>
				<div style="width:50px; height:50px; float:left;"><img src="displayFile?fileName=${userInfo.prof_photo }" /></div>
			</div>
			<div style="position:relative; top:10px; left:10px;">${list.user_name}<a style="color:white;">(총 인원 : ${list.count_S	tu}명)</a></div>
			<div style="position:relative; top:10px; left:10px; color:gray;">${list.subject}</div>
			<div style="position:relative; top:10px; left:10px; color:gray;">
				<a style="position:relative; float:left; width:130px; overflow: hidden; text-overflow : ellipsis; white-space: nowrap; overflow:">${list.str_class_date} ~ </a>
				<%-- <a href="classMain?ext_id=${list.ext_id}" style="color:white; border:1px solid #626262; padding:4px; font-size:14px;">강의입장</a> --%>
				<a href="newLecturePage?ext_id=${list.ext_id}" style="color:white; border:1px solid #626262; padding:4px; font-size:14px;">강의입장</a>
			</div><!-- newLecturePage classMain -->
		</div>
		</c:forEach>
		</div>
		</c:if>
		<br />
		<div style="margin:10px; height:30px; font-size:13px; position:relative; font-size:20px;">>>수강 신청 관리</div>
		<c:if test="${appClassOne ne null}">
			<div style="position:relative; top:10px; left:10px; color:red; font-size:13px;">>>모집 중</div>
		</c:if>
		<c:if test="${appClassOne ne null}">
		<div style="border:1px solid white; margin:10px; height:80px; font-size:13px; position:relative; border-style:dotted;">
		
			<div style="position:relative; top:10px; left:10px;">모집 종료 날짜 : <a style="color:red;">${appClassOne.end_rc_date}</a></div>
			<div style="position:relative; top:10px; left:10px; color:gray;">${appClassOne.subject}</div>
			<div style="position:relative; top:10px; left:10px; color:gray;">월, 화 : 7~8시</div>
			<a style="position:relative; float:right;"onclick="giveTime('${appClassOne.ext_id}');">임시시간부여</a>
		</div>
		</c:if>
		<c:if test="${appClassOne eq null}">
		<div style="border:1px solid white; margin:10px; height:150px; text-align:center; font-size:13px; position:relative; border-style:dotted;">
			<div style="position:relative; top:10px; left:10px; ">
				<img src="./resources/img/close-button.png" style="width:80px;opacity: 0.4;"><br/><br/>
				모집 중인 과외가 없습니다.
			</div>
		</div>
		</c:if>
		<c:if test="${appClassList eq '[]'}">
			<div style="position:relative; top:10px; left:10px; color:white; font-size:13px;">>>신청 목록</div>
		</c:if>
		<c:if test="${appClassList ne '[]'}">
		<div style="overflow:auto; height:20%;">
		<c:forEach items="${appClassList}" var="list">
		<div style="border:1px solid #424141; margin:10px; height:80px; font-size:13px; position:relative; border-style:dotted;">
			<div style="width:70px; margin-left:10px; position:relative; top:10px;">
				<div style="width:48px; height:48px; position:relative; float:left;"><img src="./resources/img/cycy.jpg" style=" border:1px solid white;"></div>
			</div>
			<div style="position:relative; top:10px; left:10px;">${list.user_name}<a style="color:white;">(${list.user_id})</a></div>
			<div style="position:relative; top:10px; left:10px; color:gray;">신청날짜 : ${list.reg_date}</div>
			<div style="position:relative; top:10px; left:10px; color:gray;">상태 : ${list.reg_stus}　
				<c:if test="${list.reg_stus eq '수락대기'}">
					<button style="background-color: transparent !important; color:white;border:1px solid #626262;" 
					onclick="acceptClass('${list.user_id}','${list.ext_id}');">강의수락</button>
				</c:if>
				<c:if test="${list.reg_stus ne '수락대기'}">
					<button style="background-color: transparent !important; color:white;border:1px solid #626262;" 
					onclick="cancelAcceptClass('${list.user_id}','${list.ext_id}');">수락취소</button>
				</c:if>
			</div>
		</div>
		</c:forEach>
		</div>
		</c:if>
	</div>
	<div id="button">
		<p><a href="#">Toggle</a></p>
	</div>

</div>
<!--  -->
</c:if>
<!-- 로그인 후/강사 끝 -->

<!-- 로그인 후/학생 -->
<c:if test="${(id ne null) and (user_grade eq 'student')}">
<div style="">
<!--  -->
<div id="home" style="position:relative; float:left; width:100%">
<div class="jumbotron masthead">
  <div class="splash"> <img src="./resources/img/rrrr.png" alt=""> </div>
  <div class="splash"> <img src="./resources/img/gg.png" alt=""> </div>
  <div class="splash"> <img src="./resources/img/aaaa.png" alt=""> </div>
  <div class="nav-agency">
    <div class="navbar navbar-static-top">
      <div class="navbar-inner">
        <div class="container"> <a class="brand" href="/Highlighter"> <img src="./resources/img/logo.png" alt=""></a>
            <ul id="work-filter">
              <!-- 유저 정보 -->
              <li class="userMessage">메시지&nbsp;&nbsp;<img src="./resources/img/speech-bubble.png"/></li>
      		  <li class="userProfile">&nbsp;&nbsp;${user_name}&nbsp;&nbsp;<img src="./resources/img/user.png"/>
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
                <li class="active"><a href="/Highlighter">Home</a> </li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> 강사 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="work.html">강사 이용방법</a></li>
                    <li><a href="#" onclick="NotRegister2()">과외 등록</a></li>
                    <li><a href="work-three-columns.html">강사 평가</a></li>
                  </ul>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> 학생 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="pricing.html">학생 이용방법</a>`	</li>
                    <li><a href="privateSearch">과외 검색</a></li>
                  </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> 학부모 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="faq.html">학부모 이용방법</a></li>
                    <li><a href="contact.html">학부모 등록</a></li>
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
  <div class="container show-case-item">
    <br/><br/><h2>수업을 찾고 배우는 최선의 방법</h2>
    <div>1시간부터 4주까지 편리한 과외 수업 예약, 투명한 튜터 (과외 강사) 정보</div><br/><br/>
    <span class="howButton">학생</span>
    <span class="howButton">강사</span>
    <span class="howButton">학부모</span><br/><br/><br/>
  	<span class="searchLabel">온/오프라인</span><span class="searchLabel2">개인/그룹</span><span class="searchLabel3">시간</span><br/>
    <select id="onoff" name="onoff" class="search">
    	<option value="n" 
    		<c:out value="${cri.onoff == null? 'selected':'' }"/>>
   			 --온/오프라인 선택--</option>
   		<option value="1" 
   			<c:out value="${cri.onoff eq '1'? 'selected':''}"/>>
    		온라인</option>
        <option value="0" 
            <c:out value="${cri.onoff eq '0'? 'selected':''}"/>>
                        오프라인</option>	
    </select>
    <select id="pg" name="pg" class="search">
        <option value="n" 
            <c:out value="${cri.pg == null? 'selected':'' }"/>>
             --개인/그룹 선택--</option>
        <option value="1" 
           	<c:out value="${cri.pg eq 'p'? 'selected':''}"/>>
            	개인</option>	
        <option value="2" 
            <c:out value="${cri.pg eq 'g'? 'selected':''}"/>>
            	그룹</option>	
    </select>
    <span class="search2">--시간 선택--　　　<a onclick="layer_open('layer2');"><img src="./resources/img/calendar.png" style="width:25px; top:-5px; position:relative;"></a></span>
    <span class="search3">검색</span><br/><br/>
    <div class="clearfix"> </div>
  </div>
  <div class="container show-case-item">
    <br/><br/><h2>수업을 찾고 배우는 최선의 방법</h2>
    <div>1시간부터 4주까지 편리한 과외 수업 예약, 투명한 튜터 (과외 강사) 정보</div><br/><br/>
    <span class="howButton">학생</span>
    <span class="howButton">강사</span>
    <span class="howButton">학부모</span><br/><br/><br/>
    <span class="searchLabel">온/오프라인</span><span class="searchLabel2">개인/그룹</span><span class="searchLabel3">시간</span><br/>
    <select id="onoff" name="onoff" class="search">
    	<option value="n" 
    		<c:out value="${cri.onoff == null? 'selected':'' }"/>>
   			 --온/오프라인 선택--</option>
   		<option value="1" 
   			<c:out value="${cri.onoff eq '1'? 'selected':''}"/>>
    		온라인</option>
        <option value="0" 
            <c:out value="${cri.onoff eq '0'? 'selected':''}"/>>
                        오프라인</option>	
    </select>
    <select id="pg" name="pg" class="search">
        <option value="n" 
            <c:out value="${cri.pg == null? 'selected':'' }"/>>
             --개인/그룹 선택--</option>
        <option value="1" 
           	<c:out value="${cri.pg eq 'p'? 'selected':''}"/>>
            	개인</option>	
        <option value="2" 
            <c:out value="${cri.pg eq 'g'? 'selected':''}"/>>
            	그룹</option>	
    </select>
    <span class="search2">--시간 선택--　　　<a onclick="layer_open('layer2');"><img src="./resources/img/calendar.png" style="width:25px; top:-5px; position:relative;"></a></span>
    <span class="search3">검색</span><br/><br/>
    <div class="clearfix"> </div>
  </div>
  <div class="container show-case-item">
    <br/><br/><h2>수업을 찾고 배우는 최선의 방법</h2>
    <div>1시간부터 4주까지 편리한 과외 수업 예약, 투명한 튜터 (과외 강사) 정보</div><br/><br/>
    <span class="howButton">학생</span>
    <span class="howButton">강사</span>
    <span class="howButton">학부모</span><br/><br/><br/>
    <span class="searchLabel">온/오프라인</span><span class="searchLabel2">개인/그룹</span><span class="searchLabel3">시간</span><br/>
    <select id="onoff" name="onoff" class="search">
    	<option value="n" 
    		<c:out value="${cri.onoff == null? 'selected':'' }"/>>
   			 --온/오프라인 선택--</option>
   		<option value="1" 
   			<c:out value="${cri.onoff eq '1'? 'selected':''}"/>>
    		온라인</option>
        <option value="0" 
            <c:out value="${cri.onoff eq '0'? 'selected':''}"/>>
                        오프라인</option>	
    </select>
    <select id="pg" name="pg" class="search">
        <option value="n" 
            <c:out value="${cri.pg == null? 'selected':'' }"/>>
             --개인/그룹 선택--</option>
        <option value="1" 
           	<c:out value="${cri.pg eq 'p'? 'selected':''}"/>>
            	개인</option>	
        <option value="2" 
            <c:out value="${cri.pg eq 'g'? 'selected':''}"/>>
            	그룹</option>	
    </select>
    <span class="search2">--시간 선택--　　　<a onclick="layer_open('layer2');"><img src="./resources/img/calendar.png" style="width:25px; top:-5px; position:relative;"></a></span>
    <span class="search3">검색</span><br/><br/>
    <div class="clearfix"> </div>
  </div>
  <div id="banner-pagination">
    <ul>
      <li><a href="#" class="active" rel="0"> <img src="./resources/img/slidedot-active.png" alt=""></a></li>
      <li><a href="#" rel="1"> <img src="./resources/img/slidedot.png" alt=""></a></li>
      <li><a href="#" rel="2"> <img src="./resources/img/slidedot.png" alt=""></a></li>
    </ul>
  </div>
</div>
<div class="container">
  <div class="marketing">
  <h1> Let's Learn!</h1>
    <p class="marketing-byline"> Need reasons to use this template? See below.</p>
    <hr class="soften">
    <div class="row-fluid">
      <div class="span4"> <img src="./resources/img/responsive.png" alt="">
        <h2> <span class="firstword">강사</span> 이용 방법</h2>
        <p class="features"> 뭐라 설명 해야될까..</p>
      </div>
      <div class="span4"> <img src="./resources/img/think-creative.png" alt="">
        <h2> <span class="firstword">학생</span> 이용 방법</h2>
        <p> 뭐라 설명 해야될까..</p>
      </div>
      <div class="span4"> <img src="./resources/img/core-values.png" alt="">
        <h2> <span class="firstword">학부모</span> 이용 방법</h2>
        <p> 뭐라 설명 해야될까..</p>
      </div>
    </div>
    </div>
    </div>
    <hr class="soften">
    <hr class="soften1 copyhr">
    <div class="span12">Copyright &copy; 2012. Greepit.com</div>
 	<div id="popup" class="Pstyle">
	<span class="b-close">X</span>
		<div class="content" style="height: auto; width: auto;">
			<span style="width:200px; color:#474646; font-size:20px;">로그인</span>
         	 <hr />
			 <label for="user_id">아이디</label>
             <input type="text" name="user_id" id="user_id" tabindex="3" required>
             <label for="user_pw">비밀번호</label>
             <input type="text" name="user_pw" id="user_pw" tabindex="3" required>
             <hr/>
             <input name="submit" class="btn btn-success" type="submit" id="user_login" tabindex="5" value="로그인">
  		</div>
 	</div> 
</div>
</div>
<!--  -->
<div id="effect" >
	<div id="content">
		<div style="font-size:15px;"><img src="displayFile?fileName=${userInfo.prof_photo }" style="width:50px; height:50px; border:1px solid #626262; margin:10px;border-radius: 50px; ">[${user_name}] 학생, </div>
		<div style="margin:10px; height:30px; font-size:13px; position:relative; font-size:20px;">>>수강 중인 강의</div>
		<!-- 수강 중인 강의 for문 -->
		<div style="overflow:auto; height:25%;">
		<!-- 수강 중인 강의가 없을 때 -->
		<c:if test="${empty onGoingExt_Stu}">
			<div id="notAppClass" style="text-align:center; padding:30px; opacity:0.4;">
				<img src="./resources/img/close-button.png" style="width:80px;opacity: 0.4;">
				<br/><br/>수강 중인 강의가 없습니다.
			</div>
		</c:if>
		<!-- 수강 중인 강의가 없을 때 끝 -->
		<c:if test="${!empty onGoingExt_Stu}">
		<c:forEach items="${onGoingExt_Stu}" var="list">
		<div style="border:1px solid #424141; margin:10px; height:80px; font-size:13px; position:relative; border-style:dotted;">
			<div style="width:70px; margin-left:10px; position:relative; top:10px;">
				<%-- <div style="width:25px; height:25px; position:relative; float:left;"><img src="./resources/img/cycy.jpg" style=" border:1px solid white;"></div>
				<div style="width:25px; height:25px; position:relative; float:left;"><img src="./resources/img/cycy.jpg" style=" border:1px solid white;"></div>
				<div style="width:25px; height:25px; position:relative; float:left;"><img src="./resources/img/cycy.jpg" style=" border:1px solid white;"></div>
				<div style="width:25px; height:25px; position:relative; float:left;"><img src="./resources/img/cycy.jpg" style=" border:1px solid white;"></div> --%>
				<div style="width:50px; height:50px; float:left"><img src="displayFile?fileName=${list.prof_photo }" /></div>
			</div>
			<div style="position:relative; top:10px; left:10px;">${list.user_name}<a style="color:white;">(총 인원 : ${list.count_Stu}명)</a></div>
			<div style="position:relative; top:10px; left:10px; color:gray;">${list.subject}</div>
			<div style="position:relative; top:10px; left:10px; color:gray;">${list.str_class_date} ~ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="newLecturePage?ext_id=${list.ext_id}" style="color:white; border:1px solid #626262; padding:4px; font-size:14px; margin_left:40px;">강의입장</a>
			</div>
		</div>
		</c:forEach>
		</c:if>
		</div>
		<br />
		<div style="margin:10px; height:30px; font-size:13px; position:relative; font-size:20px;">>>수강 신청 관리</div>
		
		<!-- 학생이 신청한 강의 목록 -->
		<div style="position:relative; top:10px; left:10px; color:white; font-size:13px; ">>>신청 목록</div>
		<!-- 신청 목록이 없을 때 -->
		<c:if test="${empty appClassList_Stu}">
			<div id="notAppClass" style="text-align:center; padding:30px; opacity:0.4;">
				<img src="./resources/img/close-button.png" style="width:80px;opacity: 0.4;">
				<br/><br/>신청한 목록이 없습니다.
			</div>
		</c:if>
		<!-- 신청 목록이 없을 때 끝 -->
		<div style="overflow:auto; height:20%;">
		<c:forEach items="${appClassList_Stu}" var="list">
		<div style="border:1px solid #424141; margin:10px; height:80px; font-size:13px; position:relative; border-style:dotted;">
			<div style="width:70px; margin-left:10px; position:relative; top:10px;">
				<div style="width:25px; height:25px; position:relative; float:left;"><img src="./resources/img/cycy.jpg" style=" border:1px solid white;"></div>
				<div style="width:25px; height:25px; position:relative; float:left;"><img src="./resources/img/cycy.jpg" style=" border:1px solid white;"></div>
				<div style="width:25px; height:25px; position:relative; float:left;"><img src="./resources/img/cycy.jpg" style=" border:1px solid white;"></div>
				<div style="width:25px; height:25px; position:relative; float:left;"><img src="./resources/img/cycy.jpg" style=" border:1px solid white;"></div>
			</div>
			<div style="position:relative; top:10px; left:10px;">강사 명 : ${list.user_name}<a style="color:white;">(${list.user_id})</a></div>
			<div style="position:relative; top:10px; left:10px; color:gray;">신청날짜 : ${list.reg_date}</div>
			<div style="position:relative; top:10px; left:10px; color:gray;">상태 : ${list.reg_stus}　　<button style="background-color: transparent !important; color:white;border:1px solid #626262;" onclick="cancelClass('${list.ext_id}');">수강취소</button></div>
		</div>
		</c:forEach>
		</div>
		<!-- 학생이 신청한 강의 목록 끝-->
	</div>
	<div id="button">
		<p><a href="#">Toggle</a></p>
	</div>

</div>
<!-- 시간대 선택 팝업창 -->
 	<div class="layer">
		<div class="bg"></div>
			<div id="layer2" class="pop-layer">
				<div class="pop-container">
					<div class="pop-conts">
					<!--content //-->
					<div id="timeTable" class="tableDiv">
		    		<div id="base">
		    			과외 시간<br /><br />
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
				<div class="btn-r">
					<a href="#" class="cbtn">Close</a>
				</div>
				<!--// content-->
			</div>
		</div>
	</div>
</div>
<!-- 시간대 선택 팝업창_끝 -->
<input type="hidden" value="n" id="subjected">
<!--  -->
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
	window.location.href="modifyMyInfo";
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
//진단평가
$(".eva").on("click", function(){
	window.location.href="eva_read";
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
					  location.href="/Highlighter";
				  }
			  },
			  error:function(data){
				  alert("에러가 났스여!!!");
			  }
		   });
	   }
   });
});
//진단평가
if("${id}" != "" && "${user_grade}" == 'student' && "${eva_id}" == '0'){
	
	window.open("/Highlighter/eva?id=${id}", "pop", "width=860,height=970,history=no,resizable=no,status=no,scrollbars=yes,menubar=no");
}

$(document).ready(function(){
	$("#parentLogin").click(function(){
		$("#parentLoginDiv").bPopup();
	});
	$(".parentDivClose").click(function(){
		$("#childPhone").val("");
		$("#childBirth").val("");
		$("#parentPhone").val("");
		$("#parentLoginDiv").bPopup().close();
	});
	$("#parentBeforeBtn").click(function(){
		
	});
	$("#parentLoginBtn").click(function(){
		var childPhone = $("#childPhone").val();
		var childBirth = $("#childBirth").val();
		var parentPhone = $("#parentPhone").val();
		if(childPhone == ""){
			alert("자녀 휴대전화번호를 입력해주세요.");
		}
		else if(parentPhone == ""){
			alert("본인 휴대전화번호를 입력해주세요.");
		}
		else{
			$.ajax({
				url : "/Highlighter/parentLogin",
				type : "GET",
				data : {
					childPhone : childPhone,
					childBirth : childBirth,
					parentPhone : parentPhone				
				},
				dataType : "json",
				success : function(data){
					if(data.length>0){
						alert("'" + data[0].user_name + "' 학생의 부모님이 확인되었습니다.");

						var form = $("<form></form>");
						var user_id = $("<input type='hidden' name='user_id' value='" + data[0].user_id + "'>");
						form.append(user_id);
						$("body").append(form);
						form.attr("action", "/Highlighter/classSTManagement2");
						form.attr("method", "GET");
						form.submit();
						
						
					}
					else{
						alert("해당하는 계정이 존재하지 않습니다.");
					}
				},
				error : function(){
					alert("해당하는 계정이 존재하지않습니다.");
				}
			});	
		}
		
	});
});

</script>
<div id="parentLoginDiv">
	<div id="parentDivClose" class="parentDivClose">X</div>
	<div id="parentDivHeader">학부모 로그인<br /><hr /></div>
	<div id="parentDivChild">자녀 휴대전화번호<br /><input id="childPhone" type="text"></div>
	<div id="parentDivBirth">자녀 생년월일<br /><input id="childBirth" type="date"></div>
	<div id="parentDivParent">본인 휴대전화번호<br /><input id="parentPhone" type="text"><br /><hr /></div>
	<input id="parentLoginBtn" class="btn btn-success" type="button" value="로그인">
</div>


</body>
</html>
