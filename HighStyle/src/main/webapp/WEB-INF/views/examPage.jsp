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
<link rel="stylesheet" href="./resources/unify/assets/css/examPage.css">
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.js"></script>

</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
	<div>
		<div id="testMenu">
			<c:forEach items="${examInfo}" var="examInfo">
			<div id="test_title">
				제목 : ${examInfo.test_title}
			</div>
			</c:forEach>
			<div id="test_time">시험시간 
				<span id="time-hour"></span> <span id="time-min"></span>
				<span id="time-sec"></span>
			</div>
		</div>
	</div>
	<div id="test">
		<c:forEach items="${examInfo}" var="examInfo">
		<div id="testImage">
			<c:if test="${examInfo.test_file ne null }">
				<img style="width:880px; height:730px;" src="displayFile?fileName=${examInfo.test_file}">
			</c:if>
			<c:if test="${examInfo.test_file2 ne null }">
				<img style="width:880px; height:730px;" src="displayFile?fileName=${examInfo.test_file2}">
			</c:if>
			<c:if test="${examInfo.test_file3 ne null }">
				<img style="width:880px; height:730px;" src="displayFile?fileName=${examInfo.test_file3}">
			</c:if>
		</div>
		<div id="answerSheet">
			<div id="answerSheetPlace">
			<div id="answerSheetTitle">답안지 작성</div>
			<script>
				var probCount = '${examInfo.prob_count}';
				for(var i = 1; i < parseInt(probCount)+1; i++){
					if(i==5)
					{
						document.write("<div id="+i+" class='selectAnswer'><div class='probNum'>"+i+
								"</div><div class='selectNum' onclick='movePage()'>1</div><div class='selectNum' onclick='movePage()'>2</div>"+
								"<div class='selectNum' onclick='movePage()'>3</div><div class='selectNum' onclick='movePage()'>4</div>"+
								"<div class='selectNum' onclick='movePage()'>5</div></div>");
					}
					else
					{
						document.write("<div id="+i+" class='selectAnswer'><div class='probNum'>"+i+
								"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
								"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
								"<div class='selectNum'>5</div></div>");
					}
				}
				
				function movePage()
				{
					$("#testImage img:eq(0)").hide();
					$("#testImage img:eq(1)").show();
				}
				$(document).ready(function(){
					$("#testImage img:eq(1)").hide();
					$("#testImage img:eq(2)").hide();
				});
			</script>
			</div>
			<button id="submitTest" onclick="submitTest('${examInfo.prob_count}','${examInfo.test_id}')">제출하기</button>
		</div>
		</c:forEach>
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
	<script type='text/javascript'>
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
			<c:forEach items="${examInfo}" var="examInfo">
	
			var testtime = '${examInfo.test_time}';
			var testtime2 = testtime / 60;
			</c:forEach>
	
			dailyMissionTimer(testtime2); // hour base
		});//]]>
	</script>
	<script>
		$(".selectNum").on("click", function(){
			console.log($(this).parent().children('.checked').text());
			if($(this).parent().children('.checked').text().length> 0){
				$(this).parent().children('.checked').css("background-color", "white");
				$(this).parent().children('.checked').removeClass("checked");
			}
			$(this).css("background-color", "gray");
			$(this).addClass("checked");
			
		})
		function submitTest(prob_Count, test_id){
			var selectNumbers = new Array();
			for(var i = 1; i < parseInt(prob_Count)+1; i++){
				if($("#"+i).children(".checked").text() == ""){
					alert("답안을 모두 체크했는지 확인해주세요.");
					break;
				}
				selectNumbers[i-1] = $("#"+i).children(".checked").text();
			}
			
			$.ajax({
				url : 'examPage',
				type : 'POST',
				contentType : "application/json; charset=UTF-8",
				data : JSON.stringify({
					selectNumbers : selectNumbers,
					test_id : test_id
				}),
				success:function(data){
					if(data == "success"){
						window.close();
					}	
				}
			});
			console.log(selectNumbers);
		}

	</script>
</body>
</html>