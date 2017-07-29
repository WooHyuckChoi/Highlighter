<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="./resou                     rces/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="./resources/ico/apple-touch-icon-57-precomposed.png">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style>
/* sideMenu */
#classIntro {margin-top: 10px;border: 3px solid #1bbc9b;height: auto;padding:10px;}
#classIndex {margin-left: 10px;margin-top: 120px;margin-bottom: 10px;margin-right: 50px;border: 1px solid #1bbc9b;height: auto;float: left;}
.nav-agency {border-bottom: 1px solid #DDD;}
#div1 {float: left;width: 80%;margin-top:70px;}
.MyPage {margin: 0px;}
.MyPage li:not(#MyPage) {list-style: none;border-top:1px solid rgba(0,0,0,0.25);height:35px;padding-left:10px;padding-top:5px;font-size:13px;width:140px;}
.MyPage li:not(#MyPage):hover {list-style: none;border-color:1px solid rgba(0,0,0,0.25);height:35px;padding-top:5px;font-size:13px;background-color:#5D5D5D;color:white;}
#noticeResi {float: right;}
.w3table {float: left;}
#MyPage{padding-top:10px;padding-left:20px;padding-bottom:10px;background-color:#1bbc9b;color:white;}
/* sideMenu_끝 */
    
/* 메시지 함_content */
.deleteMessage{background-color:#BFBFBF;border:1px solid #BFBFBF;color:white;padding:5px 10px 5px 10px;float:right;}
.buttonLine{margin-top:50px;}

/* 메시지 보내기_팝업창(STR) */
.layer {display:none; position:fixed; _position:absolute; top:0; left:0; width:100%; height:100%; z-index:100;}
.layer .bg {position:absolute; top:0; left:0; width:100%; height:100%; background:#000; opacity:.5; filter:alpha(opacity=50);}
.layer .pop-layer {display:block;}
.pop-layer {display:none; position: absolute; top: 50%; left: 50%; width: 410px; height:auto;  background-color:#fff; border: 1px solid #3571B5; z-index: 10;} 
.pop-layer .pop-container {padding: 20px 25px;}
.pop-layer .btn-r {width: 100%; margin:10px 0 20px; padding-top: 10px; border-top: 1px solid #DDD; text-align:right;}
a.cbtn {display:inline-block; height:25px; padding:0 14px 0; border:1px solid gray; font-size:13px; color:gray; line-height:25px;}
#sendPeople{margin-top:5px;height:25px; width:277px;}
#sendDate{margin-top:8px;height:25px; width:277px;}
#messageContent{width:350px;}
#reply{margin-top:10px;}
#replyContent{width:350px;}
a.sendMessageBtn{display:inline-block; height:25px; padding:0 14px 0; border:1px solid gray; font-size:13px; color:gray; line-height:25px;}
/* 메시지 보내기_팝업창(END) */

</style>
</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
<!-- //CURRENT PAGE NAV -->
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
<!-- CURRENT PAGE NAV //-->
<!-- //MYPAGE NAV -->
<div style="width:80%; margin:0 auto;">
   <div id="classIndex" >
		<div id="classMain" >
			<ul class="MyPage">
				<li id="MyPage">MyPage<br>마이 페이지</li>
				<li id="updateInfo">정보수정</li>
				<li id="attendingLecture">수강 중인 과외</li>
				<li id="endLecture">수강 완료 과외</li>
				<li id="applicationList">수강 신청 목록</li>
				<li id="message">메시지 함</li>
				<li id="trophy">트로피 / 뱃지</li>
			</ul>
		</div>
	</div>
<!-- MYPAGE NAV // -->

   <div id="div1">
 	  <!-- PAGE TITLE : 메시지함 -->
      <div id="classIntro">메시지 함</div>
      <div class="buttonLine">
   	 	 <button class="deleteMessage" onclick="deleteMessage();">삭제</button>
   	  </div>
   	  <!-- //MESSAGE LIST -->
	   <div class="widget-table-overflow">
           <table class="table table-striped table-lg mt-lg mb-0">
                <thead class="no-bd">
                       <tr>
                       <th>선택</th>
                       <th>보낸 사람</th>
                       <th class="text-align-right">내용</th>
                       <th class="text-align-center">보낸날짜</th>
                   </tr>
                </thead>
                <tbody>
                <c:if test="${messageList ne '[]'}"> 
               	<c:forEach items="${messageList}" var="messageList">   
                   <tr>
                       <td>
                           <div class="checkbox">
                               <input id="checkbox211" type="checkbox" data-check-all>
                               <label for="checkbox211"></label>
                           </div>
                       </td>
                       <td>
                       		<a href="#" onclick="layer_open('sendMessagePopup', '${messageList.user_id}','${messageList.user_name}',
                       		'${messageList.sent_time}','${messageList.msg_cont}');">${messageList.user_name}</a>
                       </td>
                       <td class="text-align-right">${messageList.sent_time}</td>
                       <td class="text-align-center">
                           <div class="sparkline" data-type="bar" data-bar-color="#618fb0">${messageList.msg_cont}</div>
                       </td>
                   </tr>
               </c:forEach>
               </c:if>    
               <c:if test="${messageList eq '[]'}">
               		<tr>
               			<td colspan='4' style="background-color:#D8D8D8; text-align:center;">메시지가 없습니다.</td>
               		</tr>
               </c:if>
               </tbody>
           </table>
       </div>
       <!-- MESSAGE LIST// -->
   </div>      
</div>

<!-- //footer -->
<hr class="soften1 copyhr">
<div class="row-fluid copyright">
	<div class="span12">Copyright &copy; 2012. Greepit.com</div>
</div>
<!-- footer // -->

<!-- //SEND MESSAGE POPUP -->
 <div class="layer">
	<div class="bg"></div>
	<%-- sendMessagePopup --%>
	<div id="sendMessagePopup" class="pop-layer">
		<div class="pop-container">
			<div class="pop-conts">
				<!--content //-->
				보낸 사람 <input id="sendPeople" type="text" value="" disabled><br/>
				보낸 날짜 <input id="sendDate" type="text" value="" disabled>
				<textarea id="messageContent" rows="6" cols="50"disabled></textarea>
				<p id="reply">답장 쓰기</p>
				<textarea id="replyContent" rows="6" cols="50"></textarea>
				<!--// content-->
				<div class="btn-r">
					<a href="#" class="sendMessageBtn">보내기</a>
					<a href="#" class="cbtn">취소</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- SEND MESSAGE POPUP //-->
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
 
/*//SEND MESSAGE POPUP */
function layer_open(el, user_id, user_name, sent_time, msg_cont){
	/* 배경 fadeOut*/
	var temp = $('#' + el);
	var bg = temp.prev().hasClass('bg');
	if(bg){
		$('.layer').fadeIn();  
	}else{
		temp.fadeIn();
	}
	
	// 화면의 중앙에 레이어를 띄움
	if (temp.outerHeight() < $(document).height() ) temp.css('margin-top', '-'+temp.outerHeight()/2+'px');
	else temp.css('top', '0px');
	if (temp.outerWidth() < $(document).width() ) temp.css('margin-left', '-'+temp.outerWidth()/2+'px');
	else temp.css('left', '0px');
	//닫기 버튼
	temp.find('a.cbtn').click(function(e){
		if(bg){
			$('.layer').fadeOut();
		}else{
			temp.fadeOut();
		}
		e.preventDefault();
	});
	
	// fadeIn시킨 배경 fadeOut
	$('.layer .bg').click(function(e){
		$('.layer').fadeOut();
		e.preventDefault();
	});
	
	$("#sendPeople").val(user_name);
	$("#sendDate").val(sent_time);
	$("#messageContent").val(msg_cont);
}; 
/* SEND MESSAGE POPUP//*/

/*//MESSAGE BUTTON ACTION */
function sendMessage(){
	alert("메시지 보냅니다");
};

function deleteMessage(){
	alert("메시지 삭제할끄야!!");	
};
/* MESSAGE BUTTON ACTION// */

/*//MYPAGE NAV */

	$("#MyPage").click(function() {
		location.href = "/Highlighter/myPage";
	});
	$("#updateInfo").click(function() {
		//alert("개발 중입니당~!");
		location.href = "/Highlighter/modifyMyInfo";
	});
	$("#attendingLecture").click(function() {
		//alert("개발 중입니당~!");
		location.href = "/Highlighter/attendingLecture";
	});
	$("#endLecture").click(function() {
		//alert("개발 중입니당~!");
		location.href = "/Highlighter/endLecture";
	});
	$("#applicationList").click(function() {
		//alert("개발 중입니당~!");
		location.href = "/Highlighter/applicationList";
	});
	$("#message").click(function() {
		window.location.href = "/Highlighter/message";
	});
	$("#trophy").click(function() {
		alert("개발 중입니당~!");
		/* location.href="/Highlighter/trophy"; */
	});
	/* MYPAGE NAV//*/
</script>
</body>
</html>