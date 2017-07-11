<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판 글작성 페이지</title>
<!-- <link rel="stylesheet" type="text/css" href="/Marketing/view/css/noticeinsert.css"> -->
<!-- <script type="text/javascript" src="/Marketing/view/js/noticeinsert.js"></script> -->
<link rel="stylesheet" href="/YogoYogo/css/freeboard/freeboardInsert.css">
</head>
<body>
	<div class="wrapper">
		<section id="support" class="doublediagonal">
			<div class="container">
				<div class="section-heading scrollpoint sp-effect3">
					<h1 class="writeTitle">자유게시판</h1>
					<div class="divider"></div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-12 col-sm-12 scrollpoint">
								<form role="form" method="post" action="freeInsert.do"
									enctype="multipart/form-data">

									<div class="form-group">
										<input name='board_title' type="text" class="form-control" name="board_title" id="board_title"
											placeholder="제목을 입력하세요">
									</div>
									<div class="form-group">
										<textarea name='board_content' cols="30" rows="10" name="board_content" id="board_content"
											class="form-control" placeholder="내용을 입력하세요"></textarea>
									</div>
									<!-- **************파일첨부 1************* -->
									<div class="form-group ">
										<div class="input-group image-preview">
											<input type="text"
												class="form-control image-preview-filename"
												disabled="disabled">
											<!-- don't give a name === doesn't send on POST/GET -->
											<span class="input-group-btn"> <!-- image-preview-clear button -->
<!-- 												<button type="button" -->
<!-- 													class="btn image-preview-clear btn-primary btn-lg" -->
<!-- 													> -->
<!-- 													<span class="glyphicon glyphicon-remove"></span> Clear -->
<!-- 												</button> image-preview-input -->
												<div class="btn image-preview-input btn-primary btn-lg">
													<span class="glyphicon glyphicon-folder-open"></span> <span
														class="image-preview-input-title">Browse</span> <input
														type="file"
														accept="image/png, image/jpeg, image/gif"
														name="board_pictemp" class="" />
													<!-- rename it -->
												</div>
											</span>
										</div>
										<!-- /input-group image-preview [TO HERE]-->
									</div>
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
<!-- 	<script src="assets/js/jquery-1.11.1.min.js"></script> -->
<!-- 	<script src="assets/js/bootstrap.min.js"></script> -->
	<script src="assets/js/slick.min.js"></script>
	<script src="assets/js/placeholdem.min.js"></script>
	<script src="assets/js/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
	<script
		src="assets/js/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<script src="assets/js/waypoints.min.js"></script>
	<script src="assets/js/scripts.js"></script>
	<script>
		$(document).ready(function() {
			appMaster.preLoader();
		});
	</script>
</body>
</html>