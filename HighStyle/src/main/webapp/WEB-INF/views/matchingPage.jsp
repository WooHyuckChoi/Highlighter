<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="true" %>
<!DOCTYPE html>
<head>
	<title>Highlighter</title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Favicon -->
	<link rel="shortcut icon" href="./resources/ico/highlighter.ico">

	<!-- Web Fonts -->
	<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin">

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="./resources/unify/assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="./resources/unify/assets/css/style.css">

	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="./resources/unify/assets/css/headers/header-v6.css">
	<link rel="stylesheet" href="./resources/unify/assets/css/footers/footer-v6.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="./resources/unify/assets/plugins/animate.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/sliding-panel/style.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
	<link rel="stylesheet" href="./resources/unify/assets/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.min.css">

	<!-- CSS Theme -->
	<link rel="stylesheet" href="./resources/unify/assets/css/theme-colors/default.css" id="style_color">
	<link rel="stylesheet" href="./resources/unify/assets/css/theme-skins/dark.css">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="./resources/unify/assets/css/custom.css">
	<link rel="stylesheet" href="./resources/unify/assets/css/matchingPage.css">
	<style>
		.promo-text-v1{
			padding: 3px 0;
		    font-size: 20px;
		    font-weight: 600;
		    display: inline-block;
		    border-bottom: solid 0px #fff;
		}
	</style>
</head>

<body class="header-fixed header-fixed-space promo-padding-top sliding-panel-ini sliding-panel-flag-right">
	<div class="wrapper">
		<!--=== Header v6 ===-->
		<div class="header-v6 header-classic-white header-sticky">
			<!-- Navbar -->
			<div class="navbar mega-menu" role="navigation">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="menu-container">
						<button type="button" class="navbar-toggle sliding-panel__btn sliding-panel__btn--dark">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>

						<!-- Navbar Brand -->
						<div class="navbar-brand">
							<a href="/Highlighter">
								<img class="shrink-logo" src="./resources/img/blue_Logo.png" alt="Logo">
							</a>
						</div>
						<!-- ENd Navbar Brand -->

						<!-- Header Inner Right -->
						<div class="header-inner-right">
							<ul class="menu-icons-list">
								<li class="menu-icons shopping-cart">
									<i class="menu-icons-style radius-x fa fa-shopping-cart"></i>
									<span class="badge">0</span>
									<div class="shopping-cart-open">
										<span class="shc-title">No products in the Cart</span>
										<button type="button" class="btn-u"><i class="fa fa-shopping-cart"></i> Cart</button>
										<span class="shc-total">Total: <strong>$0.00</strong></span>
									</div>
								</li>
								<li class="menu-icons">
									<i class="menu-icons-style search search-close search-btn fa fa-search"></i>
									<div class="search-open">
										<input type="text" class="animated fadeIn form-control" placeholder="Start searching ...">
									</div>
								</li>
							</ul>
						</div>
						<!-- End Header Inner Right -->
					</div>
				</div>
			</div>
			<!-- End Navbar -->
		</div>
		<!--=== End Header v6 ===-->
		<!-- Promo Block -->
		<div class="promo-bg-pattern-v1-dark promo-bg-fixed content-xlg parallaxBg" >
			<div class="container text-center" data-start="opacity: 1;" data-320="opacity: 0;">
				<span class="promo-text-v1 color-light margin-bottom-10 animated fadeInUp wow" data-wow-duration="2s" data-wow-delay=".1s">
					<!--=== Team v1 ===-->
					<div class="container content-md team-v1" style="padding-top:70px; padding-bottom:50px;">
					<div class="recommend"><img src="./resources/img/lace.png">'${user_name}'님에게 추천합니다.</div>
						<ul class="list-unstyled row" style="">
						<c:if test="${fitMatching ne null }">
							<c:forEach items="${fitMatching}" var="fitMatching">
							<li onclick="applicationClass('${fitMatching.ext_id}','${fitMatching.user_id}');" class="col-sm-3 col-xs-6 md-margin-bottom-30" style="width:24%; background-color:#31353e; margin-right:10px;">
								<div class="team-img" >
									<img style="width:245px; height:270px;"class="img-responsive" src="displayFile?fileName=${fitMatching.prof_photo}" alt="" onerror="this.src='./resources/unify/assets/img/team/img10-md.jpg'">
									<ul>
										<li><a href="#"><i class="icon-custom icon-sm rounded-x fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="icon-custom icon-sm rounded-x fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="icon-custom icon-sm rounded-x fa fa-google-plus"></i></a></li>
									</ul>
								</div>
								<h3>${fitMatching.user_name}</h3>
								<h4>
									<script>
										var ext_id = '${fitMatching.ext_id}';
										var subject = ext_id.substr(2,2);
										if(subject == "01"){
											document.write("국어");
										}
										if(subject == "02"){
											document.write("영어");
										}
										if(subject == "03"){
											document.write("수학");
										}
										
									</script>
								</h4>
								<h4>
									<script>
										var ext_id = '${fitMatching.ext_id}';
										var onoff2 = ext_id.substr(0,1);
										var onoff = "";
										var pg = "";
										if(onoff2 == "0"){
											onoff = "온라인";
										}
										if(onoff2 == "1"){
											onoff = "오프라인";
										}
										var pg2 = ext_id.substr(1,1);
										if(pg2 == "1"){
											pg = "개인";
										}
										if(pg2 != "1"){
											pg = "그룹";
										}
										document.write(onoff+"/"+pg);
									</script>
								</h4>
								<h4> 수업료 : <b>${fitMatching.tuit_fees}원/(1시간)</b></h4>
								<p style="font-size:13px; font-weight:100; height:80px; overflow:hidden; text-overflow: ellipsis;">${fitMatching.intro_class}</p>
							</li>
							</c:forEach>
						</c:if>
						<c:if test="${fitMatching eq null }">
							<li style="background-color:#31353e; ">
								<div class="cantMatching" ><img src="./resources/img/danger.png"><br/><br/>맞춤 매칭은 학생 회원만 이용할 수 있습니다.<br/><br/><div>학생 회원이 아니신가요? <br/>화면 하단에 진단매칭과 빠른매칭을 이용해보시는 것은 어떻습니까?</div></div>
							</li>
						</c:if>	
						</ul>
					</div>
					<!--=== End Team v1 ===-->
				</span>

			</div>
		</div>
		<!-- End Promo Block -->

		<!-- Colorfull Block -->
		<div class="container-fluid">
			<div class="row no-gutter equal-height-columns">
				<div class="col-sm-4 promo-bg-img-v1">
					<div id="alignMatching" class="service-block rgba-purple no-margin-bottom content-sm equal-height-column">
						<i class="icon-custom icon-md rounded icon-color-light icon-line icon-badge"></i>
						<h2 class="heading-md font-light">맞춤 매칭</h2>
						<p class="no-margin-bottom font-light">맞는 과외를 찾기 힘드시다구요?<br/>맞춤 매칭을 이용해 나에게 맞는 과외를 추천받아보세요.</p>
					</div>
				</div>
				<div class="col-sm-4 promo-bg-img-v5">
					<div id="diagnosticMatching" class="service-block rgba-red no-margin-bottom content-sm equal-height-column">
						<i class="icon-custom icon-md rounded icon-color-light icon-line icon-fire"></i>
						<h2 class="heading-md font-light">진단 매칭</h2>
						<p class="no-margin-bottom font-light">어떤 과외가 좋을지 모르시겠다구요?<br/>진단 매칭을 통해 나에게 맞는 과외를 진단받아보세요.</p>
					</div>
				</div>
				<div class="col-sm-4 promo-bg-img-v4">
					<div id="privateSearch" class="service-block rgba-blue no-margin-bottom content-sm equal-height-column">
						<i class="icon-custom icon-md rounded icon-color-light icon-line icon-directions"></i>
						<h2 class="heading-md font-light">빠른 매칭</h2>
						<p class="no-margin-bottom font-light">특별히 원하는 조건이 있으시다구요?<br/>빠른 매칭을 통해 조건에 해당 되는 과외를 조회해보세요.</p>
					</div>
				</div>
			</div>
		</div>
		<!-- Colorfull Block -->


		<!-- Parallax Counter -->
		<div class="parallax-counter parallaxBg1">
			<div class="container content">
				<div class="row">
					<div class="col-sm-3 col-xs-6">
						<div class="counters">
							<span class="counter">10629</span>
							<h4>Users</h4>
						</div>
					</div>
					<div class="col-sm-3 col-xs-6">
						<div class="counters">
							<span class="counter">277</span>
							<h4>Projects</h4>
						</div>
					</div>
					<div class="col-sm-3 col-xs-6">
						<div class="counters">
							<span class="counter">78</span>
							<h4>Team Members</h4>
						</div>
					</div>
					<div class="col-sm-3 col-xs-6">
						<div class="counters">
							<span class="counter">109</span>
							<h4>Awards</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Parallax Counter -->

		<!--=== Footer v6 ===-->
		<div id="footer-v6" class="footer-v6">
			<div class="footer">
				<div class="container">
					<div class="row">
						<!-- About Us -->
						<div class="col-md-3 sm-margin-bottom-40">
							<div class="heading-footer"><h2>About Unify</h2></div>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis blandit ut metus a commodo. Pellentesque congue tellus sed enim sollicitudin, id blandit mauris eleifend.</p>
						</div>
						<!-- End About Us -->

						<!-- Recent News -->
						<div class="col-md-3 sm-margin-bottom-40">
							<div class="heading-footer"><h2>Recent News</h2></div>
							<ul class="list-unstyled link-news">
								<li>
									<a href="#">Apple Conference</a>
									<small>12 July, 2014</small>
								</li>
								<li>
									<a href="#">Bootstrap Update</a>
									<small>12 July, 2014</small>
								</li>
								<li>
									<a href="#">Themeforest Templates</a>
									<small>12 July, 2014</small>
								</li>
							</ul>
						</div>
						<!-- End Recent News -->

						<!-- Useful Links -->
						<div class="col-md-3 sm-margin-bottom-40">
							<div class="heading-footer"><h2>Useful Links</h2></div>
							<ul class="list-unstyled footer-link-list">
								<li><a href="#">About Us</a></li>
								<li><a href="#">Portfolio</a></li>
								<li><a href="#">Latest jobs</a></li>
								<li><a href="#">Community</a></li>
								<li><a href="#">Contact Us</a></li>
							</ul>
						</div>
						<!-- End Useful Links -->

						<!-- Contacts -->
						<div class="col-md-3">
							<div class="heading-footer"><h2>Contacts</h2></div>
							<ul class="list-unstyled contacts">
								<li>
									<i class="radius-3x fa fa-map-marker"></i>
									795 Folsom Ave, Suite 600,
									San Francisco, CA 94107
								</li>
								<li>
									<i class="radius-3x fa fa-phone"></i>
									(+123) 456 7890<br>
									(+123) 456 7891
								</li>
								<li>
									<i class="radius-3x fa fa-globe"></i>
									<a href="#">toronto@gmail.com</a><br>
									<a href="#">www.toronto.com</a>
								</li>
							</ul>
						</div>
						<!-- End Contacts -->
					</div>
				</div><!--/container -->
			</div>

			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-8 sm-margon-bottom-10">
							<ul class="list-inline terms-menu">
								<li class="silver"> &copy; 2016 All right reserved. Unify developed by <a href="https://htmlstream.com" target="_blank">Htmlstream<a href="#"></li>
								<li><a href="#">Terms of Use</a></li>
								<li><a href="#">Privacy and Policy</a></li>
								<li><a href="#">License</a></li>
								<li><a href="#">Support</a></li>
							</ul>
						</div>
						<div class="col-md-4">
							<ul class="list-inline dark-social pull-right space-bottom-0">
								<li>
									<a data-placement="top" data-toggle="tooltip" class="tooltips" data-original-title="Facebook" href="#">
										<i class="fa fa-facebook"></i>
									</a>
								</li>
								<li>
									<a data-placement="top" data-toggle="tooltip" class="tooltips" data-original-title="Twitter" href="#">
										<i class="fa fa-twitter"></i>
									</a>
								</li>
								<li>
									<a data-placement="top" data-toggle="tooltip" class="tooltips" data-original-title="Vine" href="#">
										<i class="fa fa-vine"></i>
									</a>
								</li>
								<li>
									<a data-placement="top" data-toggle="tooltip" class="tooltips" data-original-title="Google plus" href="#">
										<i class="fa fa-google-plus"></i>
									</a>
								</li>
								<li>
									<a data-placement="top" data-toggle="tooltip" class="tooltips" data-original-title="Pinterest" href="#">
										<i class="fa fa-pinterest"></i>
									</a>
								</li>
								<li>
									<a data-placement="top" data-toggle="tooltip" class="tooltips" data-original-title="Instagram" href="#">
										<i class="fa fa-instagram"></i>
									</a>
								</li>
								<li>
									<a data-placement="top" data-toggle="tooltip" class="tooltips" data-original-title="Tumblr" href="#">
										<i class="fa fa-tumblr"></i>
									</a>
								</li>
								<li>
									<a data-placement="top" data-toggle="tooltip" class="tooltips" data-original-title="Youtube" href="#">
										<i class="fa fa-youtube"></i>
									</a>
								</li>
								<li>
									<a data-placement="top" data-toggle="tooltip" class="tooltips" data-original-title="Soundcloud" href="#">
										<i class="fa fa-soundcloud"></i>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--=== End Footer v6 ===-->
</div><!--/wrapper-->

<!-- Sliding Panel -->
<div class="sliding-panel bg-color-darker">
	<div class="sliding-panel-inner sliding-panel-scrollable fullscreen">
		<ul class="sliding-navigation">
			<li><a href="index.html">Home</a></li>
			<li><a href="page_about3.html">Abour Us</a></li>
			<li><a href="page_services.html">Services</a></li>
			<li><a href="page_profile.html">Profile</a></li>
			<li><a href="blog_large_right_sidebar1.html">Blog</a></li>
			<li><a href="portfolio_3_columns_grid_text.html">Our Work</a></li>
			<li><a href="page_contact1.html">Contact Us</a></li>
		</ul>

		<h4>Contacts</h4>
		<address>
			58, Lorem Lis Street, Central Ave<br>
			New York, US<br><br>
			Phone: 938 334 6049<br>
			Fax: 938 334 6050<br><br>
			Email: <a href="mailto:#">info@htmlstream.com</a><br>
		</address>

		<ul class="list-inline social-icons-v1 social-icons-v1--dark">
			<li><a href="#"><i class="fa fa-twitter"></i></a></li>
			<li><a href="#"><i class="fa fa-facebook"></i></a></li>
			<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
			<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
		</ul>
	</div>

	<a href="javascript:void(0);" class="sliding-panel__close">Close</a>
</div>
<!-- End Sliding Panel -->

<!-- JS Global Compulsory -->
<script src="./resources/unify/assets/plugins/jquery/jquery.min.js"></script>
<script src="./resources/unify/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script src="./resources/unify/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script src="./resources/unify/assets/plugins/back-to-top.js"></script>
<script src="./resources/unify/assets/plugins/smoothScroll.js"></script>
<script src="./resources/unify/assets/plugins/jquery.parallax.js"></script>
<script src="./resources/unify/assets/plugins/counter/waypoints.min.js"></script>
<script src="./resources/unify/assets/plugins/counter/jquery.counterup.min.js"></script>
<script src="./resources/unify/assets/plugins/skrollr/skrollr-ini.js"></script>
<script src="./resources/unify/assets/plugins/wow-animations/js/wow.min.js"></script>
<script src="./resources/unify/assets/plugins/backstretch/backstretch-ini.js"></script>
<script src="./resources/unify/assets/plugins/sliding-panel/jquery.sliding-panel.js"></script>
<script src="./resources/unify/assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
<script src="./resources/unify/assets/plugins/cube-portfolio/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
<!-- JS Page Level -->
<script src="./resources/unify/assets/js/app.js"></script>
<script src="./resources/unify/assets/js/plugins/style-switcher.js"></script>
<script src="./resources/unify/assets/js/plugins/owl-carousel.js"></script>
<script src="./resources/unify/assets/js/plugins/cube-portfolio/masonry-v1.js"></script>
<!-- JS Customization -->
<script src="./resources/unify/assets/js/custom.js"></script>
<!-- JS Initialization -->
<script type="text/javascript">
	jQuery(document).ready(function() {
		App.init();
		App.initCounter();
		App.initParallaxBg();
		OwlCarousel.initOwlCarousel();
		StyleSwitcher.initStyleSwitcher();
		new WOW().init();
		$('#cbp-lightbox').cubeportfolio({}); // For popup video on the promo block
	});
</script>
<script>
$("#privateSearch").on("click", function(){ //뺘른매칭
	window.location.href="privateSearch";
});
$("#alignMatching").on("click", function(){ //맞춤매칭
	window.location.href="matchingPage";
});
$("#diagnosticMatching").on("click", function(){ //진단매칭
	var user_grade = '${user_grade}';
	
	if(user_grade == "student"){
		$.ajax({
			url : 'evalCheck',
			method : 'GET',
			success:function(data){
				if(data == 0){
					window.open("DiagnosticEval", "진단평가", "width=780, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  	
				}
				else{
					var evalConfirm = confirm("이미 진단 평가한 기록이 있습니다. 이전 기록으로 매칭 받기 원하신다면 [확인]버튼을, 재 평가 하고 싶으시다면 [취소]를 눌러주세요.");	
					
					if(evalConfirm == true){
						window.location.href="diagEvalResult";
					}
					else{
						window.open("DiagnosticEval", "진단평가", "width=780, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" ); 
					}
				}
			}
		});
	}
	else{
		alert("학생 회원만 이용가능합니다.");
	}
});

function applicationClass(ext_id, user_id){
	location.href="ApplicationClass?ext_id="+ext_id+"&user_id="+user_id;
}
</script>
</body>
</html>
