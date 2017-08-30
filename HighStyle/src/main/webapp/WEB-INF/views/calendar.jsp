<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>a</title>
<link href="./resources/bootstrap/css/application.min.css" rel="stylesheet">
<link rel='stylesheet' href='./resources/fullCalendar/fullcalendar.css' />
<script src='./resources/fullCalendar/moment.min.js'></script>
<script src='./resources/fullCalendar/jquery.min.js'></script>
<script src='./resources/fullCalendar/ko.js'></script>
<script src='./resources/fullCalendar/fullcalendar.js'></script>
<style>
body{
	width:1000px;
	margin-top: 40px;
	text-align: center;
	font-size: 14px;
	font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
	background-color:#fff;
}
#calendar{
	width:700px;
	margin: 0 auto;
	float:left;
}
#hidden-title{
	display: none;
}
#modify{
	display:inline-block;
	border:1px solid #ccc;
	border-radius: 4px;
	padding:6px 12px;
	color:#333;
	background-color: #f8f8f8;
	text-align: center;
	font-size: 14px;
	line-height: 1.42857;
	font-weight: normal;
	margin-bottom: 0;
	vertical-align: middle;
}
#wrap{
	width:width:
}
</style>

</head>
<body>
	<div id="wrap">
		<div id="calendar"></div>
	</div>
	<script>
		$(document).ready(function(){
			// page is now ready, initialize the calendar...
			var date = new Date();
			var d = date.getDate();
			var m = date.getMonth();
			var y = date.getFullYear();
			
			var calendar = $("#calendar").fullCalendar
			({
				// put your options and callbacks here
				locale:'ko',
				//defaultView:'agendaWeek',
				header : 
				{
					left : 'prev, next today',
					center : 'title',
					right : ''
				},
				selectable : true, //클릭 및 드래그하여 여러 요일 또는 시간대를 강조 표시 할 수 있음
				selectHelper : true,
				select : function(start,end,allDay)
				{
					//var title = prompt("학습 태도를 입력해 주세요");
					var modal= $("#edit-modal"),
						btn  = $("#create-event");
					
					var startTime = moment(start).format('YYYY-MM-DD');
					var endTime = moment(end).format('YYYY-MM-DD');
				
					btn.off("click");
					btn.click(function(){
						var title = $("#event-name").val();
						if(title)
						{
							$.ajax
							({
								url:"/Highlighter/cal?ext_id=${ext_id}&user_id=${user_id}",
								type:"post",
								dataType:"text",
								contentType:"application/json",
								data:JSON.stringify({
									title:title,
									start:startTime,
									end:endTime
								}),
								success:function(data)
								{
									alert("평가가 등록 되었습니다");
									history.go(0);
								}
							});
							calendar.fullCalendar('renderEvent',
									{
										title:title,
										start:start,
										end:end,
										allDay:allDay
									},
									true
							);
						}
						calendar.fullCalendar('unselect');
					});
					modal.modal("show");
					calendar.fullCalendar('unselect');
				},
				editable : true,
				events:${json},
				eventClick : function(event){
					if(event.title){
						var modal = $("#myModal"),
                        	modalLabel = $("#myModalLabel"),
							deleteBtn = $("#delete"),
							modifyBtn = $("#modify");
						
						modalLabel.html(event.title);
						modal.find(".modal-body p").html(function()
						{
							return event.title;
	                    }());
						modal.modal('show');
						
						// 수정 버튼
						modifyBtn.off("click");
						modifyBtn.click(function(){
							
							$("#display-title").css("display","none");
							$("#hidden-title").css("display","block");
							
							
							var modifyTitle = $("#hidden-title").val();
							if(modifyTitle)
							{
								$.ajax
								({
									url : "/Highlighter/calModify?ext_id=${ext_id}",
									type : "post",
									dataType:"text",
									contentType:"application/json",
									data:JSON.stringify({
										title:modifyTitle,
										start:event.start,
										end:event.end
									}),
									success:function(data)
									{
										alert("평가가 수정 되었습니다");
										$("#display-title").css("display","block");
										$("#hidden-title").css("display","none");
										history.go(0);
									}
								});
								return false;
							}
							
						});
						
						// 삭제 버튼
						deleteBtn.off("click");
						deleteBtn.click(function(){
							$.ajax
							({
								url:"/Highlighter/calDelete?ext_id=${ext_id}",
								type:"post",
								dataType:"text",
								contentType:"application/json",
								data:JSON.stringify({
									start:event.start,
									end:event.end
								}),
								success:function(data)
								{
									alert("평가가 삭제 되었습니다");
									history.go(0);
								}
							});
							return false;
						});
					}
				}
			});
		});
	</script>

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel17" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header no-border">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title fw-bold mt" id="myModalLabel17">학습태도</h4>
				</div>
				<div class="modal-body">
					<p id="display-title">One fine body…</p>
					<input type="text" id="hidden-title" class="form-control input-no border" autofocus />
				</div>
				<div class="modal-footer no-border">
					<button type="button" class="btn btn-default" data-dismiss="modal">OK</button>
					<!-- <button type="button" id="modify" class="btn btn-default" data-dismiss="modal">수정</button> -->
					<div id="modify">수정</div>
					<button type="button" id="delete" class="btn btn-default" data-dismiss="modal">삭제</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="edit-modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel18" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header no-border">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title fw-bold mt" id="myModalLabel18">학습태도</h4>
					<p class="fs-mini text-muted mt-sm">학생의 오늘 학습 태도를 입력 하세요.</p>
				</div>
				<div class="modal-body bg-gray-lighter">
					<div class="form-group">
						<input type="text" id="event-name" class="form-control input-no-border" autofocus>
					</div>
				</div>
				<div class="modal-footer no-border">
					<button data-dismiss="modal" class="btn btn-default">취소</button>
					<button data-dismiss="modal" id="create-event"
						class="btn btn-success">등록</button>
				</div>
			</div>
		</div>
	</div>
	
	
	<script src="./resources/bootstrap/vendor/bootstrap-sass/assets/javascripts/bootstrap/modal.js"></script>
</body>
</html>