<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css"
	href="/Marketing/view/css/noticeinsert.css">
<script type="text/javascript" src="/Marketing/view/js/noticeinsert.js"></script>

</head>
<body>
	<div class="wrapper">

		<section id="support" class="doublediagonal">
			<div class="container">b
				<div class="section-heading scrollpoint sp-effect3">
					<h1>글쓰기</h1>
					<div class="divider"></div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-12 col-sm-12 scrollpoint">
								<form role="form" method="post" action="freeModifyOk.do"
									enctype="multipart/form-data">
									<input type="hidden" id="board_num" name="board_num" value="${freeVO.board_num }">
									<input type="hidden" id="mem_id" name="mem_id" value="${freeVO.mem_id }">

									<div class="form-group">
										<label class="col-md-3 control-label" for="name"><h3>제목</h3></label>
										<input name='board_title' type="text" class="form-control" id="board_title" value="${freeVO.board_title}"
											placeholder="제목을 입력하세요">
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="location"><h3>구분</h3></label>
										<select class='form-control' name='board_state' id="board_state">
											<option>공지사항</option>
											<option>이벤트</option>
											<option>자유게시판</option>
										</select>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="message"><h3>내용</h3></label>
										<textarea name="board_content" cols="30" rows="10" id="board_content"
											class="form-control">${freeVO.board_content}</textarea>
									</div>
									<!-- **************파일첨부 1************* -->
									<div class="form-group ">
										<label class="col-md-12 control-label" for="message"><h3>사진
												업로드</h3></label>
										<!-- image-preview-filename input [CUT FROM HERE]-->
										<div class="input-group image-preview">
											<input type="text"
												class="form-control image-preview-filename"
												disabled="disabled">
											<!-- don't give a name === doesn't send on POST/GET -->
											<span class="input-group-btn"> <!-- image-preview-clear button -->
												<button type="button"
													class="btn image-preview-clear btn-primary btn-lg"
													style="display: none;">
													<span class="glyphicon glyphicon-remove"></span> Clear
												</button> <!-- image-preview-input -->
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




	</fieldset>
	</form>
	</div>
	</div>
	</div>
	</div>
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
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