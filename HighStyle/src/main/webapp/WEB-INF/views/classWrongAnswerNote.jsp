<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>HIGHLIGHTER</title>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.table-style-one input{
	width:30%;
}

#note1 {
	margin-left: 10%;
}

#note2 {
	margin-left: 10%;
}

#note3 {
	margin-left: 10%;
}

#note4 {
	margin-left: 10%;
}

#note5 {
	margin-left: 10%;
}

#note6 {
	margin-left: 10%;
}

#note7 {
	margin-left: 10%;
}

#note8 {
	margin-left: 10%;
}

#note9 {
	margin-left: 10%;
}

#note10 {
	margin-left: 10%;
}

#note11 {
	margin-left: 10%;
}

#note12 {
	margin-left: 10%;
}

#note13 {
	margin-left: 10%;
}

#note14 {
	margin-left: 10%;
}

#note15 {
	margin-left: 10%;
}

#note16 {
	margin-left: 10%;
}

#note17 {
	margin-left: 10%;
}

#note18 {
	margin-left: 10%;
}

#note19 {
	margin-left: 10%;
}

#note20 {
	margin-left: 10%;
}



#WrongAnswerNote textarea{
	min-width: 80%;
	max-width: 80%;
	min-height: 30%;
	max-height: 30%;
}

#WrongAnswerNote {
	margin-top: 10px;
	border: 1px solid #FF0000;
	height: auto;
	padding: 10px;
	float: left;
	height: 50%;
	width: 35%;
	margin-left: 2%;
}

#test_result_table {
	margin-top: 10px;
	border: 1px solid #FF0000;
	height: auto;
	padding: 10px;
	float: left;
	height: 50%;
	width: 25%;
}

#test_image {
	margin-top: 10px;
	border: 1px solid #FF0000;
	height: auto;
	padding: 10px;
	float: left;
	height: 50%;
	width: 35%;
	margin-right: 2%;
}

#asd {
	margin-top: 10px;
	border: 1px solid #FF0000;
	height: auto;
	padding: 10px;
}

#weeks {
	float: left;
}

#submit1 {
	float: right;
}

#test_score {
	float: left;
}

#classIntro {
	margin-top: 10px;
	border: 1px solid #FF0000;
	height: auto;
	padding: 10px;
}

#classGoIn {
	float: right;
}

#teacherImage img {
	height: 10%;
	width: 10%;
	float: left;
}

#classIntro2 {
	margin-top: 10px;
	margin-bottom: 20%;
	height: 40%;
	padding: 10px;
}

#classIndex {
	margin-left: 10px;
	margin-top: 10px;
	margin-bottom: 10px;
	margin-right: 10px;
	border: 1px solid #FF0000;
	height: auto;
	padding: 10px;
	float: left;
}

#classIntro3 {
	margin-bottom: 10px;
	border: 1px solid #FF0000;
	height: auto;
	padding: 10px;
}

#classIntro4 {
	margin-bottom: 10px;
	border: 1px solid #FF0000;
	height: auto;
	padding: 10px;
}

#classIntro5 {
	margin-bottom: 10px;
	border: 1px solid #FF0000;
	height: auto;
	padding: 10px;
}

.nav-agency {
	border-bottom: 1px solid #DDD;
}

#div1 {
	float: left;
	width: 80%;
}

#classIndex {
	
}

.StudyRoom {
	margin: 0px;
}

.StudyRoom li {
	list-style: none;
}

#noticeResi {
	float: right;
}

.w3table {
	float: left;
}
</style>

<!-- 표 css-->
<style type="text/css">
table.table-style-one {
	font-family: verdana, arial, sans-serif;
	font-size: 11px;
	color: #333333;
	border-width: 1px;
	border-color: #3A3A3A;
	border-collapse: collapse;
	margin-left: auto;
	margin-right: auto;
}

table.table-style-one th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #3A3A3A;
	background-color: #B3B3B3;
}

table.table-style-one td {
	border-width: 1px;
	padding: 5px;
	border-style: solid;
	border-color: #3A3A3A;
	background-color: #ffffff;
	width: 25%;
}
</style>

</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
	<div class="nav-agency">
		<div class="navbar navbar-static-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="brand" href="/highlighter"> <img
						src="./resources/img/logo.png" alt=""></a>
					<div id="main-nav">
						<div class="nav-collapse collapse">
							<ul class="nav">
								<li class=""><a href="/highlighter">Home</a></li>
								<li class="dropdown"><a class="dropdown-toggle"
									data-toggle="dropdown" href="#"> 강사 <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="work.html">강사 이용방법</a></li>
										<li><a href="work-two-columns.html">과외 등록</a></li>
									</ul></li>
								<li class="dropdown"><a class="dropdown-toggle"
									data-toggle="dropdown" href="#"> 학생 <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="pricing.html">학생 이용방법</a></li>
										<li><a href="pricing-three-columns.html">과외 검색</a></li>
									</ul></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown"> 학부모 <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="faq.html">학부모 이용방법</a></li>
										<li><a href="contact.html">자녀 학습 관리</a></li>
									</ul></li>
								<li><a href="index.html">사이트 소개</a></li>
								<li><a href="index.html">문의</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div>
		<br> <br>
		<div id="weeks">
			주차번호 :
			<script>
				var week = '${test_id}';
				var weeks = week.substr(8);
				document.write(weeks + "주차");
			</script>
		</div>

		<div id="test_score">&nbsp;&nbsp;&nbsp;&nbsp;시험 점수 &nbsp;:&nbsp;${correctcount} / 20 </div>

		<div id="submit1">
			<button type="submit">등록</button>
		</div>
	</div>
	<br>
	<br>
	<div id="asd">
		<div id="test_image">
			테스트 이미지 들어갈 자리~
			<c:forEach items="${listtest1}" var="listtest1">
				<%-- ${listtest.test_id} --%>
				<ul>
					<li><img src="./resources/img/${listtest1.test_file}"
						style="width: 100%; height: 100%;">
				</ul>
			</c:forEach>
		</div>
		<div id="test_result_table">
			<table class="table-style-one">

				<thead>
					<tr>
						<th>문제번호</th>
						<th>입력한 답</th>
						<th>문제번호</th>
						<th>입력한 답</th>
					</tr>
				</thead>
				<tbody>

					<tr>

						<td><button id="answer1">1</button></td>
						<td><input type="text" name="qjs1" placeholder="${probid1}"> 
						
						<script>
							var probid1 ='${probid1}';
							var prob_answ1 = '${prob_answ1}';
							if(probid1 == prob_answ1){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						
						</td>
						<td><button id="answer11">11</button></td>
						<td><input type="text" name="qjs11" placeholder="${probid11}">
						
							<script>
							var probid11 ='${probid11}';
							var prob_answ11 = '${prob_answ11}';
							if(probid11 == prob_answ11){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						
						</td>
					</tr>
					<tr>
						<td><button id="answer2">2</button></td>
						<td><input type="text" name="qjs2" placeholder="${probid2}">
							<script>
							var probid2 ='${probid2}';
							var prob_answ2 = '${prob_answ2}';
							if(probid2 == prob_answ2){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						</td>
						<td><button id="answer12">12</button></td>
						<td><input type="text" name="qjs12" placeholder="${probid12}">
						
							<script>
							var probid12 ='${probid12}';
							var prob_answ12 = '${prob_answ12}';
							if(probid12 == prob_answ12){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						
						</td>
					</tr>
					<tr>
						<td><button id="answer3">3</button></td>
						<td><input type="text" name="qjs3" placeholder="${probid3}">
							<script>
							var probid3 ='${probid3}';
							var prob_answ3 = '${prob_answ3}';
							if(probid3 == prob_answ3){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						
						</td>
						<td><button id="answer13">13</button></td>
						<td><input type="text" name="qjs13" placeholder="${probid13}">
							<script>
							var probid13 ='${probid13}';
							var prob_answ13 = '${prob_answ13}';
							if(probid13 == prob_answ13){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						
						</td>
					</tr>
					<tr>
						<td><button id="answer4">4</button></td>
						<td><input type="text" name="qjs4" placeholder="${probid4}">
							<script>
							var probid4 ='${probid4}';
							var prob_answ4 = '${prob_answ4}';
							if(probid4 == prob_answ4){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						</td>
						<td><button id="answer14">14</button></td>
						<td><input type="text" name="qjs14" placeholder="${probid14}">
						
							<script>
							var probid14 ='${probid14}';
							var prob_answ14 = '${prob_answ14}';
							if(probid14 == prob_answ14){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						</td>
					</tr>
					<tr>
						<td><button id="answer5">5</button></td>
						<td><input type="text" name="qjs5" placeholder="${probid5}">
						
							<script>
							var probid5 ='${probid5}';
							var prob_answ5 = '${prob_answ5}';
							if(probid5 == prob_answ5){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						
						</td>
						<td><button id="answer15">15</button></td>
						<td><input type="text" name="qjs15" placeholder="${probid15}">
						
							<script>
							var probid15 ='${probid15}';
							var prob_answ15 = '${prob_answ15}';
							if(probid15 == prob_answ15){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						
						</td>
					</tr>
					<tr>
						<td><button id="answer6">6</button></td>
						<td><input type="text" name="qjs6" placeholder="${probid6}">
						
							<script>
							var probid6 ='${probid6}';
							var prob_answ6 = '${prob_answ6}';
							if(probid6 == prob_answ6){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						
						</td>
						<td><button id="answer16">16</button></td>
						<td><input type="text" name="qjs16" placeholder="${probid16}">
							<script>
							var probid16 ='${probid16}';
							var prob_answ16 = '${prob_answ16}';
							if(probid16 == prob_answ16){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						
						</td>
					</tr>
					<tr>
						<td><button id="answer7">7</button></td>
						<td><input type="text" name="qjs7" placeholder="${probid7}">
						
							<script>
							var probid7 ='${probid7}';
							var prob_answ7 = '${prob_answ7}';
							if(probid7 == prob_answ7){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						
						</td>
						<td><button id="answer17">17</button></td>
						<td><input type="text" name="qjs17" placeholder="${probid17}">
						
							<script>
							var probid17 ='${probid17}';
							var prob_answ17 = '${prob_answ17}';
							if(probid17 == prob_answ17){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						
						</td>
					</tr>
					<tr>
						<td><button id="answer8">8</button></td>
						<td><input type="text" name="qjs8" placeholder="${probid8}">
						
							<script>
							var probid8 ='${probid8}';
							var prob_answ8 = '${prob_answ8}';
							if(probid8 == prob_answ8){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						
						</td>
						<td><button id="answer18">18</button></td>
						<td><input type="text" name="qjs18" placeholder="${probid18}">
						
							<script>
							var probid18 ='${probid18}';
							var prob_answ18 = '${prob_answ18}';
							if(probid18 == prob_answ18){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						
						</td>
					</tr>
					<tr>
						<td><button id="answer9">9</button></td>
						<td><input type="text" name="qjs9" placeholder="${probid9}">
						
							<script>
							var probid9 ='${probid9}';
							var prob_answ9 = '${prob_answ9}';
							if(probid9 == prob_answ9){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						
						</td>
						<td><button id="answer19">19</button></td>
						<td><input type="text" name="qjs19" placeholder="${probid19}">
						
									<script>
							var probid19 ='${probid19}';
							var prob_answ19 = '${prob_answ19}';
							if(probid19 == prob_answ19){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						
						</td>
					</tr>
					<tr>
						<td><button id="answer10">10</button></td>
						<td><input type="text" name="qjs10" placeholder="${probid10}">
						
									<script>
							var probid10 ='${probid10}';
							var prob_answ10 = '${prob_answ10}';
							if(probid10 == prob_answ10){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						
						</td>
						<td><button id="answer20">20</button></td>
						<td><input type="text" name="qjs20" placeholder="${probid20}">
						
									<script>
							var probid20 ='${probid20}';
							var prob_answ20 = '${prob_answ20}';
							if(probid20 == prob_answ20){
								document.write("정답"); 
							}else{
								document.write("오답");
							}
						</script>
						
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div id="WrongAnswerNote">
			<div id="note1">
			
				<p>문제번호 : 1</p>
				<form method="post" action="classWrongAnswerNote" id="form1"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file1" id="file1"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note1" name="test_Note1" rows="12" cols="50">${WrongNotes1}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>
			
			<div id="note2">
				<p>문제번호 : 2</p>
				<form method="post" action="classWrongAnswerNote" id="form2"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file2" id="file2"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note2" name="test_Note2" rows="12" cols="50">${WrongNotes2}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>			

			<div id="note3">
				<p>문제번호 : 3</p>
				<form method="post" action="classWrongAnswerNote" id="form3"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file3" id="file3"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note3" name="test_Note3" rows="12" cols="50">${WrongNotes3}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>

			<div id="note4">
				<p>문제번호 : 4</p>
				<form method="post" action="classWrongAnswerNote" id="form4"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file4" id="file4"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note4" name="test_Note4" rows="12" cols="50">${WrongNotes4}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>		

			<div id="note5">
				<p>문제번호 : 5</p>
				<form method="post" action="classWrongAnswerNote" id="form5"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file5" id="file5"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note5" name="test_Note5" rows="12" cols="50">${WrongNotes5}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>
			
			<div id="note6">
				<p>문제번호 : 6</p>
				<form method="post" action="classWrongAnswerNote" id="form6"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file6" id="file6"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note6" name="test_Note6" rows="12" cols="50">${WrongNotes6}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>			
			
			<div id="note7">
				<p>문제번호 : 7</p>
				<form method="post" action="classWrongAnswerNote" id="form7"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file7" id="file7"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note7" name="test_Note7" rows="12" cols="50">${WrongNotes7}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>
			
			<div id="note8">
				<p>문제번호 : 8</p>
				<form method="post" action="classWrongAnswerNote" id="form8"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file8" id="file8"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note8" name="test_Note8" rows="12" cols="50">${WrongNotes8}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>						

			<div id="note9">
				<p>문제번호 : 9</p>
				<form method="post" action="classWrongAnswerNote" id="form9"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file9" id="file9"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note9" name="test_Note9" rows="12" cols="50">${WrongNotes9}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>

			<div id="note10">
				<p>문제번호 : 10</p>
				<form method="post" action="classWrongAnswerNote" id="form10"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file10" id="file10"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note10" name="test_Note10" rows="12" cols="50">${WrongNotes10}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>

			<div id="note11">
				<p>문제번호 : 11</p>
				<form method="post" action="classWrongAnswerNote" id="form11"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file11" id="file11"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note11" name="test_Note11" rows="12" cols="50">${WrongNotes11}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>			

			<div id="note12">
				<p>문제번호 : 12</p>
				<form method="post" action="classWrongAnswerNote" id="form12"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file12" id="file12"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note12" name="test_Note12" rows="12" cols="50">${WrongNotes12}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>
			
			<div id="note13">
				<p>문제번호 : 13</p>
				<form method="post" action="classWrongAnswerNote" id="form13"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file13" id="file13"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note13" name="test_Note13" rows="12" cols="50">${WrongNotes13}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>			

			<div id="note14">
				<p>문제번호 : 14</p>
				<form method="post" action="classWrongAnswerNote" id="form14"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file14" id="file14"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note14" name="test_Note14" rows="12" cols="50">${WrongNotes14}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>
			
			<div id="note15">
				<p>문제번호 : 15</p>
				<form method="post" action="classWrongAnswerNote" id="form15"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file15" id="file15"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note15" name="test_Note15" rows="12" cols="50">${WrongNotes15}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>			

			<div id="note16">
				<p>문제번호 : 16</p>
				<form method="post" action="classWrongAnswerNote" id="form16"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file16" id="file16"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note16" name="test_Note16" rows="12" cols="50">${WrongNotes16}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>

			<div id="note17">
				<p>문제번호 : 17</p>
				<form method="post" action="classWrongAnswerNote" id="form17"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file17" id="file17"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note17" name="test_Note17" rows="12" cols="50">${WrongNotes17}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>
			
			<div id="note18">
				<p>문제번호 : 18</p>
				<form method="post" action="classWrongAnswerNote" id="form18"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file18" id="file18"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note18" name="test_Note18" rows="12" cols="50">${WrongNotes18}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>			

			<div id="note19">
				<p>문제번호 : 19</p>
				<form method="post" action="classWrongAnswerNote" id="form19"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file19" id="file19"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note19" name="test_Note19" rows="12" cols="50">${WrongNotes19}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>

			<div id="note20">
				<p>문제번호 : 20</p>
				<form method="post" action="classWrongAnswerNote" id="form1"
					enctype="multpart/form-data">
					<input type="hidden" name="test_id" value="${test_id}">
					<input type="hidden" name="userid" value="${id}"> 
					<p>
						<input type="file" name="file20" id="file20"><input
							type="submit">
					</p>

					<p>
						<textarea id="test_Note20" name="test_Note20" rows="12" cols="50">${WrongNotes19}</textarea>
					<p>
					<center>
						<input type="submit" value="저장" id="AnswerNote20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</p>
					</center>
				</form>
			</div>
			
	</div>


	<!-- 오답노트 보내는 소스~ -->
	<script>
		$("#AnswerNote1").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file1 : $("#file1").val(),
					testnote1 : $("#test_Note1").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>
	
		<script>
		$("#AnswerNote2").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file2 : $("#file2").val(),
					testnote2 : $("#test_Note2").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>
	
		<script>
		$("#AnswerNote3").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file3 : $("#file3").val(),
					testnote3 : $("#test_Note3").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>
	
		<script>
		$("#AnswerNote4").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file4 : $("#file4").val(),
					testnote4 : $("#test_Note4").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>

	<script>
		$("#AnswerNote5").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file5 : $("#file5").val(),
					testnote5 : $("#test_Note5").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>
	
		<script>
		$("#AnswerNote6").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file6 : $("#file6").val(),
					testnote6 : $("#test_Note6").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>

	<script>
		$("#AnswerNote7").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file7 : $("#file7").val(),
					testnote7 : $("#test_Note7").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>

	<script>
		$("#AnswerNote8").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file8 : $("#file8").val(),
					testnote8 : $("#test_Note8").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>

	<script>
		$("#AnswerNote9").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file9 : $("#file9").val(),
					testnote9 : $("#test_Note9").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>
	
		<script>
		$("#AnswerNote10").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file10 : $("#file10").val(),
					testnote10 : $("#test_Note10").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>
	
	<script>
		$("#AnswerNote11").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file11 : $("#file11").val(),
					testnote11 : $("#test_Note11").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>
	
		<script>
		$("#AnswerNote12").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file12 : $("#file12").val(),
					testnote12 : $("#test_Note12").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>
	
		<script>
		$("#AnswerNote13").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file13 : $("#file13").val(),
					testnote13 : $("#test_Note13").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>
	
		<script>
		$("#AnswerNote14").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file14 : $("#file14").val(),
					testnote14 : $("#test_Note14").val(),
					test_id : '${test_id}',
					userid : '${id}',
				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>
	
		<script>
		$("#AnswerNote15").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file15 : $("#file15").val(),
					testnote15 : $("#test_Note15").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>
	
	<script>
		$("#AnswerNote16").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file16 : $("#file16").val(),
					testnote16 : $("#test_Note16").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>	
	
	<script>
		$("#AnswerNote17").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file17 : $("#file17").val(),
					testnote17 : $("#test_Note17").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>	
	
		<script>
		$("#AnswerNote18").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file18 : $("#file18").val(),
					testnote18 : $("#test_Note18").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>
	
		<script>
		$("#AnswerNote19").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file19 : $("#file19").val(),
					testnote19 : $("#test_Note19").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>
	
	<script>
		$("#AnswerNote20").click(function() {
			$.ajax({
				type : "POST",
				url : "classWrongAnswerNotes",
				async : false,
				data : {

					file20 : $("#file20").val(),
					testnote20 : $("#test_Note20").val(),
					test_id : '${test_id}',
					userid : '${id}',

				},

				success : function(result) {
					alert("성공");
					location.href = "classWrongAnswerNote";
				},
				error : function(result) {
					alert("에러다");
				}
			});
		});
	</script>	
	

	<script>
		$(document).ready(function() {
			$('#note1').show();
			$('#note2').hide();
			$('#note3').hide();
			$('#note4').hide();
			$('#note5').hide();
			$('#note6').hide();
			$('#note7').hide();
			$('#note8').hide();
			$('#note9').hide();
			$('#note10').hide();
			$('#note11').hide();
			$('#note12').hide();
			$('#note13').hide();
			$('#note14').hide();
			$('#note15').hide();
			$('#note16').hide();
			$('#note17').hide();
			$('#note18').hide();
			$('#note19').hide();
			$('#note20').hide();

			$('#answer1').click(function() {
				$('#note1').show();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer2').click(function() {
				$('#note1').hide();
				$('#note2').show();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer3').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').show();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer4').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').show();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer5').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').show();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer6').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').show();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer7').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').show();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer8').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').show();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer9').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').show();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer10').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').show();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer11').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').show();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer12').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').show();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer13').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').show();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer14').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').show();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer15').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').show();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer16').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').show();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer17').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').show();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer18').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').show();
				$('#note19').hide();
				$('#note20').hide();
			});

			$('#answer19').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').show();
				$('#note20').hide();
			});

			$('#answer20').click(function() {
				$('#note1').hide();
				$('#note2').hide();
				$('#note3').hide();
				$('#note4').hide();
				$('#note5').hide();
				$('#note6').hide();
				$('#note7').hide();
				$('#note8').hide();
				$('#note9').hide();
				$('#note10').hide();
				$('#note11').hide();
				$('#note12').hide();
				$('#note13').hide();
				$('#note14').hide();
				$('#note15').hide();
				$('#note16').hide();
				$('#note17').hide();
				$('#note18').hide();
				$('#note19').hide();
				$('#note20').show();
			});
			return false;
		});
	</script>




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
		$(document).ready(function() {
			$("#check_id").click(function() {
				var id = {
					id : $("#user_id").val()
				};

				if ($("#user_id").val().trim() == "")
					alert('아이디를 입력해주세요!');
				else {
					$.ajax({
						type : "post",
						url : "/highlighter/checkId",
						data : id,
						success : function(data) {
							if (data == 0) {
								alert("사용할 수 있는 아이디입니다.");
								$("#check_yn").val('y');
							} else {
								alert("사용할 수 없는 아이디 입니다.");
								$("#check_yn").val('n');
							}
						},
						error : function(data) {
							alert("오류래여 !!");
						}
					});
				}
			});
			$("#submit").click(function() {
				if ($("#check_yn").val() == "n") {
					alert("아이디 중복확인을 해주세요.");
					$("#user_id").val('');
				}
			});
		});
	</script>
</body>
</html>