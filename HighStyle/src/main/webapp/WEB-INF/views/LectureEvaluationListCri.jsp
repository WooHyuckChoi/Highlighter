<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
    
<!DOCTYPE html>
<html>
<head>
<title>Highlighter</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<link href="./resources/css/bootstrap.css" rel="stylesheet">
<link href="./resources/css/bootstrap-responsive.css" rel="stylesheet">
<link href="./resources/css/docs.css" rel="stylesheet">
<link href="./resources/css/prettyPhoto.css" rel="stylesheet" type="text/css">
<link href="./resources/js/google-code-prettify/prettify.css" rel="stylesheet">
<link href="./resources/css/LectureEvaluation.css" rel="stylesheet" type="text/css">
<!--[if lt IE 9]>
<script src="./resouces/js/html5.js"></script>
<![endif]-->
<link rel="shortcut icon" href="./resources/ico/HL.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="./resources/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="./resources/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="./resources/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="./resources/ico/apple-touch-icon-57-precomposed.png">
<style type="text/css">
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
	}
</style>
</head>
<script>
	var sectionN = 0;
</script>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
<div class="nav-agency">
  <div class="navbar navbar-static-top">
    <div class="navbar-inner">
      <div class="container"> <a class="brand" href="/Highlighter"> <img src="./resources/img/logo.png" alt=""></a>
        <div id="main-nav">
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class=""><a href="/Highlighter">Home</a> </li>
              <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> 강사 <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="work.html">강사 이용방법</a></li>
                  <li><a href="work-two-columns.html">과외 등록</a></li>
                </ul>
              </li>
              <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> 학생 <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="pricing.html">학생 이용방법</a></li>
                  <li><a href="pricing-three-columns.html">과외 검색</a></li>
                </ul>
              </li>
              <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> 학부모 <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="faq.html">학부모 이용방법</a></li>
                  <li><a href="contact.html">자녀 학습 관리</a></li>
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
<!--  -->
<div id="lEcontainer">
	<header>
		<div id="lEHeaderDiv">
			<input type="text" id="searchIp" name="searchIp">
			<input type="button" id="searchBtn" value="강사 검색">
		</div>
	</header>
	<nav>
		<div id="lENavDiv">
			<div id="lENavDiv-1">강사 평가</div>
			<div id="lENavDiv-2">전체 강사 평가</div>
			<div id="lENavDiv-3">인기 강사 평가</div>
			
			
			
		</div>
	</nav>
	<section id="sectionDiv">
	<!-- 수강 횟수 = 강사가 학습태도 적은 횟수 -->
	<!-- 평균 점수 = 현재 해당 강의의 모범점수 -->
		<!-- <div class="lEtutorDiv">
			<div class="lEtutorDiv-1">
				<div class="lEtutorDivImg"><img src=""></div>
				<div class="lEtutorDivN">홍길동1</div>
			</div>
			<div class="lEtutorDiv-2">
				<input type="hidden" value="1100005">
				<div class="lEtutorDivT">과목 : </div>
				<div class="lEtutorDivT">지역 : </div>
				<div class="lEtutorDivT">수강 횟수 : </div>
				<div class="lEtutorDivT">평균 점수 : </div>
				<div class="tutorInfoBtn"><input type="button" value="상세 보기"></div>
			</div>
		</div> -->
		
		
		
		
		
		<c:choose>
		
			<c:when test="${list != null}">
		
				<c:forEach items="${list}" var="list">
				<%-- ${list.user_name} --%>
				<%-- ${list.prof_photo} --%>
				<%-- ${list.ext_id} --%>
				<%-- ${list.class_poss_area} --%>
				<%-- ${list.best_score} --%>
				<div class="lEtutorDiv">
					<!-- <form> -->
						<div class="lEtutorDiv-1">
							<div class="lEtutorDivImg"><img src="displayFile?fileName=${list.prof_photo }">${list.prof_photo}</div>
							<div class="lEtutorDivN">${list.user_name}</div>
						</div>
						<div class="lEtutorDiv-2">
							<input type="hidden" name="ext_id" value="${list.ext_id}">
							<div class="lEtutorDivT">과목 : </div>
							<div class="lEtutorDivT">지역 : ${list.class_poss_area}</div>
							<div class="lEtutorDivT">수강 횟수 : </div>
							<div class="lEtutorDivT">평균 점수 : ${list.best_score}</div>
							<div class="tutorInfoBtn"><input type="button" value="상세 보기"></div>
						</div>
					<!-- </form> -->
				</div>
				</c:forEach>
		
			</c:when>
		
		
			<c:when test="${searchList != null}">
				<c:forEach items="${searchList}" var="searchList">
				<%-- ${list.user_name} --%>
				<%-- ${list.prof_photo} --%>
				<%-- ${list.ext_id} --%>
				<%-- ${list.class_poss_area} --%>
				<%-- ${list.best_score} --%>
				
				
				<div class="lEtutorDiv">
					<div class="lEtutorDiv-1">
						<div class="lEtutorDivImg"><img src="displayFile?fileName=${searchList.prof_photo }">${searchList.prof_photo}</div>
						<div class="lEtutorDivN">${searchList.user_name}</div>
					</div>
					<div class="lEtutorDiv-2">
						<input type="hidden" name="ext_id" value="${searchList.ext_id}">
						<div class="lEtutorDivT">과목 : </div>
						<div class="lEtutorDivT">지역 : ${searchList.class_poss_area}</div>
						<div class="lEtutorDivT">수강 횟수 : </div>
						<div class="lEtutorDivT">평균 점수 : ${searchList.best_score}</div>
						<div class="tutorInfoBtn"><input type="button" value="상세 보기"></div>
					</div>
				</div>
				</c:forEach>
			</c:when>


			<c:otherwise>
				<div id="notInfo-1">
				<img src="./resources/img/prohibition.png">검색 결과가 없습니다.
				</div>
			</c:otherwise>
			
		</c:choose>
		
	</section>
</div>

<!--  -->
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
	$(document).ready(function(){
		$("#lENavDiv-2").click(function(){
			$("#lENavDiv-2").css("background","#fafafa");
			$("#lENavDiv-3").css("background","#dadada");
			
			var form = $('<form class="form"></form>');
			$("body").append(form);
			form.attr("action", "/Highlighter/LectureEvaluation")
			form.attr("method", "GET");
			form.submit();
			
			$.ajax({
				
			});
		});
		
		$("#lENavDiv-3").click(function(){
			$("#lENavDiv-3").css("background","#fafafa");
			$("#lENavDiv-2").css("background","#dadeda");
			
			$.ajax({
				
			});
		});
		
		
		var lEtutorDiv = $("section").children();
		for(var i=0; i<lEtutorDiv.length; i++){
			var ext_id = $("section").children().eq(i).children().eq(1).children().eq(0).val();
			var lEtutorDivT = $("section").children().eq(i).children().eq(1).children().eq(1);
			if(ext_id.substr(2,2) == 01){
				lEtutorDivT.text("과목 : 국어");
			}
			else if(ext_id.substr(2,2) == 02){
				lEtutorDivT.text("과목 : 수학");
			}
			else if(ext_id.substr(2,2) == 03){
				lEtutorDivT.text("과목 : 영어");
			}
		}		
			
		/* 
		$("#searchBtn").on("click", function(){
			var searchT = $("#searchIp").val();
			
			$.ajax({
				type:"GET",
				url:"/LectureEvaluationUserSearch",
				data:{searchT:searchT},
				success:function(data){
					alert("검색 성공")
				},
				error:function(){
					alert("검색 실패")
				}
			});
		});
		 */
		/* 
		$("section").on("click", ".tutorInfoBtn", function(){
			var ext_id = $(this).parent().children().eq(0).val();
			console.log(ext_id);
			$.ajax({
				type:"GET",
				url:"/Highlighter/LectureEvaluationRead",
				data:{ext_id : ext_id},
				success:function(data){
					alert("상세보기 성공");
					// window.location.href = "/Highlighter/LectureEvaluationRead?ext_id=" + ext_id;
				},
				error:function(){
					alert("상세보기 실패");
				}
			});
		});
		 */
		 
		 
		$("section").on("click", ".tutorInfoBtn", function(){
			var form = $('<form class="form"></form>');
			var ext_idDiv = $(this).parent().children().eq(0);
			form.append(ext_idDiv);
			$("body").append(form);
			form.attr("action", "/Highlighter/LectureEvaluationRead");
			form.attr("method", "GET");
			form.submit();
		});
		
		 // 검색
		$("header").on("click", "#searchBtn", function(){
			var form = $('<form class="form"></form>');
			var searchIp = $(this).prev();
			form.append(searchIp);
			$("body").append(form);
			form.attr("action", "/Highlighter/LectureEvaluationUserSearch")
			form.attr("method", "GET");
			form.submit();
		});
		
	});
</script>
</body>
</html>