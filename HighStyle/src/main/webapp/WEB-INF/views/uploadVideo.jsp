<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Highlighter</title>
<meta charset="utf-8">
<meta name="description" content="Common form elements and layouts" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<!-- reviewList.jsp 부트스트랩 
<link href="./resources/bootstrap/css/application-ie9-part2.css" rel="stylesheet">
<link href="./resources/bootstrap/css/application.min.css" rel="stylesheet">
-->
<!-- uploadVideo 부트스트랩 -->
<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="./resources/assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="./resources/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

<!-- page specific plugin styles -->
<link rel="stylesheet" href="./resources/assets/css/jquery-ui.custom.min.css" />
<link rel="stylesheet" href="./resources/assets/css/chosen.min.css" />
<link rel="stylesheet" href="./resources/assets/css/bootstrap-datepicker3.min.css" />
<link rel="stylesheet" href="./resources/assets/css/bootstrap-timepicker.min.css" />
<link rel="stylesheet" href="./resources/assets/css/daterangepicker.min.css" />
<link rel="stylesheet"
	href="./resources/assets/css/bootstrap-datetimepicker.min.css" />
<link rel="stylesheet" href="./resources/assets/css/bootstrap-colorpicker.min.css" />

<!-- text fonts -->
<link rel="stylesheet" href="./resources/assets/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="./resources/assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<!--[if lte IE 9]>
			<link rel="stylesheet" href="./resources/assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
<link rel="stylesheet" href="./resources/assets/css/ace-skins.min.css" />
<link rel="stylesheet" href="./resources/assets/css/ace-rtl.min.css" />

<!--[if lte IE 9]>
		  <link rel="stylesheet" href="./resources/assets/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="./resources/assets/js/ace-extra.min.js"></script>
<!-- 끝 -->
<link href="./resources/css/bootstrap.css" rel="stylesheet">
<link href="./resources/css/bootstrap-responsive.css" rel="stylesheet">
<link href="./resources/css/docs.css" rel="stylesheet">
<link href="./resources/css/prettyPhoto.css" rel="stylesheet"
	type="text/css">
<link href="./resources/js/google-code-prettify/prettify.css"
	rel="stylesheet">
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
#classIntro {
	margin-top: 10px;
	border: 3px solid #ff6600;
	height: auto;
	padding:10px;
}

#classGoIn {
	float: right;
	width:90px;
	background-color:#ff6600;
	padding-top:5px;
	padding-left:10px;
	padding-bottom:5px;
	margin-top:-5px;
	color:white;
	border-radius:5px;
	text-decoration: none;
	border:solid 1px #ff6600;
}

#teacherImage img {
	float: left;
}

#classIntro2 {
	margin-top: 10px;
	margin-bottom: 20%;
	
	height: 40%;
	padding: 10px;
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

#classIntro3 {
	margin-bottom: 10px;
	border: 1px solid #C5C5C5;
	height: 100px;
	padding: 10px;
}

#classIntro4 {
	margin-bottom: 10px;
	border: 1px solid #C5C5C5;
	padding: 10px;
	height: 100px;
}

#classIntro5 {
	margin-bottom: 10px;
	border: 1px solid #C5C5C5;
	height: 200px;;
	padding: 10px;
}

.nav-agency {
	border-bottom: 1px solid #DDD;
}

#div1 {
	float: left;
	width: 80%;
	margin-top:70px;
	
}

#classIndex {
	
}

.StudyRoom {
	margin: 0px;
}

.StudyRoom li:not(#StudyRoom) {
	list-style: none;
	border-top:1px solid rgba(0,0,0,0.25);
	height:35px;
	padding-left:10px;
	padding-top:5px;
	font-size:13px;
	width:140px;
}
.StudyRoom li:not(#StudyRoom):hover {
	list-style: none;
	border-color:1px solid rgba(0,0,0,0.25);
	height:35px;
	padding-top:5px;
	font-size:13px;
	background-color:#5D5D5D;
	color:white;
}
#noticeResi {
	float: right;
}

.w3table {
	float: left;
}
#StudyRoom{
	padding-top:10px;
	padding-left:20px;
	padding-bottom:10px;
	background-color:#ff6600;
	color:white;
}
#content{
	background-color: rgba(255,255,255,0.1);
}
input{
	height:30px;
}
/* #intro{
	margin:10px;
	width:100px;
	position:relative;
} */
</style>

</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
<!-- nav -->
	<div class="nav-agency">
		<div class="navbar navbar-static-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="brand" href="/Highlighter"> <img
						src="./resources/img/logo.png" alt=""></a>
					<div id="main-nav">
						<div class="nav-collapse collapse">
							<ul class="nav">
								<li class=""><a href="/Highlighter">Home</a></li>
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
	</div>
<!-- nav끝 -->

<!-- 수업소개/공지사항 변화 -->	
	<script>
		$(document).ready(function() {
			$('#classIntro3').show();
			$('#classIntro4').hide();

			$('#classIntroButton1').click(function() {
				$('#classIntro3').show();
				$('#classIntro4').hide();
			});

			$('#classIntroButton2').click(function() {
				$('#classIntro3').hide();
				$('#classIntro4').show();
			});
			return false;
		});
	</script>

<!-- 전체 내용  -->
	<div style="width: 80%; margin: 0 auto;">
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
		<div id="div1">
			<!-- 과외 소개 및 강의 입장 타이틀 -->
			<div id="classIntro">
				과외 등록
				<button id="classGoIn">강의목록</button>
			</div>
			<div class="main-container ace-save-state" id="main-container">
				<script type="text/javascript">
					try {
						ace.settings.loadState('main-container')
					} catch (e) {
					}
				</script>
				<div class="main-content">
					<div class="main-content-inner">
						<div class="page-content">
							<!-- <div class="row">
								<div class="col-xs-12" style="background-color:yellow;">
									<form class="form-horizontal" role="form">
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-1">제목</label>
										</div>
										<div class="col-sm-9">
											<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-5" />
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">내용</label>
										</div>
										<div class="col-sm-9">
											<input type="text" id="form-field-1-1" placeholder="Text Field" class="form-control" />
										</div>
										
										
									</form>
								</div>
							</div>	 -->
							<div class="page-content">
								<div class="ace-settings-container" id="ace-settings-container">
									<div class="ace-settings-box clearfix" id="ace-settings-box"></div>
								</div>

								<div class="row">
									<div class="col-xs-12">
										<!-- PAGE CONTENT BEGINS -->
										<form method="post" action="uploadVideo?ext_id=${ext_id }" enctype="multipart/form-data" class="form-horizontal" role="form">
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right"
													for="form-field-1"> 제목 </label>

												<div class="col-sm-9">
													<input type="text" id="form-field-1" name="post_title" placeholder="title"
														class="col-xs-10 col-sm-5" style="height: 30px" />
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right"
													for="form-field-1-1"> 내용 </label>

												<div class="col-sm-9">
													<input type="text" id="form-field-1-1" name="post_cont"
														placeholder="contnet" class="form-control" style="height: 30px"/>
												</div>
											</div>

											<div class="widget-body">
												<div class="widget-main">
													<div class="form-group">
														<div class="col-xs-12">
															<input multiple="" type="file" name="file"
																id="id-input-file-3" />
														</div>
													</div>
												</div>
											</div>

											<div class="space-4"></div>
											<div class="space-4"></div>

											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right"
													for="form-input-readonly"> 게시물 분류코드 </label>

												<div class="col-sm-9">
													<input type="text" class="input-sm" name="post_code"
														value="1" id="form-input-readonly" />
												</div>
											</div>

											<div class="space-4"></div>

											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right"
													for="form-field-4">과외코드</label>

												<div class="col-sm-9">
													<input class="input-sm" type="text" id="form-field-4" name="ext_id" value="${ext_id }" />
													<div class="space-2"></div>
													<div class="help-block" id="input-size-slider"></div>
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right"
													for="form-field-5">게시코드</label>

												<div class="col-sm-9">
													<div class="clearfix">
														<input class="input-sm" type="text" id="form-field-5" name="post_id"
															value="${postId }" />
													</div>

													<div class="space-2"></div>

													<div class="help-block" id="input-span-slider"></div>
												</div>
											</div>
											<div class="space-4"></div>
											<div class="space-4"></div>
										
										<div class="clearfix form-actions">
												<div class="col-md-offset-3 col-md-9">
													<button class="btn btn-info" type="button" id="upload">
														<i class="ace-icon fa fa-check bigger-110"></i> 등록
													</button>

													&nbsp; &nbsp; &nbsp;
													<button class="btn" type="reset">
														<i class="ace-icon fa fa-undo bigger-110"></i> Reset
													</button>
												</div>
											</div>
											<div class="hr hr-24"></div>
										</form>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- reviewList.jsp 부트스트랩
	<script src="./resources/bootstrap/vendor/jquery/dist/jquery.min.js"></script>
	-->
					<!-- <script src="http://platform.twitter.com/widgets.js"></script>
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
	<script src="./resources/js/custom.js"></script> -->

					<!-- basic scripts -->

					<!--[if !IE]> -->
					<script src="./resources/assets/js/jquery-2.1.4.min.js"></script>

					<!-- <![endif]-->

					<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
					<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='./resources/assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
					<script src="./resources/assets/js/bootstrap.min.js"></script>

					<!-- page specific plugin scripts -->

					<!--[if lte IE 8]>
		  <script src="./resources/assets/js/excanvas.min.js"></script>
		<![endif]-->
					<script src="./resources/assets/js/jquery-ui.custom.min.js"></script>
					<script src="./resources/assets/js/jquery.ui.touch-punch.min.js"></script>
					<script src="./resources/assets/js/chosen.jquery.min.js"></script>
					<script src="./resources/assets/js/spinbox.min.js"></script>
					<script src="./resources/assets/js/bootstrap-datepicker.min.js"></script>
					<script src="./resources/assets/js/bootstrap-timepicker.min.js"></script>
					<script src="./resources/assets/js/moment.min.js"></script>
					<script src="./resources/assets/js/daterangepicker.min.js"></script>
					<script src="./resources/assets/js/bootstrap-datetimepicker.min.js"></script>
					<script src="./resources/assets/js/bootstrap-colorpicker.min.js"></script>
					<script src="./resources/assets/js/jquery.knob.min.js"></script>
					<script src="./resources/assets/js/autosize.min.js"></script>
					<script src="./resources/assets/js/jquery.inputlimiter.min.js"></script>
					<script src="./resources/assets/js/jquery.maskedinput.min.js"></script>
					<script src="./resources/assets/js/bootstrap-tag.min.js"></script>

					<!-- ace scripts -->
					<script src="./resources/assets/js/ace-elements.min.js"></script>
					<script src="./resources/assets/js/ace.min.js"></script>

					<!-- inline scripts related to this page -->



					<script>
		$("#StudyRoom").click(function() {
			location.href = "/Highlighter/classMain?ext_id=${ext_id}";
		});
		$("#StudyHomework").click(function() {
			alert("개발 중입니당~!");
			/* location.href="/Highlighter/homework"; */
		});
		$("#StudyClassData").click(function() {
			alert("개발 중입니당~!");
			/* location.href="/Highlighter/classData"; */
		});
		$("#StudyStudyManagement").click(function() {
			location.href = "/Highlighter/classSTManagement";
		});
		$("#StudyClassTest").click(function() {
			location.href = "/Highlighter/classTest?ext_id=${ext_id}";
		});
		$("#StudyReplay").click(function() {
			//window.location.href="/Highlighter/listAll?ext_id=${ext_id}"
		});
		$("#StudyClassDeval").click(function() {
			alert("개발 중입니당~!");
			/* location.href="/Highlighter/classDeval"; */
		});

		$("#classGoIn").click(function() {
			window.location.href = "listAll?ext_id=${ext_id}";
		});
		$("#upload").click(function(){
			var formObj=$("form[role='form']");
			formObj.submit();
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#id-input-file-3').ace_file_input({
				style: 'well',
				btn_choose: '파일을 드래그 하거나 클릭하여 선택 하십시오',
				btn_change: null,
				no_icon: 'ace-icon fa fa-cloud-upload',
				droppable: true,
				thumbnail: 'small'//large | fit
				//,icon_remove:null//set null, to hide remove/reset button
				/**,before_change:function(files, dropped) {
					//Check an example below
					//or examples/file-upload.html
					return true;
				}*/
				/**,before_remove : function() {
					return true;
				}*/
				,
				preview_error : function(filename, error_code) {
					//name of the file that failed
					//error_code values
					//1 = 'FILE_LOAD_FAILED',
					//2 = 'IMAGE_LOAD_FAILED',
					//3 = 'THUMBNAIL_FAILED'
					//alert(error_code);
				}
		
			}).on('change', function(){
				//console.log($(this).data('ace_input_files'));
				//console.log($(this).data('ace_input_method'));
			});
			
			
			//$('#id-input-file-3')
			//.ace_file_input('show_file_list', [
				//{type: 'image', name: 'name of image', path: 'http://path/to/image/for/preview'},
				//{type: 'file', name: 'hello.txt'}
			//]);
		
			
			
		
			//dynamically change allowed formats by changing allowExt && allowMime function
			$('#id-file-format').removeAttr('checked').on('change', function() {
				var whitelist_ext, whitelist_mime;
				var btn_choose
				var no_icon
				if(this.checked) {
					btn_choose = "Drop images here or click to choose";
					no_icon = "ace-icon fa fa-picture-o";
		
					whitelist_ext = ["jpeg", "jpg", "png", "gif" , "bmp"];
					whitelist_mime = ["image/jpg", "image/jpeg", "image/png", "image/gif", "image/bmp"];
				}
				else {
					btn_choose = "Drop files here or click to choose";
					no_icon = "ace-icon fa fa-cloud-upload";
					
					whitelist_ext = null;//all extensions are acceptable
					whitelist_mime = null;//all mimes are acceptable
				}
				var file_input = $('#id-input-file-3');
				file_input
				.ace_file_input('update_settings',
				{
					'btn_choose': btn_choose,
					'no_icon': no_icon,
					'allowExt': whitelist_ext,
					'allowMime': whitelist_mime
				})
				file_input.ace_file_input('reset_input');
				
				file_input
				.off('file.error.ace')
				.on('file.error.ace', function(e, info) {
					//console.log(info.file_count);//number of selected files
					//console.log(info.invalid_count);//number of invalid files
					//console.log(info.error_list);//a list of errors in the following format
					
					//info.error_count['ext']
					//info.error_count['mime']
					//info.error_count['size']
					
					//info.error_list['ext']  = [list of file names with invalid extension]
					//info.error_list['mime'] = [list of file names with invalid mimetype]
					//info.error_list['size'] = [list of file names with invalid size]
					
					
					/**
					if( !info.dropped ) {
						//perhapse reset file field if files have been selected, and there are invalid files among them
						//when files are dropped, only valid files will be added to our file array
						e.preventDefault();//it will rest input
					}
					*/
					
					
					//if files have been selected (not dropped), you can choose to reset input
					//because browser keeps all selected files anyway and this cannot be changed
					//we can only reset file field to become empty again
					//on any case you still should check files with your server side script
					//because any arbitrary file can be uploaded by user and it's not safe to rely on browser-side measures
				});
				
				
				/**
				file_input
				.off('file.preview.ace')
				.on('file.preview.ace', function(e, info) {
					console.log(info.file.width);
					console.log(info.file.height);
					e.preventDefault();//to prevent preview
				});
				*/
			
			});

		});
	</script>
	</body>
</html>