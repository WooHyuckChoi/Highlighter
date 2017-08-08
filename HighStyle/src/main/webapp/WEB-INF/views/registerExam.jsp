<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<title>Highlighter</title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Favicon -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Web Fonts -->
	<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="./resources/unify/assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="./resources/unify/assets/css/style.css">

	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="./resources/unify/assets/css/headers/header-default.css">
	<link rel="stylesheet" href="./resources/unify/assets/css/footers/footer-v1.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="./resources/unify/assets/plugins/animate.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">

	<!-- CSS Page Style -->
	<link rel="stylesheet" href="./resources/unify/assets/css/pages/profile.css">
	<link rel="stylesheet" href="./resources/unify/assets/css/pages/shortcode_timeline2.css">

	<!-- CSS Theme -->
	<link rel="stylesheet" href="./resources/unify/assets/css/theme-colors/default.css" id="style_color">
	<link rel="stylesheet" href="./resources/unify/assets/css/theme-skins/dark.css">

	<!-- CSS Customization : 시간표 -->
	<link rel="stylesheet" href="./resources/unify/assets/css/registerExam.css">
	<!-- ico -->
	<link rel="shortcut icon" href="./resources/ico/highlighter.ico">
	
	<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css">
	<style>
		#noticeResi {
			float: right;
			width: 90px;
			background-color: #1279ff;
			padding-top: 5px;
			padding-left: 10px;
			padding-bottom: 5px;
			margin-top: -5px;
			color: white;
			border-radius: 5px;
			border: solid 1px #1279ff;
			margin-top: 2px;
		}
		
		#StudyRoom {
			background-color: #1279ff;
		}
		
		#StudyRoom a {
			color: white;
			font-size: 16px;
		}
	</style>
</head>
<body>
	<div class="wrapper">
		<!--=== Header ===-->
		<div class="header">
			<div class="container">
				<!-- Logo -->
				<a class="logo" href="/Highlighter">
					<img src="./resources/img/blue_Logo.png" alt="Logo">
				</a>
				<!-- End Logo -->

				<!-- Topbar -->
				<div class="topbar">
					<ul class="loginbar pull-right">
						<%--<li class="topbar-devider"></li> 이거 그거임 구분 짝대기 --%>
						<li id="logout"><a href="javascript:void(0);">Logout</a></li>
					</ul>
				</div>
				<!-- End Topbar -->

				<!-- Toggle get grouped for better mobile display -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="fa fa-bars"></span>
				</button>
				<!-- End Toggle -->
			</div><!--/end container-->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
				<div class="container">
					<ul class="nav navbar-nav">
						<!-- Home -->
						<li class="dropdown">
							<a href="/Highlighter">Home</a>
						</li>
						<!-- End Home -->

						<!-- teacher -->
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								강사
							</a>
							<ul class="dropdown-menu">
								<!-- About Pages -->
								<li class="dropdown-submenu">
									<a href="#">강사 이용방법</a>
								</li>
								<!-- End About Pages -->

								<!-- regist lecture -->
								<li class="dropdown-submenu">
									<a href="javascript:void(0);">과외등록</a>
								</li>
								<!-- End regist lecture -->

								<!--  -->
								<li class="dropdown-submenu">
									<a href="javascript:void(0);">강사평가</a>
								</li>
								<!-- End  -->
							</ul>
						</li>
						<!-- End teacher -->

						<!-- Student -->
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								학생
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-submenu">
									<a href="#">학생 이용방법</a>
								</li>
								<li class="dropdown-submenu">
									<a href="#">과외 검색</a>
								</li>
							</ul>
						</li>
						<!-- End Student -->

						<!-- Parents -->
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								학부모
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-submenu">
									<a href="#">학부모 이용방법</a>
								</li>
							</ul>
						</li>
						<!-- End Parents -->

						<!-- Site intro -->
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								사이트 소개
							</a>
						</li>
						<!-- End Site intro -->

						<!--  -->
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								문의
							</a>
						</li>
						<!-- End Demo Pages -->
					</ul>
				</div><!--/end container-->
			</div><!--/navbar-collapse-->
		</div>
		<!--=== End Header ===-->

		<!--=== Profile ===-->
		<div class="container content profile">
			<div class="row">
				<!--Left Sidebar-->
				<div class="col-md-3 md-margin-bottom-40">
					<img class="img-responsive profile-img margin-bottom-20" src="./resources/unify/assets/img/team/img32-md.jpg" alt="teacherProfile">
					<!-- src="displayFile?fileName=${list.prof_photo }" -->
					<ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
						<li id="StudyRoom" class="list-group-item">
							<a href="/Highlighter/newLecturePage?ext_id=${ext_id}"><i class="fa fa-bar-chart-o"></i> StudyRoom<br>과외 정보 관리</a>
						</li>
						<li class="list-group-item">
							<a href="#"><i class="fa fa-user"></i> 숙제</a>
						</li>
						<li class="list-group-item">
							<a href="/Highlighter/classSTManagementList?ext_id=${ext_id}"><i class="fa fa-group"></i> 수강 학생 관리</a>
						</li>
						<li class="list-group-item">
							<a href="/Highlighter/classTest?ext_id=${ext_id}&user_id=${id}"><i class="fa fa-comments"></i> 시험</a>
						</li>
						<li class="list-group-item">
							<a href="/Highlighter/listAll?ext_id=${ext_id}"><i class="fa fa-history"></i> 다시보기</a>
						</li>
						<li class="list-group-item">
							<a href="/Highlighter/classDeval?user_id=${id}&ext_id=${ext_id}&user_grade=${user_grade}"><i class="fa fa-cog"></i> 진단평가</a>
						</li>
					</ul>
				</div>
				<!--End Left Sidebar-->

				<!-- Profile Content -->
				<div class="col-md-9">
					<div class="profile-body">
						<div id="registerTest">
							<span>시험 등록</span>
						</div>
						<!-- end row -->
						<div class="profile-bio">
							<div class="row">
								<div class="col-md-12">
									<!-- 강사 정보 -->
									<div id="teacherInfo" class="panel margin-bottom-40">
										<div class="panel-body">
											<div class="file-upload">
												<button class="file-upload-btn" type="button" onclick="$('.file-upload-input').trigger( 'click' )">시험지 등록</button>
												<input style="display:none;" class="file-upload-input" type='file' onchange="readURL(this);" accept="image/*" />
												<div class="image-upload-wrap" style="display:none">
													<div class="image-title-wrap"><span class="image-title">Uploaded Image</span><button type="button" onclick="removeUpload()" class="remove-image">X</button></div>
													<img class="file-upload-image" src="#" alt="your image"/>
												</div>
											</div>
										<!--  -->
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
									</div>
									<!-- 강사 정보 끝 -->
								</div>
							</div>
						</div><!--/end row-->
			
						<!--End Schedule-->
					</div>
				</div>
				<!-- End Profile Content -->
			</div>
		</div>
		<!--=== End Profile ===-->

		<!--=== Footer Version 1 ===-->
		<div class="footer-v1">
			<div class="footer">
				<div class="container">
					<div class="row">
						<!-- About -->
						<div class="col-md-3 md-margin-bottom-40">
							<a href="index.html"><img id="logo-footer" class="footer-logo" src="./resources/img/logo.png" alt="logo"></a>
							<p>과외 중개 사이트가 아닌 매칭 사이트.</p>
							<p>온라인 과외 사이트</p>
						</div><!--/col-md-3-->
						<!-- End About -->
					</div>
				</div>
			</div><!--/footer-->

			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<p>
								2015 &copy; All Rights Reserved.
								<a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
							</p>
						</div>
					</div>
				</div>
			</div><!--/copyright-->
		</div>
		<!--=== End Footer Version 1 ===-->
	</div><!--/wrapper-->
	<!-- file upload -->
	<script class="jsbin" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="./resources/unify/assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="./resources/unify/assets/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/plugins/circles-master/circles.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/plugins/sky-forms-pro/skyforms/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript" src="./resources/unify/assets/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="./resources/unify/assets/js/app.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/js/plugins/datepicker.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/js/plugins/circles-master.js"></script>
	<script type="text/javascript" src="./resources/unify/assets/js/plugins/style-switcher.js"></script>
	<script type="text/javascript"> /* bootstrap - scroll 최상위로 */
		jQuery(document).ready(function() {
			App.init();
			App.initScrollBar();
			Datepicker.initDatepicker();
			CirclesMaster.initCirclesMaster1();
			StyleSwitcher.initStyleSwitcher();
		});
	
	</script>
	<script>
	function readURL(input) {
		if (input.files && input.files[0]) {

			var reader = new FileReader();

			reader.onload = function (e) {
				$('.file-upload-image').attr('src', e.target.result);
				$('.image-upload-wrap').show();
				$('.image-title').html(input.files[0].name);
			};

			reader.readAsDataURL(input.files[0]);

		}  else {
			$('.image-upload-wrap').hide();
		}
	}

	function removeUpload(){
		$('.file-upload-input').replaceWith($('.file-upload-input').clone());
		$('.image-upload-wrap').hide();
	}
	</script>
</body>
</html>
