<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<link rel='stylesheet' type='text/css'
		href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>
	
	<!-- CSS Global Compulsory -->
	<link rel="stylesheet"
		href="./resources/unify/assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="./resources/unify/assets/css/style.css">
	
	<!-- CSS Header and Footer -->
	<link rel="stylesheet"
		href="./resources/unify/assets/css/headers/header-default.css">
	<link rel="stylesheet"
		href="./resources/unify/assets/css/footers/footer-v1.css">
	
	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet"
		href="./resources/unify/assets/plugins/animate.css">
	<link rel="stylesheet"
		href="./resources/unify/assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet"
		href="./resources/unify/assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet"
		href="./resources/unify/assets/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
	<link rel="stylesheet"
		href="./resources/unify/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
	<link rel="stylesheet"
		href="./resources/unify/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
	
	<!-- CSS Page Style -->
	<link rel="stylesheet"
		href="./resources/unify/assets/css/pages/profile.css">
	<link rel="stylesheet"
		href="./resources/unify/assets/css/pages/shortcode_timeline2.css">
	
	<!-- CSS Theme -->
	<link rel="stylesheet"
		href="./resources/unify/assets/css/theme-colors/default.css"
		id="style_color">
	<link rel="stylesheet"
		href="./resources/unify/assets/css/theme-skins/dark.css">
	<!-- ico -->
	<link rel="shortcut icon" href="./resources/ico/highlighter.ico">
	<style>
		.tab-v1 .nav-tabs > .active > a, .tab-v1 .nav-tabs > .active > a:hover, .tab-v1 .nav-tabs > .active > a:focus{
			background: #60a6fd;
		}
		.tab-v1 .nav-tabs{
			border-bottom : solid 2px #60a6fd;
		}
		.tab-v1 .nav-tabs > li > a:hover{
			background: #60a6fd;
		}
		<%-- 레이어 팝업 --%>
		.pop-layer .pop-container {
	 	 padding: 20px 25px;
		}
	
		.pop-layer p.ctxt {
		  color: #666;
		  line-height: 25px;
		}
		
		.pop-layer .btn-r {
		  width: 100%;
		  text-align: right;
		}
		
		.pop-layer {
		  display: none;
		  position: absolute;
		  top: 50%;
		  left: 50%;
		  width: 510px;
		  height: 610px;
		  background-color: #fff;
		  border: 5px solid #3571B5;
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
		  filter: alpha(opacity=50);
		}
		
		.dim-layer .pop-layer {
		  display: block;
		}
		
		a.btn-layerClose {
		  display: inline-block;
		  height: 25px;
		  padding: 0 14px 0;
		  font-size: 16px;
		  color: #666;
		  line-height: 25px;
		  text-decoration: none;
		}
		
		a.btn-layerClose:hover {
		  font-size:18px;
		  color: #000;
		}
		#file1{
		display: none;
		}
		<%-- 이까지 --%>
		.img_btn {
			background: #95a5a6;
			color : #fff;
			width : 56px;
			padding:6px 13px;
			display: inline-block;
			font-weight: 400;
			font-size: 14px;
			margin-right: 5px;
		}
	</style>
</head>

<body>
	<div class="wrapper">
		<!--=== Header ===-->
		<div class="header">
			<div class="container">
				<!-- Logo -->
				<a class="logo" href="/Highlighter"> <img src="./resources/img/blue_Logo.png" alt="Logo">
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
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-responsive-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="fa fa-bars"></span>
				</button>
				<!-- End Toggle -->
			</div>
			<!--/end container-->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div
				class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
				<div class="container">
					<ul class="nav navbar-nav">
						<!-- Home -->
						<li class="dropdown"><a href="/Highlighter">Home</a></li>
						<!-- End Home -->

						<!-- teacher -->
						<li class="dropdown"><a href="javascript:void(0);"
							class="dropdown-toggle" data-toggle="dropdown"> 강사 </a>
							<ul class="dropdown-menu">
								<!-- About Pages -->
								<li class="dropdown-submenu"><a href="#">강사 이용방법</a></li>
								<!-- End About Pages -->

								<!-- regist lecture -->
								<li class="dropdown-submenu"><a href="javascript:void(0);">과외등록</a>
								</li>
								<!-- End regist lecture -->

								<!--  -->
								<li class="dropdown-submenu"><a href="javascript:void(0);">강사평가</a>
								</li>
								<!-- End  -->
							</ul></li>
						<!-- End teacher -->

						<!-- Student -->
						<li class="dropdown"><a href="javascript:void(0);"
							class="dropdown-toggle" data-toggle="dropdown"> 학생 </a>
							<ul class="dropdown-menu">
								<li class="dropdown-submenu"><a href="#">학생 이용방법</a></li>
								<li class="dropdown-submenu"><a href="#">과외 검색</a></li>
							</ul></li>
						<!-- End Student -->

						<!-- Parents -->
						<li class="dropdown"><a href="javascript:void(0);"
							class="dropdown-toggle" data-toggle="dropdown"> 학부모 </a>
							<ul class="dropdown-menu">
								<li class="dropdown-submenu"><a href="#">학부모 이용방법</a></li>
							</ul></li>
						<!-- End Parents -->

						<!-- Site intro -->
						<li class="dropdown"><a href="javascript:void(0);"
							class="dropdown-toggle" data-toggle="dropdown"> 사이트 소개 </a></li>
						<!-- End Site intro -->

						<!--  -->
						<li class="dropdown"><a href="javascript:void(0);"
							class="dropdown-toggle" data-toggle="dropdown"> 문의 </a></li>
						<!-- End Demo Pages -->
					</ul>
				</div>
				<!--/end container-->
			</div>
			<!--/navbar-collapse-->
		</div>
		<!--=== End Header ===-->

		<!--=== Breadcrumbs ===-->
		<div class="breadcrumbs">
			<div class="container">
				<h1 class="pull-left">트로피/뱃지 등록</h1>
			</div>
		</div><!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->

		<!--=== Content Part ===-->
		<div class="container content">
			<div class="row">
				<!-- Begin Content -->
				<div class="col-md-9">
					<!-- Tabs -->
					<div class="tab-v1">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#home-1" data-toggle="tab">트로피</a></li>
							<li><a href="#profile-1" data-toggle="tab">뱃지</a></li>
						</ul>
						<div class="tab-content">
							<!-- 트로피 Forms -->
							<div class="tab-pane fade in active" id="home-1">
								<div class="sky-form">
									<header>성과,경력,입상,테스트 성적 증명</header>
									
									<fieldset>
										<section>
											<label class="label">과목 선택</label>
											<label class="select state-success">
												<select id="subject" class="subject" name="subject">
													<option>선택</option>
													<option>국어</option>
													<option>영어</option>
													<option>수학</option>
												</select>
												<i></i>
											</label>
										</section>
									</fieldset>
									
									<fieldset>
										<section>
											<label class="label">증명서명</label>
											<label class="input state-success">
												<input type="text" id="name" class="name" name="carrer_name" placeholder="증명서명" />
											</label>
										</section>
										<input type="hidden" id="user_id" class="user_id" name="user_id" value="${user_id }" />
										<section>
											<label class="label">발급기관명</label>
											<label class="input state-success">
												<input type="text" id="organ" class="organ" name="agen_name" placeholder="발급기관명" />
											</label>
										</section>

										<section>
											<label class="label">증명서 업로드</label>
											<div class="main_image"></div>
											<div>
												<button id="btn-example" name="#layer" class="btn-u btn-u-default btn-example" style="margin-right: 5px;">등록</button>
												<button type="button" class="btn-u btn-u-default">삭제</button>
											</div><!-- name="#layer" -->
										</section>
									</fieldset>
									<!-- <div id="btn-example" class="img_btn" onclick="layer_popup('#layer');" >등록</div> -->
									
									<footer>
										<button id="registTrophy" class="btn-u btn-u-default regist">등록하기</button>
										<button type="button" class="btn-u" onclick="window.location.href='/Highlighter/trophy';" style="background: #95a5a6;">취소</button>
									</footer>
								</div>
								<!--/ Success states for elements -->
							</div>
							<!-- End Success Forms -->

							
							<%-- 레이어 팝업시 뛰울 내용 --%>
							<div class="dim-layer">
								<div class="dimBg"></div>
								<div id="layer" class="pop-layer">
									<div class="pop-container">
										<div class="pop-conts">
											<!--content //-->
											<div class="btn-r">
												<a href="#" class="btn-layerClose">X</a>
											</div>
											<div style="text-align: center;">
												<!-- multiple 속성 제거하여 한번에 하나의 파일만 업로드 하도록 -->
												<input id="file1" class="file1" type="file"
													style="width: 500px;" accept="image/*"
													onchange="fileInfo(this)" /><br>
												<div id="img_box"></div>
											</div>
											<button id="onload">불러오기</button>
											<button>개인정보 가리기</button>
											<button id="img_regist">등록하기</button>

											<!--// content-->
										</div>
									</div>
								</div>
							</div>
							<%-- 레이어 팝업 끝 --%>
							<!-- 뱃지 Forms -->
							<div class="tab-pane fade" id="profile-1">
								<div class="sky-form">
									<header>
										뱃지 신청 - 신분증 인증<br /> <small>신분증(주민등록증, 운전면허증, 여권 중
											하나)을 업로드하여 인증 뱃지를 부착하세요.<br /> 제출된 정보는 인증 뱃지를 부여하는 용도로만
											사용됩니다.
										</small>
									</header>

									<fieldset>
										<section>
											<label class="label">증명서명</label> <label
												class="input state-success"> <input type="text"
												id="batName" class="batName" name="carrer_name" placeholder="증명서명" />
											</label>
										</section>
										<input type="hidden" id="user_id" class="user_id"
											name="user_id" value="${user_id }" />
										<section>
											<label class="label">발급기관명</label> <label
												class="input state-success"> <input type="text"
												id="batOrgan" class="batOrgan" name="agen_name"
												placeholder="발급기관명" />
											</label>
										</section>

										<section>
											<label class="label">증명서 업로드</label>
											<div class="main_image"></div>
											<div>
												<button id="btn-example" name="#layer"
													class="btn-u btn-u-default btn-example" style="margin-right: 5px;">등록</button>
												<button type="button" class="btn-u btn-u-default">삭제</button>
											</div>
											<!-- name="#layer" -->
										</section>
									</fieldset>
									<!-- <div id="btn-example" class="img_btn" onclick="layer_popup('#layer');" >등록</div> -->

									<footer>
										<button id="registBat" class="btn-u btn-u-default regist">등록하기</button>
										<button type="button" class="btn-u"
											onclick="window.location.href='/Highlighter/trophy';"
											style="background: #95a5a6;">취소</button>
									</footer>
								</div>
								<!--/ Success states for elements -->
							</div>
						</div>
							<!-- End Error Forms -->
						</div>
					</div>
					<!-- End Tabs-->
				</div>
				<!-- End Content -->
			</div>
		</div><!--/container-->
		<!--=== End Content Part ===-->

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
	</div><!--/End Wrapepr-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript"
		src="./resources/unify/assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript"
		src="./resources/unify/assets/plugins/back-to-top.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/plugins/circles-master/circles.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/plugins/sky-forms-pro/skyforms/js/jquery-ui.min.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript"
		src="./resources/unify/assets/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="./resources/unify/assets/js/app.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/js/plugins/datepicker.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/js/plugins/circles-master.js"></script>
	<script type="text/javascript"
		src="./resources/unify/assets/js/plugins/style-switcher.js"></script>
		
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			StyleSwitcher.initStyleSwitcher();
		});
	</script>
<!--[if lt IE 9]>
	<script src="assets/plugins/respond.js"></script>
	<script src="assets/plugins/html5shiv.js"></script>
	<script src="assets/plugins/placeholder-IE-fixes.js"></script>
	<script src="assets/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
	<![endif]-->

<!--[if lt IE 10]>
	<script src="assets/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
	<![endif]-->


	<%-- 레이어 팝업 --%>	
	<script>
		$('.btn-example').click(function() {
			var $href = $(this).attr('name');
			layer_popup($href);
		});
		
		// 레이어 팝업 함수
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
				return false;
			});

			$('.layer .dimBg').click(function() {
				$('.dim-layer').fadeOut();
				return false;
			});

		}
		
		// 업로드전 미리보기 함수
		function fileInfo(f){
			var file = f.files; // files 를 사용하면 파일의 정보를 알 수 있음

			var reader = new FileReader(); // FileReader 객체 사용
			reader.onload = function(rst){ // 이미지를 선택후 로딩이 완료되면 실행될 부분
				$('#img_box').html('<img style="width:468px; height:468px;" src="' + rst.target.result + '">'); // append 메소드를 사용해서 이미지 추가
				$("#img_regist").click(function(){
					$(".main_image").html('<img style="width:150px; height:150px;" src="' + rst.target.result + '">');
					$(".btn-layerClose").trigger("click");
				});
				// 이미지는 base64 문자열로 추가
				// 이 방법을 응용하면 선택한 이미지를 미리보기 할 수 있음
			}
			reader.readAsDataURL(file[0]); // 파일을 읽는다, 배열이기 때문에 0 으로 접근
		}
		
		//불러오기 버튼
		$("#onload").click(function(){
			 eventOccur(document.getElementById('file1'),'click');	
		});
		
		//input type=file의 불러오기를 다른 버튼으로 대체하는 함수
		function eventOccur(evEle, evType) {
			if (evEle.fireEvent) {
				evEle.fireEvent('on' + evType);
			} else {
				//MouseEvents가 포인트 그냥 Events는 안됨~ ??
				var mouseEvent = document.createEvent('MouseEvents');
				/* API문서 initEvent(type,bubbles,cancelable) */
				mouseEvent.initEvent(evType, true, false);
				var transCheck = evEle.dispatchEvent(mouseEvent);
				if (!transCheck) {
					//만약 이벤트에 실패했다면
					console.log("클릭 이벤트 발생 실패!");
				}
			}
		}
	</script>
	<script>

		$(document).ready(function() {


		$("#registTrophy").click(function() {

				var file = $("#file1")[0].files[0];
				var subject = $("#subject option:selected").val();
				var name = $("#name").val();
				var organ = $("#organ").val();
				var user_id = $("#user_id").val();
				
				var formData = new FormData();

				formData.append("file",file);
				formData.append("subject",subject);
				formData.append("name",name);
				formData.append("organ",organ);
				formData.append("user_id",user_id);
				
				$.ajax({
					url : "/Highlighter/uploadTrophy",
					data : formData,
					dataType : 'text',
					processData : false,
					contentType : false,
					type : 'POST',
					success : function(data) {
						alert(data);
						window.location.href="/Highlighter/trophy";
					}
				});
			});
		});
		
		$("#registBat").click(function(){
			
			var file = $("#file1")[0].files[0];
			var name = $("#batName").val();
			var organ = $("#batOrgan").val();
			var user_id = $("#user_id").val();
			
			var formData = new FormData();

			formData.append("file",file);
			formData.append("name",name);
			formData.append("organ",organ);
			formData.append("user_id",user_id);
			
			$.ajax({
				url : "/Highlighter/uploadBat",
				data : formData,
				dataType : 'text',
				processData : false,
				contentType : false,
				type : 'POST',
				success : function(data) {
					alert(data);
					window.location.href="/Highlighter/trophy";
				}
			});
		});
	</script>
</body>
</html>
