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
<title>공지사항</title>

<link rel="stylesheet" href="/YogoYogo/css/notice/notice.css">
</head>
<body>
	<div class='container'>
		<div class='row'>
			<div class="col-lg-12  text-rigth">
				<form role="form" method="post" action="noticeUpdate.do">
					<h1 class='tegline'>${viewModel.board_title}</h1><br>
					<input type='hidden' name="board_num" value='${viewModel.board_num }'>
					<span class="notice_word">글쓴이 : ${viewModel.mem_id }</span>
					<span class="notice_word">일자	: ${viewModel.board_time } </span>
					<span class="notice_word">조회수 : 0</span>
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
					<div class="noticeWord">
						<a href="noticeUpdate.do?board_num=${viewModel.board_num}"><div class="noticeBtn">수정</div></a> 
						<a href='noticeDelete.do?board_num=${viewModel.board_num}'><div class="noticeBtn">삭제</div></a>
						<a href='noticeList.do'><div class="noticeBtn">목록가기</div></a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>