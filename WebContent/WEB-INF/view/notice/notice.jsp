<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="/Marketing/view/css/notice.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.3.2/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" src="/Marketing/view/js/notice.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12 title">
				<h1 class="notice_title">공지 및 이벤트</h1>
				<br><br>
				<div class="table-responsive">
					<div class="col-md-6">
						<div id="custom-search-input">
							<div class="input-group col-md-12">
								<input type="text" class="form-control input-lg"  placeholder="검색어를 입력하세요" /> <span class="input-group-btn">
									<button class="btn btn-info btn-lg" type="button">
										<i class="glyphicon glyphicon-search"></i>
									</button>
								</span>
							</div>
						</div>
					</div>
					
					<br><br><br>
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
					<button class='btn btn-primary btn-lg' onclick="javascript:location.href='noticeInsert.do'">글쓰기</button>
					</div>
					<div class="notice_paging">
						<ul class="pagination pull-center">
							<li class="disabled">
							<a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a>
							</li>
							<li class="active"><a href="#">1</a>
							</li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#"><span
									class="glyphicon glyphicon-chevron-right"></span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	

</body>
</html>