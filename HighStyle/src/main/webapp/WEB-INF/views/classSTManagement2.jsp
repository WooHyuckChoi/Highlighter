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
#attitude{}
.selectMenu{background:#C5C5C5;}

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
			$("#statistics1").empty();
			ext_id = $(this).prev().val();
			$.ajax({
				url : "/Highlighter/classSTManagement3",
				data : {
					ext_id : ext_id,
					user_id : user_id
				},
				dataType : "json",
				success : function(data){
					console.log(data);
					console.log(data.json);
					var info =  data.info;
					var info = data.ListWeeksCorrect;
					var json = data.json;
					
					Morris.Bar({
						  element: 'statistics1',
					      data: json,
						  xkey: 'times',
						  ykeys: ['점수'],
						  labels: ['점수'],
						  parseTime : false
					});
					
				},
				error : function(){
					console.log("error");
				}
			});	
		});
		
		$(".menu").click(function(){
			$(".menu").removeClass("selectMenu");
			$(this).addClass("selectMenu");
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
				<div class="menu selectMenu">학생 성적 및 통계</div>
				<div class="menu">학습 태도</div>
		</div>
		<div id="statistics">
				<div id="statistics1"></div>
				<div id="studentscore">
					<table id="table124">
					<tr>
						<th>주차</th>
						<th>시험일</th>
						<th>점수</th>
						<th>오답노트</th>
					</tr>
						<c:forEach items="${ListWeeksCorrect}" var="stuList">
								<tr>
									<td>${stuList.test_id }</td>
									<td>${stuList.test_date }</td>
									<td>${stuList.count }</td>
									<td>${stuList.wrong_note }</td>
								</tr>
						</c:forEach>
					</table>
				</div>
		</div>
		<div id="attitude"></div>
	</div>
</body>
</html>