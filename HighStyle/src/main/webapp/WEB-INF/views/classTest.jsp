<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link rel="shortcut icon" type="image/x-icon"
   href="https://production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
<link rel="mask-icon" type=""
   href="https://production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg"
   color="#111" />
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<style>
/* 팝업 css */
* {
   margin: 0;
   padding: 0;
}

body {
   margin: 100px;
}

.pop-layer .pop-container {
   padding: 20px 25px;
}

.pop-layer p.ctxt {
   color: #666;
   line-height: 25px;
   border-bottom: 2px solid #1bbc9b;
}

.pop-layer .btn-r {
   width: 100%;
   margin: 10px 0 20px;
   padding-top: 10px;
   border-top: 1px solid #DDD;
   text-align: right;
}

.testTime {
   
}

.testTime input {
   height: 30px;
   width: 40px;
}

.correctansw {
   width: 100%;
   margin: 10px 0 10px;
   padding-bottom: 10px;
   border-bottom: 1px solid #DDD;
   color: #666;
}

.addfile {
   width: 100%;
   margin: 10px 0 10px;
   padding-top: 10px;
   border-top: 1px solid #DDD;
   color: #666;
   padding-bottom: 10px;
   border-bottom: 1px solid #DDD;
}

.pop-layer {
   display: none;
   position: absolute;
   top: 50%;
   left: 50%;
   width: 500px;
   height: auto;
   background-color: #fff;
   box-shadow: -60px 0px 100px -90px #000000, 60px 0px 100px -90px #000000;
   z-index: 10;
}

.dim-layer {
   display: none;
   position: fixed;
   _position: absolute;
   top: 0;
   left: 0;
   width: 100%;
   height: 100%;
   z-index: 100;
}

.dim-layer .dimBg {
   position: absolute;
   top: 0;
   left: 0;
   width: 100%;
   height: 100%;
   background: #000;
   opacity: .5;
   filter: alpha(opacity = 50);
}

.dim-layer .pop-layer {
   display: block;
}

a.btn-layerClose {
   display: inline-block;
   height: 25px;
   padding: 0 14px 0;
   font-size: 20px;
   line-height: 25px;
   float: right;
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
   width: 100px;
   border-width: 1px;
   padding: 8px;
   border-style: solid;
   border-color: #3A3A3A;
   background-color: #B3B3B3;
}

table.table-style-one td {
   border-width: 1px;
   padding-top: 5px;
   padding-left: 5px;
   border-style: solid;
   border-color: #3A3A3A;
   background-color: #ffffff;
   width: 25%;
}

.table-style-one  td  input {
   width: 30px;
}

p.ctxt mb20 input {
   width: 50%;
}

#popupTitle {
   font-size: 20px;
}
</style>


<style>
.nav-agency {
   border-bottom: 1px solid #DDD;
}

#classIndex {
   margin-left: 10px;
	margin-top: 120px;
	margin-bottom: 10px;
	margin-right: 50px;
	border: 1px solid #C2C1C1;
	height: auto;
	float: left;
}

.StudyRoom {
   margin: 0px;
}

#StudyRoom {
   padding-top: 10px;
   padding-left: 20px;
   padding-bottom: 10px;
   background-color: #ff6600;
   color: white;
}

.StudyRoom li:not(#StudyRoom) {
   list-style: none;
   border-top: 1px solid rgba(0, 0, 0, 0.25);
   height: 35px;
   padding-left: 10px;
   padding-top: 5px;
   font-size: 13px;
   width: 140px;
}

.StudyRoom li:not(#StudyRoom):hover {
   list-style: none;
   border-color: 1px solid rgba(0, 0, 0, 0.25);
   height: 35px;
   padding-top: 5px;
   font-size: 13px;
   background-color: #5D5D5D;
   color: white;
}

.StudyRoom li {
   list-style: none;
}

#homework {
   border-bottom: 2px solid #ff6600;
   height: auto;
   padding: 10px 10px 40px 10px;
   flaot: left;
}

#div1 {
   width: 80%;
   float: left;
   margin-top: 70px;
   /* border: 1px solid #FF0000; */
}

#classDataResi {
   float: right;
}

#h3home {
   float: left;
   margin: 0;
}

#homeworkResi {
   float: right;
}

.container {
   margin-top: -100px;
}

.container li {
   z-index: 10;
}

.btn-example {
   background-color: #ff6600;
   padding: 8px;
   border-radius: 5px;
   color: white;
   position: relative;
   float: right;
}

.btn-del {
   background-color: #7f7f7f;
   padding: 8px;
   border-radius: 5px;
   color: white;
   position: relative;
   float: right;
   margin-left: 10px;
}

#notExist {
   background-color: #D5D4D3;
   height: 200px;
   text-align: center;
}

#testDate input {
   height: 30px;
}

#fileUpload input {
   width: 300px;
}

#testSubmit input {
   width: 80px;
   height: 30px;
   background-color: #1bbc9b;
   text-decoration: none;
   border: 1px solid #1bbc9b;
   margin-top: 10px;
   margin-left: 185px;
   color: white;
}
</style>

<script>
   window.console = window.console || function(t) {
   };
</script>



<script>
   if (document.location.search.match(/type=embed/gi)) {
      window.parent.postMessage("resize", "*");
   }
</script>

</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar" translate="no">
   <!-- 전체 NAV -->
   <div class="nav-agency">
      <div class="navbar navbar-static-top">
         <div class="container">
            <a class="brand" href="/highlighter"> <img
               src="./resources/img/logo.png" alt=""></a>
            <div id="main-nav">
               <div class="nav-collapse collapse">
                  <ul class="nav sf-js-enabled sf-shadow">
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
   <!-- 전체 NAV 끝 -->

   <!-- 강사 뷰 -->
   <c:if test="${user_grade eq 'teacher'}">
      <div style="width: 90%; margin: 0 auto;">
         <!-- 과외 정보 관리 NAV -->
         <div id="classIndex">
            <div id="classMain">
               <ul class="StudyRoom">
                  <li id="StudyRoom">StudyRoom<br>과외 정보 관리
                  </li>
                  <li id="StudyHomework">숙제</li>
                  <li id="StudyClassData">강의자료</li>
                  <li id="StudyStudyManagement">수강 학생 관리</li>
                  <li id="StudyClassTest">시험</li>
                  <li id="StudyReplay">다시보기</li>
                  <li id="StudyClassDeval">진단평가</li>
               </ul>
            </div>
         </div>
         <!-- 과외 정보 관리 NAV 끝 -->



         <c:forEach items="${allid}" var="allid">
            <input type="hidden" name="allid" value="${allid}">
         </c:forEach>


         <!-- 시험 DIV 영역 -->
         <div id="div1">
            <div id="homework">
               <h3 id="h3home">시험</h3>
               <!-- 시험 레이어 팝업  -->
               <div class="dim-layer">
                  <!-- 겉 화면 어둡게 -->
                  <div class="dimBg"></div>
                  <div id="layer2" class="pop-layer">
                     <div class="pop-container">
                        <div class="pop-conts">
                           <!-- 시험출제 내용  -->
                           <form id="form1" method="post" enctype="multipart/form-data">
                              <c:forEach items="${allid}" var="allid">
                                 ${allid}
                                 <input type="hidden" name="allid" value="${allid}">
                              </c:forEach>

                              <p id="popupTitle" class="ctxt mb20">
                                 시험출제<a href="#" class="btn-layerClose">X</a>
                              </p>
                              <p id="testDate">
                                 ｜시험날짜 : <input type="date" name="testdate" required>
                              </p>
                              <p id="fileUpload">
                                 ｜시험지 업로드 : <input type="file" name="file"> <input
                                    type="hidden" value="${list.ext_id}" name="ext_id">
                              </p>
                              <p class="testTime">
                                 ｜시험 시간 입력 : <input type="text" id="testTime2" name="testTime"
                                    required>분
                              </p>
                              <p class="correctansw">
                                 ｜정답 입력<br>
                              </p>

                              <table class="table-style-one">
                                 <thead>
                                    <tr>
                                       <th>문제번호</th>
                                       <th>정답</th>
                                       <th>문제번호</th>
                                       <th>정답</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>1</td>
                                       <td><input type="text" id="qjs1" name="answ1"></td>
                                       <td>11</td>
                                       <td><input type="text" id="qjs11" name="answ11"></td>
                                    </tr>
                                    <tr>
                                       <td>2</td>
                                       <td><input type="text" id="qjs2" name="answ2"></td>
                                       <td>12</td>
                                       <td><input type="text" id="qjs12" name="answ12"></td>
                                    </tr>
                                    <tr>
                                       <td>3</td>
                                       <td><input type="text" id="qjs3" name="answ3"></td>
                                       <td>13</td>
                                       <td><input type="text" id="qjs13" name="answ13"></td>
                                    </tr>
                                    <tr>
                                       <td>4</td>
                                       <td><input type="text" id="qjs4" name="answ4"></td>
                                       <td>14</td>
                                       <td><input type="text" id="qjs14" name="answ14"></td>
                                    </tr>
                                    <tr>
                                       <td>5</td>
                                       <td><input type="text" id="qjs5" name="answ5"></td>
                                       <td>15</td>
                                       <td><input type="text" id="qjs15" name="answ15"></td>
                                    </tr>
                                    <tr>
                                       <td>6</td>
                                       <td><input type="text" id="qjs6" name="answ6"></td>
                                       <td>16</td>
                                       <td><input type="text" id="qjs16" name="answ16"></td>
                                    </tr>
                                    <tr>
                                       <td>7</td>
                                       <td><input type="text" id="qjs7" name="answ7"></td>
                                       <td>17</td>
                                       <td><input type="text" id="qjs17" name="answ17"></td>
                                    </tr>
                                    <tr>
                                       <td>8</td>
                                       <td><input type="text" id="qjs8" name="answ8"></td>
                                       <td>18</td>
                                       <td><input type="text" id="qjs18" name="answ18"></td>
                                    </tr>
                                    <tr>
                                       <td>9</td>
                                       <td><input type="text" id="qjs9" name="answ9"></td>
                                       <td>19</td>
                                       <td><input type="text" id="qjs19" name="answ19"></td>
                                    </tr>
                                    <tr>
                                       <td>10</td>
                                       <td><input type="text" id="qjs10" name="answ10"></td>
                                       <td>20</td>
                                       <td><input type="text" id="qjs20" name="answ20"></td>
                                    </tr>
                                 </tbody>
                              </table>
                              <p id="testSubmit">
                                 <input type="submit" value="등록">
                              </p>
                           </form>
                           <!-- 시험출제 내용  끝-->
                        </div>
                     </div>
                  </div>
               </div>
               <!-- 시험 레이어 팝업 끝 -->
            </div>

            <br>
            <!-- 시험 테이블 영역  -->
            <div class="w3-container">
               <a href="#layer2" class="btn-del">삭제</a> <a href="#layer2"
                  class="btn-example">시험등록</a>
               <table class="w3-table w3-bordered">
                  <tr>
                     <th>주차</th>
                     <th>시험시간</th>
                     <th>시험날짜</th>
                  </tr>

                  <c:forEach items="${teacherList}" var="teacherList">
                     <tr>

                        <td>${teacherList.test_id}</td>
                        <td>${teacherList.test_time}</td>
                        <td>${teacherList.test_date}</td>

                     </tr>
                  </c:forEach>

               </table>
               <c:if test="${empty teacherList}">
                  <div id="notExist">시험 정보가 없습니다.</div>
               </c:if>
            </div>
            <!-- 시험 테이블 영역 끝 -->
         </div>
      </div>
   </c:if>
   <!-- 학생 뷰 -->
   <c:if test="${user_grade eq 'student'}">
      <div id="classIndex">
         <div id="classMain">
            <ul class="StudyRoom">
               <li id="StudyRoom">Study
                     Room<br>과외 정보 관리
               </li>
               <li id="StudyHomework">숙제</li>
               <li id="StudyClassData"><a href="/highlighter/classData">강의자료</a></li>
               <li id="StudyStudyManagement">수강 학생 관리</li>
               <li id="StudyClassTest">시험</li>
               <li id="StudyReplay"><a href="/highlighter/classVideoList">다시보기</a></li>
               <li id="StudyClassDeval"><a href="/highlighter/classDeval">진단평가</a></li>
            </ul>
         </div>

      </div>

      <div id="div1">
         <div id="homework">
            <h3 id="h3home">시험</h3>

         </div>

         <br>
         <div class="w3-container">

            <div>${id}야안녕</div>
            <div>${user_grade}</div>
            <table class="w3-table w3-bordered">
               <tr>
                  <th>주차</th>
                  <th>시험시간</th>
                  <th>응시상태</th>
                  <th>시험날짜</th>
                  <th>오답노트</th>
               </tr>
               <c:forEach items="${testlist}" var="testlist">
                  <tr>
                     <td id="test_gogo">
                           <a href="classTestTry?test_id=${testlist.test_id}&ext_id=${ext_id}"><script>
                                 var weeks = '${testlist.test_id}';
                                 var week = weeks.substr(8);
                                 document.write(week);
                           </script></a>
                           
                     <!--                
                     <script>
                        var weeks = '${testlist.test_id}';
                        var week = weeks.substr(8);
                        document.write(week);
                     </script>
                     
                     
   
                     <script>
                     var test_state = '${testlist.test_state}';
                     console.log(test_state);   
                        if(test_state=="clear"){
                  
                        }else{
                           $("#test_gogo").on("click", function(){
                              location.href="classTestTry?test_id=${testlist.test_id}";
                           });
                        }   
                     
                     
                     </script> -->
                     </td>
                     <td>${testlist.test_time}</td>
                     <td><script>
                        var test_state = '${testlist.test_state}';
                        if(test_state=="clear"){
                        document.write("응시완료");
                        }else{
                        document.write("미응시");
                        }
                        /* if (test_state == "")
                           document.write("미응시");
                        else {
                           documnet.write("시발왜 안찍힘"+test_state);
                        } */
                     </script></td>
                     <td>${testlist.test_date}</td>
                     <td><a
                        href="classWrongAnswerNote?test_id=${testlist.test_id}&user_id=${id}">오답노트</a></td>
                  </tr>
               </c:forEach>
            </table>
         </div>

      </div>
   </c:if>
   <input type="hidden" name="test_id">
   <input type="hidden" name="user_id">
   <input type="hidden" name="test_time">
   <hr class="soften1 copyhr">
   <div class="row-fluid copyright">
      <div class="span12">Copyright &copy; 2012. Greepit.com</div>
   </div>

   <script
      src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
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
      /* 과외 정보 관리 NAV */
      $("#StudyRoom").click(function() {
         location.href = "/Highlighter/classMain?ext_id=${ext_id}";
      });
      $("#StudyHomework").click(function() {
         alert("개발 중입니당~!");
         /* location.href="/highlighter/homework"; */
      });
      $("#StudyClassData").click(function() {
         alert("개발 중입니당~!");
         /* location.href="/highlighter/classData"; */
      });
      $("#StudyStudyManagement").click(function() {
    	  location.href="/Highlighter/classSTManagement?user_id=${id}&ext_id=${ext_id}";
    	 
      });
		$("#StudyClassTest").click(function(){
			location.href="/Highlighter/classTest?ext_id=${ext_id}&user_id=${id}";
		});
      $("#StudyReplay").click(function() {
         alert("개발 중입니당~!");
      });
      $("#StudyClassDeval").click(function() {
         alert("개발 중입니당~!");
         /* location.href="/highlighter/classDeval"; */
      });
      /* 과외 정보 관리 NAV 끝 */
      $('.btn-example').click(function() {
         var $href = $(this).attr('href');
         layer_popup($href);
      });
      function layer_popup(el) {

         var $el = $(el); //레이어의 id를 $el 변수에 저장
         var isDim = $el.prev().hasClass('dimBg'); //dimmed 레이어를 감지하기 위한 boolean 변수

         isDim ? $('.dim-layer').fadeIn() : $el.fadeIn();

         var $elWidth = ~~($el.outerWidth()), $elHeight = ~~($el
               .outerHeight()), docWidth = $(document).width(), docHeight = $(
               document).height();

         // 화면의 중앙에 레이어를 띄운다.
         if ($elHeight < docHeight || $elWidth < docWidth) {
            $el.css({
               marginTop : -$elHeight / 2,
               marginLeft : -$elWidth / 2
            })
         } else {
            $el.css({
               top : 0,
               left : 0
            });
         }

         $el.find('a.btn-layerClose').click(function() {
            isDim ? $('.dim-layer').fadeOut() : $el.fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
            $(".table-style-one input").val("");
            $(".pop-conts p input").val("");
            return false;
         });

         $('.layer .dimBg').click(function() {
            $('.dim-layer').fadeOut();
            return false;
         });

      }
      //# sourceURL=pen.js
   </script>


   <script>

   
      $("#classTestTry").on("click", function() {
         $("form").attr("action", "classTestTry");
         $("form").attr("method", "get");
         $("form").submit();
      });

      $("#classDataResi").on("click", function() {
         $("form").attr("action", "classDataResi");
         $("form").attr("method", "get");
         $("form").submit();
      });

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