<%@ page import="java.text.NumberFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/Marketing/css/festival.css">
<title>Insert title here</title>
</head>
<body>
	<div class='container'>
		<div class="content bg-blue">
			<h1 class="tab center bounds padding active">
				<span>행사 목록이에요~</span>
			</h1>
					<div class="containerright">
			<button class="btn"
				onclick="javascript:location.href='festivalInsert.do'">글쓰기</button>
		</div>
			<div class="bounds padding">
				<c:choose>
					<c:when test="${listModel == null }">
					<p> 등록된게 없어요 </p>
					</c:when>
					<c:otherwise>
						<c:forEach items='${listModel}'  var="a">
							<a href="festivalView.do?event_num=${a.event_num}" class="item zoom active">
								<div class="column">
									<div class="image">
										<img id="ctl00_body_rptProducts_ctl00_imgProduct" 
										class="cover accelerate" 
										alt="행사 사진이에요" src="/Marketing/img/${a.event_picreal}">
										<div class="link-abs">
											<p class="link-col-text">행사 보러 가기!</p>
										</div>
									</div>
								</div>
								<div class="column">
									<div class="text">
										<h2>${a.event_name}</h2>
										<p>
											<span class="text-smaller">${a.event_content }</span>
										</p>
									</div>
								</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</body>
</html>