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
	<div id="sectionDivP">
	<section id="sectionDiv-1">
		<div class="headerFont">프로필</div>
		
		<div class="lEtutorDiv">
			<div class="lEtutorDiv-1">
				<div class="lEtutorDivImg"><img src="displayFile?fileName=${list.prof_photo }"></div>
				<div class="lEtutorDivN">${list.user_name}</div>
			</div>
			<div class="lEtutorDiv-2">
				<input type="hidden" value="${list.ext_id}">
				<div class="lEtutorDivT">과목 : </div>
				<div class="lEtutorDivT">지역 : ${list.class_poss_area}</div>
				<div class="lEtutorDivT">수강 횟수 : </div>
				<div class="lEtutorDivT">평균 점수 : ${list.best_score}</div>
			</div>
		</div>
		<div id="beforeToturDiv" class="headerFont">이전 강의 내용</div>
		<div id="lEtutorDivBeforeInfo">
 		
 		
 		<c:choose>
 		
 			<c:when test="${list2 != null}">
				<c:forEach items="${list2}" var="list2">
		
					<div class="lEtutorDivBeforeInfoList">
						<input type="hidden" name="ext_id" value="${list2.ext_id}">
						<div class="BeforeInfoT1">과목 : ${list2.ext_id}</div>
						<div class="BeforeInfoT2">강의 날짜 : ${list2.str_class_date} ~ ${list2.end_class_date}</div>
						<div class="BeforeInfoT3">평가 점수 : ${list2.best_score}</div>
						<div class="BeforeInfoT4">수강 인원 : ${list2.stu_num}</div>
						<div class="BeforeInfoT5">온오프라인 : ${list2.ext_id}</div>
						<div class="BeforeInfoT6">결석 횟수 : </div>
						<div class="BeforeInfoT7"><input type="button" class="detailBtn" value="자세히 보기"></div>
					</div>
				</c:forEach>
			</c:when>
			
			<c:otherwise>
				<div id="notInfo-2">
				검색 결과가 없습니다.
				</div>
			</c:otherwise>
			
		</c:choose>

		</div>
	</section>
	</div>
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
			form.attr("action", "./LectureEvaluation")
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
		
		var ext_id = $(".lEtutorDiv-2").children().eq(0).val();
		var lEtutorDivT = $(".lEtutorDiv-2").children().eq(1);
		if(ext_id.substr(2,2) == 01){
			lEtutorDivT.text("과목 : 국어");
		}
		else if(ext_id.substr(2,2) == 02){
			lEtutorDivT.text("과목 : 수학");
		}
		else if(ext_id.substr(2,2) == 03){
			lEtutorDivT.text("과목 : 영어");
		}
		
		var lEtutorDivBeforeInfo = $("section").children().eq(3)
		var BeforeInfo = $("section").children().eq(3).children();
		var searchTrue = $("section").children().eq(3).children().is(".lEtutorDivBeforeInfoList");
		if(searchTrue == true){
			for(var i=0; i<BeforeInfo.length; i++){
				var beforeExt_id = lEtutorDivBeforeInfo.children().eq(i).children().eq(0).val();
				var beforeSubject = lEtutorDivBeforeInfo.children().eq(i).children().eq(1);
				var beforeOnOff = lEtutorDivBeforeInfo.children().eq(i).children().eq(5);
				if(beforeExt_id.substr(2,2) == 01){
					beforeSubject.text("과목 : 국어");
				}
				else if(beforeExt_id.substr(2,2) == 02){
					beforeSubject.text("과목 : 수학");
				}
				else if(beforeExt_id.substr(2,2) == 03){
					beforeSubject.text("과목 : 영어");
				}
				if(beforeExt_id.substr(0,1) == 0){
					beforeOnOff.text("온오프라인 : 오프라인");
				}
				else if(beforeExt_id.substr(0,1) == 1){
					beforeOnOff.text("온오프라인 : 온라인");
				}
			}	
		}
		
		
		$(".detailBtn").on("click", function(){
			var form = $('<form class="form"></form>');
			var ext_idDiv = $(this).parent().parent().children().eq(0);
			form.append(ext_idDiv);
			$("body").append(form);
			form.attr("action", "./LectureEvaluationDetail");
			form.attr("method", "GET");
			form.submit();
		});

		
		 // 검색
		$("header").on("click", "#searchBtn", function(){
			var form = $('<form class="form"></form>');
			var searchIp = $(this).prev();
			form.append(searchIp);
			$("body").append(form);
			form.attr("action", "./LectureEvaluationUserSearch")
			form.attr("method", "GET");
			form.submit();
		});
		 
		 
		$.ajax({
	        url : './LectureEvaluationBestScore3',
	        data : {
	            ext_id : ext_id
	        },
	        dataType : 'text',
	        success : function(data){
	        	console.log(data);
	        	var totalCount = 0;
	        	var arr = new Array();
	        	var dayArr = new Array();
	        	var dateArr = new Array();
	        	arr = data.split(",");
	        	for(var i=0; i<arr.length; i++){
	        		if(i%2 == 0){
	        			if(i==0){
	        				dayArr.push(arr[i].substr(14,1));
	        			}
	        			else{
	        				dayArr.push(arr[i].substr(13,1));
	        				
	        			}
	        		}
	        		else{
	        			dateArr.push(arr[i].substr(18,10));
	        		}
	        	}
	        	
	        	for(var i=0; i<dayArr.length; i++){
	        		var weekday = dayArr[i]+'요일';
	                var strDate = dateArr[i].split("-");

	                var strDate2 = (strDate[0]+strDate[1]+strDate[2]);
	  
	                var a = new Date();
	                var day;
	                var date;
	                
	                if((parseInt(a.getMonth()+1)+"").length < 2){
	                    day = "0" + (parseInt(a.getMonth())+1);
	                }
	                if((parseInt(a.getMonth()+1)+"").length >= 2){
	                    day = parseInt(a.getMonth())+1;
	                }
	                if((parseInt(a.getDate())+"").length < 2){
	                    date = "0" + (parseInt(a.getDate())+1+'');
	                }
	                if((parseInt(a.getDate())+"").length >= 2){
	                    date = (parseInt(a.getDate())+1+'');
	                }
	                var currentDate = a.getFullYear()+''+day+date;
	                
	                totalCount += parseInt(timeview(strDate2,currentDate,weekday));	
	        	}
	        	var tutorN = $("section").children().eq(1).children().eq(1).children().eq(3);
	        	// tutorN.text("총 " + totalCount + "번의 수업 중 " + postCount + "개의 평가가 있습니다.");
	        	tutorN.text("수강 횟수 : " + totalCount + "회");
	        },
	        error : function(){
	         	console.log("에러");   
	        }
	    });	
		function timeview(sTday,eNday,Weekday){
		    var sTyear=sTday.substr(0,4);var sTmonth=sTday.substr(4,2);var sTday=sTday.substr(6,2);
		    var eNyear=eNday.substr(0,4);var eNmonth=eNday.substr(4,2);var eNday=eNday.substr(6,2);
		    var cDay=Weekday.substr(0,1);
		    var sTall=new Date(sTyear, sTmonth-1, sTday);
		    var eNall=new Date(eNyear, eNmonth-1, eNday);
		    var d1=sTall.getDay()+1;var d2=eNall.getDay()+1;
		    var startday=sTall.getTime();var endday=eNall.getTime();
		    var viewday=(endday-startday)/1000;
		    var weekdays=new Array("일","월","화","수","목","금","토");
		    for(i=1;i<=7;i++){
		        if(cDay==weekdays[i-1]) {days=i} 
		    }
		    if (cDay==""){alert("요일을 입력하세요")} 
		    if(d1>days) {minus=7-d1+days}
		    else if(d1==days) {minus=0}
		    else if(d1<days) {minus=days-d1}

		    Tday=(viewday/(24*60*60))-minus

		    if(d2==days & d1==days){TotalDays=Tday/7-1}
		    else if(d1==days | d2==days){TotalDays=Tday/7}
		    else {TotalDays=Tday/7+1}

		    return Math.floor(TotalDays)
		}
	});
</script>
</body>
</html>
