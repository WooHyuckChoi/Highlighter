<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>

<style>
body{width:100%; margin:0px}
#classSTManagementheader {background-color: #00CC99; width: 100%;}
#abcdef{float:left;}
#go_main{float:right; text-decoration: none;}
#navDiv{}
#tutorList{width: 15%; height: 879px; position: absolute;}
.tutor{line-height: 3; padding: 2%;}
.subBtn{position: absolute; margin-left: 72%; margin-top: 5%; width: 20%; height: 8%; border:none; background:#FF6600; border-radius: 15%; outline-style:none;}
#classSTManagementprofile{position: absolute; width: 80%; margin-left: 15%;}
#profiletitle{}
#profile{border: 2px solid #DDDDDD; border-top: 5px solid grey; height: 200px;}
#profileImage{width: 12%;}
#profilecontent{}
.profileList{clear:both;}
.profileList-1{float: left; width: 10%; text-align: center; margin-left: 15%; margin-top: 2%;}
.profileList-2{width: 10%; text-align: center; float: left; margin-top: 2%;}
#profileMenu{position: absolute; width: 80%; margin-left: 15%; margin-top: 15%;}
.menu{float: left; border: 2px solid #DDDDDD; width: 200px; padding: 1%; text-align: center;}
#statistics{position: absolute; width: 80%; margin-left: 15%; margin-top: 18%; border-top: 5px solid grey; padding-bottom: 20%;}
#attitude{position: absolute; width: 80%; margin-left: 15%; margin-top: 18%; border-top: 5px solid grey; padding-bottom: 20%; display:none;}
.selectMenu{background:#C5C5C5;}
#statistics1{width:60%; float:left;}
#studentscore{width:25%; float: left; margin-top: 1%; margin-left: 1%;}
#shapeDiv{height:30px;}
.contentDiv{height:30px;}
#studentscore > .div-0 {background:;}
#studentscore > .div-1 {background:#f2f2f2;}
.contentDiv-1{width:12%; height:30px; float: left; clear:both; margin-left: 2%;}
.contentDiv-2{width:45%; height:30px; float: left; margin-left: 2%;}
.contentDiv-3{width:15%; height:30px; float: left; margin-left: 2%;}
.contentDiv-4{width:15%; height:30px; float: left; margin-left: 2%;}
#calView{
	width:1000px;
	height:500px;
	background-color: yellow;
}
#evaluationDiv{width:30%;height:35%; background:white; display:none;}
#evaluationDiv > div{margin: 5%;}
#scoreTitle{border-bottom: 3px solid black;}
.star{
	width: 8%;
    height: 8%;
}
#evaluationContent{
	width: 99%;
    height: 120px;
    margin-top: 3%;
}
#evaluationsubmit{
	width: 12%;
    margin-left: 35%;
    margin-top: 5%;
}
#evaluationclose{
    width: 12%;
    margin-left: 3%;
}

</style>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="./resources/morris/morris.min.js"></script>
<script type="text/javascript" src="./resources/morris/raphael.min.js"></script>
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
<script src="./resources/js/jquery.bpopup.min.js"></script>

<script>
	$(document).ready(function(){
		var searchTrue = $("#tutorList").children().is(".tutor");
		var tutorDiv = $("#tutorList").children();
		
		if(searchTrue == true){
			for(var i=0; i<tutorDiv.length; i++){
				var ext_id = $("#tutorList").children().eq(i).children().eq(0).val();
				var ext_idDiv = $("#tutorList").children().eq(i).children().eq(2).children().eq(0);
				if(ext_id.substr(2,2) == 01){
					ext_idDiv.text("과목 : 국어");
				}
				else if(ext_id.substr(2,2) == 02){
					ext_idDiv.text("과목 : 수학");
				}
				else if(ext_id.substr(2,2) == 03){
					ext_idDiv.text("과목 : 영어");
				}
			}
		}
		
		var user_id = $("#user_id").val();
		var ext_id;
		$(".subBtn").click(function(){
			
			$("#menu-1").click();
			$("#statistics1").remove();
			$(".shpaeDivChild").remove();
			$(".contentDiv").remove();
			$("#attitude").children().filter("#calView").remove();
			ext_id = $(this).prev().val();
			var end_date = $(this).next().next().text();
			end_year = end_date.substr(13,4);
			end_month = end_date.substr(18,2);
			end_day = end_date.substr(21,2);
			
			var now_date = new Date();
			now_year = (now_date.getFullYear()) + "";
			now_month = (now_date.getMonth()+1) + "";
			now_day = (now_date.getDate()) + "";
			
			if(now_month<10){
				now_month = "0" + now_month;
			}
			if(now_day<10){
				now_day = "0" + now_day;
			}
			
			console.log(end_year);
			console.log(end_month);
			console.log(end_day);
			
			console.log(now_year);
			console.log(now_month);
			console.log(now_day);
			
			var evaluationCheck = function(){
				$.ajax({
					url : "/Highlighter/dataCheck",
					data : {
						ext_id : ext_id,
						user_id : user_id
					},
					dataType : "text",
					success : function(data){
						if(data == 0){
							alert("강의평가를 진행해야함");
							$("#evaluationDiv").bPopup();
						}
						else{
							test_result();			
						}
					},
					error : function(){
						console.log("error");
					}
				});	
			};
			
			var test_result = function(){
				 $.ajax({
						url : "/Highlighter/classSTManagement3",
						data : {
							ext_id : ext_id,
							user_id : user_id
						},
						dataType : "json",
						success : function(data){
							// console.log(data);
							var graph = data.data;
							var userData = data.data2;
							var calList = data.calList;
							
							var graphDiv = $("<div id='statistics1'></div>");
							$("#statistics").prepend(graphDiv);
							config = {
								data: graph,
								xkey: '회차',
								ykeys: ['정답 수', '문제 수'],
								labels: ['정답 수', '문제 수'],
								fillOpacity: 0.6,
							    hideHover: 'auto',
							    behaveLikeLine: true,
							    resize: true,
							    pointFillColors:['#ffffff'],
							    pointStrokeColors: ['black'],
							    lineColors:['gray','red']
							};
							config.element = 'statistics1';
							config.stacked = true;
							Morris.Bar(config);
							
							var shapeDiv = $("<div class='contentDiv-1 shpaeDivChild'><b>주차</b></div><div class='contentDiv-2 shpaeDivChild'><b>시험일</b></div><div class='contentDiv-3 shpaeDivChild'><b>문제 수</b></div><div class='contentDiv-4 shpaeDivChild'><b>정답 수</b></div>");
							if(userData.length > 0){
								$("#shapeDiv").append(shapeDiv);	
							}
							for(var i=0; i<userData.length; i++){
								var k = i%2;
								var div = $("<div class='contentDiv div-" + k + "'>"
								+ " <div class='contentDiv-1'>" + userData[i].week + "</div>"
								+ " <div class='contentDiv-2'>" + userData[i].testDate + "</div>"
								+ " <div class='contentDiv-3'>" + userData[i].total + "</div>"
								+ " <div class='contentDiv-4'>" + userData[i].score + "</div>"
								+ " </div>");
								$("#shapeDiv").after(div);
							}
							
							var calViewDiv = $("<div id='calView'></div>")
							if(calList.length > 0){
								$("#attitude").append(calViewDiv);
							}
							for(var i=0; i<calList.length; i++){
								var div = $("<div>"
										+ " <div>" + calList[i].post_date + "</div>"
										+ " <div>" + calList[i].learn_att + "</div>"
										+ " </div>");
								$("#calView").append(div);
							}
							
							
						},
						error : function(){
							console.log("error");
						}
					});					 
			};
			
			if(now_year >= end_year && now_month >= end_month && now_day > end_day){
				evaluationCheck();
			}
			else{
				test_result();
			};
			
			
			
			
			
			
			
			
		});
		/* 
		$(".menu").click(function(){
			$(".menu").removeClass("selectMenu");
			$(this).addClass("selectMenu");
		});
		 */
		$("#menu-1").click(function(){
			$("#attitude").css("display", "none");
			$("#statistics").css("display", "block");
			$(".menu").removeClass("selectMenu");
			$(this).addClass("selectMenu");
		});
		$("#menu-2").click(function(){
			$("#statistics").css("display", "none");
			$("#attitude").css("display", "block");
			$(".menu").removeClass("selectMenu");
			$(this).addClass("selectMenu");
		});
		
		
		$("#star-1").click(function(){
			$("#score").val("1");
			$(".star").attr('src', '');
			$(this).nextAll().attr('src', './resources/img/star.png');
			$(this).attr('src', './resources/img/starpush.png');
			$(this).prevAll().attr('src', './resources/img/starpush.png');
		});
		$("#star-1").mouseover(function(){
			
		});
		$("#star-2").click(function(){
			$("#score").val("2");
			$(".star").attr('src', '');
			$(this).nextAll().attr('src', './resources/img/star.png');
			$(this).attr('src', './resources/img/starpush.png');
			$(this).prevAll().attr('src', './resources/img/starpush.png');
		});
		$("#star-2").mouseover(function(){
			
		});
		$("#star-3").click(function(){
			$("#score").val("3");
			$(".star").attr('src', '');
			$(this).nextAll().attr('src', './resources/img/star.png');
			$(this).attr('src', './resources/img/starpush.png');
			$(this).prevAll().attr('src', './resources/img/starpush.png');
		});
		$("#star-3").mouseover(function(){
			
		});
		$("#star-4").click(function(){
			$("#score").val("4");
			$(".star").attr('src', '');
			$(this).nextAll().attr('src', './resources/img/star.png');
			$(this).attr('src', './resources/img/starpush.png');
			$(this).prevAll().attr('src', './resources/img/starpush.png');
		});
		$("#star-4").mouseover(function(){
			
		});
		$("#star-5").click(function(){
			$("#score").val("5");
			$(".star").attr('src', '');
			$(this).nextAll().attr('src', './resources/img/star.png');
			$(this).attr('src', './resources/img/starpush.png');
			$(this).prevAll().attr('src', './resources/img/starpush.png');
		});
		$("#star-5").mouseover(function(){
			
		});
		
		$("#evaluationsubmit").click(function(){
			var score = $("#score").val();
			var content = $("#evaluationContent").val();
			$.ajax({
				url : "/Highlighter/dataUpload",
				type : "POST",
				data : {
					ext_id : ext_id,
					user_id : user_id,
					score : score,
					content : content
				},
				dataType : "text",
				success : function(data){
					alert("aa");
				},
				error : function(){
					alert("bb");
				}
			});
			$("#evaluationDiv").bPopup().close();
		});
		$("#evaluationclose").click(function(){
			$("#evaluationDiv").bPopup().close();
		});
	});
</script>
<body>
	<input id="user_id" type="hidden" value="${user_id}">
	<div id="classSTManagementheader">
		<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font id="abcdef" size="5" color="white">수강학생 관리 페이지</font>
		<font size="5" color="white"><a id="go_main" href="classMain?ext_id=${ext_id}">나가기 <img src="./resources/img/sign-out.png" width="35" height="40" /></a></font>
		<br>&nbsp;
		<br>&nbsp;
	</div>
	<div id="navDiv">
		<div id="tutorList">
			<c:forEach items="${tutorList}" var="tutorList">
				<div class="tutor">
					<input type="hidden" value="${tutorList.ext_id}">
					<input type="button" class="subBtn" value="조회">
					<div><span class="subject">${tutorList.ext_id}</span>&nbsp;&nbsp;<span>강사명 : ${tutorList.user_name}</span></div>
					<div>${tutorList.str_class_date} ~ ${tutorList.end_class_date}</div>
					
				</div>
				</c:forEach>
		
		
		</div>
		<div id="classSTManagementprofile">
			<div id="profiletitle">
				<h3>프로필</h3>
			</div>
			<div id="profile">
				<div id="profileImage">
					<%-- <img src="displayFile?fileName=${listProfile.prof_photo}" style="width: 180px; height:200px"> --%>
				</div>
				<div id="profilecontent">
					<div>
						<div class="profileList">
							<div class="profileList-1">이 름</div>		
							<div class="profileList-2">${listProfile.user_name}</div>
							<div class="profileList-1">주 소</div>
							<div class="profileList-2">${listProfile.address}</div>
						</div>
						<div class="profileList">
							<div class="profileList-1">나 이</div>
							<div class="profileList-2">
							<script>
								var today = new Date();
								var years = today.getFullYear()
								var birth_date = '${listProfile.birth_date}';
								var year = birth_date.substr(0, 4);
								// document.write(years - year + 1);
								$("#profilecontent").children().children().eq(1).children().eq(1).text(years - year + 1);
							</script>
							</div>
							<div class="profileList-1">이메일</div>
							<div class="profileList-2">${listProfile.user_email}</div>
						</div>
						<div class="profileList">
							<div class="profileList-1">학 교</div>
							<div class="profileList-2">${listProfile.college}</div>
							<div class="profileList-1">휴대폰</div>
							<div class="profileList-2">${listProfile.phone}</div>
						</div>
		
					</div>
				</div>
			</div>
		</div>
		<div id="profileMenu">
				<div id="menu-1" class="menu selectMenu">학생 성적 및 통계</div>
				<div id="menu-2" class="menu">학습 태도</div>
		</div>
		<div id="statistics">
				<div id="statistics1"></div>
				<div id="studentscore">
					<div id="shapeDiv">
						<!-- <div class="contentDiv-1"><b>주차</b></div><div class="contentDiv-2"><b>시험일</b></div><div class="contentDiv-3"><b>문제 수</b></div><div class="contentDiv-4"><b>정답 수</b></div> -->
					</div>
				</div>
		</div>
		<div id="attitude">
			<iframe src="/Highlighter/cal?ext_id=${ext_id }&user_id=${stu_id}" width="1000px" height="600px" frameborder="0" scrolling="no"></iframe>
			<div id="calView">
			</div>
		</div>
	</div>
	<div id="evaluationDiv">
		<input id="score" type="hidden" value="1">
		<div>
			<div id="scoreTitle">강사평가</div>
			<div>
				<textarea id="evaluationContent"></textarea>
			</div>
			<div>
				<img id="star-1" class="star starDown" src="./resources/img/starpush.png">
				<img id="star-2" class="star starDown" src="./resources/img/star.png">
				<img id="star-3" class="star starDown" src="./resources/img/star.png">
				<img id="star-4" class="star starDown" src="./resources/img/star.png">
				<img id="star-5" class="star starDown" src="./resources/img/star.png">
			</div>
			<div><button id="evaluationsubmit">제출</button><button id="evaluationclose">닫기</button></div>
		</div>
	</div>
</body>
</html> 
