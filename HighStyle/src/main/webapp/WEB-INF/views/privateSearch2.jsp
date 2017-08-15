<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Highlighter</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">


<link href="./resources/bootstrap/css/application-ie9-part2.css" rel="stylesheet">
<link href="./resources/bootstrap/css/application.min.css" rel="stylesheet">

<link href="./resources/css/privateSearch.css" rel="stylesheet">
<link href="./resources/css/bootstrap.css" rel="stylesheet">
<link href="./resources/css/bootstrap-responsive.css" rel="stylesheet">
<link href="./resources/css/docs.css" rel="stylesheet">
<link href="./resources/css/prettyPhoto.css" rel="stylesheet" type="text/css">
<link href="./resources/js/google-code-prettify/prettify.css" rel="stylesheet">
<link rel="shortcut icon" href="./resources/ico/HL.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="./resources/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="./resources/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="./resources/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="./resources/ico/apple-touch-icon-57-precomposed.png">
<!-- 시간표 팝업 띄우기 -->
<script type="text/javascript">
	function login() {
	  
    $('#popup').bPopup();
   
  };
</script>
<style type="text/css">
/* 시간표 팝업 */
.layer {display:none; position:fixed; _position:absolute; top:0; left:0; width:100%; height:100%; z-index:100;}

.layer .bg {position:absolute; top:0; left:0; width:100%; height:100%; background:#000; opacity:.5; filter:alpha(opacity=50);}

.layer .pop-layer {display:block;}

.pop-layer {display:none; position: absolute; top: 50%; left: 50%; width: 410px; height:auto;  background-color:#fff; border: 5px solid #3571B5; z-index: 10;} 

.pop-layer .pop-container {padding: 20px 25px;}

.pop-layer p.ctxt {color: #666; line-height: 25px;}

.pop-layer .btn-r {width: 100%; margin:10px 0 20px; padding-top: 10px; border-top: 1px solid #DDD; text-align:right;}

a.cbtn {display:inline-block; height:25px; padding:0 14px 0; border:1px solid #304a8a; background-color:#3f5a9d; font-size:13px; color:#fff; line-height:25px;}

a.cbtn:hover {border: 1px solid #091940; background-color:#1f326a; color:#fff;}

div#locationSelect1{margin:0;}
div#locationSelect2{margin:0;}
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
/* 팝업창 */
.Pstyle {
 opacity: 0;
 display: none;
 position: relative;
 width: auto;
 border: 5px solid #fff;
 padding: 20px;
 background-color: #fff;
}

.b-close {
 position: absolute;
 right: 5px;
 top: 5px;
 padding: 5px;
 display: inline-block;
 cursor: pointer;
}

#search input {
	background-color:red;
}

/* on/off 스위치 */
.onoffswitch {
    position: relative; width: 90px;
    -webkit-user-select:none; -moz-user-select:none; -ms-user-select: none;
}
.onoffswitch-checkbox {
    display: none;
}
.onoffswitch-label {
    display: block; overflow: hidden; cursor: pointer;
    border: 2px solid #FFFFFF; border-radius: 20px;
}
.onoffswitch-inner {
    display: block; width: 200%; margin-left: -100%;
    transition: margin 0.3s ease-in 0s;
}
.onoffswitch-inner:before, .onoffswitch-inner:after {
    display: block; float: left; width: 50%; height: 30px; padding: 0; line-height: 30px;
    font-size: 14px; color: white; font-family: Trebuchet, Arial, sans-serif; font-weight: bold;
    box-sizing: border-box;
}
.onoffswitch-inner:before {
    content: "ON";
    padding-left: 10px;
    background-color: #EBB552; color: #FFFFFF;
}
.onoffswitch-inner:after {
    content: "OFF";
    padding-right: 10px;
    background-color: #D6D6D6; color: #999999;
    text-align: right;
}
.onoffswitch-switch {
    display: block; width: 14px; margin: 8px;
    background: #FFFFFF;
    position: absolute; top: 0; bottom: 0;
    right: 56px;
    border: 2px solid #FFFFFF; border-radius: 20px;
    transition: all 0.3s ease-in 0s; 
}
.onoffswitch-checkbox:checked + .onoffswitch-label .onoffswitch-inner {
    margin-left: 0;
}
.onoffswitch-checkbox:checked + .onoffswitch-label .onoffswitch-switch {
    right: 0px; 
}
</style>

</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar" >
  <%
  	String user_id = (String)session.getAttribute("id");
  	pageContext.setAttribute("user_id",user_id) ;
  %>
<div class="nav-agency">
  <div class="navbar navbar-static-top">
    <div class="navbar-inner">
      <div class="container"> <a class="brand" href="/Highlighter"> <img src="./resources/img/logo.png" alt=""></a>
      <c:if test="${user_id eq null}">
     	 <ul id="work-filter">
            <li><a data-filter="*" class="btn btn-success ione-col" id="login" onclick="login()">로그인</a></li>
            <li><a href="selectRegister" data-filter=".graphics" class="btn ione-col">회원가입</a></li>
         </ul>
      </c:if>
      <c:if test="${user_id ne null}" >
       	<ul id="work-filter">
      		<li><a href="logout" data-filter=".graphics" class="btn ione-col">로그아웃</a></li>
      	</ul>
      </c:if>
        <div id="main-nav">
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class=""><a href="index.html">Home</a> </li>
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
<!-- 게시판 전체 영역  -->
<div class="container">
<!-- 게시판 타이틀 -->
  <div class="row-fluid">
    <div class="span12">
      <div class="page-header" style="border-bottom:1px solid #DEDDDD; ">
        <div class="row-fluid">
          <div class="span12" style="color:#303030; font-size:30px;">
            <img src="./resources/img/group.png">&nbsp;&nbsp;과외 조회
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- 과외 검색 -->
  <input id="selectLo1" type="hidden" name="selectLo1" />
  <input id="selectLo2" type="hidden" name="selectLo2" />
<section class="widget">
                    <header>
                        <div class="widget-controls">
                        </div>
                    </header>
                    <div class="widget-body">
                        <h3 style="border-bottom:1px solid orange;">전체 과외 정보</h3>
                        <p>검색을 통해 여러분이 원하는 과외를 찾아보세요!</p>
                        <table class="table table-bordered table-lg mt-lg mb-0">
                            <tbody>
                            <tr>
                            	<td>온/오프라인 여부</td>
                                <td>			
								  <select id="onoff" name="onoff">
             						<option value="n" 
             							<c:out value="${cri.onoff == null? 'selected':'' }"/>>
             							--선택--</option>
            						<option value="1" 
            							<c:out value="${cri.onoff eq '1'? 'selected':''}"/>>
            							온라인</option>
            						<option value="0" 
            							<c:out value="${cri.onoff eq '0'? 'selected':''}"/>>
            							오프라인</option>	
            					   </select>
                            	</td>
                                <td>개인/그룹과외 여부</td>
                                <td><select id="pg" name="pg">
           		 					<option value="n" 
             							<c:out value="${cri.pg == null? 'selected':'' }"/>>
             							--선택--</option>
             						<option value="1" 
           	 							<c:out value="${cri.pg eq 'p'? 'selected':''}"/>>
            							개인</option>	
            						<option value="2" 
            							<c:out value="${cri.pg eq 'g'? 'selected':''}"/>>
            							그룹</option>	
           		 				</select>
           		 			</td>
                            </tr>
                            <tr>
                                <td>과외 시간대 선택</td>
                                <td colspan="3">
         						<a href="#" onclick="layer_open('layer2');" style="background-color:white;"><img src="./resources/img/calendar-with-a-clock-time-tools.png"></a>
            					</td>
                            </tr>
                            <tr id ="search1" style="display:none;">
                                <td>과목</td>
                                <td colspan="3"><select id="subject" name="subject">
            	 					<option value="n" 
             							<c:out value="${cri.subject == null? 'selected':'' }"/>>
             							--선택--</option>
             						<option value="01" 
            							<c:out value="${cri.subject eq 'kor'? 'selected':''}"/>>
            							국어</option>		
            						<option value="02" 
            							<c:out value="${cri.subject eq 'eng'? 'selected':''}"/>>
            							영어</option>	
            						<option value="03" 
            							<c:out value="${cri.subject eq 'mat'? 'selected':''}"/>>
            							수학</option>		
            					</select>
            					</td>
                            </tr>
                            <tr id ="search2" style="display:none;">
                                <td>지역1</td>
                                <td colspan="3">
                                <select id="location2">
                       				<option value="n" 
             							<c:out value="${cri.location2 == null? 'selected':'' }"/>>
             							--시/도--</option>
                			        <option value="서울특별시">서울특별시</option><option value="부산광역시">부산광역시</option><option value="대구광역시">대구광역시</option><option value="인천광역시">인천광역시</option>
                 			        <option value="광주광역시">광주광역시</option><option value="대전광역시">대전광역시</option><option value="울산광역시">울산광역시</option><option value="세종특별자치시">세종특별자치시</option>
                    			    <option value="경기도">경기도</option><option value="강원도">강원도</option><option value="충청북도">충청북도</option><option value="충청남도">충청남도</option>
                 			        <option value="전라북도">전라북도</option><option value="전라남도">전라남도</option><option value="경상북도">경상북도</option><option value="경상남도">경상남도</option>
                 				    <option value="제주특별자치도" <c:out value="${cri.location2 eq '제주특별자치도'? 'selected':''}"/>>제주특별자치도</option>
                    			 </select>
                                 	<!-- 서울특별시 -->
                   					<select id="lo1" class="lo1">
                       					<option selected>-</option>
                        				<option value="강서구">강서구</option>
                        				<option value="양천구">양천구</option>
                        				<option value="구로구">구로구</option>
                        				<option value="은평구">은평구</option>
                       					<option value="서대문구">서대문구</option>
                        				<option value="마포구">마포구</option>
                        				<option value="영등포구">영등포구</option>
                        				<option value="동작구">동작구</option>
                        				<option value="관악구">관악구</option>
                        				<option value="금천구">금천구</option>
                        				<option value="도봉구">도봉구</option>
                        				<option value="강북구">강북구</option>
                        				<option value="노원구">노원구</option>
                        				<option value="성북구">성북구</option>
                        				<option value="중랑구">중랑구</option>
                        				<option value="종로구">종로구</option>
                        				<option value="중구">중구</option>
                        				<option value="동대문구">동대문구</option>
                        				<option value="성동구">성동구</option>
                        				<option value="용산구">용산구</option>
                       					<option value="서초구">서초구</option>
                       					<option value="강남구">강남구</option>
                        				<option value="광진구">광진구</option>
                        				<option value="송파구">송파구</option>
                        				<option value="강동구">강동구</option>
                    				 </select>
                    				 <!-- 부산광역시 -->
                    				 <select id="lo2" class="lo1">
                     				   <option selected>-</option>
 				                       <option value="기장군">기장군</option>
          				               <option value="강서구">강서구</option>
                   				       <option value="북구">북구</option>
     				                   <option value="금정구">금정구</option>
         				               <option value="해운대구">해운대구</option>
                        				<option value="동래구">동래구</option>
                        				<option value="연제구">연제구</option>
                        				<option value="수영구">수영구</option>
                        				<option value="진구">진구</option>
                        				<option value="수영구">수영구</option>
                        				<option value="동구">동구</option>
                        				<option value="남구">남구</option>
                        				<option value="사상구">사상구</option>
                        				<option value="서구">서구</option>
                        				<option value="중구">중구</option>
                        				<option value="사하구">사하구</option>
                        				<option value="영도구">영도구</option>
                     				</select>
                     				<!-- 대구광역시 -->
                     				<select id="lo3" class="lo1">
                     				   <option selected>-</option>
                     				   <option value="북구">북구</option>
                     				   <option value="서구">서구</option>
                     				   <option value="중구">중구</option>
                     				   <option value="동구">동구</option>
                     				   <option value="수성구">수성구</option>
                      				   <option value="남구">남구</option>
                     				   <option value="달서구">달서구</option>
                      				   <option value="달성군">달성군</option>
                     				</select>
                     				<!-- 인천광역시 -->
                     				<select id="lo4" class="lo1">
                        				<option selected>-</option>
                        				<option value="연수구">연수구</option>
                        				<option value="중구">중구</option>
                        				<option value="동구">동구</option>
                        				<option value="남구">남구</option>
                        				<option value="남동구">남동구</option>
                        				<option value="부평구">부평구</option>
                        				<option value="계양구">계양구</option>
                        				<option value="서구">서구</option>
                        				<option value="강화군">강화군</option>
                        				<option value="옹진군">옹진군</option>
                     				</select>
                     				<!-- 광주광역시 -->
                     				<select id="lo5" class="lo1">
                        				<option selected>-</option>
                        				<option value="광산구">광산구</option>
                        				<option value="동구">동구</option>
                        				<option value="서구">서구</option>
                        				<option value="남구">남구</option>
                        				<option value="북구">북구</option>
                     				</select>
                     				<!-- 대전광역시 -->
                     				<select id="lo6" class="lo1">
                        				<option selected>-</option>
                        				<option value="유성구">유성구</option>
                        				<option value="동구">동구</option>
                        				<option value="중구">중구</option>
                        				<option value="서구">서구</option>
                        				<option value="대덕구">대덕구</option>
                     				</select>
                     				<!-- 울산광역시 -->
                     				<select id="lo7" class="lo1">
                        				<option selected>-</option>
                        				<option value="울주군">울주군</option>
                        				<option value="중구">중구</option>
                        				<option value="남구">남구</option>
                        				<option value="동구">동구</option>
                        				<option value="북구">북구</option>
                     				</select>
                     				<!-- 세종특별자치시 -->
                     				<select id="lo8" class="lo1">
                        				<option selected>-</option>
                        				<option value="세종시">세종시</option>
                     				</select>
                     				<!-- 경기도 -->
                     				<select id="lo9" class="lo1">
                        				<option selected>-</option>
                        				<option value="수원시">수원시</option>
                        				<option value="성남시">성남시</option>
                        				<option value="안양시">안양시</option>
                        				<option value="안산시">안산시</option>
                        				<option value="용인시">용인시</option>
                        				<option value="광명시">광명시</option>
                        				<option value="평택시">평택시</option>
                        				<option value="과천시">과천시</option>
                        				<option value="오산시">오산시</option>
                        				<option value="시흥시">시흥시</option>
                        				<option value="군포시">군포시</option>
                        				<option value="의왕시">의왕시</option>
                        				<option value="하남시">하남시</option>
                        				<option value="이천시">이천시</option>
                        				<option value="안성시시">안성시</option>
                        				<option value="김포시">김포시</option>
                        				<option value="화성시">화성시</option>
                        				<option value="광주시">광주시</option>
                        				<option value="여주시">여주시</option>
                        				<option value="부천시">부천시</option>
                        				<option value="양평군">양평군</option>
                        				<option value="고양시">고양시</option>
                        				<option value="의정부시">의정부시</option>
                        				<option value="동두천시">동두천시</option>
                        				<option value="구리시">구리시</option>
                        				<option value="남양주시">남양주시</option>
                        				<option value="파주시">파주시</option>
                        				<option value="양주시">양주시</option>
                        				<option value="포천시">포천시</option>
                        				<option value="연천군">연천군</option>
                        				<option value="가평군">가평군</option>
                     				</select>
                     				<!-- 강원도 -->
                     				<select id="lo10" class="lo1">
                        				<option selected>-</option>
                        				<option value="춘천시">춘천시</option>
                        				<option value="원주시">원주시</option>
                        				<option value="강릉시">강릉시</option>
                        				<option value="동해시">동해시</option>
                        				<option value="태백시">태백시</option>
                        				<option value="속초시">속초시</option>
                        				<option value="삼척시">삼척시</option>
                        				<option value="홍천군">홍천군</option>
                        				<option value="횡성군">횡성군</option>
                        				<option value="영월군">영월군</option>
                        				<option value="평창군">평창군</option>
                        				<option value="정선군">정선군</option>
                        				<option value="철원군">철원군</option>
                        				<option value="화천군">화천군</option>
                        				<option value="양구군">양구군</option>
                        				<option value="인제군">인제군</option>
                        				<option value="고성군">고성군</option>
                        				<option value="양양군">양양군</option>
                     				</select>
                     				<!-- 충청북도 -->
                     				<select id="lo11" class="lo1">
                        				<option selected>-</option>
                        				<option value="청주시">청주시</option>
                        				<option value="충주시">충주시</option>
                        				<option value="제천시">제천시</option>
                        				<option value="보은군">보은군</option>
                        				<option value="옥천군">옥천군</option>
                        				<option value="영동군">영동군</option>
                        				<option value="진천군">진천군</option>
                        				<option value="괴산군">괴산군</option>
                        				<option value="음성군">음성군</option>
                        				<option value="단양군">단양군</option>
                        				<option value="증평군">증평군</option>
                     				</select>
                     				<!-- 충청남도 -->
                     				<select id="lo12" class="lo1">
                        				<option selected>-</option>
                        				<option value="천안시">천안시</option>
                        				<option value="공주시">공주시</option>
                        				<option value="보령시">보령시</option>
                        				<option value="아산시">아산시</option>
                        				<option value="서산시">서산시</option>
                        				<option value="논산시">논산시</option>
                        				<option value="계룡시">계룡시</option>
                        				<option value="당진시">당진시</option>
                        				<option value="금산군">금산군</option>
                        				<option value="부여군">부여군</option>
                        				<option value="서천군">서천군</option>
                        				<option value="청양군">청양군</option>
                        				<option value="홍성군">홍성군</option>
                        				<option value="예산군">예산군</option>
                        				<option value="태안군">태안군</option>
                     				</select>
                     				<!-- 전라북도 -->
                     				<select id="lo13" class="lo1">
                        				<option selected>-</option>
                        				<option value="전주시">전주시</option>
                        				<option value="군산시">군산시</option>
                        				<option value="익산시">익산시</option>
                        				<option value="정읍시">정읍시</option>
                        				<option value="남원시">남원시</option>
                        				<option value="김제시">김제시</option>
                        				<option value="완주군">완주군</option>
                        				<option value="진안군">진안군</option>
                        				<option value="무주군">무주군</option>
                        				<option value="장수군">장수군</option>
                        				<option value="임실군">임실군</option>
                        				<option value="순창군">순창군</option>
                        				<option value="고창군">고창군</option>
                        				<option value="부안군">부안군</option>
                     				</select>
				                     <!-- 전라남도 -->
				                     <select id="lo14" class="lo1">
				                        <option selected>-</option>
				                        <option value="목포시">목포시</option>
				                        <option value="여수시">여수시</option>
				                        <option value="순천시">순천시</option>
				                        <option value="나주시">나주시</option>
				                        <option value="광양시">광양시</option>
				                        <option value="담양군">담양군</option>
				                        <option value="곡성군">곡성군</option>
				                        <option value="구례군">구례군</option>
				                        <option value="고흥군">고흥군</option>
				                        <option value="보성군">보성군</option>
				                        <option value="화순군">화순군</option>
				                        <option value="장흥군">장흥군</option>
			                        <option value="강진군">강진군</option>
			                        <option value="해남군">해남군</option>
			                        <option value="영암군">영암군</option>
			                        <option value="무안군">무안군</option>
			                        <option value="함평군">함평군</option>
			                        <option value="영광군">영광군</option>
			                        <option value="장성군">장성군</option>
			                        <option value="완도군">완도군</option>
			                        <option value="진도군">진도군</option>
			                        <option value="신안군">신안군</option>
			                     </select>
			                     <!-- 경상북도 -->
			                     <select id="lo15" class="lo1">
			                        <option selected>-</option>
			                        <option value="포항시">포항시</option>
			                        <option value="경주시">경주시</option>
			                        <option value="김천시">김천시</option>
			                        <option value="안동시">안동시</option>
			                        <option value="구미시">구미시</option>
			                        <option value="영주시">영주시</option>
			                        <option value="영천시">영천시</option>
			                        <option value="상주시">상주시</option>
			                        <option value="문경시">문경시</option>
			                        <option value="경산시">경산시</option>
			                        <option value="군위군">군위군</option>
			                        <option value="의성군">의성군</option>
			                        <option value="청송군">청송군</option>
			                        <option value="영양군">영양군</option>
			                        <option value="영덕군">영덕군</option>
			                        <option value="청도군">청도군</option>
			                        <option value="고령군">고령군</option>
			                        <option value="성주군">성주군</option>
			                        <option value="칠곡군">칠곡군</option>
			                        <option value="예천군">예천군</option>
			                        <option value="봉화군">봉화군</option>
			                        <option value="울진군">울진군</option>
			                        <option value="울릉군">울릉군</option>
			                     </select>
			                     <!-- 경상남도 -->
			                     <select id="lo16" class="lo1">
			                        <option selected>-</option>
			                        <option value="창원시">창원시</option>
			                        <option value="진주시">진주시</option>
			                        <option value="통영시">통영시</option>
			                        <option value="사천시">사천시</option>
			                        <option value="김해시">김해시</option>
			                        <option value="밀양시">밀양시</option>
			                        <option value="거제시">거제시</option>
			                        <option value="양산시">양산시</option>
			                        <option value="의령군">의령군</option>
			                        <option value="함안군">함안군</option>
			                        <option value="창녕군">창녕군</option>
			                        <option value="고성군">고성군</option>
			                        <option value="남해군">남해군</option>
			                        <option value="하동군">하동군</option>
			                        <option value="산청군">산청군</option>
			                        <option value="함양군">함양군</option>
			                        <option value="거창군">거창군</option>
			                        <option value="합천군">합천군</option>
			                     </select>
			                     <!-- 제주특별자치도 -->
			                     <select id="lo17" class="lo1">
			                        <option value="n" 
			             			<c:out value="${cri.lo17 == null? 'selected':'' }"/>>
			             			----</option>
			                        <option value="제주시"<c:out value="${cri.lo17 eq '제주시'? 'selected':''}"/>>제주시</option>
			                        <option value="서귀포시"<c:out value="${cri.lo17 eq '서귀포시'? 'selected':''}"/>>서귀포시</option>
			                     </select>	
                                </td>
                            </tr>
                            <tr id ="search3" style="display:none;">
                                <td>지역2</td>
                                <td colspan="3">
                                <select id="location3">
			                        <option>시/도</option>
			                        <option value="서울특별시">서울특별시</option><option value="부산광역시">부산광역시</option><option value="대구광역시">대구광역시</option><option value="인천광역시">인천광역시</option>
			                        <option value="광주광역시">광주광역시</option><option value="대전광역시">대전광역시</option><option value="울산광역시">울산광역시</option><option value="세종특별자치시">세종특별자치시</option>
			                        <option value="경기도">경기도</option><option value="강원도">강원도</option><option value="충청북도">충청북도</option><option value="충청남도">충청남도</option>
			                        <option value="전라북도">전라북도</option><option value="전라남도">전라남도</option><option value="경상북도">경상북도</option><option value="경상남도">경상남도</option>
			                        <option value="제주특별자치도">제주특별자치도</option>
			                     </select>
				                 <!-- 서울특별시 -->
			                     <select id="lo18" class="lo2">
			                        <option selected>-</option>
			                        <option value="강서구">강서구</option>
			                        <option value="양천구">양천구</option>
			                        <option value="구로구">구로구</option>
			                        <option value="은평구">은평구</option>
			                        <option value="서대문구">서대문구</option>
			                        <option value="마포구">마포구</option>
			                        <option value="영등포구">영등포구</option>
			                        <option value="동작구">동작구</option>
			                        <option value="관악구">관악구</option>
			                        <option value="금천구">금천구</option>
			                        <option value="도봉구">도봉구</option>
			                        <option value="강북구">강북구</option>
			                        <option value="노원구">노원구</option>
			                        <option value="성북구">성북구</option>
			                        <option value="중랑구">중랑구</option>
			                        <option value="종로구">종로구</option>
			                        <option value="중구">중구</option>
			                        <option value="동대문구">동대문구</option>
			                        <option value="성동구">성동구</option>
			                        <option value="용산구">용산구</option>
			                        <option value="서초구">서초구</option>
			                        <option value="강남구">강남구</option>
			                        <option value="광진구">광진구</option>
			                        <option value="송파구">송파구</option>
			                        <option value="강동구">강동구</option>
			                     </select>
			                     <!-- 부산광역시 -->
			                     <select id="lo19" class="lo2">
			                        <option selected>-</option>
			                        <option value="기장군">기장군</option>
			                        <option value="강서구">강서구</option>
			                        <option value="북구">북구</option>
			                        <option value="금정구">금정구</option>
			                        <option value="해운대구">해운대구</option>
			                        <option value="동래구">동래구</option>
			                        <option value="연제구">연제구</option>
			                        <option value="수영구">수영구</option>
			                        <option value="진구">진구</option>
			                        <option value="수영구">수영구</option>
			                        <option value="동구">동구</option>
			                        <option value="남구">남구</option>
			                        <option value="사상구">사상구</option>
			                        <option value="서구">서구</option>
			                        <option value="중구">중구</option>
			                        <option value="사하구">사하구</option>
			                        <option value="영도구">영도구</option>
			                     </select>
			                     <!-- 대구광역시 -->
			                     <select id="lo20" class="lo2">
			                        <option selected>-</option>
			                        <option value="북구">북구</option>
			                        <option value="서구">서구</option>
			                        <option value="중구">중구</option>
			                        <option value="동구">동구</option>
			                        <option value="수성구">수성구</option>
			                        <option value="남구">남구</option>
			                        <option value="달서구">달서구</option>
			                        <option value="달성군">달성군</option>
			                     </select>
			                     <!-- 인천광역시 -->
			                     <select id="lo21" class="lo2">
			                        <option selected>-</option>
			                        <option value="연수구">연수구</option>
			                        <option value="중구">중구</option>
			                        <option value="동구">동구</option>
			                        <option value="남구">남구</option>
			                        <option value="남동구">남동구</option>
			                        <option value="부평구">부평구</option>
			                        <option value="계양구">계양구</option>
			                        <option value="서구">서구</option>
			                        <option value="강화군">강화군</option>
			                        <option value="옹진군">옹진군</option>
			                     </select>
			                     <!-- 광주광역시 -->
			                     <select id="lo22" class="lo2">
			                        <option selected>-</option>
			                        <option value="광산구">광산구</option>
			                        <option value="동구">동구</option>
			                        <option value="서구">서구</option>
			                        <option value="남구">남구</option>
			                        <option value="북구">북구</option>
			                     </select>
			                     <!-- 대전광역시 -->
			                     <select id="lo23" class="lo2">
			                        <option selected>-</option>
			                        <option value="유성구">유성구</option>
			                        <option value="동구">동구</option>
			                        <option value="중구">중구</option>
			                        <option value="서구">서구</option>
			                        <option value="대덕구">대덕구</option>
			                     </select>
			                     <!-- 울산광역시 -->
			                     <select id="lo24" class="lo2">
			                        <option selected>-</option>
			                        <option value="울주군">울주군</option>
			                        <option value="중구">중구</option>
			                        <option value="남구">남구</option>
			                        <option value="동구">동구</option>
			                        <option value="북구">북구</option>
			                     </select>
			                     <!-- 세종특별자치시 -->
			                     <select id="lo25" class="lo2">
			                        <option selected>-</option>
			                        <option value="세종시">세종시</option>
			                     </select>
			                     <!-- 경기도 -->
			                     <select id="lo26" class="lo2">
			                        <option selected>-</option>
			                        <option value="수원시">수원시</option>
			                        <option value="성남시">성남시</option>
			                        <option value="안양시">안양시</option>
			                        <option value="안산시">안산시</option>
			                        <option value="용인시">용인시</option>
			                        <option value="광명시">광명시</option>
			                        <option value="평택시">평택시</option>
			                        <option value="과천시">과천시</option>
			                        <option value="오산시">오산시</option>
			                        <option value="시흥시">시흥시</option>
			                        <option value="군포시">군포시</option>
			                        <option value="의왕시">의왕시</option>
			                        <option value="하남시">하남시</option>
			                        <option value="이천시">이천시</option>
			                        <option value="안성시시">안성시</option>
			                        <option value="김포시">김포시</option>
			                        <option value="화성시">화성시</option>
			                        <option value="광주시">광주시</option>
			                        <option value="여주시">여주시</option>
			                        <option value="부천시">부천시</option>
			                        <option value="양평군">양평군</option>
			                        <option value="고양시">고양시</option>
			                        <option value="의정부시">의정부시</option>
			                        <option value="동두천시">동두천시</option>
			                        <option value="구리시">구리시</option>
			                        <option value="남양주시">남양주시</option>
			                        <option value="파주시">파주시</option>
			                        <option value="양주시">양주시</option>
			                        <option value="포천시">포천시</option>
			                        <option value="연천군">연천군</option>
			                        <option value="가평군">가평군</option>
			                     </select>
			                     <!-- 강원도 -->
			                     <select id="lo27" class="lo2">
			                        <option selected>-</option>
			                        <option value="춘천시">춘천시</option>
			                        <option value="원주시">원주시</option>
			                        <option value="강릉시">강릉시</option>
			                        <option value="동해시">동해시</option>
			                        <option value="태백시">태백시</option>
			                        <option value="속초시">속초시</option>
			                        <option value="삼척시">삼척시</option>
			                        <option value="홍천군">홍천군</option>
			                        <option value="횡성군">횡성군</option>
			                        <option value="영월군">영월군</option>
			                        <option value="평창군">평창군</option>
			                        <option value="정선군">정선군</option>
			                        <option value="철원군">철원군</option>
			                        <option value="화천군">화천군</option>
			                        <option value="양구군">양구군</option>
			                        <option value="인제군">인제군</option>
			                        <option value="고성군">고성군</option>
			                        <option value="양양군">양양군</option>
			                     </select>
			                     <!-- 충청북도 -->
			                     <select id="lo28" class="lo2">
			                        <option selected>-</option>
			                        <option value="청주시">청주시</option>
			                        <option value="충주시">충주시</option>
			                        <option value="제천시">제천시</option>
			                        <option value="보은군">보은군</option>
			                        <option value="옥천군">옥천군</option>
			                        <option value="영동군">영동군</option>
			                        <option value="진천군">진천군</option>
			                        <option value="괴산군">괴산군</option>
			                        <option value="음성군">음성군</option>
			                        <option value="단양군">단양군</option>
			                        <option value="증평군">증평군</option>
			                     </select>
			                     <!-- 충청남도 -->
			                     <select id="lo29" class="lo2">
			                        <option selected>-</option>
			                        <option value="천안시">천안시</option>
			                        <option value="공주시">공주시</option>
			                        <option value="보령시">보령시</option>
			                        <option value="아산시">아산시</option>
			                        <option value="서산시">서산시</option>
			                        <option value="논산시">논산시</option>
			                        <option value="계룡시">계룡시</option>
			                        <option value="당진시">당진시</option>
			                        <option value="금산군">금산군</option>
			                        <option value="부여군">부여군</option>
			                        <option value="서천군">서천군</option>
			                        <option value="청양군">청양군</option>
			                        <option value="홍성군">홍성군</option>
			                        <option value="예산군">예산군</option>
			                        <option value="태안군">태안군</option>
			                     </select>
			                     <!-- 전라북도 -->
			                     <select id="lo30" class="lo2">
			                        <option selected>-</option>
			                        <option value="전주시">전주시</option>
			                        <option value="군산시">군산시</option>
			                        <option value="익산시">익산시</option>
			                        <option value="정읍시">정읍시</option>
			                        <option value="남원시">남원시</option>
			                        <option value="김제시">김제시</option>
			                        <option value="완주군">완주군</option>
			                        <option value="진안군">진안군</option>
			                        <option value="무주군">무주군</option>
			                        <option value="장수군">장수군</option>
			                        <option value="임실군">임실군</option>
			                        <option value="순창군">순창군</option>
			                        <option value="고창군">고창군</option>
			                        <option value="부안군">부안군</option>
			                     </select>
			                     <!-- 전라남도 -->
			                     <select id="lo31" class="lo2">
			                        <option selected>-</option>
			                        <option value="목포시">목포시</option>
			                        <option value="여수시">여수시</option>
			                        <option value="순천시">순천시</option>
			                        <option value="나주시">나주시</option>
			                        <option value="광양시">광양시</option>
			                        <option value="담양군">담양군</option>
			                        <option value="곡성군">곡성군</option>
			                        <option value="구례군">구례군</option>
			                        <option value="고흥군">고흥군</option>
			                        <option value="보성군">보성군</option>
			                        <option value="화순군">화순군</option>
			                        <option value="장흥군">장흥군</option>
			                        <option value="강진군">강진군</option>
			                        <option value="해남군">해남군</option>
			                        <option value="영암군">영암군</option>
			                        <option value="무안군">무안군</option>
			                        <option value="함평군">함평군</option>
			                        <option value="영광군">영광군</option>
			                        <option value="장성군">장성군</option>
			                        <option value="완도군">완도군</option>
			                        <option value="진도군">진도군</option>
			                        <option value="신안군">신안군</option>
			                     </select>
			                     <!-- 경상북도 -->
			                     <select id="lo32" class="lo2">
			                        <option selected>-</option>
			                        <option value="포항시">포항시</option>
			                        <option value="경주시">경주시</option>
			                        <option value="김천시">김천시</option>
			                        <option value="안동시">안동시</option>
			                        <option value="구미시">구미시</option>
			                        <option value="영주시">영주시</option>
			                        <option value="영천시">영천시</option>
			                        <option value="상주시">상주시</option>
			                        <option value="문경시">문경시</option>
			                        <option value="경산시">경산시</option>
			                        <option value="군위군">군위군</option>
			                        <option value="의성군">의성군</option>
			                        <option value="청송군">청송군</option>
			                        <option value="영양군">영양군</option>
			                        <option value="영덕군">영덕군</option>
			                        <option value="청도군">청도군</option>
			                        <option value="고령군">고령군</option>
			                        <option value="성주군">성주군</option>
			                        <option value="칠곡군">칠곡군</option>
			                        <option value="예천군">예천군</option>
			                        <option value="봉화군">봉화군</option>
			                        <option value="울진군">울진군</option>
			                        <option value="울릉군">울릉군</option>
			                     </select>
			                     <!-- 경상남도 -->
			                     <select id="lo33" class="lo2">
			                        <option selected>-</option>
			                        <option value="창원시">창원시</option>
			                        <option value="진주시">진주시</option>
			                        <option value="통영시">통영시</option>
			                        <option value="사천시">사천시</option>
			                        <option value="김해시">김해시</option>
			                        <option value="밀양시">밀양시</option>
			                        <option value="거제시">거제시</option>
			                        <option value="양산시">양산시</option>
			                        <option value="의령군">의령군</option>
			                        <option value="함안군">함안군</option>
			                        <option value="창녕군">창녕군</option>
			                        <option value="고성군">고성군</option>
			                        <option value="남해군">남해군</option>
			                        <option value="하동군">하동군</option>
			                        <option value="산청군">산청군</option>
			                        <option value="함양군">함양군</option>
			                        <option value="거창군">거창군</option>
			                        <option value="합천군">합천군</option>
			                     </select>
			                     <!-- 제주특별자치도 -->
			                     <select id="lo34" class="lo2">
			                        <option selected>-</option>
			                        <option value="제주시">제주시</option>
			                        <option value="서귀포시">서귀포시</option>
			                     </select>                           
                                </td>
                            </tr>
                            <tr id ="search4" style="display:none;">
                                <td>학교</td>
                                <td colspan="3"><input style="height:30px;"type="text" name="college" class="textbox" id="college" tabindex="3" value="${cri.college}" required></td>
                            </tr>
                            <tr id ="search5" style="display:none;">
                                <td>시간당 수업료</td>
                                <td colspan="3">
                                <select id="str_tuit_fees" class="str_tuit_fees">
			                        <option value="0" selected>-</option>
			                        <option value="10000">￦10,000</option>
			                        <option value="20000">￦20,000</option>
			                        <option value="30000">￦30,000</option>
			                        <option value="40000">￦40,000</option>
			                        <option value="50000">￦50,000</option>
			                        <option value="60000">￦60,000</option>
			                        <option value="70000">￦70,000</option>
			                        <option value="80000">￦80,000</option>
			                        <option value="90000">￦90,000</option>
			                        <option value="100000">￦100,000</option>
			                        <option value="110000">￦110,000</option>
			                        <option value="120000">￦120,000</option>
			                        <option value="130000">￦130,000</option>
			                        <option value="140000">￦140,000</option>
			                        <option value="150000">￦150,000</option>
			                        <option value="160000">￦160,000</option>
			                        <option value="170000">￦170,000</option>
			                        <option value="180000">￦180,000</option>
			                        <option value="190000">￦190,000</option>
			                        <option value="200000">￦200,000</option>
			                     </select>원 ~
			                     <select id="end_tuit_fees" class="end_tuit_fees">
			                        <option value="0" selected>-</option>
			                     </select>원
                                </td>
                            </tr>
                            <tr id ="search6"style="display:none;">
                                <td>과외대상</td>
                                <td>
                                <select id="ext_obj" name="ext_obj">
				             		<option value="n" 
				             			<c:out value="${cri.ext_obj == null? 'selected':'' }"/>>
				             			----</option>
				            		<option value="초등학생"<c:out value="${cri.ext_obj eq '초등학생'? 'selected':''}"/>>초등학생</option>
				            		<option value="중학생"<c:out value="${cri.ext_obj eq '중학생'? 'selected':''}"/>>중학생</option>
				            		<option value="고등학생"<c:out value="${cri.ext_obj eq '고등학생'? 'selected':''}"/>>고등학생</option>
				          		</select>
                                </td>
                            	<td>성별</td>
                                <td>
                                	 무관<input type="radio" name="gender" class="textbox" tabindex="3" value="n" checked>
			                                                 남<input type="radio" name="gender" class="textbox" tabindex="3" value="male">
			                                                 여<input type="radio" name="gender" class="textbox" tabindex="3" value="female">
                                </td>
                            </tr>
                            <tr id ="search7" style="display:none;">
                                <td>과외형태</td>
                                <td>
                                <select id="ext_way" name="ext_way">
			             			<option value="n" 
			             			<c:out value="${cri.ext_way == null? 'selected':'' }"/>>
			             			----</option>
			            			<option value="기초다지기"<c:out value="${cri.ext_way eq '기초다지기'? 'selected':''}"/>>기초 다지기</option>
			            			<option value="족집계"<c:out value="${cri.ext_way eq '족집계'? 'selected':''}"/>>족집계</option>
			            			<option value="문제풀이"<c:out value="${cri.ext_way eq '문제풀이'? 'selected':''}"/>>문제풀이</option>
			            			<option value="포괄"<c:out value="${cri.ext_way eq '포괄'? 'selected':''}"/>>포괄</option>
			            			<option value="교과서"<c:out value="${cri.ext_way eq '교과서'? 'selected':''}"/>>교과서 중심</option>
			            			<option value="시험범위"<c:out value="${cri.ext_way eq '시험범위'? 'selected':''}"/>>시험 범위</option>
			            			<option value="혼합"<c:out value="${cri.ext_way eq '혼합'? 'selected':''}"/>>혼합</option>
			            		</select>
                                </td>
                            	<td>수업레벨</td>
                                <td>
                                <select id="class_lev" name="class_lev">
			            		 	<option value="n" 
			             			<c:out value="${cri.class_lev == null? 'selected':'' }"/>>
			             			----</option>
			             			<option value="상" <c:out value="${cri.class_lev eq '상'? 'selected':''}"/>>상</option>
			            			<option value="중"<c:out value="${cri.class_lev eq '중'? 'selected':''}"/>>중</option>
			            			<option value="하"<c:out value="${cri.class_lev eq '하'? 'selected':''}"/>>하</option>
			            		</select>
                                </td>
                            </tr>
                            <tr id ="search8" id="openyn" style="display:none;">
                            	<td>자격증 및 경력 여부</td>
                            	<td>          		
                            		<div class="onoffswitch">
					   					<input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="carrer">
					  					<label class="onoffswitch-label" for="carrer">
					      					<span class="onoffswitch-inner"></span>
					      					<span class="onoffswitch-switch"></span>
					   					</label>
									</div></td>
                            	<td>과외 경력 여부</td>
                            	<td>
                            		<div class="onoffswitch">
					   					<input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="ext_exp">
					  					<label class="onoffswitch-label" for="ext_exp">
					      					<span class="onoffswitch-inner"></span>
					      					<span class="onoffswitch-switch"></span>
					   					</label>
									</div>
                            	</td>
                            </tr>
                            <tr>
                            	<td colspan="4">
                            	 <!-- 검색 버튼 -->
						             <div id="search" style="position:relative; left:45%;float:left;">
						            	<button id = "SearchBtn" class="btn btn-warning width-100 mb-xs" role="button">검색</button>
						             </div>
						             <div class="widget-controls" style="position:relative; left:70%;float:left;">
			                            <a id = "close" style="display:none;" data-widgster="expand" title="Expand" href="#">상세검색닫기<i class="glyphicon glyphicon-chevron-up"></i></a>
			                            <a id = "open" style="display:block;" data-widgster="collapse" title="Collapse" href="#">상세검색열기<i class="glyphicon glyphicon-chevron-down"></i></a>
			                        </div>
                            	</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>                    
                </section>
  <!-- 과외 조회 -->
<section class="widget">
	<header>
		<h4 style="border-bottom:1px solid orange; font-size:30px; text-align:center;"></h4>
		<div class="widget-controls">
		</div>
	</header>
	<%
 		int a = 0;
		int b = 0;
 	%>
	<div>게시글 수 : ${listcount}</div>
	<div class="widget-body">
		<table id="ext" class="table">
				<tr>
					<th class="hidden-xs">NO.</th>
					<th>강사 명</th>
					<th>학력</th>
					<th class="hidden-xs">수업 가능 지역</th>
					<th class="hidden-xs">과목</th>
					<th class="hidden-xs">수업료/(1시간)</th>
					<th></th>
				</tr>
			<c:if test="${user_id eq null}">
			<c:forEach items="${list}" var="list"> 
				<tr id="row<%=a%>" style="display:none;">
					<td class="hidden-xs"><%=b%></td>
					<td ><a href="ApplicationClass?ext_id=${list.ext_id}&user_id=${list.user_id}"><img class="img-rounded" src="./resources/img/q.jpg"
						alt="" style="width:80px;"><br/>&nbsp;&nbsp;&nbsp;&nbsp;${list.user_name}</a></td>
					<td class="hidden-xs">
						<p class="no-margin">
							<small> 
								${list.college}
							</small>
						</p>
						<p>
							<small> 
								${list.college_dept}
							</small>
						</p>
					</td>
					<td class="hidden-xs text-semi-muted">${list.class_poss_area}</td>
					<td>
						<c:if test="${list.subject eq '01'}">
    						국어
						</c:if>
						<c:if test="${list.subject eq '02'}">
    						영어
						</c:if>
						<c:if test="${list.subject eq '03'}">
    						수학
						</c:if>
					</td>
					<td class="hidden-xs text-semi-muted">${list.tuit_fees}원/1시간</td>
					<td class="width-150"><a href="#" class="btn">자세히</a>	</td>
				</tr>
				<%
 					a++;
					b++;
 				%>
			</c:forEach>
			</c:if>
			<c:if test="${user_id eq null and !empty result}">
			<c:forEach items="${list}" var="list"> 
				<tr id="row<%=a%>" style="display:none;">
					<td class="hidden-xs"><%=b%></td>
					<td ><a href="ApplicationClass?ext_id=${list.ext_id}&user_id=${list.user_id}"><img class="img-rounded" src="displayFile?fileName=${list.prof_photo }"
						alt="" style="width:80px;"><br/>&nbsp;&nbsp;&nbsp;&nbsp;${list.user_name}</a></td>
					<td class="hidden-xs">
						<p class="no-margin">
							<small> 
								${list.college}
							</small>
						</p>
						<p>
							<small> 
								${list.college_dept}
							</small>
						</p>
					</td>
					<td class="hidden-xs text-semi-muted">${list.class_poss_area}</td>
					<td>
						<c:if test="${list.subject eq '01'}">
    						국어
						</c:if>
						<c:if test="${list.subject eq '02'}">
    						영어
						</c:if>
						<c:if test="${list.subject eq '03'}">
    						수학
						</c:if>
					</td>
					<td class="hidden-xs text-semi-muted">${list.tuit_fees}원/1시간</td>
					<td class="width-150"><a href="#" class="btn">자세히</a>	</td>
				</tr>
				<%
 					a++;
					b++;
 				%>
			</c:forEach>
			</c:if>
			<c:if test="${user_id ne ''}">
				<c:forEach items="${list}" var="list"> 
				<tr id="row<%=a%>" style="display:none;">
					<td class="hidden-xs"><%=b%></td>
					<td><a href="ApplicationClass?ext_id=${list.ext_id}&user_id=${list.user_id}"><img class="img-rounded" src="displayFile?fileName=${list.prof_photo }"
						alt="" style="width:80px;"><br/>&nbsp;&nbsp;&nbsp;&nbsp;${list.user_name}</a></td>
					<td class="hidden-xs">
						<p class="no-margin">
							<small> 
								${list.college}
							</small>
						</p>
						<p>
							<small> 
								${list.college_dept}
							</small>
						</p>
					</td>
					<td>${list.class_poss_area}</td>
					<td class="hidden-xs text-semi-muted">
						<c:if test="${list.subject eq '01'}">
    						국어
						</c:if>
						<c:if test="${list.subject eq '02'}">
    						영어
						</c:if>
						<c:if test="${list.subject eq '03'}">
    						수학
						</c:if>
					</td>
					<td class="hidden-xs text-semi-muted">${list.tuit_fees}원/1시간</td>
					<td class="width-150"><a href="#" class="btn">자세히</a>	</td>
				</tr>
				<%
 					a++;
					b++;
 				%>
			</c:forEach>
			</c:if>
			<c:if test="${user_id ne '' and !empty result}">
				<c:forEach items="${c}" var="list"> 
				<tr id="row<%=a%>" style="display:none;">
					<td class="hidden-xs"><%=b%></td>
					<td><a href="ApplicationClass?ext_id=${list.ext_id}&user_id=${list.user_id}"><img class="img-rounded" src="displayFile?fileName=${list.prof_photo }"
						alt="" style="width:80px;"><br/>&nbsp;&nbsp;&nbsp;&nbsp;${list.user_name}</a></td>
					<td class="hidden-xs">
						<p class="no-margin">
							<small> 
								${list.college}
							</small>
						</p>
						<p>
							<small> 
								${list.college_dept}
							</small>
						</p>
					</td>
					<td>${list.class_poss_area}</td>
					<td class="hidden-xs text-semi-muted">
						<c:if test="${list.subject eq '01'}">
    						국어
						</c:if>
						<c:if test="${list.subject eq '02'}">
    						영어
						</c:if>
						<c:if test="${list.subject eq '03'}">
    						수학
						</c:if>
					</td>
					<td class="hidden-xs text-semi-muted">${list.tuit_fees}원/1시간</td>
					<td class="width-150"><a href="#" class="btn">자세히</a>	</td>
				</tr>
				<%
 					a++;
					b++;
 				%>
			</c:forEach>
			</c:if>						
		</table>
	</div>
	<p id="dispMore" style="display:none"><button  type="button" class="btn btn-warning btn-block" onclick="listMore('${listcount}')" >+과외 더보기</button></p>	
</section>
</div>

    <hr class="soften1 copyhr">
    <div class="row-fluid copyright">
      <div class="span12">Copyright &copy; 2012. Greepit.com</div>
    </div>
    
	<!-- <div id="popup" class="Pstyle" style="background-color:white">
	<span class="b-close">X</span>
		<div class="content" style="height: auto; width: auto;">
			<span style="width:200px; color:#474646; font-size:20px;">로그인</span>
         	 <hr />
			 <label for="user_id">아이디</label>
             <input type="text" name="user_id" id="user_id" tabindex="3" required>
             <label for="user_pw">비밀번호</label>
             <input type="text" name="user_pw" id="user_pw" tabindex="3" required>
             <hr/>
             <input name="submit" class="btn btn-success" type="submit" id="user_login" tabindex="5" value="로그인">
  		</div>
 	</div>  -->
 	
 	<!-- 시간표 선택 -->
 	<div class="layer">
		<div class="bg"></div>
			<div id="layer2" class="pop-layer">
				<div class="pop-container">
					<div class="pop-conts">
					<!--content //-->
					<div id="timeTable" class="tableDiv">
		    		<div id="base">
		    			과외 시간<button id="check"></button><br /><br />
					    <div class="line">
					      <div class="null">&nbsp</div>	<div class="textalign tableRow">월</div><div class="textalign tableRow">화</div><div class="textalign tableRow">수</div><div class="textalign tableRow">목</div><div class="textalign tableRow">금</div><div class="textalign tableRow">토</div><div class="textalign tableRow">일</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">9</div>	<div id="a9" class="block">&nbsp</div><div id="b9" class="block">&nbsp</div><div id="c9" class="block">&nbsp</div><div id="d9" class="block">&nbsp</div><div id="e9" class="block">&nbsp</div><div id="f9" class="block">&nbsp</div><div id="g9" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">10</div>  <div id="a10" class="block">&nbsp</div><div id="b10" class="block">&nbsp</div><div id="c10" class="block">&nbsp</div><div id="d10" class="block">&nbsp</div><div id="e10" class="block">&nbsp</div><div id="f10" class="block">&nbsp</div><div id="g10" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">11</div>  <div id="a11" class="block">&nbsp</div><div id="b11" class="block">&nbsp</div><div id="c11" class="block">&nbsp</div><div id="d11" class="block">&nbsp</div><div id="e11" class="block">&nbsp</div><div id="f11" class="block">&nbsp</div><div id="g11" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">12</div>  <div id="a12" class="block">&nbsp</div><div id="b12" class="block">&nbsp</div><div id="c12" class="block">&nbsp</div><div id="d12" class="block">&nbsp</div><div id="e12" class="block">&nbsp</div><div id="f12" class="block">&nbsp</div><div id="g12" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">1</div>  <div id="a13" class="block">&nbsp</div><div id="b13" class="block">&nbsp</div><div id="c13" class="block">&nbsp</div><div id="d13" class="block">&nbsp</div><div id="e13" class="block">&nbsp</div><div id="f13" class="block">&nbsp</div><div id="g13" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">2</div>  <div id="a14" class="block">&nbsp</div><div id="b14" class="block">&nbsp</div><div id="c14" class="block">&nbsp</div><div id="d14" class="block">&nbsp</div><div id="e14" class="block">&nbsp</div><div id="f14" class="block">&nbsp</div><div id="g14" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">3</div>  <div id="a15" class="block">&nbsp</div><div id="b15" class="block">&nbsp</div><div id="c15" class="block">&nbsp</div><div id="d15" class="block">&nbsp</div><div id="e15" class="block">&nbsp</div><div id="f15" class="block">&nbsp</div><div id="g15" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">4</div>  <div id="a16" class="block">&nbsp</div><div id="b16" class="block">&nbsp</div><div id="c16" class="block">&nbsp</div><div id="d16" class="block">&nbsp</div><div id="e16" class="block">&nbsp</div><div id="f16" class="block">&nbsp</div><div id="g16" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">5</div>  <div id="a17" class="block">&nbsp</div><div id="b17" class="block">&nbsp</div><div id="c17" class="block">&nbsp</div><div id="d17" class="block">&nbsp</div><div id="e17" class="block">&nbsp</div><div id="f17" class="block">&nbsp</div><div id="g17" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">6</div>  <div id="a18" class="block">&nbsp</div><div id="b18" class="block">&nbsp</div><div id="c18" class="block">&nbsp</div><div id="d18" class="block">&nbsp</div><div id="e18" class="block">&nbsp</div><div id="f18" class="block">&nbsp</div><div id="g18" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">7</div>  <div id="a19" class="block">&nbsp</div><div id="b19" class="block">&nbsp</div><div id="c19" class="block">&nbsp</div><div id="d19" class="block">&nbsp</div><div id="e19" class="block">&nbsp</div><div id="f19" class="block">&nbsp</div><div id="g19" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">8</div>  <div id="a20" class="block">&nbsp</div><div id="b20" class="block">&nbsp</div><div id="c20" class="block">&nbsp</div><div id="d20" class="block">&nbsp</div><div id="e20" class="block">&nbsp</div><div id="f20" class="block">&nbsp</div><div id="g20" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">9</div>  <div id="a21" class="block">&nbsp</div><div id="b21" class="block">&nbsp</div><div id="c21" class="block">&nbsp</div><div id="d21" class="block">&nbsp</div><div id="e21" class="block">&nbsp</div><div id="f21" class="block">&nbsp</div><div id="g21" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">10</div>  <div id="a22" class="block">&nbsp</div><div id="b22" class="block">&nbsp</div><div id="c22" class="block">&nbsp</div><div id="d22" class="block">&nbsp</div><div id="e22" class="block">&nbsp</div><div id="f22" class="block">&nbsp</div><div id="g22" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">11</div>  <div id="a23" class="block">&nbsp</div><div id="b23" class="block">&nbsp</div><div id="c23" class="block">&nbsp</div><div id="d23" class="block">&nbsp</div><div id="e23" class="block">&nbsp</div><div id="f23" class="block">&nbsp</div><div id="g23" class="block">&nbsp</div>
					    </div>
					    <div class="line">
					      <div class="tableColumn">12</div>  <div id="a24" class="block">&nbsp</div><div id="b24" class="block">&nbsp</div><div id="c24" class="block">&nbsp</div><div id="d24" class="block">&nbsp</div><div id="e24" class="block">&nbsp</div><div id="f24" class="block">&nbsp</div><div id="g24" class="block">&nbsp</div>
					    </div>
	  				</div>
		    	</div>
 

						<div class="btn-r">
							<a href="#" class="cbtn">Close</a>
						</div>

					<!--// content-->
					</div>
				</div>
		</div>
	</div>
<!-- resources/bootstrap-->
<script src="./resources/bootstrap/vendor/jquery/dist/jquery.min.js"></script>

<!-- resources/css -->
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
$("#open").click(function(){
	document.getElementById("close").style.display="block";
	document.getElementById("open").style.display="none";
	for(var i = 1; i<10; i++){
		document.getElementById("search"+i).style.display="table-row";
	}
});
$("#close").click(function(){
	document.getElementById("close").style.display="none";
	document.getElementById("open").style.display="block";
	for(var i = 1; i<10; i++){
		document.getElementById("search"+i).style.display="none";
	}
});

//과외 게시물 더 보기	버튼
	$(document).ready(function(){
		var lastcount = 10;
		for(var s = 0; s<$("#ext tr").length; s++){
			if(s<10){
				document.getElementById("row"+s).style.display="table-row";
			}
		}
		if(24>10){
			//document.getElementById("dispMore").style.display='block';
			$("#dispMore").css("display","block");
		}
	});
	
	function listMore(totalCnt){

		var count = 0;
		for(var i = 0 ; i < totalCnt ; i++){
			if(document.getElementById("row"+i).style.display == 'table-row'){
				count++;
				
			}
		}
		var last = count+5;

		for(i=(count)+1; i<=totalCnt; i++){
			if(i<=last){
				document.getElementById("row"+i).style.display='table-row';
			}
			if(totalCnt <= last){
				document.getElementById("dispMore").style.display='none';
			}
		}
		
	};
//로그인
  $("#user_login").click(function(){
	  
	   var userdata = {
				user_id: $("#user_id").val(),
				user_pw: $("#user_pw").val(),
			};
	   if($("#user_id").val()=="")
		   alert("아이디를 입력해 주세요.");
	   else if($("#user_pw").val()=="")
		   alert("비밀번호를 입력해 주세요.");
	   else{
		   $.ajax({
			  type: "post",
			  url:"/Highlighter/login",
			  data:userdata,
			  success:function(data){
				  if(data == 0){
					 alert("아이디와 비밀번호를 확인해 주세요");
					$("#user_id").val('');
					$("#user_pw").val('');
				  }
				  else{
					  alert($("#user_id").val()+"님 환영합니다.");
					  $("#user_id").val('');
					  $("#user_pw").val('');
					  location.href="privateSearch";
				  }
			  },
			  error:function(data){
				  alert("DB연결은 제대로 되어 있습니까?");
			  }
		   });
	   }
   });
   
//로그아웃
$("#logout").click(function(){
	location.href = "logout";	
	window.alert("로그아웃 되었습니다.");
});  

//검색 
$("#SearchBtn").click(function(){

	var carrer = ($("#carrer:checked").val());
	var ext_exp = ($("#ext_exp:checked").val());
	
	var location1 = $("#selectLo1").val();
	var location2 = $("#selectLo2").val();

	$.ajax({
    	type:"POST",
    	url:"privateSearch",
    	async : false,
    	data:{
    		onoff :  $("#onoff option:selected").val(),
    		pg : $("#pg option:selected").val(),
    		subject : $("#subject option:selected").val(),
    		location1 :  location1,
    		location2 : location2,
    		lo17 :  $("#lo17 option:selected").val(),
    		college : $("#college").val(),
    		str_tuit_fees : $("#str_tuit_fees").val(),
    		end_tuit_fees : $("#end_tuit_fees").val(),
    		/* tuit_fees : $("#tuit_fees").val(), */
    	    ext_obj : $("#ext_obj").val(),
  /*   		ext_ext_y : $("#ext_exp_y").val(),
    		ext_exp_m : $("#ext_exp_m").val(), */
    		gender : $(":input:radio[name=gender]:checked").val(), 
    		ext_way : $("#ext_way").val(),
    		class_lev : $("#class_lev").val(),
    		carrer : carrer,
    		ext_exp : ext_exp
		},
    	
    	success:function(result){
    		location.href="privateSearch2";
    	},
    	error:function(result){
    		alert("등록된 과외가 없어서 검색이 되지 않습니다.!!");
    	}
	});
});

//수업 가능 지역
var locationValue1, locationValue2;
$(".lo1").hide();
$(".lo2").hide();
$("#location2").change(function(){
   locationValue1 = $(this).val();
   if(locationValue1 == "서울특별시"){
      $(".lo1").hide();
      $("#lo1").show();
   } else if(locationValue1 == "부산광역시"){
      $(".lo1").hide();
      $("#lo2").show();
   } else if(locationValue1 == "대구광역시"){
      $(".lo1").hide();
      $("#lo3").show();
   } else if(locationValue1 == "인천광역시"){
      $(".lo1").hide();
      $("#lo4").show();
   } else if(locationValue1 == "광주광역시"){
      $(".lo1").hide();
      $("#lo5").show();
   } else if(locationValue1 == "대전광역시"){
      $(".lo1").hide();
      $("#lo6").show();
   } else if(locationValue1 == "울산광역시"){
      $(".lo1").hide();
      $("#lo7").show();
   } else if(locationValue1 == "세종특별자치시"){
      $(".lo1").hide();
      $("#lo8").show();
   } else if(locationValue1 == "경기도"){
      $(".lo1").hide();
      $("#lo9").show();
   } else if(locationValue1 == "강원도"){
      $(".lo1").hide();
      $("#lo10").show();
   } else if(locationValue1 == "충청북도"){
      $(".lo1").hide();
      $("#lo11").show();
   } else if(locationValue1 == "충청남도"){
      $(".lo1").hide();
      $("#lo12").show();
   } else if(locationValue1 == "전라북도"){
      $(".lo1").hide();
      $("#lo13").show();
   } else if(locationValue1 == "전라남도"){
      $(".lo1").hide();
      $("#lo14").show();
   } else if(locationValue1 == "경상북도"){
      $(".lo1").hide();
      $("#lo15").show();
   } else if(locationValue1 == "경상남도"){
      $(".lo1").hide();
      $("#lo16").show();
   } else if(locationValue1 == "제주특별자치도"){
      $(".lo1").hide();
      $("#lo17").show();
   } else{
      $(".lo1").hide();
   }
});

$("#location3").change(function(){
   locationValue2 = $(this).val();
      
   if(locationValue2 == "서울특별시"){
      $(".lo2").hide();
      $("#lo18").show();
   } else if(locationValue2 == "부산광역시"){
      $(".lo2").hide();
      $("#lo19").show();
   } else if(locationValue2 == "대구광역시"){
      $(".lo2").hide();
      $("#lo20").show();
   } else if(locationValue2 == "인천광역시"){
      $(".lo2").hide();
      $("#lo21").show();
   } else if(locationValue2 == "광주광역시"){
      $(".lo2").hide();
      $("#lo22").show();
   } else if(locationValue2 == "대전광역시"){
      $(".lo2").hide();
      $("#lo23").show();
   } else if(locationValue2 == "울산광역시"){
      $(".lo2").hide();
      $("#lo24").show();
   } else if(locationValue2 == "세종특별자치시"){
      $(".lo2").hide();
      $("#lo25").show();
   } else if(locationValue2 == "경기도"){
      $(".lo2").hide();
      $("#lo26").show();
   } else if(locationValue2 == "강원도"){
      $(".lo2").hide();
      $("#lo27").show();
   } else if(locationValue2 == "충청북도"){
      $(".lo2").hide();
      $("#lo28").show();
   } else if(locationValue2 == "충청남도"){
      $(".lo2").hide();
      $("#lo29").show();
   } else if(locationValue2 == "전라북도"){
      $(".lo2").hide();
      $("#lo30").show();
   } else if(locationValue2 == "전라남도"){
      $(".lo2").hide();
      $("#lo31").show();
   } else if(locationValue2 == "경상북도"){
      $(".lo2").hide();
      $("#lo32").show();
   } else if(locationValue2 == "경상남도"){
      $(".lo2").hide();
      $("#lo33").show();
   } else if(locationValue2 == "제주특별자치도"){
      $(".lo2").hide();
      $("#lo34").show();
   } else{
      $(".lo2").hide();
   }
});

$(".lo1").change(function(){
   //alert(locationValue1 + $(this).val());
   $("#selectLo1").val(locationValue1 + $(this).val());
   // var addLo1 = "<input type='hidden' value='" + $(this).val() + "'>";
   // alert(addLo1);
   // $("addLo1").appendTo($(".insertMargin1"));
});

$(".lo2").change(function(){
   //alert(locationValue2 + $(this).val());
   $("#selectLo2").val(locationValue2 + $(this).val());
   // var addLo2 = "<input type='hidden' value='" + $(this).val() + "'>";
   // alert(addLo2);
   // $("addLo2").appendTo($(".insertMargin1"));
});

$("#locationSelect2").hide();
$("#addBtn").click(function(){
   $("#locationSelect2").show();
   $(this).hide();
});
$("#delBtn").click(function(){
   $("#locationSelect2").hide();
   $("#addBtn").show();
});

//시간표 팝업
function layer_open(el){
	var temp = $('#' + el);
	var bg = temp.prev().hasClass('bg');    //dimmed 레이어를 감지하기 위한 boolean 변수
	if(bg){
		$('.layer').fadeIn();   //'bg' 클래스가 존재하면 레이어가 나타나고 배경은 dimmed 된다.
	}else{
		temp.fadeIn();
	}
	// 화면의 중앙에 레이어를 띄운다.

	if (temp.outerHeight() < $(document).height() ) temp.css('margin-top', '-'+temp.outerHeight()/2+'px');
	else temp.css('top', '0px');
	if (temp.outerWidth() < $(document).width() ) temp.css('margin-left', '-'+temp.outerWidth()/2+'px');
	else temp.css('left', '0px');
	temp.find('a.cbtn').click(function(e){
		if(bg){
			$('.layer').fadeOut(); //'bg' 클래스가 존재하면 레이어를 사라지게 한다.
		}else{
			temp.fadeOut();
		}
		e.preventDefault();
	});
	
	$('.layer .bg').click(function(e){  //배경을 클릭하면 레이어를 사라지게 하는 이벤트 핸들러
		$('.layer').fadeOut();
		e.preventDefault();
	});
}    


//시간표
$('.block').click(function(){
	$(this).toggleClass('timeActive');
});
var timeArray = new Array();


$("#str_tuit_fees").change(function(){
	$("#end_tuit_fees").empty();

	var b = parseInt($("#str_tuit_fees").val());
	var a =  (200000-parseInt($("#str_tuit_fees").val()))/10000;
	
	for(var i = b; i<=200000; i+=10000){
		if(b == 0){
			$("#str_tuit_fees").val() = 0;
			$("#end_tuit_fees").val() = 0;
			break;
		}
		var k="";
		if(i<100000){
			i = i+"";
			k += "￦"+i.substr(0,2);
			k += ",000";
		}
		else{
			i = i+"";
			k += "￦"+i.substr(0,3);
			k += ",000";
		}
		$("#end_tuit_fees").append('<option value='+i+'>'+k+'</option>');
		i = Number(i);
	}
});
</script>
</body>
</html>