<%@ page import="java.text.NumberFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/YogoYogo/css/activity/activity.css">
<!-- 부트스트랩 깔았어요 -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="containerright">
			<!-- 글쓰기 버튼 insert.do로 연결 -->
				<button class="enjoy-css"
					onclick="javascript:location.href='activityInsert.do'">글쓰기</button>
			</div>
			<div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
				<ul class="event-list">

					<c:choose>
						<c:when test="${listModel == null }">
							<p>등록된게 없다</p>
						</c:when>
						<c:otherwise>
							<c:forEach items="${listModel}" var="a">
								<li><time datetime="${a.mark_date}">
										<span class="day">${a.mark_date}</span> <span class="month"></span>
										<span> </span> <span class="time"></span>
									</time>
									<div class="info">
										<p class="=title">${a.mark_content}</p>
										<img alt="이쁜사진" src="/Marketing/img/kim.jpg" />
									</div></li>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</ul>
				<div class="row">
					<div class="col-md-12">
					<!--더 보기 버튼  -->
						<button class="enjoy-css btn_plus" href="">
							더 보기 <span class=""></span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>