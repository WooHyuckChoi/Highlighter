<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>HIGHLIGHTER</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<link href="./resources/css/bootstrap.css" rel="stylesheet">
<link href="./resources/css/bootstrap-responsive.css" rel="stylesheet">
<link href="./resources/css/docs.css" rel="stylesheet">
<link href="./resources/css/prettyPhoto.css" rel="stylesheet" type="text/css">
<link href="./resources/js/google-code-prettify/prettify.css" rel="stylesheet">

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

<style>
img{
	border: none;
}
#abcdef{
	float:left;
}
#go_main{
	float:right;
	text-decoration: none;
}
#go_main:HOVER{
	color:white;
}
#go_main img{
	margin-bottom: 4px;
}
#classSTManagementheader {
	background-color: #00CC99;
	width: 100%;
	height: 20%;
	margin-bottom: 150px;
}
.clear{
	clear: both;
}
#wrap{
	width:1200px;
	height:500px;
	margin: 0 auto;
	background-color:#666;

}
#stuList{
	width:1000px;
	height:200px;
	background-color: red;
	margin:33px 100px;
}
#stuList div{
	width:20%;
	height:100px;
	line-height: 100px;
	font-size: 14px;
	color:white;
	float:left;	
	text-align: center;
}
#aveList{
	background-color: blue;
	width: 1000px;
	height:200px;
	font-size: 20px;
	font-weight: bold;
	color:white;
	margin: 0 100px 33px 100px;
}
</style>

</head>
<body>

	<div id="classSTManagementheader">
		<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font id="abcdef"
			size="5" color="white">수강학생 관리 페이지</font> <font size="5"
			color="white"><a id="go_main"
			href="classMain?ext_id=${ext_id}">나가기 <img
				src="./resources/img/sign-out.png" width="35" height="40" /></a></font> <br>&nbsp;
	</div>
	
	<div class="clear"></div>
	
	<div id="wrap">
		<div id="stuList">
				<c:forEach items="${info }" var="info">
					<div>
						<a href="/Highlighter/classSTManagement2?ext_id=${ext_id }&user_id=${info.user_id}"><img src="displayFile?fileName=${info.prof_photo }" /></a>
						<p>${info.user_name }</p>
					</div>
				</c:forEach>
		</div>
		<div id="aveList">차트자리이이이</div>
	</div>
	
	<script src="./resources/bootstrap/vendor/jquery/dist/jquery.min.js"></script>
	<script src="./resources/bootstrap/vendor/jquery-pjax/jquery.pjax.js"></script>
	<script src="./resources/bootstrap/vendor/bootstrap-sass/assets/javascripts/bootstrap/transition.js"></script>
	<script src="./resources/bootstrap/vendor/bootstrap-sass/assets/javascripts/bootstrap/collapse.js"></script>
	<script src="./resources/bootstrap/vendor/bootstrap-sass/assets/javascripts/bootstrap/dropdown.js"></script>
	<script src="./resources/bootstrap/vendor/bootstrap-sass/assets/javascripts/bootstrap/button.js"></script>
	<script src="./resources/bootstrap/vendor/bootstrap-sass/assets/javascripts/bootstrap/tooltip.js"></script>
	<script src="./resources/bootstrap/vendor/bootstrap-sass/assets/javascripts/bootstrap/alert.js"></script>
	<script src="./resources/bootstrap/vendor/slimScroll/jquery.slimscroll.min.js"></script>
	<script src="./resources/bootstrap/vendor/widgster/widgster.js"></script>
	<script src="./resources/bootstrap/vendor/pace.js/pace.js" data-pace-options='{ "target": ".content-wrap", "ghostTime": 1000 }'></script>
	<script src="./resources/bootstrap/vendor/jquery-touchswipe/jquery.touchSwipe.js"></script>

	<!-- common app js -->
	<script src="./resources/bootstrap/js/settings.js"></script>
	<script src="./resources/bootstrap/js/app.js"></script>
		
</body>
</html>