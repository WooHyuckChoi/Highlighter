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
	<!-- ico -->
	<link rel="shortcut icon" href="./resources/ico/highlighter.ico">
	<style>
		#noticeResi {
			float: right;
			width: 100px;
			background-color: #1279ff;
			padding-top: 5px;
			padding-left: 10px;
			padding-bottom: 1px;
			margin-top: -5px;
			color: white;
			border-radius: 5px;
			border: solid 1px #1279ff;
			margin-top: 2px;
			font-size: 16px;
		}
		
		#StudyRoom {
			background-color: #1279ff;
		}
		
		#StudyRoom a {
			color: white;
			font-size: 16px;
		}
		table.type07 {
	    border-collapse: collapse;
	    text-align: left;
	    line-height: 1.5;
	    border: 1px solid #1279ff;
	    margin: 20px 10px;
		}
		table.type07 thead {
		    border-right: 1px solid #1279ff;
		    border-left: 1px solid #1279ff;
		    background: #1279ff;
		}
		table.type07 thead th {
		    padding: 10px;
		    font-weight: bold;
		    vertical-align: top;
		    color: #fff;
		}
		table.type07 tbody th {
		    width: 150px;
		    padding: 10px;
		    font-weight: bold;
		    vertical-align: top;
		    border-bottom: 1px solid #1279ff;
		    background: #ffffff;
		}
		table.type07 td {
		    width: 350px;
		    padding: 10px;
		    vertical-align: top;
		    border-bottom: 1px solid #1279ff;
		}
		a:active {text-decoration: none; color: #1279ff;}
		a:hover {text-decoration: underline; color: #1279ff;}

	</style>
</head>
<body>
<!-- 비회원 -->
<c:if test="${id eq null}">
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
						<li class="dropdown-submenu">
							<a href="/Highlighter">home</a>
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
						<li class="dropdown-submenu">
							<a href="/Highlighter/question_listPage">사이트소개</a>
						</li>
						<!--  -->
						<li class="dropdown-submenu">
							<a href="/Highlighter/question_listPage">문의</a>
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
					<ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
						<li id="StudyRoom" class="list-group-item">
							<a href="/Highlighter/question_listPage"><i class="fa fa-bar-chart-o"></i> Question<br>문의</a>
						</li>
						<li class="list-group-item">
							<a href="/Highlighter/question_listPage"><i class="fa fa-user"></i> 문의목록</a>
						</li>
						<li class="list-group-item">
							<a href="/Highlighter/modifyMyInfo"><i class="fa fa-group"></i> 자주하는질문</a>
						</li>
					</ul>
				</div>
				<!--End Left Sidebar-->

				<!-- Profile Content -->
				<div class="col-md-9">
					<div class="profile-body">
						<!-- Lecture introduce and enter -->
						<div id="classIntro">
						<div class="box-footer" style="text-align: right">
							<button id="noticeResi" type="submit" class="btn btn-no-writer">질문하기</button>
						</div>
							<span>이용 시 궁금하신 사항 있으시면 질문 해주세요.</span>
						</div>
						<!-- end row -->
						<div class="profile-bio">
							<div class="row">
								<div class="col-md-12">
						
								</div>
							</div>
						</div><!--/end row-->

						<hr>

						<!-- end row -->
						<div class="profile-bio">
							<div class="row">
								<div class="col-md-12">
									<table class="type07">
										<thead>
											<tr>
												<th style="width: 10px">NO.</th>
												<th style="width: 1000px">문의 제목</th>
												<th style="width: 100px">작성자</th>
											</tr>
										</thead>
										<c:forEach items="${list}" var="QuestionVO">
												<tbody>
													<tr>
														<th scope="row">${QuestionVO.question_id}</th>
														<th scope="row"><a style="color: black" href='/Highlighter/question_readPage${pageMaker.makeQuery(pageMaker.cri.page)}&question_id=${QuestionVO.question_id}&user_name=${QuestionVO.user_name}'>${QuestionVO.question_title}</a></th>
														<th scope="row">${QuestionVO.user_name}</th>
													</tr>
												</tbody>
											</c:forEach>
										</table>
								</div>
							</div>
						</div><!--/end row-->
						<div class="list_number" style="text-align:center">
							<div class="list_n_menu">
								<ul class="pagination">
									<c:if test="${pageMaker.prev}">
										<a style="color: #1279ff" href="/Highlighter/question_listPage${pageMaker.makeQuery(pageMaker.startPage - 1)}">&laquo;</a>
									</c:if>
								
									<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
							
									<c:out value="${pageMaker.cri.page == idx?'':''}"/>
										<a style="color: #1279ff" href="/Highlighter/question_listPage${pageMaker.makeQuery(idx)}">${idx}</a>
									</c:forEach>
									
									<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
										<a style="color: #1279ff" href="/Highlighter/question_listPage${pageMaker.makeQuery(pageMaker.endPage +1)}">&raquo;</a>
									</c:if>
								</ul>
							</div>
						</div>
						<hr>
					</div>
				</div>
					<!-- End Profile Content -->
			</div>
		</div>
		<!--=== End Profile ===-->
	</div>
</c:if>
<!-- 비회원 끝 -->
<!-- 로그인 후/강사 -->
<c:if test="${(id ne null) and (user_grade eq 'teacher')}">
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
						<li class="dropdown-submenu">
							<a href="/Highlighter">home</a>
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
						<li class="dropdown-submenu">
							<a href="/Highlighter/question_listPage">사이트소개</a>
						</li>
						<!--  -->
						<li class="dropdown-submenu">
							<a href="/Highlighter/question_listPage">문의</a>
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
					<ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
						<li id="StudyRoom" class="list-group-item">
							<a href="/Highlighter/question_listPage"><i class="fa fa-bar-chart-o"></i> Question<br>문의</a>
						</li>
						<li class="list-group-item">
							<a href="/Highlighter/question_listPage"><i class="fa fa-user"></i> 문의목록</a>
						</li>
						<li class="list-group-item">
							<a href="/Highlighter/modifyMyInfo"><i class="fa fa-group"></i> 자주하는질문</a>
						</li>
					</ul>
				</div>
				<!--End Left Sidebar-->

				<!-- Profile Content -->
				<div class="col-md-9">
					<div class="profile-body">
						<!-- Lecture introduce and enter -->
						<div id="classIntro">
						<div class="box-footer" style="text-align: right">
							<button id="noticeResi" type="submit" class="btn btn-writer">질문하기</button>
						</div>
							<span>이용 시 궁금하신 사항 있으시면 질문 해주세요.</span>
						</div>
						<!-- end row -->
						<div class="profile-bio">
							<div class="row">
								<div class="col-md-12">
						
								</div>
							</div>
						</div><!--/end row-->

						<hr>

						<!-- end row -->
						<div class="profile-bio">
							<div class="row">
								<div class="col-md-12">
									<table class="type07">
										<thead>
											<tr>
												<th style="width: 10px">NO.</th>
												<th style="width: 1000px">문의 제목</th>
												<th style="width: 100px">작성자</th>
											</tr>
										</thead>
										<c:forEach items="${list}" var="QuestionVO">
												<tbody>
													<tr>
														<th scope="row">${QuestionVO.question_id}</th>
														<th scope="row"><a style="color: black" href='/Highlighter/question_readPage${pageMaker.makeQuery(pageMaker.cri.page)}&question_id=${QuestionVO.question_id}&user_name=${QuestionVO.user_name}'>${QuestionVO.question_title}</a></th>
														<th scope="row">${QuestionVO.user_name}</th>
													</tr>
												</tbody>
											</c:forEach>
										</table>
								</div>
							</div>
						</div><!--/end row-->
						<div class="list_number" style="text-align:center">
							<div class="list_n_menu">
								<ul class="pagination">
									<c:if test="${pageMaker.prev}">
										<a style="color: #1279ff" href="/Highlighter/question_listPage${pageMaker.makeQuery(pageMaker.startPage - 1)}">&laquo;</a>
									</c:if>
								
									<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
							
									<c:out value="${pageMaker.cri.page == idx?'':''}"/>
										<a style="color: #1279ff" href="/Highlighter/question_listPage${pageMaker.makeQuery(idx)}">${idx}</a>
									</c:forEach>
									
									<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
										<a style="color: #1279ff" href="/Highlighter/question_listPage${pageMaker.makeQuery(pageMaker.endPage +1)}">&raquo;</a>
									</c:if>
								</ul>
							</div>
						</div>
						<hr>
					</div>
				</div>
					<!-- End Profile Content -->
			</div>
		</div>
		<!--=== End Profile ===-->
	</div>
</c:if>
<!-- 로그인 후/강사 끝 -->

<!-- 로그인 후/학생 -->
<c:if test="${(id ne null) and (user_grade eq 'student') or (user_grade eq 'admin')}">
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
						<li class="dropdown-submenu">
							<a href="/Highlighter">home</a>
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
						<li class="dropdown-submenu">
							<a href="/Highlighter/question_listPage">사이트소개</a>
						</li>
						<!--  -->
						<li class="dropdown-submenu">
							<a href="/Highlighter/question_listPage">문의</a>
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
					<ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
						<li id="StudyRoom" class="list-group-item">
							<a href="/Highlighter/question_listPage"><i class="fa fa-bar-chart-o"></i> Question<br>문의</a>
						</li>
						<li class="list-group-item">
							<a href="/Highlighter/question_listPage"><i class="fa fa-user"></i> 문의목록</a>
						</li>
						<li class="list-group-item">
							<a href="/Highlighter/modifyMyInfo"><i class="fa fa-group"></i> 자주하는질문</a>
						</li>
					</ul>
				</div>
				<!--End Left Sidebar-->

				<!-- Profile Content -->
				<div class="col-md-9">
					<div class="profile-body">
						<!-- Lecture introduce and enter -->
						<div id="classIntro">
						<div class="box-footer" style="text-align: right">
							<button id="noticeResi" type="submit" class="btn btn-writer">질문하기</button>
						</div>
							<span>이용 시 궁금하신 사항 있으시면 질문 해주세요.</span>
						</div>
						<!-- end row -->
						<div class="profile-bio">
							<div class="row">
								<div class="col-md-12">
						
								</div>
							</div>
						</div><!--/end row-->

						<hr>

						<!-- end row -->
						<div class="profile-bio">
							<div class="row">
								<div class="col-md-12">
									<table class="type07">
										<thead>
											<tr>
												<th style="width: 10px">NO.</th>
												<th style="width: 1000px">문의 제목</th>
												<th style="width: 100px">작성자</th>
											</tr>
										</thead>
										<c:forEach items="${list}" var="QuestionVO">
												<tbody>
													<tr>
														<th scope="row">${QuestionVO.question_id}</th>
														<th scope="row"><a style="color: black" href='/Highlighter/question_readPage${pageMaker.makeQuery(pageMaker.cri.page)}&question_id=${QuestionVO.question_id}&user_name=${QuestionVO.user_name}'>${QuestionVO.question_title}</a></th>
														<th scope="row">${QuestionVO.user_name}</th>
													</tr>
												</tbody>
											</c:forEach>
										</table>
								</div>
							</div>
						</div><!--/end row-->
						<div class="list_number" style="text-align:center">
							<div class="list_n_menu">
								<ul class="pagination">
									<c:if test="${pageMaker.prev}">
										<a style="color: #1279ff" href="/Highlighter/question_listPage${pageMaker.makeQuery(pageMaker.startPage - 1)}">&laquo;</a>
									</c:if>
								
									<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
							
									<c:out value="${pageMaker.cri.page == idx?'':''}"/>
										<a style="color: #1279ff" href="/Highlighter/question_listPage${pageMaker.makeQuery(idx)}">${idx}</a>
									</c:forEach>
									
									<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
										<a style="color: #1279ff" href="/Highlighter/question_listPage${pageMaker.makeQuery(pageMaker.endPage +1)}">&raquo;</a>
									</c:if>
								</ul>
							</div>
						</div>
						<hr>
					</div>
				</div>
					<!-- End Profile Content -->
			</div>
		</div>
		<!--=== End Profile ===-->
	</div>
</c:if>
<!-- 로그인 후/강사 끝 -->
		<!--=== Footer Version 1 ===-->
		<div class="footer-v1">
			<div class="footer">
				<div class="container">
					<div class="row">
						<!-- About -->
						<div class="col-md-3 md-margin-bottom-40">
							<a class="logo" href="/Highlighter"><img style="width:270px;"src="./resources/img/high_logo.png" alt="Logo"></a>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;과외 중개 사이트가 아닌 매칭 사이트.</p>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;온라인 과외 사이트</p>
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
								&nbsp;&nbsp;&nbsp;&nbsp;2017 &copy;
								<a style="color: #1279ff" href="https://www.yjc.ac.kr/CmsHome/Class_01.jsp">YJC COMPUTER INFORMATION</a> | <a style="color: #1279ff" href="/Highlighter">WDB-A 3TEAM.</a>
							</p>
						</div>
					</div>
				</div>
			</div><!--/copyright-->
		</div>
		<!--=== End Footer Version 1 ===-->

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
	<script>
	//글쓰기
	$(document).ready(function() {
			var formObj = $("form[role='form']");

			console.log(formObj);

			$(".btn-writer").on("click", function() {
				self.location = "/Highlighter/question_register";
			});
			
			$(".btn-no-writer").on("click", function() {
				alert("로그인 해주세요~");
			});
		});
	$(document).ready(function() {

		$('#searchBtn').on("click", function(event) {
			self.location = "/Highlighter/question_listPage"
								+ '${pageMaker.makeQuery(1)}'
								+ "&searchType=" 
								+ $("select option:selected").val()
								+ "&keyword=" + $('#keywordInput').val();
		});
	});
	</script>
</body>
</html>
