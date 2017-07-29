<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ROOT" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="http://vjs.zencdn.net/6.1.0/video-js.css" rel="stylesheet">
<script src="http://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script>
</head>
<body>
	<video id="my-video" class="video-js" controls preload="auto"
		width="640" height="264" poster="MY_VIDEO_POSTER.jpg" data-setup="{}">
		<%-- <source src="<c:out value="${dto.att_file }"></c:out>" type="video/webm"> --%>
		<%-- <source src="<c:out value="${dto.att_file }"></c:out>" type="video/mp4"> --%>
		<%-- <source src="${ROOT }/movie/sample.mp4" type="video/mp4"> --%>
		<%-- <source src="${dto.att_file }" type="video/webm"> --%>
	</video>
	<%-- <img src="displayFile?fileName=${}" /> --%>
	<img src="resources/upload/displayFile?${dto.att_file }" />
	<script src="http://vjs.zencdn.net/6.1.0/video.js"></script>
</body>
</html>