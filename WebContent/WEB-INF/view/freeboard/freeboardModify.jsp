<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 헤드 -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판 수정 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<!-- 바디 -->
<body>
	<div class="wrapper">
		<section id="support" class="doublediagonal">
			<div class="container" style="margin-top: 40px; margin-bottom: 80px">
				<div class="section-heading scrollpoint sp-effect3">
					<h1 style="margin-bottom: 20px"><font face="함초롬돋움" size="8px">자유게시판</font></h1>
					<div class="divider"></div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-12 col-sm-12 scrollpoint">
							<!-- 게시판 글 수정 폼 -->
								<form role="form" method="post" action="freeModifyOk.do"
									enctype="multipart/form-data">
									<input type="hidden" id="board_num" name="board_num" value="${freeVO.board_num }">
									<input type="hidden" id="mem_id" name="mem_id" value="${freeVO.mem_id }">
							<!-- 게시판 글 제목  -->
									<div class="form-group">
										<input name='board_title' type="text" class="form-control" id="board_title" value="${freeVO.board_title}"
											placeholder="제목을 입력하세요">
									</div>
							<!-- 자유게시판 글 내용 -->
									<div class="form-group">
										<textarea name="board_content" cols="30" rows="10" id="board_content"
											class="form-control">${freeVO.board_content}</textarea>
									</div>
							<!-- 게시글 등록 취소, 완료 버튼 -->
									<div class="form-group">
										<div class="col-md-12 text-right">
											<button type="submit" class="btn btn-primary btn-lg">완료</button>
											<button type='reset' class="btn btn-lg btn-danger">취소</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>