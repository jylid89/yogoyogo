<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/YogoYogo/css/catering/cateringstate_ceo.css">
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
				<th >장소</th>
				<th>상태</th>
			</tr>
		</thead>
		
		<tbody class='tbody'>
		<c:choose>
		<c:when test="${cateModel == null }">
			<p> 등록된게 없어용 알겠쬬?</p>
		</c:when>
		<c:otherwise>
			<c:forEach items='${cateModel}' var='cate'>
				<tr>
					<td class=''>${cate.mem_name }</td>
					<td class=''>${cate.mem_call }</td>
					<td class=''>${cate.cate_date} / ${cate.cate_time }</td>
					<td class=''>${cate.cate_people }</td>
					<td class=''>${cate.cate_budget }</td>
					<td class=''>${cate.cate_addr }</td>
					<c:choose>
					<c:when test="${cate.cate_state == '대기중'}" >
						<td><button class='btn btn-approve'>승인</button>&nbsp;&nbsp;
						<button class='btn btn-reject'>거절</button></td>
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
					</td>				
				</tr>
			</c:forEach>
		</c:otherwise>
		</c:choose>
		</tbody>
	</table>
</div>
</body>
</html>


















