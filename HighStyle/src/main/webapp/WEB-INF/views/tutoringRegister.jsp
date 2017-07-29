<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<title>Highlighter</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="./resources/css/bootstrap.css" rel="stylesheet">
<link href="./resources/css/bootstrap-responsive.css" rel="stylesheet">
<link href="./resources/css/docs.css" rel="stylesheet">
<link href="./resources/css/prettyPhoto.css" rel="stylesheet" type="text/css">
<link href="./resources/js/google-code-prettify/prettify.css" rel="stylesheet">
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
<div class="container">
  <div class="row-fluid">
    <div class="span12">
      <div class="page-header" style="border-bottom:1px solid #DEDDDD;">
        <div class="row-fluid">
          <div class="span12">
            <h1 style="color:#4C4B4A;">과외 등록</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- 
  <div class="row-fluid blog">
    <div class="span8">
      <article class="blog-post" > 
        <div class="clearfix" ></div>
        <form role="form" id="comment_form" style="background:white" method="post">
          <div class="con_fil">
            <label for="user_id">아이디</label>
            <input type="text" name="user_id" id="user_id" tabindex="1" required>
            <input type="hidden" id="check_yn" value="n"/>
            <input type="button" name="check_id" id="check_id" value="중복확인">
          </div>
          <div class="con_fil">
            <label for="user_pw">비밀번호</label>
            <input type="text" name="user_pw" id="user_pw" class="textbox" tabindex="2" required>
          </div>
          <div class="con_fil">
            <label for="user_name">이름</label>
            <input type="text" name="user_name" id="user_name" class="textbox" tabindex="3" required>
          </div>
          <div class="con_fil">
            <label for="user_email">이메일</label>
            <input type="email" name="user_email" id="user_email" class="textbox" tabindex="3" placeholder="example@aaa.com" required>
          </div>
          <div class="con_fil">
                                남<input type="radio" name="gender" id="gender" class="textbox" tabindex="3" value="male" checked="checked">
                                여<input type="radio" name="gender" id="gender" class="textbox" tabindex="3" value="female">
          </div>
          <div class="con_fil">
            <label for="birth_date">생년월일</label>
            <input type="date" name="birth_date" id="birth_date" class="textbox" tabindex="3" required>
          </div>
           <div class="con_fil">
            <label for="address">주소</label>
            <input type="text" name="address" id="address" class="textbox" tabindex="3" required>
          </div>
           <div class="con_fil">
            <label for="phone">휴대폰</label>
            <input type="text" name="phone" id="phone" class="textbox" tabindex="3" required>
          </div>
          <div class="con_fil">
            <label for="prof_photo">프로필 사진</label>
            <input type="file" name="prof_photo" id="prof_photo" class="textbox" tabindex="3">
          </div>
           <div class="con_fil">
            <label for="par_id">부모아이디</label>
            <input type="text" name="par_id" id="par_id" class="textbox" tabindex="3" >
          </div>
           <div class="con_fil">
            <label for="user_grade">회원등급</label>
            <select name="user_grade">
            	<option value="teacher">강사</option>
            	<option value="student" selected="selected">학생</option>
            	<option value="parent">학부모</option>
            </select>
          </div>
          <div class="con_fil">
            <input name="submit" class="btn btn-success" type="submit" id="submit" tabindex="5" value="가입하기">
          </div>
        </form>
      </article>
    </div>
    <div class="span4 side_bar">
      
    </div>
  </div>
   -->
   <div>
	   	<div id="step1" class="step">
	   		STEP1
	   	</div>
	   	
	   	<div id="step2">
	   		STEP2
	   	</div>
		<div id="insertArea1" class="insertArea">
		   	<div id="step1Form">
		   		<div class="insertMargin1 paddingTop">
		   			<input id="selectLo1" type="hidden" name="selectLo1" />
			   		<input id="selectLo2" type="hidden" name="selectLo2" />
		   			온/오프라인 지정<br />
		   			<input id="online" class="onoffStatus" type="radio" name="location" value="online" checked />온라인
		   			<input id="offline" class="onoffStatus" type="radio" name="location" value="offline" />오프라인
		   			<input id="onoff" type="hidden" value="online" />
		   			
		   		</div>
		   		<div class="locationView">	
			   		<div id="tutoringLocation" class="insertMargin1 banner">수업가능지역</div>
			   		<div id="locationSelect1" class="insertMargin2">가능 지역1
			   			<select id="location2">
			   				<option>시/도</option>
			   				<option value="서울특별시">서울특별시</option><option value="부산광역시">부산광역시</option><option value="대구광역시">대구광역시</option><option value="인천광역시">인천광역시</option>
			   				<option value="광주광역시">광주광역시</option><option value="대전광역시">대전광역시</option><option value="울산광역시">울산광역시</option><option value="세종특별자치시">세종특별자치시</option>
			   				<option value="경기도">경기도</option><option value="강원도">강원도</option><option value="충청북도">충청북도</option><option value="충청남도">충청남도</option>
			   				<option value="전라북도">전라북도</option><option value="전라남도">전라남도</option><option value="경상북도">경상북도</option><option value="경상남도">경상남도</option>
			   				<option value="제주특별자치도">제주특별자치도</option>
			   			</select>
			   						   			
			   			<!-- 예시 
			   			<select id="lo" class="lo">
			   				<option value="">
			   				
			   			</select>
			   			-->
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
			   				<option value="안성시">안성시</option>
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
			   				<option selected>-</option>
			   				<option value="제주시">제주시</option>
			   				<option value="서귀포시">서귀포시</option>
			   			</select>
			   			<img id="addBtn" src="./resources/img/add-square-button.png">
			   		</div>
			   		



			   		<div id="locationSelect2" class="insertMargin2">가능 지역2
			   			<select id="location3">
			   				<option>시/도</option>
			   				<option value="서울특별시">서울특별시</option><option value="부산광역시">부산광역시</option><option value="대구광역시">대구광역시</option><option value="인천광역시">인천광역시</option>
			   				<option value="광주광역시">광주광역시</option><option value="대전광역시">대전광역시</option><option value="울산광역시">울산광역시</option><option value="세종특별자치시">세종특별자치시</option>
			   				<option value="경기도">경기도</option><option value="강원도">강원도</option><option value="충청북도">충청북도</option><option value="충청남도">충청남도</option>
			   				<option value="전라북도">전라북도</option><option value="전라남도">전라남도</option><option value="경상북도">경상북도</option><option value="경상남도">경상남도</option>
			   				<option value="제주특별자치도">제주특별자치도</option>
			   			</select>
			   						   			
			   			<!-- 예시 
			   			<select id="lo" class="lo">
			   				<option value="">
			   				
			   			</select>
			   			-->
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
			   			<img id="delBtn" src="./resources/img/close-square-button.png">
			   		</div>
		   		</div>
		   		
		   		<div class="insertMargin1 insertDiv">
		   			과외 대상
		   		</div>
		   		<div class="insertForm">
		   			<select id="tutor_grade">
		   				<option>선택</option>
		   				<option value="초등학생">초등학생</option>
		   				<option value="중학생">중학생</option>
		   				<option value="고등학생">고등학생</option>
		   			</select> 
		   		</div>
		   		<div class="insertMargin1">
		   			과외 그룹여부<br />
		   			<input id="single" class="groupStaus" type="radio" name="groupLimit" value="single" checked />개인
		   			<input id="group" class="groupStaus" type="radio" name="groupLimit" value="group" />그룹
		   			<input id="groupStaus" type="hidden" />
		   		</div>
		   		<div class="memberLimit">
		   			<div class="insertMargin1 insertDiv">
			   			모집 인원수
			   		</div>
		   			<div class="insertForm">
			   			<select id="memberLimit">
			   				<option>선택</option>
			   				<option value="2">2인</option>
			   				<option value="3">3인</option>
			   				<option value="4">4인</option>
			   				<option value="5">5인</option>
		   				</select>
		   				<input id="member" type="hidden" value="1"/>
	   				</div>
	   			</div>
   				<!-- 
	   				<input id="member" type="text" name="member">명
	   			 -->
	   			
		   		
		   		<div class="insertMargin1 insertDiv">
		   			수업 레벨
		   		</div>
		   		<div class="insertForm">
		   			<select id="tutorLevel">
		   				<option>선택</option>
		   				<option value="상">상</option>
		   				<option value="중">중</option>
		   				<option value="하">하</option>
		   			</select>
		   		</div>
		   		<div class="insertMargin1 insertDiv">
		   			수업 방식
		   		</div>
		   		<div class="insertForm">
		   			<select id="tutorStyle">
		   				<option>선택</option>
		   				<option value="기초다지기">기초다지기</option>
		   				<option value="쪽집게풀이">쪽집게풀이
		   				<option value="문제풀이">문제풀이
		   				<option value="교과서중심">교과서중심
		   			</select>
		   		</div>
		   		
		   		<div id="houlyWage" class="insertMargin1 insertDiv">시간당 수업료</div>
		   		<div id="houlyWageInput" class="insertForm"><input id="houlyWageMoney" type="text" name="expense" placeholder="최소 입력 단위:10,000" />원<br />수업료 금액 안에는 서비스 이용 수수료가 포함되어 있습니다.</div>

		   		<div id="nextBtn" class="button">다음</div>
		   	</div>
	    </div>
	    <div id="insertArea2" class="insertArea">
	    	<div id="step2Form">
	    		<div class="subject paddingTop">
		    		<div class="insertMargin1 insertDiv">
			    		과목
			    	</div>
			    	<div class="insertForm">
			    		<select id="subjectName">
			    			<option>과목</option>
			    			<option value="국어">국어</option>
			    			<option value="영어">영어</option>
			    			<option value="수학">수학</option>
			    		</select>
			    	</div>
			    </div>
			    <!-- 
			    <div>
			    	<div class="insertMargin1 insertDiv">
			    		과외기간 기간
			    	</div>
			    	<div class="insertForm">
			    		<input id="period" type="text">개월
			    	</div>
			    </div>
			     -->
		    	<div id="timeTable" class="tableDiv">
		    		<div id="base">
		    			과외 시간<br /><br />
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
		    	<div class="tableDiv">
		    		<div class="insertMargin1 insertDiv">강의소개</div>
		    		<div class="insertMargin1 insertDiv">
		    			<textarea id="textArea" cols="1000" rows="10"></textarea>
		    		</div>
		    	</div>
		    	<div id="beforeBtn" class="button">이전</div>
			    <div id="submitBtn" class="button">등록</div>
		    </div>
	    </div>
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
	$(document).ready(function(){
		
		var str="";	
		var arr = new Array();
    	var startArr = new Array();
    	var endArr = new Array();
    	var arr1 = new Array();
    	var arr2 = new Array();
    	var arr3 = new Array();
    	var arr4 = new Array();
    	var arr5 = new Array();
    	var arr6 = new Array();
    	var arr7 = new Array();
    	
	    $("#nextBtn").click(function(){
	    	$("#insertArea1").hide();
	    	$("#insertArea2").show();
	    	$("#step1").removeClass("step");
	    	$("#step2").addClass("step");
	    });
	    $("#beforeBtn").click(function(){
	    	$("#insertArea2").hide();
	    	$("#insertArea1").show();
	    	$("#step2").removeClass("step");
	    	$("#step1").addClass("step");
	    });
	    
	    var location;
	    $(".locationView").hide();
	    $(".onoffStatus").click(function(){
	    	location = $(":input:radio[name=location]:checked").val();
	    	$("#onoff").val(location);
		    if(location == "online"){
		    	$(".locationView").hide();
		    } else {
		    	$(".locationView").show();
		    }
	    });
	    
	    $(".memberLimit").hide();
	    $(".groupStaus").click(function(){
	    	var memberLimit = $(":input:radio[name=groupLimit]:checked").val();
	    	$("#groupStaus").val(memberLimit);
	    	if(memberLimit == "single"){
		    	$(".memberLimit").hide();
		    } else {
		    	$(".memberLimit").show();
		    }
	    });
	    
	    $("#memberLimit").change(function(){
	    	var member = $(this).val();
	    	$("#member").val(member);
	    	
	    });
	    
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
	    	alert(locationValue1 + $(this).val());
	    	$("#selectLo1").val(locationValue1 + "/" + $(this).val());
	    	// var addLo1 = "<input type='hidden' value='" + $(this).val() + "'>";
	    	// alert(addLo1);
	    	// $("addLo1").appendTo($(".insertMargin1"));
	    });
	    
	    $(".lo2").change(function(){
	    	alert(locationValue2 + $(this).val());
	    	$("#selectLo2").val(locationValue2 + "/" + $(this).val());
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
	    
	    
		
	    $('.block').click(function(){
	    	$(this).toggleClass('timeActive');
	    });
	    var timeArray = new Array();
	    
	    
	    $("#check").click(function(){
	    	for(var j=97; j<104; j++){
		    	for(var i=9; i<25; i++){
		    		// id = $("#a" + i).is(".timeActive").attr('id');
		    		var nowBlock = $("#" + String.fromCharCode(j) + i);
		    		var selectTime = nowBlock.is(".timeActive");
		    		if(selectTime){
		    			var selectTimeId = nowBlock.attr('id');
		    			var day = selectTimeId.substr(0,1);
		    			var dayMod;
		    			
		    			if(day == "a"){
		    				dayMod = "월";
		    			} else if(day == "b"){
		    				dayMod = "화";
		    			} else if(day == "c"){
		    				dayMod = "수";
		    			} else if(day == "d"){
		    				dayMod = "목";
		    			} else if(day == "e"){
		    				dayMod = "금";
		    			} else if(day == "f"){
		    				dayMod = "토";
		    			} else if(day == "g"){
		    				dayMod = "일";
		    			}
		    			var time = selectTimeId.substr(1);
		    			if(time == "9"){
		    				time = "09";
		    			}
		    			str += dayMod + time + "/";
		    			
		    			
		    		}
		    	}
	    	}
	    	str = str.slice(0, -1);
	    	console.log(str);
	    });
	    


	    $("#submitBtn").click(function(){
	    	
	    	for(var j=97; j<104; j++){
		    	for(var i=9; i<25; i++){
		    		// id = $("#a" + i).is(".timeActive").attr('id');
		    		var nowBlock = $("#" + String.fromCharCode(j) + i);
		    		var selectTime = nowBlock.is(".timeActive");
		    		if(selectTime){
		    			var selectTimeId = nowBlock.attr('id');
		    			var day = selectTimeId.substr(0,1);
		    			var dayMod;
		    			
		    			if(day == "a"){
		    				dayMod = "월";
		    			} else if(day == "b"){
		    				dayMod = "화";
		    			} else if(day == "c"){
		    				dayMod = "수";
		    			} else if(day == "d"){
		    				dayMod = "목";
		    			} else if(day == "e"){
		    				dayMod = "금";
		    			} else if(day == "f"){
		    				dayMod = "토";
		    			} else if(day == "g"){
		    				dayMod = "일";
		    			}
		    			var time = selectTimeId.substr(1);
		    			if(time == "9"){
		    				time = "09";
		    			}
		    			str += dayMod + time + "/";
		    			
		    			
		    		}
		    	}
	    	}
	    	str = str.slice(0, -1);
	    	console.log(str);
	    	
	    	arr = str.split('/');
	    	console.log(arr.length);
	    	for(var i=0; i<arr.length; i++){
	    		if(arr[i].substr(0,1) == "월"){
	    			arr1.push(arr[i]);
	    		}
	    		else if(arr[i].substr(0,1) == "화"){
	    			arr2.push(arr[i]);
	    		}
	    		else if(arr[i].substr(0,1) == "수"){
	    			arr3.push(arr[i]);
	    		}
	    		else if(arr[i].substr(0,1) == "목"){
	    			arr4.push(arr[i]);
	    		}
	    		else if(arr[i].substr(0,1) == "금"){
	    			arr5.push(arr[i]);
	    		}
	    		else if(arr[i].substr(0,1) == "토"){
	    			arr6.push(arr[i]);
	    		}
	    		else if(arr[i].substr(0,1) == "일"){
	    			arr7.push(arr[i]);
	    		}
	    	}
	    	


	    	
	    	if(0 < (arr1.length)){ // arr1의 길이를 확인 (0보다 클 경우 배열이 empty가 아님을 의미)
	    		startArr.push(arr1[0]); // 인덱스0 값은 항상 시작값
	    	  for(var i=0; i<arr1.length; i++){
	    	    if(i != arr1.length-1){
	    				    		if(Number(arr1[i].substr(1,3))+1 != arr1[i+1].substr(1,3)){
	    				    			startArr.push(arr1[i+1]);
	    				    			endArr.push("월" + (Number(arr1[i].substr(1,3))+1));
	    				    			
	    				    		}
	    			    		}
	    	  }
	    	  endArr.push("월" + (Number(arr1[(arr1.length-1)].substr(1,3))+1));
	    	}
	    	
	    	
	    	if(0 < (arr2.length)){ // arr1의 길이를 확인 (0보다 클 경우 배열이 empty가 아님을 의미)
	    		startArr.push(arr2[0]); // 인덱스0 값은 항상 시작값
	    	  for(var i=0; i<arr2.length; i++){
	    	    if(i != arr2.length-1){
	    				    		if(Number(arr2[i].substr(1,3))+1 != arr2[i+1].substr(1,3)){
	    				    			startArr.push(arr2[i+1]);
	    				    			endArr.push("화" + (Number(arr2[i].substr(1,3))+1));
	    				    		}
	    			    		}
	    	  }
	    	  endArr.push("화" + (Number(arr2[(arr2.length-1)].substr(1,3))+1));
	    	}
	    	
	    	if(0 < (arr3.length)){ // arr1의 길이를 확인 (0보다 클 경우 배열이 empty가 아님을 의미)
	    		startArr.push(arr3[0]); // 인덱스0 값은 항상 시작값
	    	  for(var i=0; i<arr3.length; i++){
	    	    if(i != arr3.length-1){
	    				    		if(Number(arr3[i].substr(1,3))+1 != arr3[i+1].substr(1,3)){
	    				    			startArr.push(arr3[i+1]);
	    				    			endArr.push("수" + (Number(arr3[i].substr(1,3))+1));
	    				    		}
	    			    		}
	    	  }
	    	  endArr.push("수" + (Number(arr3[(arr3.length-1)].substr(1,3))+1));
	    	}
	    	
	    	if(0 < (arr4.length)){ // arr1의 길이를 확인 (0보다 클 경우 배열이 empty가 아님을 의미)
	    		startArr.push(arr4[0]); // 인덱스0 값은 항상 시작값
	    	  for(var i=0; i<arr4.length; i++){
	    	    if(i != arr4.length-1){
	    				    		if(Number(arr4[i].substr(1,3))+1 != arr4[i+1].substr(1,3)){
	    				    			startArr.push(arr4[i+1]);
	    				    			endArr.push("목" + (Number(arr4[i].substr(1,3))+1));
	    				    		}
	    			    		}
	    	  }
	    	  endArr.push("목" + (Number(arr4[(arr4.length-1)].substr(1,3))+1));
	    	}
	    	
	    	if(0 < (arr5.length)){ // arr1의 길이를 확인 (0보다 클 경우 배열이 empty가 아님을 의미)
	    		startArr.push(arr5[0]); // 인덱스0 값은 항상 시작값
	    	  for(var i=0; i<arr5.length; i++){
	    	    if(i != arr5.length-1){
	    				    		if(Number(arr5[i].substr(1,3))+1 != arr5[i+1].substr(1,3)){
	    				    			startArr.push(arr5[i+1]);
	    				    			endArr.push("금" + (Number(arr5[i].substr(1,3))+1));
	    				    		}
	    			    		}
	    	  }
	    	  endArr.push("금" + (Number(arr5[(arr5.length-1)].substr(1,3))+1));
	    	}
	    	
	    	if(0 < (arr6.length)){ // arr1의 길이를 확인 (0보다 클 경우 배열이 empty가 아님을 의미)
	    		startArr.push(arr6[0]); // 인덱스0 값은 항상 시작값
	    	  for(var i=0; i<arr6.length; i++){
	    	    if(i != arr6.length-1){
	    				    		if(Number(arr6[i].substr(1,3))+1 != arr6[i+1].substr(1,3)){
	    				    			startArr.push(arr6[i+1]);
	    				    			endArr.push("토" + (Number(arr6[i].substr(1,3))+1));
	    				    		}
	    			    		}
	    	  }
	    	  endArr.push("토" + (Number(arr6[(arr6.length-1)].substr(1,3))+1));
	    	}
	    	
	    	if(0 < (arr7.length)){ // arr1의 길이를 확인 (0보다 클 경우 배열이 empty가 아님을 의미)
	    		startArr.push(arr7[0]); // 인덱스0 값은 항상 시작값
	    	  for(var i=0; i<arr7.length; i++){
	    	    if(i != arr7.length-1){
	    				    		if(Number(arr7[i].substr(1,3))+1 != arr7[i+1].substr(1,3)){
	    				    			startArr.push(arr7[i+1]);
	    				    			endArr.push("일" + (Number(arr7[i].substr(1,3))+1));
	    				    		}
	    			    		}
	    	  }
	    	  endArr.push("일" + (Number(arr7[(arr7.length-1)].substr(1,3))+1));
	    	}
	    	

	    	console.log("여기가 시작부분");
	    	for(var i=0; i<startArr.length; i++){
	    		console.log(startArr[i]);
	    	}
	    	console.log("여기가 종료부분");
	    	for(var i=0; i<endArr.length; i++){
	    		console.log(endArr[i]);
	    	}

			var location1 = $("#selectLo1").val();
			var location2 = $("#selectLo2").val();
			var onoff = $("#onoff").val(); //온오프라인여부
			if(onoff == "offline"){
				onoff = "0";
			}else if(onoff == 'online'){
				onoff = "1";
			}else{
				onoff = "2";
			}

			var memberLimit = $("#member").val(); // 모집시 인원수
			var subjectName = $("#subjectName").val(); // 과목
			if(subjectName == "국어"){
				subjectName = "01";
			}else if(subjectName == "영어"){
				subjectName = "02";
			}else if(subjectName == "수학"){
				subjectName = "03";
			}else{
				subjectName = "00";
			}
			var TutoringCode = onoff + memberLimit + subjectName;   
			
			
			var class_poss_area;
			if(location2 != ""){
				class_poss_area = location1 + "," + location2;
			}else{
				class_poss_area = location1;
			}
			
			var arrlength = startArr.length;
			var ext_obj = $("#tutor_grade").val(); // O
			var groupStaus = $("#groupStaus").val(); // 과외그룹여부
			var class_lev = $("#tutorLevel").val();
			var ext_way = $("#tutorStyle").val(); // O
			var tuit_fees = $("#houlyWageMoney").val(); // O
			var intro_class = $("#textArea").val();
	    	$.ajax({
		    	type:"POST",
		    	url:"tutoringRegister",
		    	async : false,
		    	data:{
	    			onoff : onoff, //
	    			class_poss_area : class_poss_area, // O
	    			ext_obj : ext_obj, // O
	    			groupStaus : groupStaus, // 과외그룹여부
	    			memberLimit : memberLimit, //
	    			class_lev : class_lev, // O
	    			ext_way : ext_way, // O
	    			tuit_fees : tuit_fees, // O
	    			// bank : $("#bank").val(),
	    			// bank_ac_num : $("#bankNumber").val(),
	    			subjectName : subjectName, // O
	    			intro_class : intro_class,
	    			str : str,
	    			startArr : JSON.stringify(startArr),
	    			endArr : JSON.stringify(endArr),
	    			//period : $("#period").val(), // 아직 종료날짜지정불가
	    			arrlength : arrlength,
	    			TutoringCode : TutoringCode // O
	    		},
		    	
		    	success:function(){
		    		alert("과외 등록이 완료 되었습니다.");
					window.location.href = "/Highlighter";
		    	},
		    	error:function(){
		    		alert("에러");
		    	}
	    	});
			
	    });
	    
	});
</script>
</body>
</html>