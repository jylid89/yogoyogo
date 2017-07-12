<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.3.2/jquery.min.js"></script>
<link rel="stylesheet" href="/YogoYogo/css/notice/notice.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12 title">
				<h1 class="notice_title">공지 및 이벤트</h1>
				<div class="table-responsive">
					<table id="mytable" class="table table-bordred table-hover">
						<thead class="notice_sotitle" >
							<th>구분</th>
							<th>제목</th>
							<th>글쓴이</th>
							<th>일자</th>
							<th>조회수</th>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${noticeList == null }">
									<p>등록된게 없다</p>
								</c:when>
								<c:otherwise>
									<c:forEach items="${noticeList}" var='a'>
										<tr>
											<td>${a.board_state }</td>
											<td><a href="noticeView.do?board_num=${a.board_num }">${a.board_title }</a></td>
											<td>${a.mem_nick}</td>
											<td>${a.board_time }</td>
											<td>${a.board_count }</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
					<div class='write_btn'>
					<a href="noticeInsert.do"><div class="writeBtn btn btn-lg">글쓰기</div> </a>
					</div>
					<div class="col-md-6">
						<div id="custom-search-input">
							<div class="input-group col-md-12">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>