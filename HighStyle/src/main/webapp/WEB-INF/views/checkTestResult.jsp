<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./resources/unify/assets/css/checkTestResult.css">
<script type="text/javascript" src="./resources/unify/assets/plugins/jquery/jquery.min.js"></script>
<style>
.testResult{
	border:1px solid lightgray;
	padding:10px;
	margin:10px;
}
</style>
</head>
<body>
<div id="testResultTitle">테스트 결과</div>
<div id="testResultPlace">
	 <div class="testResult">${user_name} 학생 : 
	 	<script> 
	 		var count = '${count}';
	 		if(count < 10){
	 			document.write("<span style='color:red;'>"+count+"</span>");
	 		}
	 		else{
	 			document.write("<span>"+count+"</span>");
	 		}
	 	</script>
	 /${count2}</div>
</div>
</body>
</html>
