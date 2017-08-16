<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#wrap1{
		width:800px;
		height:240px;
		background-color: gray;
	}
	#trophy_header{
		width:800px;
		height:20px;
		background-color: blue;
	}
	#trophy_body{
		width:760px;
		height:180px;
		padding:20px;
		background-color: light-gray;
	}
	#left_body_content{
		float:left;
	}
	#right_body_content{
		float:right;
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
	
	#img_box{
		width:468px;
		height: 468px;
	}
	#file1{
		display: none;
	}
	#wrap2{
		margin-top: 30px;
	}
</style>
</head>
<body>
	<c:forEach items="${trophyList }" var="list">
		<div>
			<label>과목명</label>
			<input type="text" value="${list.subject }" readonly />
		</div>
		<div>
			<label>증명서명</label>
			<div>
				<input type="text" value="${list.carrer_name }" readonly />
			</div>
		</div>
		<div>
			<label>발급기관명</label>
			<div>
				<input type="text" value="${list.agen_name }" readonly />
			</div>
		</div>
		<div>
			<img src="displayFile?fileName=${list.att_file }" style="width:150px; height:150px;"/>
		</div>
	</c:forEach>
	<div id="wrap1">
		<div id="trophy_header">성과,경력,입상,테스트 성적 증명</div>
		<div id="trophy_body">
			<div id="trophy_content_body">
				<div id="left_body_content">
					<div>
						<label>과목 선택</label><div><select id="subject" class="subject" name="subject"><option>과목선택</option><option>국어</option><option>영어</option><option>수학</option></select></div>
					</div>
					<div>
						<label>증명서명</label><div><input type="text" id="name" class="name" name="carrer_name" placeholder="증명서명" /></div>
					</div>
					<div>
						<label>발급기관명</label><div><input type="text" id="organ" class="organ" name="agen_name" placeholder="발급기관명" /></div>
					</div>
					<input type="hidden" id="user_id" class="user_id" name="user_id" value="${user_id }" />
				</div>
				<div id="right_body_content">
					<div>증명서 업로드</div>
					<div class="main_image"></div>
					<div><button class="btn-example" name="#layer">등록</button><button>삭제</button></div>
					<p>"개인정보 가리기" 기능을 이용하여 주민등록번호 등 개인 식별 번호를 보호하세요.</p>
				</div>
			</div>
		</div>
		<button id="regist">저장하기</button>
	</div>
	
	<%-- <div id="wrap2">
		<div >뱃지 신청 - 신분증 인증</div>
		<div >
			<div >
				<div >
					<div>
						<label>증명서명</label><div><input type="text" id="name" class="name" name="carrer_name" placeholder="증명서명" /></div>
					</div>
					<div>
						<label>발급기관명</label><div><input type="text" id="organ" class="organ" name="agen_name" placeholder="발급기관명" /></div>
					</div>
					<input type="hidden" id="user_id" class="user_id" name="user_id" value="${user_id }" />
				</div>
				<div id="right_body_content">
					<div>증명서 업로드</div>
					<div class="main_image"></div>
					<div><button class="btn-example" name="#layer">등록</button><button>삭제</button></div>
					<p>"개인정보 가리기" 기능을 이용하여 주민등록번호 등 개인 식별 번호를 보호하세요.</p>
				</div>
				<input type="hidden" id="subject" name="subject" value=null />
			</div>
		</div>
		<button id="registBat">뱃지저장</button>
	</div> --%>
	<%-- 레이어 팝업시 뛰울 내용 --%>
	<div class="dim-layer">
		<div class="dimBg"></div>
		<div id="layer" class="pop-layer">
			<div class="pop-container">
				<div class="pop-conts">
					<!--content //-->
					<div class="btn-r"><a href="#" class="btn-layerClose">X</a></div>
						<div style="text-align: center;">
							<!-- multiple 속성 제거하여 한번에 하나의 파일만 업로드 하도록 -->
							<input id="file1" class="file1" type="file" style="width: 500px;" accept="image/*" onchange="fileInfo(this)" /><br>
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
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
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
		$(document).ready(function(){
			$("#img_regist").click(function(){
				
			});
			$("#regist").click(function(){
				
				
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
					url:"/Highlighter/trophy",
					data:formData,
					dataType:'text',
					processData:false,
					contentType:false,
					type:'POST',
					success : function(data){
						alert(data);
						history.go(0);
					}
				});
			});
			/* $("#registBat").click(function(){
				
				var file = $("#file1")[0].files[0];
				var subject = $(".subject").val();
				var name = $(".name").val();
				var organ = $(".organ").val();
				var user_id = $(".user_id").val();

				var formData = new FormData();

				formData.append("file", file);
				formData.append("subject", subject);
				formData.append("name", name);
				formData.append("organ", organ);
				formData.append("user_id", user_id);
				
				$.ajax({
					url:"/Highlighter/trophy",
					data:formData,
					dataType:'text',
					processData:false,
					contentType:false,
					type:'POST',
					success : function(data){
						alert(data);
						history.go(0);
					}
				});
			}); */
		});
	</script>
</body>
</html>