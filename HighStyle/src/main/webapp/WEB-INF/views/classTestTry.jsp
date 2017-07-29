<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Highlighter</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="./resources/css/bootstrap.css" rel="stylesheet">
<link href="./resources/css/bootstrap-responsive.css" rel="stylesheet">
<link href="./resources/css/docs.css" rel="stylesheet">
<link href="./resources/css/prettyPhoto.css" rel="stylesheet"
	type="text/css">
<link href="./resources/js/google-code-prettify/prettify.css"
	rel="stylesheet">
<!--[if lt IE 9]>
<script src="./resouces/js/html5.js"></script>
<![endif]-->
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
<link rel="stylesheet" type="text/css" href="/css/result-light.css">
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.js"></script>

<style type="text/css">
#testTry1 {
	float: left;
}

#testTry2 {
	float: right;
}

#testimage {
	height: 70%;
	width: 50%;
	padding-top: 10px;
	border-top: 1px solid #DDD;
	border-bottom: 1px solid #DDD;
	border-left: 1px solid #DDD;
	border-right: 1px solid #DDD;
	float: left;
	position: relative;
	margin: 0;
	max-width: 100%;
}

#testimage ul {
	margin: 0 auto;
	width: 600px;
	list-style: none;
}

#testimage li {
	display: block;
	border: none
}

#abc {
	height: 80%;
	width: 40%;
	margin: 10px 10px;
	padding-top: 10px;
	border-top: 1px solid #DDD;
	border-bottom: 1px solid #DDD;
	border-left: 1px solid #DDD;
	border-right: 1px solid #DDD;
	float: left;
}

#testproblem {
	width: 100%;
	margin: 10px 0 20px;
	padding-top: 10px;
	border-top: 1px solid #DDD;
}

#time-hour {
	color: #FF0000;
	font-family: Verdana, Arial, sans-serif;
	font-size: 18px;
	font-weight: bold;
	text-decoration: none;
}

#time-min {
	color: #FF0000;
	font-family: Verdana, Arial, sans-serif;
	font-size: 18px;
	font-weight: bold;
	text-decoration: none;
}

#time-sec {
	color: #FF0000;
	font-family: Verdana, Arial, sans-serif;
	font-size: 18px;
	font-weight: bold;
	text-decoration: none;
}
</style>

<style type="text/css">
table.table-style-one {
	font-family: verdana, arial, sans-serif;
	font-size: 11px;
	color: #333333;
	border-width: 1px;
	border-color: #3A3A3A;
	border-collapse: collapse;
	margin-left: auto;
	margin-right: auto;
	float: left;
}

table.table-style-one th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #3A3A3A;
	background-color: #B3B3B3;
}

table.table-style-one td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #3A3A3A;
	background-color: #ffffff;
}
</style>
<script type='text/javascript'>
	//<![CDATA[
	/* timer sript */
	$(window).load(function() {
		function dailyMissionTimer(duration) {

			var timer = duration * 3600;
			var hours, minutes, seconds;

			var interval = setInterval(function() {
				hours = parseInt(timer / 3600, 10);
				minutes = parseInt(timer / 60 % 60, 10);
				seconds = parseInt(timer % 60, 10);

				hours = hours < 10 ? "0" + hours : hours;
				minutes = minutes < 10 ? "0" + minutes : minutes;
				seconds = seconds < 10 ? "0" + seconds : seconds;

				$('#time-hour').text(hours);
				$('#time-min').text(minutes);
				$('#time-sec').text(seconds);

				if (--timer < 0) {
					timer = 0;
					clearInterval(interval);
				}
			}, 1000);
		}
		<c:forEach items="${listtest}" var="listtest">

		var testtime = '${listtest.test_time}';
		var testtime2 = testtime / 60;
		</c:forEach>

		dailyMissionTimer(testtime2); // hour base
	});//]]>
</script>

<style>
.nav-agency {
	border-bottom: 1px solid #DDD;
}

#classIndex {
	margin-left: 10px;
	margin-top: 10px;
	margin-bottom: 10px;
	margin-right: 10px;
	border: 1px solid #FF0000;
	height: auto;
	padding: 10px 10px;
	float: left;
}

.StudyRoom {
	margin: 0px;
}

.StudyRoom li {
	list-style: none;
}

#homework {
	border-bottom: 1px solid #DDD;
	height: auto;
	padding: 10px 10px 25px 10px;
	flaot: left;
}

#div1 {
	width: 80%;
	float: left;
	margin-left: 10px;
	margin-top: 10px;
	margin-bottom: 10px;
	margin-right: 10px;
	border: 1px solid #FF0000;
}

#homeworkResi {
	float: right;
}

#h3home {
	float: left;
	margin: 0;
}
</style>
</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
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

	<div>
		<div>
			<br>
		</div>
		<div id="testTry1">

			주차번호
			
			
			<c:forEach items="${listtest}" var="listtest">
<script>
			var test_id ='${listtest.test_id}';
			var weeks = test_id.substr(8);
			document.write(weeks+"주차");
</script>			
			</c:forEach>
			
			
			
				
			
			
			
		</div>
		<div id="testTry2"></div>
	</div>

	<br>
	<br>
	<div>
		시험시간 <span id="time-hour"></span> <span id="time-min"></span> <span
			id="time-sec"></span>
	</div>
	<div>
		<p id="testproblem"></p>
	</div>


	<div>
		<div id="testimage">
		
			<!-- <img src="/picture/hint1.jpg"> -->
			<c:forEach items="${listtest}" var="listtest">
				<%-- ${listtest.test_id} --%>
				<ul>
					<li><img src="./resources/img/${listtest.test_file}"
						style="width: 100%; height: 100%;">
					<li>
				</ul>
			</c:forEach>
			<%-- ${testImage} --%>

			<!-- //날짜 -->
			
		</div>
		<div id="abc">

			<form method="post">

				<c:forEach items="${listtest}" var="listtest">
					<input type="hidden" name="test_id" value="${listtest.test_id}">
				</c:forEach>


				<table class="table-style-one">

					<thead>
						<tr>
							<th>문제번호</th>
							<th>정답</th>
							<th>문제번호</th>
							<th>정답</th>
						</tr>
					</thead>
					<tbody>

						<tr>

							<td>1</td>
							<td><input type="text" name="qjs1"></td>
							<td>11</td>
							<td><input type="text" name="qjs11"></td>
						</tr>
						<tr>
							<td>2</td>
							<td><input type="text" name="qjs2"></td>
							<td>12</td>
							<td><input type="text" name="qjs12"></td>
						</tr>
						<tr>
							<td>3</td>
							<td><input type="text" name="qjs3"></td>
							<td>13</td>
							<td><input type="text" name="qjs13"></td>
						</tr>
						<tr>
							<td>4</td>
							<td><input type="text" name="qjs4"></td>
							<td>14</td>
							<td><input type="text" name="qjs14"></td>
						</tr>
						<tr>
							<td>5</td>
							<td><input type="text" name="qjs5"></td>
							<td>15</td>
							<td><input type="text" name="qjs15"></td>
						</tr>
						<tr>
							<td>6</td>
							<td><input type="text" name="qjs6"></td>
							<td>16</td>
							<td><input type="text" name="qjs16"></td>
						</tr>
						<tr>
							<td>7</td>
							<td><input type="text" name="qjs7"></td>
							<td>17</td>
							<td><input type="text" name="qjs17"></td>
						</tr>
						<tr>
							<td>8</td>
							<td><input type="text" name="qjs8"></td>
							<td>18</td>
							<td><input type="text" name="qjs18"></td>
						</tr>
						<tr>
							<td>9</td>
							<td><input type="text" name="qjs9"></td>
							<td>19</td>
							<td><input type="text" name="qjs19"></td>
						</tr>
						<tr>
							<td>10</td>
							<td><input type="text" name="qjs10"></td>
							<td>20</td>
							<td><input type="text" name="qjs20"></td>
						</tr>
					</tbody>
				</table>
			
			
				<input type="hidden" name="ext_id" value="${ext_id}">
				
				<input type="hidden" name="userid" value="${id}"> 
				<input type="submit" value="시험 제출" id="testsubmit">
			</form>
		</div>
	</div>

	<script>
		$("#testsubmit").on("click", function() {
			$("form").attr("action", "classTestFinish");
			$("form").attr("method", "get");
			$("form").submit();
		});
	</script>

	<script>
		// tell the embed parent frame the height of the content
		if (window.parent && window.parent.parent) {
			window.parent.parent.postMessage([ "resultsFrame", {
				height : document.body.getBoundingClientRect().height,
				slug : "fg1bqr64"
			} ], "*")
		}
	</script>





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
		$("#homeworkResi").on("click", function() {
			$("form").attr("action", "homeworkResi");
			$("form").attr("method", "get");
			$("form").submit();
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
		});
	</script>
</body>
</html>