<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
	window.onload = function() {
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

		$('#btn-reject').click(function(ev) {
			ev.preventDefault();
			modal.open();
		});

		$('#btn-approve').click(function() {
			var result = confirm(' 케이터링 신청을 수락하시겠습니까?');
			if (result) {
				$.ajax({
					url : "catAppConfirm.do",
					type : "post",
					data : {
						"cate_num" : $("#cate_num").val()
					},
					success : function(data) {
						if (data == "승인") {
							alert("이미 승인되었습니다");
							return;
						} else {
							alert("승인되었습니다");
						}
					}
				})
			}
		});

		$('.btn-primary').click(function() {
			$("#catConfirm").attr("action", "catReject");
		});
		window.modal = modal;
	}
</script>
</head>
<body>
	<div class='container'>
		<table class='table table-hover'>

			<!-- 주석써야하는데.. -->
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
									<c:when test="${cate.cate_state == '승인'}">
										<td><button class='btn btn-approve' id="btn-approve"
												name="btn-approve">승인</button>&nbsp;&nbsp;
											<button class='btn btn-reject' id="btn-reject"
												name="btn-reject">거절</button></td>
									</c:when>
									<c:otherwise>
										<c:choose>
											<c:when test="${cate.cate_state == '대기중'}">
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
									id="cate_num">
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
				<form class="form-horizontal" method="get">
					<div class="modal-header">
						<strong>거절 메시지를 선택해주세요</strong>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<div class="input-group col-xs-7">
								<label for="dummyText" class="control-label col-xs-4">기타
									메시지</label> <select id="rejectOption"
									style="width: 200px; height: 30px">
									<option>꺼져</option>
									<option>당장꺼뎌</option>
									<option>안해</option>
									<option>직접입력</option>
								</select> <input type="text" name="rejectMessage" id="rejectMessage"
									class="form-control">
							</div>
						</div>
					</div>

					<div class="modal-footer">
						<button name="btn-default" id="btn-default"
							class="btn btn-default" type="button" onclick="modal.close();">취소</button>
						<button name="btn-primary" id="btn-primary"
							class="btn btn-primary" type="submit" onclick="modal.close();">전송</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>