<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="true" %>
<!DOCTYPE html>
<head>
	<title>진단 평가</title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Favicon -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Web Fonts -->
	<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin">

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
	<link rel="stylesheet" href="./resources/unify/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
	<!--[if lt IE 9]><link rel="stylesheet" href="assets/plugins/sky-forms-pro/skyforms/css/sky-forms-ie8.css"><![endif]-->

	<!-- CSS Theme -->
	<link rel="stylesheet" href="./resources/unify/assets/css/theme-colors/default.css" id="style_color">
	<link rel="stylesheet" href="./resources/unify/assets/css/theme-skins/dark.css">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="./resources/unify/assets/css/custom.css">
</head>
<style>
header{
	border-top:1px solid lightgray;
}
.typing{
	width:400px;
	border-radius:5px;
	border:1px solid lightgray;
	color:gray;
	height:35px;
	margin-left:20px;
}
#title{
	font-size:35px;
	color:gray;
	padding-top:10px;
	padding-bottom:10px;
}
#fixed{
	position:fixed;
}
#title > img{
	width:60px;
	margin-right:10px;
}
footer > button{
	float:right;
}
#prevEval{
	margin-right:10px;
}
#prob{
	position:absolute;
	top:150px;
	z-index:-10;
}
</style>
<body>
	<div class="wrapper">
		<!--=== Header ===-->
		<div id="fixed">
			<div class="header">
				<div class="container">
					<!-- Logo -->
					<div id="title"><img src="./resources/img/checklist.png">진단 평가</div>
					<!-- End Logo -->
	
				</div><!--/end container-->
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
					<div class="container">
	
					</div><!--/end container-->
				</div><!--/navbar-collapse-->
			</div>
			<!--=== End Header ===-->
	
			<!--=== Breadcrumbs ===-->
			<div class="breadcrumbs">
				<div class="container">
					<h3 class="heading-xs">1페이지</h3>
					<div class="progress progress-u progress-xxs">
						<div class="progress-bar progress-bar-dark" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
						</div>
					</div>
				</div>
			</div><!--/breadcrumbs-->
			<!--=== End Breadcrumbs ===-->
		</div>
		<!--=== Content Part ===-->
		<div id="prob" class="container content">
			<div class="row">
				<!-- Begin Content -->
				<div class="col-md-9">
					<!-- General Unify Forms -->
					<form role="form" method="POST" name="eval" id="eval" action="DiagnosticEval" class="sky-form">
					<div id="firstPage">
						<header>학생은 어디에 속해있나요?</header>
						<fieldset>
							<section>
								<label class="label">> 필수 문제</label>
								<div class="row">
									<div class="col col-4">
										<label class="radio"><input type="radio" name="school" value="초등학교" checked><i class="rounded-x"></i>초등학교</label>
										<label class="radio"><input type="radio" name="school" value="중학교"><i class="rounded-x"></i>중학교</label>
										<label class="radio"><input type="radio" name="school" value="고등학교"><i class="rounded-x"></i>고등학교</label>
									</div>
								</div>
							</section>
						</fieldset>
						<header>어떤 과목을 배우고 싶은 가요?</header>
						<fieldset>
							<section>
								<label class="label">> 필수 문제</label>
								<div class="row">
									<div class="col col-4">
										<label class="radio"><input type="radio" name="subject" value="국어" checked><i class="rounded-x"></i>국어</label>
										<label class="radio"><input type="radio" name="subject" value="영어"><i class="rounded-x"></i>영어</label>
										<label class="radio"><input type="radio" name="subject" value="수학"><i class="rounded-x"></i>수학</label>
									</div>
								</div>
							</section>
						</fieldset>
						<header>어떤 과외 형태를 원하십니까?</header>
						<fieldset>
							<section>
								<label class="label">> 필수 문제</label>
								<div class="row">
									<div class="col col-4">
										<label class="radio"><input type="radio" id="private" name="stuCount" value="개인" checked><i class="rounded-x"></i>개인과외</label>
										<label class="radio"><input type="radio" id="group"name="stuCount" value="그룹"><i class="rounded-x"></i>그룹과외(2명이상)</label>
										<label class="radio"><input type="radio" id="pg" name="stuCount" value="무관"><i class="rounded-x"></i>무관</label>
									</div>
								</div>
							</section>
						</fieldset>
						<header>과외 진행 방식은? </header>
						<fieldset>
							<section>
								<label class="label">> 필수 문제</label>
								<div class="row">
									<div class="col col-4">
										<label class="radio"><input type="radio" id="online" name="onoff" value="온라인" checked><i class="rounded-x"></i>온라인 진행</label>
										<label class="radio"><input type="radio" id="offline" name="onoff" value="오프라인"><i class="rounded-x"></i>오프라인 진행</label>
										<label class="radio"><input type="radio" id="onoff" name="onoff" value="무관"><i class="rounded-x"></i>무관</label>
									</div>
								</div>
							</section>
						</fieldset>
						<header>강의가 필요한 근처 주소가 어디인가요?</header>
						<fieldset>
							<section>
								<label class="label">> 선택 문제</label>
								<div class="row">
									<div class="col col-4">
										<input class="typing" id="addr" name="addr" type="text" placeholder="시/동으로 입력해주세요.">
									</div>
								</div>
							</section>
						</fieldset>
						<header>희망 강의 횟수는 어떻게 되십니까?</header>
						<fieldset>
							<section>
								<label class="label">> 필수 문제</label>
								<div class="row">
									<div class="col col-4">
										<label class="radio"><input type="radio" id="oneWeeksOne" name="class_count" value="1회/1주" checked><i class="rounded-x"></i>1회/1주</label>
										<label class="radio"><input type="radio" id="oneWeeksTwo" name="class_count" value="2회/1주"><i class="rounded-x"></i>2회/1주</label>
										<label class="radio"><input type="radio" id="twoWeeksOne" name="class_count" value="1회/2주"><i class="rounded-x"></i>1회/2주</label>
										<label class="radio"><input type="radio" id="typingWeeks" name="class_count" value="기타"><i class="rounded-x"></i>기타 </label>
										<input class="typing" type="text" id="typingClassCount" name="class_count" value="" placeholder="직접 입력">
									</div>
								</div>
							</section>
						</fieldset>
					</div>
					<div id="secondPage">
						<header>몇 시간 동안 강의를 받기 원하시나요?</header>
						<fieldset>
							<section>
								<label class="label">> 필수 문제</label>
								<div class="row">
									<div class="col col-4">
										<label class="radio"><input type="radio" id="oneHours" name="class_time" value="1" checked><i class="rounded-x"></i>1시간</label>
										<label class="radio"><input type="radio" id="twoHours" name="class_time" value="2"><i class="rounded-x"></i>2시간</label>
										<label class="radio"><input type="radio" id="threeHours" name="class_time" value="3"><i class="rounded-x"></i>3시간</label>
										<label class="radio"><input type="radio" id="noHours" name="class_time" value="기타"><i class="rounded-x"></i>기타</label>
										<input class="typing" type="text" id="typingHours" name="class_time" value="" placeholder="직접 입력">
									</div>
								</div>
							</section>
						</fieldset>
						<header>강의 받기 좋은 요일은 언제인가요?(여러개 선택 가능)</header>
						<fieldset>
							<section>
								<label class="label">>필수 문제</label>
								<div class="row">
									<div class="col col-4">
										<label class="checkbox"><input type="checkbox" id="monday" value="월" name="day_week" checked><i></i>월요일</label>
										<label class="checkbox"><input type="checkbox" id="tuesday" value="화" name="day_week"><i></i>화요일</label>
										<label class="checkbox"><input type="checkbox" id="wednesday" value="수" name="day_week"><i></i>수요일</label>
										<label class="checkbox"><input type="checkbox" id="thursday" value="목" name="day_week"><i></i>목요일</label>
										<label class="checkbox"><input type="checkbox" id="friday" value="금" name="day_week"><i></i>금요일</label>
										<label class="checkbox"><input type="checkbox" id="saturday" value="토" name="day_week"><i></i>토요일</label>
										<label class="checkbox"><input type="checkbox" id="sunday" value="일" name="day_week"><i></i>일요일</label>
									</div>
								</div>
							</section>
						</fieldset>
						<header>희망하는 과외 시간은 언제인가요?(여러개 선택 가능)</header>
						<fieldset>
							<section>
								<label class="label">>필수 문제</label>
								<div class="row">
									<div class="col col-4">
										<label class="checkbox"><input type="checkbox" id="time1" value="아침" name="private_time" checked><i></i>아침(9시 이전)</label>
										<label class="checkbox"><input type="checkbox" id="time2" value="오전" name="private_time"><i></i>오전(9시-12시)</label>
										<label class="checkbox"><input type="checkbox" id="time3" value="이른 오후" name="private_time"><i></i>이른 오후(12-3시)</label>
										<label class="checkbox"><input type="checkbox" id="time4" value="오후" name="private_time"><i></i>오후(3시-6시)</label>
										<label class="checkbox"><input type="checkbox" id="time5" value="저녁" name="private_time"><i></i>저녁(6시-9시)</label>
										<label class="checkbox"><input type="checkbox" id="time6" value="늦은 저녁" name="private_time"><i></i>늦은 저녁(6시 이후)</label>
									</div>
								</div>
							</section>
						</fieldset>
						<header>언제부터 시작하기 원하시나요?</header>
						<fieldset>
							<section>
								<label class="label">>필수 문제</label>
								<div class="row">
									<div class="col col-4">
										<input id="private_date_time" name="private_date_time" style="border-radius:5px; border:1px solid lightgray;" type="date" required>
									</div>
								</div>
							</section>
						</fieldset>
						<header>선호하는 성별이 있나요?</header>
						<fieldset>
							<section>
								<label class="label">>필수 문제</label>
								<div class="row">
									<div class="col col-4">
										<label class="radio"><input type="radio" id="female" name="gender" value="female" checked><i class="rounded-x"></i>여성</label>
										<label class="radio"><input type="radio" id="male" name="gender" value="male"><i class="rounded-x"></i>남성</label>
										<label class="radio"><input type="radio" id="noGender" name="gender" value="무관"><i class="rounded-x"></i>무관</label>
									</div>
								</div>
							</section>
						</fieldset>
						<header>어떤 방식으로 진행하는게 좋을까요?</header>
						<fieldset>
							<section>
								<label class="label">>필수 문제</label>
								<div class="row" >
									<div class="col col-4" style="width:800px;">
										<label class="radio"><input type="radio" id="ext_way1" name="ext_way" value="기초강의" checked><i class="rounded-x"></i>학교 수업이 너무 어렵고 따라가기 힘들어서 <b>기초 강의</b>가 필요해요.</label>
										<label class="radio"><input type="radio" id="ext_way2" name="ext_way" value="포괄적인강의"><i class="rounded-x"></i>학교 수업이 어렵지만 조금은 이해가 되기 때문에 <b>포괄적인 강의</b>가 필요해요.</label>
										<label class="radio"><input type="radio" id="ext_way3" name="ext_way" value="교과서 중심"><i class="rounded-x"></i>학교 수업을 하면 전체적인 이해 하지만 <b>교과서 중심의 강의</b>가 필요해요.</label>
										<label class="radio"><input type="radio" id="ext_way4" name="ext_way" value="문제 풀이"><i class="rounded-x"></i>학교에서 남들 하는 만큼은 하기때문에 <b>문제 풀이식 강의</b>가 필요 해요.</label>
										<label class="radio"><input type="radio" id="ext_way5" name="ext_way" value="쪽집계 강의"><i class="rounded-x"></i>학교 수업이 이해가 쉽지만 더이상 올라가기는 힘들어서 <b>쪽집계 강의</b>가 필요해요.</label>
										<label class="radio"><input type="radio" id="ext_way6" name="ext_way" value="시험대비용강의"><i class="rounded-x"></i>학교 수업이 쉬워 <b>시험 대비용 강의</b>가 필요해요.</label>
										<label class="radio"><input type="radio" id="ext_way7" name="ext_way" value="선행 학습"><i class="rounded-x"></i>학교 수업이 너무 쉬워 <b>선행 학습</b>이 필요해요.</label>
									</div>
								</div>
							</section>
						</fieldset>
						<header>강사가 알아야 할 다른 사항이 있나요?</header>
						<fieldset>
							<section>
								<label class="label">>선택 문제</label>
								<div class="row">
									<div class="col col-4">
										<textarea id="say_teacher" name="say_teacher" value="" cols="15" rows="10" style="width:650px;">
										</textarea>
									</div>
								</div>
							</section>
						</fieldset>
					</div>
						<footer>
							<button type="button" id="submitEval"class="btn-u">평가 저장</button>
							<button type="button" id="prevEval" class="btn-u btn-u-default" onclick="window.history.back();">이전</button>
							<button type="button" id="nextEval" class="btn-u btn-u-default" onclick="window.history.back();">다음</button>
						</footer>
					</form>
					<!-- General Unify Forms -->

					<div class="margin-bottom-60"></div>

				</div>
				<!-- End Content -->
			</div>
		</div><!--/container-->
		<!--=== End Content Part ===-->
	</div><!--/End Wrapepr-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="./resources/unify/assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="./resources/unify/assets/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/plugins/smoothScroll.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript" src="./resources/unify/assets/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="./resources/unify/assets/js/app.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/js/plugins/style-switcher.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			StyleSwitcher.initStyleSwitcher();
			$("#secondPage").hide();
			$("#submitEval").hide();
			$("#prevEval").hide();
		});
		
		$("#nextEval").on("click", function(){
			$("#firstPage").hide();
			$("#nextEval").hide();
			$("#secondPage").show();
			$("#submitEval").show();
			$("#prevEval").show();
			$(".progress-bar").css("width", "100%");
			$(".heading-xs").text("2페이지");
		});
		
		$("#prevEval").on("click", function(){
			$("#secondPage").hide();
			$("#submitEval").hide();
			$("#prevEval").hide();
			$("#firstPage").show();
			$("#nextEval").show();
			$(".progress-bar").css("width", "50%");
			$(".heading-xs").text("1페이지");
		})
		
		$("#submitEval").on("click", function(){
			var check1 = $("input:checkbox[name='day_week']").is(":checked");			
			var check2 = $("input:checkbox[name='private_time']").is(":checked");

			if(check1 != false && check2 != false){
				var formObj = $("form[role='form']");
				
				formObj.attr("action", "DiagnosticEval");
				formObj.attr("method", "POST");
				formObj.submit();
			}
			else{
				alert("선택하지 않은 항목이 있습니다.");
			}
		});		
	</script>
	<script>
		$(document).ready(function(){
			var result = '${DiagnosticEval}';
			
			if(result == "success"){
				self.close();
			}
		});
	</script>
</body>
</html>
