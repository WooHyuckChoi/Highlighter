<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>진단 평가(evaluation)</title>
<style type="text/css">
.my-box {
	border: 5px solid orange;
	background-color: ivory;
	width: 810px;
	color: black;
}
</style>
</head>
<body>
	<div id = "header">
		<img src="./resources/img/ev_logo2.png" width="820px" align="top" alt="">
	</div>
	<div style="float: right;">
		<h4>${user_name}님 안녕하세요!&nbsp;</h4>
	</div>
	<div>
		<br/><br/>
		<hr color="orange" width="810px">
		<h4>&nbsp; ※ 몇가지 진단평가를 실시하면 강사 검색을 하실 때 더욱 만족도 높은 검색 결과를 얻을 수 있습니다.</h4>
		<hr color="orange" width="810px">
		<h2>&nbsp;진단 평가</h2>
		<h5 style = "opacity:0.7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 진단평가는 한번만 실시 합니다.<br></h5>
		<h5 style = "opacity:0.7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 차후 수정이 가능합니다.<br></h5>
		<h5 style = "opacity:0.7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 원하는 항목이 없으면 체크 안하셔도 됩니다.</h5>
		<hr color="orange" width="810px">
	</div>
	<!-- 선택 박스 -->
	
	<form name="form" method="post" action="eva_finish">
		<div class="my-box">
			<p>
				&nbsp;&nbsp;1. 참고서 및 교재 필요 여부<br/>
				&nbsp;&nbsp;<input type="checkbox" name="book" value="1" onclick="doOpenCheck1(this);">나는 공책에 필기하는게 좋아요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="book" value="2" onclick="doOpenCheck1(this);">책을 구매하는 비용이 부담스러워요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="book" value="3" onclick="doOpenCheck1(this);">강의 화면 봤다 책 봤다하면 집중력이 떨어져요.<br>
			</p>
			<p>
				&nbsp;&nbsp;2. 외국인 강의<br/>
				&nbsp;&nbsp;<input type="checkbox" name="foreigner" value="1" onclick="doOpenCheck2(this);">I want to hear the lecture in English(영어 : 나는 강의를 영어로 듣고 싶어요)<br>
				&nbsp;&nbsp;<input type="checkbox" name="foreigner" value="2" onclick="doOpenCheck2(this);">私は講義を日本語で聞きたい&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(일본어 : 나는 강의를 일본어로 듣고 싶어요)<br>
				&nbsp;&nbsp;<input type="checkbox" name="foreigner" value="3" onclick="doOpenCheck2(this);">我要听的讲座中国&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(중국어 : 나는 강의를 중국어로 듣고 싶어요)<br>
			</p>
			<p>
				&nbsp;&nbsp;3. 본인이 생각했을 때 효율성이 높은 강의 스타일<br/>
				&nbsp;&nbsp;<input type="checkbox" name="style" value="1" onclick="doOpenCheck3(this);">수다스럽게 친구같은게 좋아요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="style" value="2" onclick="doOpenCheck3(this);">편안하고 진중한게 좋아요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="style" value="3" onclick="doOpenCheck3(this);">활기차고 즐거운게 좋아요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="style" value="4" onclick="doOpenCheck3(this);">철저하게 공부만 하는게 좋아요.<br>
			</p>
			<p>
				&nbsp;&nbsp;4. 원하는 강의 형태<br/>
				&nbsp;&nbsp;<input type="checkbox" name="level1" value="1" onclick="doOpenCheck4(this);">학교 수업이 너무 어렵고 따라가기 힘들어서 <strong>기초 강의</strong>가 필요해요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="level1" value="2" onclick="doOpenCheck4(this);">학교 수업이 어렵지만 조금은 이해가 되기 때문에 <strong>포괄적인 강의</strong>가 필요해요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="level1" value="3" onclick="doOpenCheck4(this);">학교 수업을 하면 전체적인 이해 하지만 <strong>교과서 중심</strong>의 강의가 필요해요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="level1" value="4" onclick="doOpenCheck4(this);">학교에서 남들 하는 만큼은 하기때문에 <strong>문제 풀이식 강의</strong>가 필요 해요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="level1" value="5" onclick="doOpenCheck4(this);">학교 수업이 이해가 쉽지만 더이상 올라가기는 힘들어서 <strong>쪽집계 강의</strong>가 필요해요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="level1" value="6" onclick="doOpenCheck4(this);">학교 수업이 쉬워 <strong>시험 대비용 강의</strong>가 필요해요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="level1" value="7" onclick="doOpenCheck4(this);">학교 수업이 너무 쉬워 <strong>선행 학습</strong>이 필요해요.<br>
			</p>
			<p>
				&nbsp;&nbsp;5. 원하는 강의 진도<br/>
				&nbsp;&nbsp;<input type="checkbox" name="student" value="1" onclick="doOpenCheck5(this);">초등학교 1학년
				<input type="checkbox" name="student" value="2" onclick="doOpenCheck5(this);">초등학교 2학년
				<input type="checkbox" name="student" value="3" onclick="doOpenCheck5(this);">초등학교 3학년<br/>
				&nbsp;&nbsp;<input type="checkbox" name="student" value="4" onclick="doOpenCheck5(this);">초등학교 4학년
				<input type="checkbox" name="student" value="5" onclick="doOpenCheck5(this);">초등학교 5학년
				<input type="checkbox" name="student" value="6" onclick="doOpenCheck5(this);">초등학교 6학년
				<br/><br/>
				&nbsp;&nbsp;<input type="checkbox" name="student" value="7" onclick="doOpenCheck5(this);">중학교 1학년
				<input type="checkbox" name="student" value="8" onclick="doOpenCheck5(this);">중학교 2학년
				<input type="checkbox" name="student" value="9" onclick="doOpenCheck5(this);">중학교 3학년
				<br/><br/>
				&nbsp;&nbsp;<input type="checkbox" name="student" value="10" onclick="doOpenCheck5(this);">고등학교 1학년
				<input type="checkbox" name="student" value="11" onclick="doOpenCheck5(this);">고등학교 2학년
				<input type="checkbox" name="student" value="12" onclick="doOpenCheck5(this);">고등학교 3학년
			</p>
			<p>
				&nbsp;&nbsp;6. 수화 강의<br/>
				&nbsp;&nbsp;<input type="checkbox" name="hand" value="1" onclick="doOpenCheck6(this);">나는 청각에 문제가 있어 수화강의를 듣고 싶어요.<br>
				&nbsp;&nbsp;<input type="checkbox" name="hand" value="2" onclick="doOpenCheck6(this);">괜찮아요.<br>
			</p>			
		</div>
		<br><br>
		<div>
		<input type="hidden" name="user_id" value="${id}" />
		&nbsp;&nbsp;<input type="submit" class="submit1" value="완료">
		<input type="reset" value="초기화">
		</div>
	</form>
	<!-- //선택 박스 -->
<script>
//한개만 선택되게 하는거
function doOpenCheck1(chk){
   	
	var obj = document.getElementsByName("book");
   	
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}

function doOpenCheck2(chk){
   	
	var obj = document.getElementsByName("foreigner");
   	
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}

function doOpenCheck3(chk){
   	
	var obj = document.getElementsByName("style");
   	
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}

function doOpenCheck4(chk){
   	
	var obj = document.getElementsByName("level1");
   	
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}

function doOpenCheck5(chk){
   	
	var obj = document.getElementsByName("student");
   	
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}

function doOpenCheck6(chk){
   	
	var obj = document.getElementsByName("hand");
   	
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}
//체크박스 한개만 체크되게는거 끝
</script>
</body>
</html>