<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
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
      <div class="page-header">
        <div class="row-fluid">
          <div class="span12">
            <h1 style="color:#4C4B4A">회원 정보 수정</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row-fluid blog">
    <div class="span8">
      <article class="blog-post" > 
        <div class="clearfix" ></div>
        <form role="form" id="comment_form" action="modifyMyInfo" style="background:white" method="post" enctype="multipart/form-data">
          <div class="con_fil">
            <label for="user_id">아이디</label>
            <input type="text" name="user_id" id="user_id" tabindex="1" value="${user_InfoVO.user_id }" readonly />
          </div>
          <div class="con_fil">
            <label for="user_pw">비밀번호</label>
            <input type="text" name="user_pw" id="user_pw" class="textbox" tabindex="2" value="${user_InfoVO.user_pw }" required>
          </div>
          <div class="con_fil">
            <label for="user_name">이름</label>
            <input type="text" name="user_name" id="user_name" class="textbox" tabindex="3" value="${user_InfoVO.user_name }" readonly>
          </div>
          <div class="con_fil">
            <label for="user_email">이메일</label>
            <input type="email" name="user_email" id="user_email" class="textbox" tabindex="3" value="${user_InfoVO.user_email }">
          </div>
          <div class="con_fil">
          		<c:if test="${user_InfoVO.gender eq 'male' }">
          			남<input type="radio" name="gender" id="gender" class="textbox" tabindex="3" value="male" checked="checked" readonly>
          			여<input type="radio" name="gender" id="gender" class="textbox" tabindex="3" value="female" readonly>
          		</c:if>
               	<c:if test="${user_InfoVO.gender eq 'female' }">
               		남<input type="radio" name="gender" id="gender" class="textbox" tabindex="3" value="male" readonly>
               		여<input type="radio" name="gender" id="gender" class="textbox" tabindex="3" value="female" checked="checked" readonly>
               	</c:if>
          </div>
          <div class="con_fil">
            <label for="birth_date">생년월일</label>
            <input type="date" name="birth_date" id="birth_date" class="textbox" tabindex="3" value="${user_InfoVO.birth_date }" readonly>
          </div>
           <div class="con_fil">
            <label for="address">주소</label>
            <input type="text" name="address" id="address" class="textbox" tabindex="3" value="${user_InfoVO.address }" required>
          </div>
           <div class="con_fil">
            <label for="phone">휴대폰</label>
            <input type="text" name="phone" id="phone" class="textbox" tabindex="3" value="${user_InfoVO.phone }" required>
          </div>
          <div class="con_fil">
            <label for="prof_photo">프로필 사진</label>
            <input type="file" name="file" class="textbox" tabindex="3">
          </div>
           <div class="con_fil">
            <label for="ext_exp">과외경력</label>
            <input type="number" name="ext_exp" id="ext_exp" tabindex="3" value="${year }" required>년
            <input type="number" name="ext_exp" id="ext_exp" tabindex="3" value="${month }" required>개월
          </div>
           <div class="con_fil">
            <label for="bank">은행</label>
            <input type="text" name="bank" id="bank" class="textbox" tabindex="3" value="${user_InfoVO.bank }" required>
          </div>
           <div class="con_fil">  
            <label for="bank_ac_num">계좌번호</label>
            <input type="text" name="bank_ac_num" id="bank_ac_num" class="textbox" tabindex="3" value="${user_InfoVO.bank_ac_num }" required>
          </div>
           <div class="con_fil">
            <label for="college">학교</label>
            <input type="text" name="college" id="college" class="textbox" tabindex="3" value="${user_InfoVO.college }" required>
          </div>
           <div class="con_fil">
            <label for="college_dept">학과</label>
            <input type="text" name="college_dept" id="college_dept" class="textbox" tabindex="3"  value="${user_InfoVO.college_dept }" required>
          </div>
          <div class="con_fil">
            <input name="submit" class="btn btn-success" type="submit" id="submit" tabindex="5" value="수정하기">
          </div>
        </form>
      </article>
    </div>
    <div class="span4 side_bar">
      
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
		$(document).ready(function() {
			var result="${msg}";
			$("#submit").click(function(){
				if(result == "SUCCESS")
				{
					window.alert("수정 되었습니다.");
				}
			});
		});
	</script>
</body>
</html>	