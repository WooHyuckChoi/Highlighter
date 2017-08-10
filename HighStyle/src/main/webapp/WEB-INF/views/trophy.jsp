<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
</style>
</head>
<body>
	<div id="wrap1">
		<div id="trophy_header">성과,경력,입상,테스트 성적 증명<span>+증명서 추가</span></div>
		<div id="trophy_body">
			<div id="trophy_content_body">
				<div id="left_body_content">
					<div>
						<label>과목 선택</label><div><select><option>과목선택</option><option>국어</option><option>영어</option><option>수학</option></select></div>
					</div>
					<div>
						<label>증명서명</label><div><input type="text" placeholder="증명서명" /></div>
					</div>
					<div>
						<label>발급기관명</label><div><input type="text" placeholder="발급기관명" /></div>
					</div>
				</div>
				<div id="right_body_content">
					<div>증명서 업로드</div>
					<div><img /></div>
					<div><button class="btn-example" name="#layer">등록</button><button>삭제</button></div>
					<p>"개인정보 가리기" 기능을 이용하여 주민등록번호 등 개인 식별 번호를 보호하세요.</p>
				</div>
			</div>
		</div>
	</div>

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
							<input id="file1" type="file" style="width: 500px;" accept="image/*" onchange="fileInfo(this)" /><br>
							<div id="img_box"></div>
						</div>
					
					

					<button id="onload">불러오기</button>
					<button>개인정보 가리기</button>
					<button>등록하기</button>

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
</body>
</html>