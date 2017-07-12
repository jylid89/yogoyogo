<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 헤드 -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판 글작성 페이지</title>

<!-- 자유게시판 관련 CSS -->
<link rel="stylesheet" href="/YogoYogo/css/freeboard/freeboardInsert.css">

</head>

<body>
	<div class="wrapper">
		<section id="support" class="doublediagonal">
			<div class="container">
				<div class="section-heading scrollpoint sp-effect3">
					<h1 class="writeTitle"><font face="함초롬돋움" size="8px">자유게시판</font></h1>
					<div class="divider"></div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-12 col-sm-12 scrollpoint">
								<form role="form" method="post" action="freeInsert.do"
									enctype="multipart/form-data">
									
								<!-- 글 수정 폼 -->
									<div class="form-group">
										<input name='board_title' type="text" class="form-control" name="board_title" id="board_title"
											placeholder="제목을 입력하세요">
									</div>
									<div class="form-group">
										<textarea name='board_content' cols="30" rows="10" name="board_content" id="board_content"
											class="form-control" placeholder="내용을 입력하세요"></textarea>
									</div>
									<!--  파일첨부  -->
									<div class="form-group ">
										<div class="input-group image-preview">
											<input type="text"
												class="form-control image-preview-filename"
												disabled="disabled">
											<span class="input-group-btn"> 
												<div class="btn image-preview-input btn-primary btn-lg">
													<span class="glyphicon glyphicon-folder-open"></span> <span
														class="image-preview-input-title">Browse</span> <input
														type="file"
														accept="image/png, image/jpeg, image/gif"
														name="board_pictemp" class="" />
												</div>
											</span>
										</div>
									</div>
								<!-- 게시판 기능 버튼 -->
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