<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>HIGHLIGHTER</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel='stylesheet' href='./resources/fullCalendar/fullcalendar.css' />
<script src='./resources/fullCalendar/moment.min.js'></script>
<script src='./resources/fullCalendar/jquery.min.js'></script>
<script src='./resources/fullCalendar/fullcalendar.js'></script>

<link href="./resources/css/bootstrap.css" rel="stylesheet">
<link href="./resources/css/bootstrap-responsive.css" rel="stylesheet">
<link href="./resources/css/docs.css" rel="stylesheet">
<link href="./resources/css/prettyPhoto.css" rel="stylesheet" type="text/css">
<link href="./resources/js/google-code-prettify/prettify.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="./resouces/js/html5.js"></script>
<![endif]-->
<!-- <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.js"></script> -->
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
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
 <!-- 달력2 -->
 <!-- morris JS -->
	<script type="text/javascript" src="./resources/morris/morris.min.js"></script>
	<script type="text/javascript" src="./resources/morris/raphael.min.js"></script>
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

#studentscore {
	float: left;
}

#statistics {
	margin-left: 10%;
}

#profileImage {
	float: left;
	margin-top: 15px;
	margin-left: 15px;
}

.nav-agency {
	
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
	width: 8%;
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

#h3home {
	float: left;
	margin: 0;
}

#classSTManagementheader {
	background-color: #00CC99;
	width: 100%;
	height: 20%;
}

#classSTManagementprofile {
	width: 80%;
	margin-left: 10%;
	overflow: hidden;
}

 #profilecontent {
	margin-top: 15px;
	border-top: 5px solid #7D7D7D;
	border-bottom: 3px solid #DDD;
	border-left: 3px solid #DDD;
	border-right: 3px solid #DDD;
	border-radius: 5px;
} 

#profilecontent table {
	width: 80%;
}
#profilecontent td {
	padding: 2%;
}
#profilecontent th{
	padding-right: 2%;
}

#table124 {
	margin : 50%;
}
#table th{
	padding : 10px;
	width: 30px;
}
#table td{
	padding : 10px;
	width: 30px;
}
#profileMenu{
	width:80%;
	height:50px;
	margin: 0 auto;
	border-bottom: 5px solid #7d7d7d;
	
}
#profileMenu div{
	display: inline-block;
	width:180px;
	height:45px;
	line-height: 45px;
	text-align: center;
	float:left;
}
#profileMenu div:nth-child(1) {
	padding:0 15px;
	border-left:3px solid #DDD;
	border-top: 3px solid #DDD;
	border-right:3px solid #DDD;
	background-color: #c5c5c5;
}
#profileMenu div:nth-child(2){
	padding: 0 15px;
	border-top : 3px solid #DDD;
	border-right : 3px solid #DDD;
}
#studentscore table {
    border-collapse: collapse;
    width: 100%;
}

#studentscore th, td {
    text-align: left;
    padding: 8px;
}
#table123 {
	margin-left: 15%;
}
#profiletitle{
	text-align: left;
}
#studentscore tr:nth-child(even){background-color: #f2f2f2}

#attitude{
	width:80%;
	height:1000px;
	margin: 0 auto;
}
/* 수강 정보 관리 */
	.toggler { width: 500px; height: 200px; position: relative; }
	#button { float:left; position:relative; width:40px; height:30px; background:url(./resources/img/button1.gif); text-indent:-9999px; cursor:pointer;}
	#effect { width: 500px; height: 135px;  position: fixed;  left:-300px; top:0%;}
	#content { width:300px; float:left; font: 28px/1.6 NanumBrushWeb; height:730%; background-color:rgba(0,0,0,0.9); color:white;}
/* */
#infoWrap{
	width:250px;
	height:120px;
	margin: 0 auto;	
}
#infoWrap img{
	float:left;
	width: 110px;
	height: 100px;
}
#infoWrap p{
	font-size:14px;
	width:60px;
	overflow: hidden;
}
#infoWrap button{
	font-size:14px;
	float:right;
	width:80px;
	overflow: hidden;
}
</style>

</head>
<body>

	<div id="classSTManagementheader">
		<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font id="abcdef" size="5" color="white">수강학생 관리 페이지</font>
		<font size="5" color="white"><a id="go_main" href="classMain?ext_id=${ext_id}">나가기 <img src="./resources/img/sign-out.png" width="35" height="40" /></a></font>
	<br>&nbsp;
		
		</div>

	<div id="classSTManagementprofile">
		<div id="profiletitle">
			<h3>프로필</h3>
		</div>
		<div id="profileImage">
			<img src="displayFile?fileName=${listProfile.prof_photo}" style="width: 180px; height:200px">
		</div>
		<div id="profilecontent">
			<table id="table123">
				<tr>
					<th>이 름</th>		
					<td>${listProfile.user_name}</td>
					<th>주 소</th>
					<td>${listProfile.address}</td>
				</tr>
				<tr>
					<th>나 이</th>
					<td>
					<script>
						var today = new Date();
						var years = today.getFullYear()
						var birth_date = '${listProfile.birth_date}';
						var year = birth_date.substr(0, 4);
						document.write(years - year + 1);
					</script>
					</td>
					<th>이메일</th>
					<td>${listProfile.user_email}</td>
				</tr>
				<tr>
					<th>학 교</th>
					<td>${listProfile.college}</td>
					<th>휴대폰</th>
					<td>${listProfile.phone}</td>
				</tr>

			</table>
		</div>
	</div>

	<br>

	<div id="profileMenu">
		<div>학생 성적 및 통계</div>
		<div>학습 태도</div>
	</div>
	<!-- 통계 -->
	<div id="statistics">
		<div id="statistics1"></div>
		<div id="studentscore">
			<table id="table124">
			<tr>
				<th>주차</th>
				<th>점수</th>
			</tr>
			
				<c:forEach items="${ListWeeksCorrect}" var="ListWeeksCorrect">
						<tr>
							<td>
							<script>
								var weeks ='${ListWeeksCorrect.test_id}';
								
								document.write(weeks);
								</script>
								
							</td>
							<td>${ListWeeksCorrect.correctCount}/ 20</td>
							
						</tr>
				</c:forEach>
			</table>
		</div>
	</div>
<!-- end -->
	
<!-- 여기서 부터 캘린더 -->
	<div id=attitude>
		<!-- 캘린터 div를 클릭하였을때 controller의 cal에 접근하여서 view를 반환해줘야 한다. -->
		<iframe src="/Highlighter/cal?ext_id=${ext_id }&user_id=${stu_id}" width="1000px" height="900px" frameborder="0" scrolling="no"></iframe>
	</div>
	
<!-- 캘린더 끝이염 -->
	<script>
		$(document).ready(function() {
			$('#statistics').show();
			$('#attitude').hide();
			$('#bttnAllEvents').hide();
			$('#bttnRecreateEvents').hide();
			$('#profileMenu div:eq(0)').click(function() {
				$('#statistics').show();
				$('#attitude').hide();
				$("#profileMenu div:eq(0)").css("background-color","#c5c5c5");
				$("#profileMenu div:eq(1)").css("background-color","#fff");
			});

			$('#profileMenu div:eq(1)').click(function() {
				$('#statistics').hide();
				$('#attitude').show();
				$("#profileMenu div:eq(1)").css("background-color","#c5c5c5");
				$("#profileMenu div:eq(0)").css("background-color","#fff");
			});
		});
	</script>
	<script>
		Morris.Bar({
			  element: 'statistics1',
				  data: ${json},
			  xkey: 'date',
			  ykeys: ['학생'],
			  labels: ['학생']
			});
	</script>


<%-- ${jsonObj}  --%>
<%-- 
${jsonObj.weekCorrectAnsw[0].correctCount}

 --%>
	

	<!-- 스크립트 로딩과 차트 초기화 -->
<!-- <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script>
$("document").ready(function(){
	google.charts.load('current', {packages:['corechart']});
	
	// 로딩 완료시 함수 실행하여 차트 생성
	 google.charts.setOnLoadCallback(drawVisualization);
 		
	 function drawVisualization() {

	$.ajax({
		type:"POST",
		url:"classSTManagementAjax",
		dataType: "json",
		data:{
			user_id : '${stu_id}',
			ext_id : '${ext_id}'
		},
		success:function(data){
			console.log(data)
			// 차트를 사용하기 위한 준비입니다.
			var data1;
			
			// 차트 데이터 설정
			 data1 = new google.visualization.DataTable();
             data1.addColumn('string', 'test_id');
             data1.addColumn('number', 'correctCount');
             data1.addRows(data.length);
             for(var i=0;i<data.length;i++){
               data1.setCell(i, 0, data[i].test_id+"주차");  
               data1.setCell(i, 1, data[i].correctCount); 
             }


				// 그래프 옵션
				var options = {
					title : '성  적', // 제목
					width : 800, // 가로 px
					height : 600, // 세로 px
					vAxis : {title : '' },
                     
                     hAxis : {title : '총 시험 횟수 : '+data.length},
                     seriesType : 'bars',
                     series : {1 : {type : 'line'}}
				};

				var chart = new google.visualization.ComboChart(document.getElementById('statistics1'));
				chart.draw(data1, options);
			
			},
			/* alert(data.weekCorrectAnsw(1).test_id);	 */
			/* location.href="classSTManagement?user_id=${id}&ext_id=${list.ext_id}"; */
		error:function(data){
			alert("실패다 ");
		}
	});
	 }
});
</script> -->


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
	</script>
	
<div id="effect" >
	<div id="content">
		<div style="font-size:15px;"><img src="displayFile?fileName=${list.prof_photo }" style="width:50px; height:50px; border:1px solid #626262; margin:10px;border-radius: 50px; ">[${user_name}] 강사님 </div>
		<div style="margin:10px; height:30px; font-size:13px; position:relative; font-size:20px; text-align: center; ">학생목록</div>
		<hr />
		<c:forEach items="${info }" var="info">
			<div id="infoWrap">
				<img src="displayFile?fileName=${info.prof_photo }" />
				<p>${info.user_name}</p>
				<a href="/Highlighter/classSTManagement?ext_id=${ext_id }&user_id=${info.user_id}">바로가기</a>
			</div>
		</c:forEach>
	</div>
	<div id="button">
		<p><a href="#">Toggle</a></p>
	</div>
	
	<script>
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
	</script>
</div>
</body>
</html>