<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>과외 검색 상세조건 등록 팝업</title>
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
		<h4>${user_name}강사님 안녕하세요!&nbsp;</h4>
	</div>
	<div>
		<br/><br/>
		<hr color="orange" width="810px">
		<h4>&nbsp; ※ 몇가지 조건을 추가하면 학생이 과외검색을 할 때 강사님이 목록에서 보다 우선순위가 올라 갈 수 있습니다.</h4>
		<hr color="orange" width="810px">
		<h2>&nbsp;진단 평가</h2>
		<h5 style = "opacity:0.7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 과외 등록 할 때 한번만 실시 합니다.<br></h5>
		<h5 style = "opacity:0.7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 참여를 안하셔도 우선순위가 낮아 질 수도 있지 검색은 다 됩니다.</h5>
		<hr color="orange" width="810px">
	</div>
	<!-- 선택 박스 -->
	
	<form name="form" method="post" action="eva_teacher_finish">
		<div class="my-box">
			<p>
				&nbsp;&nbsp;1. 참고서 및 교재 필요 여부<br/>
				&nbsp;&nbsp;<input type="radio" name="book" value="1" onclick="doOpenCheck1(this);">따로 교재를 지정한게 없어 공책에 필기하게 합니다.<br>
				&nbsp;&nbsp;<input type="radio" name="book" value="2" onclick="doOpenCheck1(this);">교재나 참고서를 따로 구매하기 부담스럽습니다.<br>
				&nbsp;&nbsp;<input type="radio" name="book" value="3" onclick="doOpenCheck1(this);">강의 화면만 보고 강의하고 싶습니다.<br>
				&nbsp;&nbsp;<input type="radio" name="book" value="0" onclick="doOpenCheck1(this);">해당사항 없음.<br>
			</p>
			<p>
				&nbsp;&nbsp;2. 강의 가능한/하는 언어<br/>
				&nbsp;&nbsp;<input type="radio" name="foreigner" value="1" onclick="doOpenCheck2(this);">I will lecture in English.&nbsp;&nbsp;&nbsp;(영어 : 나는 영어로 강의 하겠습니다 / 할 수 있습니다.)<br>
				&nbsp;&nbsp;<input type="radio" name="foreigner" value="2" onclick="doOpenCheck2(this);">私は日本語で講義します.&nbsp;(일본어 : 나는 일본어로 강의 하겠습니다 / 할 수 있습니다.)<br>
				&nbsp;&nbsp;<input type="radio" name="foreigner" value="3" onclick="doOpenCheck2(this);">我将在中国讲学.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(중국어 : 나는 중국어로 강의 하겠습니다 / 할 수 있습니다.)<br>
				&nbsp;&nbsp;<input type="radio" name="foreigner" value="0" onclick="doOpenCheck1(this);">해당사항 없음.<br>
			</p>
			<p>
				&nbsp;&nbsp;3. 본인이 생각했을 때 효율성이 높은 강의 방식<br/>
				&nbsp;&nbsp;<input type="radio" name="style" value="1" onclick="doOpenCheck3(this);">수다스럽게 친구같은게 스타일<br>
				&nbsp;&nbsp;<input type="radio" name="style" value="2" onclick="doOpenCheck3(this);">편안하고 진중한 스타일<br>
				&nbsp;&nbsp;<input type="radio" name="style" value="3" onclick="doOpenCheck3(this);">활기차고 즐거운게 스타일<br>
				&nbsp;&nbsp;<input type="radio" name="style" value="4" onclick="doOpenCheck3(this);">철저하게 공부만 하는 스타일<br>
				&nbsp;&nbsp;<input type="radio" name="style" value="0" onclick="doOpenCheck1(this);">해당사항 없음.<br>
			</p>
			<p>
				&nbsp;&nbsp;4. 진행하고 싶은 강의 형태<br/>
				&nbsp;&nbsp;<input type="radio" name="level1" value="1" onclick="doOpenCheck4(this);"><strong>기초 위주</strong>의 강의<br>
				&nbsp;&nbsp;<input type="radio" name="level1" value="2" onclick="doOpenCheck4(this);"><strong>포괄적인</strong> 강의<br>
				&nbsp;&nbsp;<input type="radio" name="level1" value="3" onclick="doOpenCheck4(this);"><strong>교과서 중심</strong>의 강의<br>
				&nbsp;&nbsp;<input type="radio" name="level1" value="4" onclick="doOpenCheck4(this);"><strong>문제 풀이식</strong> 강의<br>
				&nbsp;&nbsp;<input type="radio" name="level1" value="5" onclick="doOpenCheck4(this);"><strong>쪽집계</strong> 강의<br>
				&nbsp;&nbsp;<input type="radio" name="level1" value="6" onclick="doOpenCheck4(this);"><strong>시험 대비용</strong> 강의<br>
				&nbsp;&nbsp;<input type="radio" name="level1" value="7" onclick="doOpenCheck4(this);"><strong>선행 학습 위주</strong>의 강의<br>
				&nbsp;&nbsp;<input type="radio" name="level1" value="0" onclick="doOpenCheck1(this);">해당사항 없음.<br>
			</p>
			<p>
				&nbsp;&nbsp;5. 강의 하고 싶은 세부 학년<br/>
				&nbsp;&nbsp;<input type="radio" name="student" value="1" onclick="doOpenCheck5(this);">초등학교 1학년
				<input type="radio" name="student" value="2" onclick="doOpenCheck5(this);">초등학교 2학년
				<input type="radio" name="student" value="3" onclick="doOpenCheck5(this);">초등학교 3학년<br/>
				&nbsp;&nbsp;<input type="radio" name="student" value="4" onclick="doOpenCheck5(this);">초등학교 4학년
				<input type="radio" name="student" value="5" onclick="doOpenCheck5(this);">초등학교 5학년
				<input type="radio" name="student" value="6" onclick="doOpenCheck5(this);">초등학교 6학년
				<br/><br/>
				&nbsp;&nbsp;<input type="radio" name="student" value="7" onclick="doOpenCheck5(this);">중학교 1학년
				<input type="radio" name="student" value="8" onclick="doOpenCheck5(this);">중학교 2학년
				<input type="radio" name="student" value="9" onclick="doOpenCheck5(this);">중학교 3학년
				<br/><br/>
				&nbsp;&nbsp;<input type="radio" name="student" value="10" onclick="doOpenCheck5(this);">고등학교 1학년
				<input type="radio" name="student" value="11" onclick="doOpenCheck5(this);">고등학교 2학년
				<input type="radio" name="student" value="12" onclick="doOpenCheck5(this);">고등학교 3학년
				<br/><br/>
				&nbsp;&nbsp;<input type="radio" name="student" value="0" onclick="doOpenCheck1(this);">해당사항 없음.
			</p>
			<p>
				&nbsp;&nbsp;6. (청각장애인을 위한)수화 강의 여부<br/>
				&nbsp;&nbsp;<input type="radio" name="hand" value="1" onclick="doOpenCheck6(this);">수화로 강의가 가능하다.<br>
				&nbsp;&nbsp;<input type="radio" name="hand" value="2" onclick="doOpenCheck6(this);">가능하지 않다.<br>
				&nbsp;&nbsp;<input type="radio" name="hand" value="0" onclick="doOpenCheck1(this);">해당사항 없음.<br>
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