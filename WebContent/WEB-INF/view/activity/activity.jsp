<%@ page import="java.text.NumberFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%

	//줄 바꾸기
	pageContext.setAttribute("br", "<br/>");
	pageContext.setAttribute("cn", "\n");

%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Marketing/css/activity.css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>


<script type="text/javascript">

$(function(){
	
$(".modal-wide").on("show.bs.modal", function() {
	  var height = $(window).height() - 200;
	  $(this).find(".modal-body").css("max-height", height);
	});
	
// 	$(".btn_update").each(function(){
// 		$(this).click(function(){
// 			//alert('1');
// 			var frm = $(this).parent().parent();
// 			//alert( frm.find('[name=mark_num]').val() )
// 			//$('#ta_update').val($('#mark_content').text()); 
// 			//$('#ta_pic').val($('#mark_pictemp').attr('src'));
// 			frm.find('[name=mark_content]').val($('#mark_content').text());
// 		});
	
// 		});
	
	var mark_content;
	var mark_picreal;
	var mark_num;
	$(".btn_update").click(function(){
		
		var index = $(".btn_update").index(this);
		mark_content = $(".mark_content").eq(index).text();
		$("#ta_update").val(mark_content);
		mark_picreal = $(".mark_picreal").eq(index).text();
		$("#pic_real").val(mark_picreal);
		
	});

});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="containerright">
				<!-- 글쓰기 버튼 activityInsert.do로 연결 -->
				<button class="btn" onclick="javascript:location.href='activityInsert.do'">글쓰기</button>
				<br><br><br>
			</div>
			
			<div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
				<ul class="event-list">

					<c:choose>
						<c:when test="${listModel == null }">
							<p>등록된게 없다</p>
						</c:when>
						<c:otherwise>
							<c:forEach items="${listModel}" var="a">
								<li>
									<form name="frm" id="frm" method="post">
											<input type="hidden" value="${a.mark_num }" name='mark_num' id='mark_num'>
										 <div class="date">
											<span class="date_date">${a.mark_date}</span>
										
										</div>
										<br><br>
										<div class="info content_img">
											<img class="mark_picreal"  src="/Marketing/img/${a.mark_picreal }"/>
											<div class="date_content">
											<p class="activity_content mark_content" name="mark_content" id="mark_content">${fn:replace(a.mark_content,cn,br)}</p>
											</div>
										</div>
										<div class='activity_btn'>
											<a data-toggle="modal" href="#normalModal" class='btn_update'>수정</a>&nbsp;&nbsp;&nbsp;&nbsp;
											<a class=''
												onclick="javascript:location.href='activityDelete.do?mark_num=${a.mark_num}'">삭제</a>
										</div>
									</form>
								</li>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</ul>

				<div id="normalModal" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<!-- 								<button type="button" class="close" data-dismiss="modal" -->
								<!-- 									aria-hidden="true">x</button> -->
								
								<h4 class="modal-title" id='btn_update'>수 정</h4>
							</div>
							<div class="modal-body">
							
				<form action="activityUpdateOk.do" role="form" method="post" enctype="multipart/form-data">
								
								<label class="col-md-3 control-label" for="message">
									<h3>활동 내용</h3>
								</label>
								<textarea name="mark_content" cols="30" rows="10"
									class="form-control mark_content ta_update" id="ta_update"></textarea>
								<br>
								<br>
								<br> <label class="col-md-3 control-label" for="message">
									<h3>활동 사진</h3>
								</label>
								<div class="input-group image-preview">
									<input type="hidden" value="${mark_num }"  name="mark_num">
									<input type="text" id="ta_pic"
										class="form-control image-preview-filename"
										disabled="disabled"> <span class="input-group-btn"> <!-- image-preview-clear button -->
										<button type="button"
											class="btn image-preview-clear btn-primary btn-lg"
											style="display: none;">
											<span class="glyphicon glyphicon-remove"></span> Clear
										</button> <!-- image-preview-input -->
										<div class="btn image-preview-input btn-primary btn-lg">
											<span class="glyphicon glyphicon-folder-open"></span> <span
												class="">Browse</span> <input
												type="file" accept="image/png, image/jpeg, image/gif"
												 name="mark_pictemp" class=""/>
											<!-- rename it -->
										</div>
									</span>
								</div>
							
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">닫기</button>
								&nbsp;&nbsp;&nbsp;
								<button type="submit" class="btn btn-primary">수정 완료</button>
							</div>
							</form>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->

				<div class="row">
					<div class="col-md-12">
						<!--더 보기 버튼  -->
						<button class="btn btn_plus" href="">
							더 보기 <span class=""></span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>