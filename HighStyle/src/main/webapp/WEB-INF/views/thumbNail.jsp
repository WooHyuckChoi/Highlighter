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
	<link rel="stylesheet" href="./resources/unify/assets/css/custom.css">
	<link rel="stylesheet" href="./resources/unify/assets/css/thumbNail.css">
	<!-- ico -->
	<link rel="shortcut icon" href="./resources/ico/highlighter.ico">
	<style>
		#StudyRoom {
			background-color: #1279ff;
		}
		
		#StudyRoom a {
			color: white;
			font-size: 16px;
		}
		#videoMemo{
			
		}
		.thumbBox{
			display: inline-block;
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
					<img style="width:270px;"src="./resources/img/high_logo.png" alt="Logo">
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
				<!-- 강사화면 -->
				<c:if test="${user_grade eq 'teacher' }">
					<div class="col-md-3 md-margin-bottom-40">
						<img class="img-responsive profile-img margin-bottom-20" src="./resources/unify/assets/img/team/img32-md.jpg" alt="teacherProfile">
						<!-- src="displayFile?fileName=${list.prof_photo }" -->
						<ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
							<li id="StudyRoom" class="list-group-item">
								<a href="/Highlighter/newLecturePage?ext_id=${ext_id}"><i class="fa fa-bar-chart-o"></i> StudyRoom<br>과외 정보 관리</a>
							</li>
							<li class="list-group-item">
							<a href="homeworkPage?ext_id=${ext_id }&user_id=${user_id}"><i class="fa fa-user"></i> 숙제</a>
							</li>
							<li class="list-group-item">
								<a href="/Highlighter/testPage?ext_id=${ext_id}"><i class="fa fa-comments"></i> 시험</a>
							</li>
							<li class="list-group-item">
								<a href="/Highlighter/listAll?ext_id=${ext_id}"><i class="fa fa-history"></i> 다시보기</a>
							</li>
							<c:if test="${user_grade eq 'teacher'}">
								<li class="list-group-item">
									<a href="/Highlighter/classSTManagementList?ext_id=${ext_id}"><i class="fa fa-group"></i> 수강 학생 관리</a>
								</li> 
							</c:if>
						</ul>
					</div>
				</c:if>
				<!-- 학생 화면 -->
				<c:if test="${user_grade ne 'teacher' }">
					<div class="col-md-3 md-margin-bottom-40">
						<img class="img-responsive profile-img margin-bottom-20" src="./resources/unify/assets/img/team/img32-md.jpg" alt="teacherProfile">
						<!-- src="displayFile?fileName=${list.prof_photo }" -->
						<ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
							<li id="StudyRoom" class="list-group-item">
								<a href="/Highlighter/newLecturePage?ext_id=${ext_id}"><i class="fa fa-bar-chart-o"></i> StudyRoom<br>과외 정보 관리</a>
							</li>
							<li class="list-group-item">
								<a href="homeworkPage?ext_id=${ext_id }&user_id=${user_id}"><i class="fa fa-user"></i> 숙제</a>
							</li>
							<li class="list-group-item">
								<a href="testPage?ext_id=${ext_id}"><i class="fa fa-comments"></i> 시험</a>
							</li>
							<li class="list-group-item">
								<a href="/Highlighter/listAll?ext_id=${ext_id}"><i class="fa fa-history"></i> 다시보기</a>
							</li>
							<li class="list-group-item">
								<a href="/Highlighter/classDeval?user_id=${id}&ext_id=${ext_id}&user_grade=${user_grade}"><i class="fa fa-cog"></i> 진단평가</a>
							</li>
						</ul>
					</div>
				</c:if>
				<!--End Left Sidebar-->

				<!-- Profile Content -->
				<div class="col-md-9">
					<div class="profile-body">
						<!-- 동영상 -->
						<div class="row">
							<div class="col-md-12">
								<video id="videoPlay" controls preload="auto" style="width:100%; height:400px">
									<source src="video?fileName=${dto.att_file }" type="video/webm">
									<source src="video?fileName=${dto.att_file }" type="video/mp4">
								</video>
								<div id="playTime"></div>
								<input id="hid" type="hidden" value="" />
							</div>
						</div>
						<!-- 동영상 정보 -->
						<div class="profile-bio">
							<div class="post_title"><img src="./resources/img/right-arrow.png">${dto.post_title}</div>
							<div class="post_cont">${dto.post_cont}</div>
							<div class="post_date">
								<script>
									var post_date = '${dto.post_date}';
									var post_date2 = post_date.substr(0,11);
									document.write("게시일 : "+post_date2);
								</script>
							</div>
							<div class="thumbNail">
								<c:if test="${user_grade eq 'teacher' }">
									<a id="stilCut"><img src="./resources/img/add-plus-button.png">섬네일 추출</a>
								</c:if>
							</div>
						</div>
						<div class="row">
							<!-- Lecture intro -->
							<div class="col-sm-12 sm-margin-bottom-30">
								<div class="panel panel-profile">
									<div class="panel-heading overflow-h">
										<h2 class="panel-title heading-sm pull-left"> 썸네일 </h2>
									</div>
									<div class="panel-body">
										<div id="stilCutImg">
											<c:if test="${user_grade ne 'teacher' }">
												<c:forEach items="${thumb_info }" var="thumb_info">
													<div class="thumbBox">
														<img onclick="setVideoTime(${thumb_info.thumb_time})" 
														src="displayFile?fileName=${thumb_info.thumb_name }" width="150px" />
														<p>${thumb_info.thumb_memo }</p>
													</div>
												</c:forEach>
													<script>
														function setVideoTime(e)
														{
															var videocontrol = document.getElementById("videoPlay");
															videocontrol.currentTime=e;
															
														}
														
													</script>
											</c:if>
											<c:if test="${user_grade eq 'teacher' }">
												<c:forEach items="${thumb_info }" var="thumb_info">
													<img onclick="setVideoMemo()" 
													src="displayFile?fileName=${thumb_info.thumb_name }" alt="${thumb_info.thumb_id }" width="150px" />
												</c:forEach>
												<script>
													function setVideoMemo()
													{
														var e = $(this).attr("alt");
														console.log(e);
														//$("#videoMemo").show();
													}
												</script>
											</c:if>
										</div>
										<input id="videoMemo" type="text" />
									</div>
								</div>
							</div>
							<!--End Lecture intro-->
						</div>
						<!--/end row-->

						<hr>

						<!--Schedule-->
						<div class="panel panel-profile">
							<div class="panel-heading overflow-h">
								<h2 class="panel-title heading-sm pull-left"> 설명 </h2>
							</div>
							<div class="panel-body margin-bottom-40">
								<p id="memoView"></p>
							</div>
						</div>
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
	<script type="text/javascript">
		jQuery(document).ready(function() { /* bootstrap - scroll 최상위로 */
			App.init();
			App.initScrollBar();
			Datepicker.initDatepicker();
			CirclesMaster.initCirclesMaster1();
			StyleSwitcher.initStyleSwitcher();
		});
		$("#logout").on("click", function(){
			window.location.href="logout";
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function(){
		
		$("#videoMemo").hide();
		var videocontrol = document.getElementById("videoPlay");
		var i=0;
			videocontrol.addEventListener("timeupdate",PlayTime,false);
			function PlayTime(e)
			{
				document.getElementById("playTime").innerHTML =
					"재생 상태 : "+Math.floor(videocontrol.currentTime);
				
				$("#hid").val(Math.floor(videocontrol.currentTime));
				
				console.log(Math.floor(videocontrol.currentTime));
			}
			
			$("#stilCut").on("click", function(){
				if(videocontrol.paused)
				{
					var memo = window.prompt("섬네일의 저장할 메모를 입력하세요.");
					var curT=$("#hid").val();
					alert(curT);
					$.ajax({
						url:"thumb",
						type:"POST",
						dataType : "text",
						contentType: "application/json; charset=UTF-8",
						data: JSON.stringify({
							curT : curT,
							location : '${dto.att_file}',
							destination :"D:\\FFMPEG\\thumbNail\\",
							post_id : '${dto.post_id}',
							memo : memo
						}),
						/* destination :"D:\\FFMPEG\\thumbNail\\", */
						success : function(data) {
							if(data){
								alert(data);
								//var stilCut = $('<img id=a'+i+' src="displayFile?fileName='+data+'" width="150px" />');
								var stilCut = $('<img id='+i+' src="displayFile?fileName='+data+'" width="150px" />');
								stilCut.appendTo("#stilCutImg");
								$(this).on("click",function(){
									videocontrol.currentTime=30;
								});
								i++;
							}
						},
						error : function(data) {
							alert("실패!");
						}
					});
				}
				else
				{
					alert("영상을 정지해 주십시오.");
				}
				
			});
		});
	</script>
</body>
</html>