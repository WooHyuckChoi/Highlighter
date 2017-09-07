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
		background-image: url("./resources/img/right.png");
		background-repeat:no-repeat;
	}
	.wrong{
		background-image: url("./resources/img/wrong.png");
		background-repeat:no-repeat;
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
	
	
	#ansNote{
	margin:10px;
	width:350px;
	height:730px;
	float:left;
	}
	#ansNotePlace{
	width : 600px;
	height:665px;
	margin-bottom:10px;
	display:auto;
	border:1px solid lightgray;
	background-color:white;
	overflow: auto;
	}
	.ansList{
		margin:20px;
		height:700px;
		border:1px solid lightgray;
		display: none;
	}
	
	#answerRegist{
		width : 140px;
		margin:5px 10px 20px 0;
		font-size:25px;
		font-weight:bold;
		text-align:center;
		color:gray;
		border:1px dotted lightgray;
		display: inline-block;
	}
	#answerDelete{
		width:140px;
		margin:0 0 20px 10px;
		font-size:25px;
		font-weight:bold;
		text-align:center;
		color:gray;
		border:1px dotted lightgray;
		display: inline-block;
	}
	.co{
		display: none;
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
			<div id="leftButton"></div>
			<div id="centerImage">
				<img id="test_file" src="displayFile?fileName=${examInfo.test_file}">
				<img id="test_file2" src="displayFile?fileName=${examInfo.test_file2}">
				<img id="test_file3" src="displayFile?fileName=${examInfo.test_file3}">
			</div>
			<div id="rightButton"></div>
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
							document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right' onclick='myFunction("+i+")'>"+(i+1)+
									"</div><div class='selectNum stuChecked'>1</div><div class='selectNum'>2</div>"+
									"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
									"<div class='selectNum'>5</div></div>");
						}
						else if(parseInt(stuAnsList[i])==2)
						{
							document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right' onclick='myFunction("+i+")'>"+(i+1)+
									"</div><div class='selectNum'>1</div><div class='selectNum stuChecked'>2</div>"+
									"<div class='selectNum'>3</div><div class='selectNum'>4</div>"+
									"<div class='selectNum'>5</div></div>");
						}
						else if(parseInt(stuAnsList[i])==3)
						{
							document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right' onclick='myFunction("+i+")'>"+(i+1)+
									"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
									"<div class='selectNum stuChecked'>3</div><div class='selectNum'>4</div>"+
									"<div class='selectNum'>5</div></div>");
						}
						else if(parseInt(stuAnsList[i])==4)
						{
							document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right' onclick='myFunction("+i+")'>"+(i+1)+
									"</div><div class='selectNum'>1</div><div class='selectNum'>2</div>"+
									"<div class='selectNum'>3</div><div class='selectNum stuChecked'>4</div>"+
									"<div class='selectNum'>5</div></div>");
						}
						else
						{
							document.write("<div id="+(i+1)+" class='selectAnswer'><div class='probNum right' onclick='myFunction("+i+")'>"+(i+1)+
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
				function myFunction(e)
				{
					$(".ansList").css("display","none");
					$(".co").css("display","none");
					$(".countIndex"+e).css("display","block");
					$("#hidden"+e).css("display","block");
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
		<%-- <c:forEach items="${examInfo}" var="examInfo" varStatus="status">
			<div id="ansNote" class="ansNote" style="display: block;">
				<div id="ansNotePlace" class="ansNotePlace"> 
				<div id="answerSheetTitle" class="answerSheetTitle">오답 노트</div>
					<script>
						var count = '${examInfo.prob_count}';
						for(var i = 0; i < parseInt(count); i++)
						{
							/* if('${noteList[status.index].w_answ_note}' == null)
							{ */
								if(i<10)
								{
									document.write("<div id=hidden"+(i+1)+" class='ansList' style='height:630px; margin-bottom:10px;'>"+
									"<input id='file1' class='file1' type='file' style='width: 500px;' accept='image/*' onchange='fileInfo(this)' />"+
									"<input id='prob_id' type='hidden' value='${test_id}0"+i+"' />"+
									"<div id='img_box' style='height:600px;'><img src='displayFile?fileName=${noteList[status.index].w_answ_note}' style='width:530px; height:600px;' onerror='javascript:this.src=./resources/unify/assets/img/team/img32-md.jpg' /></div>"+
									"<div id='answerRegist' class='answerRegist'>등록</div><div id='answerDelete' class='answerDelete'>삭제</div></div>");
								}//<img src='displayFile?fileName=${noteList[status.index].w_answ_note}' />
								else
								{
									document.write("<div id=hidden"+(i+1)+" class='ansList' style='height:630px; margin-bottom:10px;'>"+
									"<input id='file1' class='file1' type='file' style='width: 500px;' accept='image/*' onchange='fileInfo(this)' />"+
									"<input id='prob_id' type='hidden' value='${test_id}"+i+"' />"+
									"<div id='img_box' style='height:600px;'><img src='displayFile?fileName=${noteList[status.index].w_answ_note}' style='width:530px; height:600px;' onerror='javascript:this.src=./resources/unify/assets/img/team/img32-md.jpg' /></div>"+
									"<div id='answerRegist' class='answerRegist'>등록</div><div id='answerDelete' class='answerDelete'>삭제</div></div>");
								}
							/* } */
							/* else
							{
								if(i<10)
								{
									document.write("<div id=hidden"+(i+1)+" class='ansList' style='height:630px; margin-bottom:10px;'>"+
									"<input id='file1' class='file1' type='file' style='width: 500px;' accept='image/*' onchange='fileInfo(this)' />"+
									"<input id='prob_id' type='hidden' value='${test_id}0"+i+"' />"+
									"<div id='img_box' style='height:600px;'><img src='displayFile?fileName=${noteList[status.index].w_answ_note}' style='width:530px; height:600px;' /></div>"+
									"<div id='answerRegist' class='answerRegist'>등록</div><div id='answerDelete' class='answerDelete'>삭제</div></div>");
								}
								else
								{
									document.write("<div id=hidden"+(i+1)+" class='ansList' style='height:630px; margin-bottom:10px;'>"+
									"<input id='file1' class='file1' type='file' style='width: 500px;' accept='image/*' onchange='fileInfo(this)' />"+
									"<input id='prob_id' type='hidden' value='${test_id}"+i+"' />"+
									"<div id='img_box' style='height:600px;'></div>"+
									"<div id='answerRegist' class='answerRegist'>등록</div><div id='answerDelete' class='answerDelete'>삭제</div></div>");
								} 
							} */
						}
						
						
						function fileInfo(f){
							var file = f.files; // files 를 사용하면 파일의 정보를 알 수 있음

							var reader = new FileReader(); // FileReader 객체 사용
							reader.onload = function(rst){ // 이미지를 선택후 로딩이 완료되면 실행될 부분
								$('#img_box').html('<img style="width:280px; height:500px;" src="' + rst.target.result + '">'); // append 메소드를 사용해서 이미지 추가
								$("#img_regist").click(function(){
									$(".main_image").html('<img style="width:150px; height:150px;" src="' + rst.target.result + '">');
									$(".btn-layerClose").trigger("click");
								});
								// 이미지는 base64 문자열로 추가
								// 이 방법을 응용하면 선택한 이미지를 미리보기 할 수 있음
							}
							reader.readAsDataURL(file[0]); // 파일을 읽는다, 배열이기 때문에 0 으로 접근
						}
					</script>
				</div>
			</div>
		</c:forEach> --%>
		
		<%-- 오답노트 등록부분! --%>
				<div id="ansNote" class="ansNote" style="display: block;">
					<div id="ansNotePlace" class="ansNotePlace"> 
						<div id="answerSheetTitle" class="answerSheetTitle">오답 노트</div>
						<c:forEach items="${noteList}" var="list" varStatus="status">
						<div id="answerSheetTitle" class="answerSheetTitle co countIndex${status.index}">${status.index+1}번</div>
							<div id="hidden${status.index}" class='ansList' style="height:630px; margin-bottom:10px;">
								<input id='file${status.index}' class='file1' type='file' style="width: 500px;" accept='image/*' onchange='fileInfo(this,${status.index })' />
								<input id='prob_id${status.index}' type='hidden' value="${test_id}0${status.index}" />
								<div id='img_box' class="img_box${status.index }" style='height:600px;'>
									<img src='displayFile?fileName=${list}' style='width:530px; height:600px;'
									onerror="javascript:this.src='./resources/unify/assets/img/team/img32-md.jpg'" />
								</div>
								<div id='answerRegist' class='answerRegist' onclick="registImg(${status.index})">등록</div>
								<div id='answerDelete' class='answerDelete'>삭제</div>
							</div>
						</c:forEach>
					</div>
				</div>
		<script>
			function fileInfo(f,e){
				var file = f.files; // files 를 사용하면 파일의 정보를 알 수 있음
	
				var reader = new FileReader(); // FileReader 객체 사용
				reader.onload = function(rst){ // 이미지를 선택후 로딩이 완료되면 실행될 부분
					$('.img_box'+e).html('<img style="width:530px; height:600px;" src="' + rst.target.result + '">'); // append 메소드를 사용해서 이미지 추가
					$("#img_regist").click(function(){
						$(".main_image").html('<img style="width:150px; height:150px;" src="' + rst.target.result + '">');
						$(".btn-layerClose").trigger("click");
					});
					// 이미지는 base64 문자열로 추가
					// 이 방법을 응용하면 선택한 이미지를 미리보기 할 수 있음
				}
				reader.readAsDataURL(file[0]); // 파일을 읽는다, 배열이기 때문에 0 으로 접근
			}
			
			function registImg(e)
			{
				var file =$("#file"+e)[0].files[0];
				var prob_id=$("#prob_id"+e).val();
				
				
				var formData = new FormData();
				formData.append("file",file);
				formData.append("prob_id",prob_id);
				
				
				$.ajax({
					url : "/Highlighter/uploadwAnswNote",
					data : formData,
					dataType : 'text',
					processData : false,
					contentType : false,
					type : 'POST',
					success : function(data) {
						alert("등록하였습니다");
					}
				});
			}
		</script>
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
	<script>
		$(document).ready(function(){
			$("#test_file2").hide();
			$("#test_file3").hide();
		});
	</script>
</body>
</html>