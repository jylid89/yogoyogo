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
							<td><label style="color: blue;">승인완료</label></td>
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
</body>
</html>