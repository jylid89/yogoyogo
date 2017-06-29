<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="/Marketing/view/css/noticedetail.css"> -->

<!-- 합쳐지고 최소화된 최신 CSS -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"> -->
<!-- 부가적인 테마 -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap-theme.min.css"> -->

<!-- <script -->
<!-- 	src="https://maxcdn.bootstrapcdn.com/bootstrap/2.3.2/js/bootstrap.min.js"></script> -->
<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/2.3.2/jquery.min.js"></script> -->
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" src="/Marketing/view/js/noticedetail.js"></script>
<!-- <script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script> -->
</head>
<div class="body">

	<div class='container'>
		<div class='row'>
			<c:choose>
				<c:when test="${model == null}">
					<tr>
						<td colspan='7'>등록된 게시물이 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
				<div class="col-lg-12  text-left">
					<br> <br> <br> <br> <br> <br>

					<h1 class='tegline'>[ ${model.board_state } ] ${model.board_title }</h1>
					<span>글쓴이 : ${model.mem_nick }</span>&nbsp;&nbsp;&nbsp;<span>일자 :
						${model.board_time } </span>&nbsp;&nbsp;&nbsp;<span>읽은 수 : ${model.board_count } </span>
					<hr>
					<div class="img-wrapper">
						<!-- 					<img class="img_notice" src="/Marketing/img/kim.jpg" alt="행사 설명 사진입니다"> -->
					</div>



					<p>${model.board_content }</p>
					<hr>
				</div>

				<a class='text-right'> 수정 </a>
				<a>삭제</a>
				</c:otherwise>
				</c:choose>
		</div>
	</div>

</div>
</html>


















