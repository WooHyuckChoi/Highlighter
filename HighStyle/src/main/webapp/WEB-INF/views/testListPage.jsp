<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Highlighter</title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Favicon -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Web Fonts -->
	<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="./resources/unify/assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="./resources/unify/assets/css/style.css">

	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="./resources/unify/assets/css/headers/header-default.css">
	<link rel="stylesheet" href="./resources/unify/assets/css/footers/footer-v1.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="./resources/unify/assets/plugins/animate.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">

	<!-- CSS Page Style -->
	<link rel="stylesheet" href="./resources/unify/assets/css/pages/profile.css">
	<link rel="stylesheet" href="./resources/unify/assets/css/pages/shortcode_timeline2.css">

	<!-- CSS Theme -->
	<link rel="stylesheet" href="./resources/unify/assets/css/theme-colors/default.css" id="style_color">
	<link rel="stylesheet" href="./resources/unify/assets/css/theme-skins/dark.css">

	<!-- CSS Customization : 시간표 -->
	<link rel="stylesheet" href="./resources/unify/assets/css/exam_custom.css">
	<!-- ico -->
	<link rel="shortcut icon" href="./resources/ico/highlighter.ico">
	
	<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css">
	<style>
		#noticeResi {
			float: right;
			width: 90px;
			background-color: #1279ff;
			padding-top: 5px;
			padding-left: 10px;
			padding-bottom: 5px;
			margin-top: -5px;
			color: white;
			border-radius: 5px;
			border: solid 1px #1279ff;
			margin-top: 2px;
		}
		
		#StudyRoom {
			background-color: #1279ff;
		}
		
		#StudyRoom a {
			color: white;
			font-size: 16px;
		}
		
	</style>
</head>
<body>
	<div class="col-md-9" style="padding-left:0px;">
		<div class="profile-body">
			<!-- Lecture introduce and enter -->
			<div id="classIntro">
				<span>시험 <button id="openRegisterExam">시험 등록</button><button>삭제</button></span>
			</div>
			<!-- end row -->
			<div class="profile-bio">
				<div class="row">
					<div class="col-md-12">
						<!-- 강사 정보 -->
						<div id="teacherInfo" class="panel margin-bottom-40">
							<div class="panel-body">
								<div class="teacher-testInfo">
									<!-- <div>최근 친 시험:</div>
									<div>전체 학생 수:</div>
									<div>시험 평균:</div> -->
								</div>
							</div>
						</div>
						<!-- 강사 정보 끝 -->
					</div>
				</div>
			</div><!--/end row-->

			<hr>
			<!--/end row-->
						
			<!--Schedule-->
			<div class="panel panel-profile">
				<div class="panel-heading overflow-h">
					<h2 class="panel-title heading-sm pull-left"> 시간표 </h2>
				</div>
				<div class="panel-body margin-bottom-40">
								
				</div>
			</div>
			<!--End Schedule-->
		</div>
	</div>
</body>
</html>
