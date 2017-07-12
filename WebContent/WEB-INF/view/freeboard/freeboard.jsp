<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">  
<!-- 자유게시판 관련 CSS -->
<link rel="stylesheet" href="/YogoYogo/css/freeboard/freeboard.css">
<title>자유게시판</title>
</head>

<body>
	<div class="container">
		<h1 class="notice_title"><font face="함초롬돋움" size="8px">자유게시판</font></h1>
		<!-- 게시판 테이블 -->
		<table class="table table-striped">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>게시날짜</th>
				</tr>
			</thead>
			<tbody>
				<!-- DB에 값이 없을 경우 -->
				<c:choose>
					<c:when test="${freeVO == null}">
						<p>등록된게없다</p>
					</c:when>
					<c:otherwise>
						<!-- DB값 불러오기 -->
						<c:forEach items="${freeVO}" var="a">
							<tr>
								<td>${a.board_num}</td>
								<td><a href="freeboardDetail.do?board_num=${a.board_num}">${a.board_title}</a></td>
								<td><a href="">${a.mem_nick}</a></td>
								<td>${a.board_time}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		<a href="freeboardInsert.do"><div class="writeBtn btn btn-lg">글쓰기</div> </a>
	</div>
</body>
</html>