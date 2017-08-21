<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Highlighter</title>
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
<link rel="stylesheet" href="./resources/unify/assets/css/examPage.css">
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.js"></script>

<style>
	.right{
		background-image: url("./resources/img/right.png") ;
	}
	.wrong{
		background-image: url("./resources/img/wrong.png");
	}
	.answerSheet{
	margin:10px;
	width:350px;
	height:730px;
	float:left;
	}
	.confirmAnswer{
	margin:20px;
	font-size:25px;
	font-weight:bold;
	text-align:center;
	color:gray;
	border:1px dotted lightgray;
	}
	.answerSheetTitle{
	margin:20px;
	font-size:25px;
	font-weight:bold;
	text-align:center;
	color:gray;
	border:1px dotted lightgray;
	}
	.stuChecked{
		background-color: lightgray;
	}
	.probChecked{
		background-color: #999;
	}
</style>
</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
	<div>
		<div id="testMenu">
			<c:forEach items="${examInfo}" var="examInfo">
			<div id="test_title">
				제목 : ${examInfo.test_title}
			</div>
			</c:forEach>
		</div>
	</div>
	<div id="test">
		<%-- 학생 정답 나와야함 --%>
		<c:forEach items="${examInfo}" var="examInfo">
		<div id="testImage">
			<img src="displayFile?fileName=${examInfo.test_file}">
		</div>
		<div id="answerSheet" class="answerSheet">
			<div id="answerSheetPlace" class="answerSheetPlace">
			<div id="answerSheetTitle" class="answerSheetTitle">답안지 작성</div>
			<div id="confirmAnswer" class="confirmAnswer">정답확인</div>
			<script>
				var probCount = '${examInfo.prob_count}';
				var resultTestAnswer = ${resultTestAnswer};
				var stuAnsList = ${stuAnsList};
				
				for(var i = 0; i < parseInt(probCount); i++){
					if(resultTestAnswer[i]=="right")
					{
						if(parseInt(stuAnsList[i])==1)
						{
							document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
									"</div><div class='selectNum stuChecked'>1</div><div class='selectNum'>2</div>"+
									"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
									"<div class='selectNum'>5</div></div>");
						}
						else if(parseInt(stuAnsList[i])==2)
						{
							document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
									"</div><div class='selectNum'>1</div><div class='selectNum stuChecked'>2</div>"+
									"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
									"<div class='selectNum'>5</div></div>");
						}
						else if(parseInt(stuAnsList[i])==3)
						{
							document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
									"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
									"<div class='selectNum stuChecked'>3</div><div class='selectNum'>4</div>"+
									"<div class='selectNum'>5</div></div>");
						}
						else if(parseInt(stuAnsList[i])==4)
						{
							document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
									"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
									"<div class='selectNum'>3</div><div class='selectNum stuChecked'>4</div>"+
									"<div class='selectNum'>5</div></div>");
						}
						else
						{
							document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
									"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
									"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
									"<div class='selectNum stuChecked'>5</div></div>");
						}
					}
					else if(resultTestAnswer[i]=="wrong")
					{
						if(parseInt(stuAnsList[i])==1)
						{
							document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
									"</div><div class='selectNum stuChecked'>1</div><div class='selectNum'>2</div>"+
									"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
									"<div class='selectNum'>5</div></div>");
						}
						else if(parseInt(stuAnsList[i])==2)
						{
							document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
									"</div><div class='selectNum'>1</div><div class='selectNum stuChecked'>2</div>"+
									"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
									"<div class='selectNum'>5</div></div>");
						}
						else if(parseInt(stuAnsList[i])==3)
						{
							document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
									"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
									"<div class='selectNum stuChecked'>3</div><div class='selectNum'>4</div>"+
									"<div class='selectNum'>5</div></div>");
						}
						else if(parseInt(stuAnsList[i])==4)
						{
							document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
									"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
									"<div class='selectNum'>3</div><div class='selectNum stuChecked'>4</div>"+
									"<div class='selectNum'>5</div></div>");
						}
						else
						{
							document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
									"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
									"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
									"<div class='selectNum stuChecked'>5</div></div>");
						}
					}
					else	
					{
						document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum'>"+(i+1)+
								"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
								"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
								"<div class='selectNum'>5</div></div>");
					}
				}
			</script>
			</div>
		</div>
		</c:forEach >
		<%-- 강사 정답 확인 부분 --%>
		<c:forEach items="${examInfo}" var="examInfo">
			<div id="rightAnswerSheet" class="answerSheet">
			<div id="answerSheetPlace" class="answerSheetPlace">
			<div id="answerSheetTitle" class="answerSheetTitle">답안지 작성</div>
			<div id="confirmAnswer" class="confirmAnswer">정답제거</div>
			<script>
				var probCount = '${examInfo.prob_count}';
				var resultTestAnswer = ${resultTestAnswer};
				var stuAnsList = ${stuAnsList};
				var probAnsList = ${probAnsList};
				
				for(var i = 0; i < parseInt(probCount); i++){
					if(resultTestAnswer[i]=="right")
					{
						if(parseInt(stuAnsList[i])==1)
						{
							if(parseInt(probAnsList[i])==1)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum stuChecked probChecked'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==2)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum stuChecked'>1</div><div class='selectNum probChecked'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==3)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum stuChecked'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum probChecked'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==4)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum stuChecked probChecked'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum probChecked'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum stuChecked probChecked'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum probChecked'>5</div></div>");
							}
						}
						else if(parseInt(stuAnsList[i])==2)
						{
							if(parseInt(probAnsList[i])==1)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum probChecked'>1</div><div class='selectNum stuChecked'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==2)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum stuChecked probChecked'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==3)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum stuChecked'>2</div>"+
										"<div class='selectNum probChecked'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==4)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum stuChecked'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum probChecked'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum stuChecked'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum probChecked'>5</div></div>");
							}
						}
						else if(parseInt(stuAnsList[i])==3)
						{
							if(parseInt(probAnsList[i])==1)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum probChecked'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum stuChecked'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==2)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum probChecked'>2</div>"+
										"<div class='selectNum stuChecked'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==3)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum stuChecked probChecked'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==4)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum stuChecked'>3</div><div class='selectNum probChecked'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum stuChecked'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum probChecked'>5</div></div>");
							}
						}
						else if(parseInt(stuAnsList[i])==4)
						{
							if(parseInt(probAnsList[i])==1)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum probChecked'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum stuChecked'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==2)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum probChecked'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum stuChecked'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==3)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum probChecked'>3</div><div class='selectNum stuChecked'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==4)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum stuChecked probChecked'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum stuChecked'>4</div>"+
										"<div class='selectNum probChecked'>5</div></div>");
							}
						}
						else
						{
							
							if(parseInt(probAnsList[i])==1)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum probChecked'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum stuChecked'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==2)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum probChecked'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum stuChecked'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==3)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum probChecked'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum stuChecked'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==4)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum probChecked'>4</div>"+
										"<div class='selectNum stuChecked'>5</div></div>");
							}
							else
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum stuChecked probChecked'>5</div></div>");
							}
						}
					}
					else if(resultTestAnswer[i]=="wrong")
					{
						if(parseInt(stuAnsList[i])==1)
						{
							if(parseInt(probAnsList[i])==1)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum stuChecked probChecked'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==2)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum stuChecked'>1</div><div class='selectNum probChecked'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==3)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum stuChecked'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum probChecked'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==4)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum stuChecked probChecked'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum probChecked'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum stuChecked probChecked'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum probChecked'>5</div></div>");
							}
						}
						else if(parseInt(stuAnsList[i])==2)
						{
							if(parseInt(probAnsList[i])==1)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum probChecked'>1</div><div class='selectNum stuChecked'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==2)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum stuChecked probChecked'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==3)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum stuChecked'>2</div>"+
										"<div class='selectNum probChecked'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==4)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum stuChecked'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum probChecked'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum stuChecked'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum probChecked'>5</div></div>");
							}
						}
						else if(parseInt(stuAnsList[i])==3)
						{
							if(parseInt(probAnsList[i])==1)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum probChecked'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum stuChecked'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==2)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum probChecked'>2</div>"+
										"<div class='selectNum stuChecked'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==3)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum stuChecked probChecked'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==4)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum stuChecked'>3</div><div class='selectNum probChecked'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum stuChecked'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum probChecked'>5</div></div>");
							}
						}
						else if(parseInt(stuAnsList[i])==4)
						{
							if(parseInt(probAnsList[i])==1)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum probChecked'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum stuChecked'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==2)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum probChecked'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum stuChecked'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==3)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum probChecked'>3</div><div class='selectNum stuChecked'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==4)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum stuChecked probChecked'>4</div>"+
										"<div class='selectNum'>5</div></div>");
							}
							else
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum stuChecked'>4</div>"+
										"<div class='selectNum probChecked'>5</div></div>");
							}
						}
						else
						{
							
							if(parseInt(probAnsList[i])==1)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum probChecked'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum stuChecked'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==2)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum probChecked'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum stuChecked'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==3)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum probChecked'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum stuChecked'>5</div></div>");
							}
							else if(parseInt(probAnsList[i])==4)
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum probChecked'>4</div>"+
										"<div class='selectNum stuChecked'>5</div></div>");
							}
							else
							{
								document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum wrong'>"+(i+1)+
										"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
										"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
										"<div class='selectNum stuChecked probChecked'>5</div></div>");
							}
						}
					}
					else	
					{
						document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum'>"+(i+1)+
								"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
								"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
								"<div class='selectNum'>5</div></div>");
					}
				}
			</script>
			</div>
		</div>
		</c:forEach>
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
		$(".selectNum").on("click", function(){
			console.log($(this).parent().children('.checked').text());
			if($(this).parent().children('.checked').text().length> 0){
				$(this).parent().children('.checked').css("background-color", "white");
				$(this).parent().children('.checked').removeClass("checked");
			}
			$(this).css("background-color", "gray");
			$(this).addClass("checked");
			
		})
		function submitTest(prob_Count, test_id){
			var selectNumbers = new Array();
			for(var i = 1; i < parseInt(prob_Count)+1; i++){
				if($("#"+i).children(".checked").text() == ""){
					alert("답안을 모두 체크했는지 확인해주세요.");
					break;
				}
				selectNumbers[i-1] = $("#"+i).children(".checked").text();
			}
			
			$.ajax({
				url : 'examPage',
				type : 'POST',
				contentType : "application/json; charset=UTF-8",
				data : JSON.stringify({
					selectNumbers : selectNumbers,
					test_id : test_id
				}),
				success:function(data){
					if(data == "success"){
						window.close();
					}	
				}
			});
			console.log(selectNumbers);
		}
		
		//ArrayList 구현 스크립트에서 ArrayList를 java처럼 사용하고 싶을때 사용. 스크립트에는 ArrayList가 없음.
		/* function ArrayList(){
		    this.array = new Array();
		    this.add = function(obj){
		        this.array[this.array.length] = obj;
		    };
		    this.iterator = function (){
		        return new Iterator(this);
		    };
		    this.length = function (){
		        return this.array.length;
		    };
		    this.get = function (index){
		        return this.array[index];
		    };
		    this.addAll = function (obj){
		        if (obj instanceof Array){
		            for (var i=0;i<obj.length;i++){
		                this.add(obj[i]);
		            }
		        } else if (obj instanceof ArrayList){
		            for (var i=0;i<obj.length();i++){
		                this.add(obj.get(i));
		            }
		        }
		    };
		}
		function Iterator (arrayList){
		    this.arrayList;
		    this.index = 0;
		    this.hasNext = function (){
		        return this.index < this.arrayList.length();
		    };
		    this.next = function() {
		        return this.arrayList.get(index++);
		    };
		} */
		$("#rightAnswerSheet").hide();
		$(".confirmAnswer").click(function(){
			if($("#rightAnswerSheet").css("display")=="none")
			{
				$("#answerSheet").hide();
				$("#rightAnswerSheet").show();	
			}
			else
			{
				$("#answerSheet").show();
				$("#rightAnswerSheet").hide();	
			}
		});
	</script>
</body>
</html>