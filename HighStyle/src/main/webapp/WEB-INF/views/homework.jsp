<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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


	<div id="classIndex">
		<div id="classMain">
			<ul class="StudyRoom">
				<li id="StudyRoom"><a href="/Highlighter/classMain">Study
						Room<br>과외 정보 관리
				</a></li>
				<li id="StudyHomework"><a href="/Highlighter/homework">숙제</a></li>
				<li id="StudyClassData"><a href="/Highlighter/classData">강의자료</a></li>
				<li id="StudyStudyManagement"><a
					href="/Highlighter/classSTManagement">수강 학생 관리</a></li>
				<li id="StudyClassTest"><a href="/Highlighter/classTest">시험</a></li>
				<li id="StudyReplay"><a href="/Highlighter/classVideoList">다시보기</a></li>
				<li id="StudyClassDeval"><a href="/Highlighter/classDeval">진단평가</a></li>


			</ul>
		</div>

	</div>

	<div id="div1">
		<div id="homework">
			<h3 id="h3home">숙제</h3>
			<form method="post">
				<button id="homeworkResi">등록</button>
			</form>



		</div>

		<br>
		<div class="w3-container">


			<table class="w3-table w3-bordered">
				<tr>
					<th>번 호</th>
					<th>제 목</th>
					<th>글쓴이</th>
					<th>게시 날짜</th>

				</tr>
				<tr>
					<td>Jill</td>
					<td>Smith</td>
					<td>50</td>
					<td>asdsa</td>

				</tr>
				<tr>
					<td>Eve</td>
					<td>Jackson</td>
					<td>94</td>
					<td>asdsa</td>
				</tr>
				<tr>
					<td>Adam</td>
					<td>Johnson</td>
					<td>67</td>
					<td>asdsa</td>
				</tr>
			</table>
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