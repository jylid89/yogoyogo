<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%

	//줄 바꾸기
	pageContext.setAttribute("br", "<br/>");
	pageContext.setAttribute("cn", "\n");

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Marketing/css/noticedetail.css">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap-theme.min.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.3.2/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" src="/Marketing/view/js/noticedetail.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
</head>
<body>

	<div class='container'>
		<div class='row'>
			<div class="col-lg-12  text-left">
				<br> <br> <br> <br> <br> <br>
				<form role="form" method="post" action="noticeUpdate.do">
					<h1 class='tegline'>${viewModel.board_title}</h1><br>
					<input type='hidden' name="board_num" value='${viewModel.board_num }'>
					<span class="notice_word">글쓴이 : ${viewModel.mem_id }</span>&nbsp;&nbsp;&nbsp;
					<span class="notice_word">일자	: ${viewModel.board_time } </span>&nbsp;&nbsp;&nbsp;
					<span class="notice_word">읽은 수 : 0</span>
					<hr>
					<div class="row">
						<div class="col-xs-12">
							<div class="img-wrapper">
									<img class="img_notice" src="/Marketing/img/${viewModel.board_picreal }"
										alt="사진이요">
							</div>
						</div>
					</div>
					<br><br>
					<p class="notice_word">${fn:replace(viewModel.board_content,cn,br)}</p>
					<hr>
					<button class='text-right btn btn-link' type='submit'> 수정 </button> 
					<a onclick="javascript:location.href='noticeDelete.do?board_num=${viewModel.board_num}'">삭제</a>&nbsp;&nbsp;&nbsp;
					<a onclick="javascript:location.href='noticeList.do'">목록가기</a>
				</form>
				
			</div>
		</div>
		
	</div>

</body>
</html>


















