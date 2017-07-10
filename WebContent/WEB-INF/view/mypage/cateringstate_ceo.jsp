<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
	String mem_id = (String)session.getAttribute("mem_id");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->

<link rel="stylesheet" href="/YogoYogo/css/mypage/animate.css"
	type="text/css" />
<link rel="stylesheet" href="/YogoYogo/css/mypage/rmodal.css"
	type="text/css" />
<script type="text/javascript" src="/YogoYogo/js/mypage/rmodal.js"></script>
<style type="text/css">
.modal .modal-dialog {
	width: 400px;
}
</style>
<link rel="stylesheet"
	href="/YogoYogo/css/catering/cateringstate_ceo.css">
<script type="text/javascript">
$(function(){
	
	var cate_num;
	
	var modal = new RModal(document.getElementById('modal'), {
		//content: 'Abracadabra'
		beforeOpen : function(next) {
			console.log('beforeOpen');
			next();
		},
		afterOpen : function() {
			console.log('opened');
		}

		,
		beforeClose : function(next) {
			console.log('beforeClose');
			next();
		},
		afterClose : function() {
			console.log('closed');
		}
	});

	document.addEventListener('keydown', function(ev) {
		modal.keydown(ev);
	}, false);

	//승인 버튼 눌렀을 시
	$('.btn-approve').click(function() {
		var index = $(".btn-approve").index(this);
		cate_num = $(".cate_num").eq(index).val();
		var result = confirm(' 케이터링 신청을 수락하시겠습니까?');
		$(".cate_num").val(cate_num);
		if (result) {
			$("#catConfirm").attr("action", "catAppConfirm.do").submit();
		}
	});
	
	//거절 버튼 눌렀을 시
		$('.btn-reject').click(function(ev) {
			
			var index = $(".btn-reject").index(this);
			cate_num = $(".cate_num").eq(index).val();
			$(".cateNum").val(cate_num);
			modal.open();
		});

	$('#btn-reject_Ok').click(function() {
		$("#cate_num").val($(".cate_num").val());
	});
	window.modal = modal;
	
});
</script>
</head>
<body>
	<div class='container'>
		<table class='table table-hover'>

			<!-- 리스트 -->
			<thead>
				<tr>
					<th class=''>이름</th>
					<th class=''>연락처</th>
					<th class=''>날짜 / 시간</th>
					<th class=''>인원</th>
					<th class=''>예산</th>
					<th>장소</th>
					<th>상태</th>
				</tr>
			</thead>

			<tbody class='tbody'>
				<c:choose>
					<c:when test="${cateModel == null }">
						<p>등록된게 없어용 알겠쬬?</p>
					</c:when>
					<c:otherwise>
						<c:forEach items='${cateModel}' var='cate'>
							<tr>
								<td class=''>${cate.mem_name }</td>
								<td class=''>${cate.mem_call }</td>
								<td class=''>${cate.cate_date}/ ${cate.cate_time }</td>
								<td class=''>${cate.cate_people }</td>
								<td class=''>${cate.cate_budget }</td>
								<td class=''>${cate.cate_addr }</td>
								<c:choose>
									<c:when test="${cate.cate_state == '대기중'}">
										<td><button class='btn btn-approve' id="btn-approve"
												name="btn-approve">승인</button>&nbsp;&nbsp;
											<button class='btn btn-reject' id="btn-reject"
												name="btn-reject">거절</button></td>
									</c:when>
									<c:otherwise>
										<c:choose>
											<c:when test="${cate.cate_state == '승인'}">
												<td><label style="color: blue;">승인</label></td>
											</c:when>
											<c:otherwise>
												<td><label style="color: red;">거절</label></td>
											</c:otherwise>
										</c:choose>
									</c:otherwise>
								</c:choose>
							</tr>
							<form class="catConfirm" name="catConfirm" id="catConfirm">
								<input type="hidden" value="${cate.cate_num }" name="cate_num"
									id="cate_num" class="cate_num">
							</form>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
	<div id="modal" class="modal">
		<div class="modal-dialog animated">
			<div class="modal-content">
				<form action="catAppReject.do" class="form-horizontal" method="get">
					<div class="modal-header">
						<strong>거절 메시지를 선택해주세요</strong>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<div class="input-group col-xs-12">
								<label for="dummyText" class="control-label col-xs-8">기타
									메시지</label>
								<input type="text" name="cate_reason" id="cate_reason"
									class="form-control">
								<input type="hidden" id="cate_num" class="cateNum" name="cate_num"/>
							</div>
						</div>
					</div>

					<div class="modal-footer">
						<button name="btn-default" id="btn-default"
							class="btn btn-default" type="button" onclick="modal.close();">취소</button>
						<button name="btn-reject_Ok" id="btn-reject_Ok"
							class="btn btn-reject_Ok" type="submit">전송</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>