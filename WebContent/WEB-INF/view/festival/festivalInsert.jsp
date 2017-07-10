<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" /> -->
<link rel="stylesheet" href="/YogoYogo/css/activity/activityinsert.css" />

<!-- <link rel="stylesheet" href="/YogoYogo/assets/css/bootstrap.min.css"> -->

<link rel="stylesheet" href="/YogoYogo/assets/css/animate.css" />
<link rel="stylesheet" href="/YogoYogo/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="/YogoYogo/assets/css/slick.css" />
<link rel="stylesheet"
	href="/YogoYogo/assets/js/rs-plugin/css/settings.css" />

<link rel="stylesheet" href="/YogoYogo/assets/css/style.css" />

<!-- Latest compiled and minified JavaScript -->
<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!-- <script -->
<!-- 	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" -->
<!-- 	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" -->
<!-- 	crossorigin="anonymous"></script> -->
<!-- <script src="/YogoYogo/assets/js/jquery-1.11.1.min.js"></script> -->
<!-- <script src="/YogoYogo/assets/js/bootstrap.min.js"></script> -->
<!-- Bootstrap 3.3.2 -->

<script type="text/javascript"
	src="/YogoYogo/assets/js/modernizr.custom.32033.js"></script>
<script type="text/javascript"
	src="/YogoYogo/js/activity/activityinsert.js"></script>
<script src="/YogoYogo/assets/js/slick.min.js"></script>
<script src="/YogoYogo/assets/js/placeholdem.min.js"></script>
<script
	src="/YogoYogo/assets/js/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
<script
	src="/YogoYogo/assets/js/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<!-- <script src="/YogoYogo/assets/js/waypoints.min.js"></script> -->
<!-- <script src="/YogoYogo/assets/js/scripts.js"></script> -->

<script>
	$(document).ready(function() {
		appMaster.preLoader();
	});
</script>


</head>
<body>
	<div class="wrapper">

		<section id="support" class="doublediagonal">
			<div class="container">
				<div class="section-heading">
					<h1>행사 추가하기</h1>
					<div class="divider"></div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-12 col-sm-12">
								<form role="form" method="post" action="festivalInsertOk.do"
								enctype="multipart/form-data">

									<div class="form-group">
										<label class="col-md-3 control-label" for="name"><h3>행사
												제목</h3></label> <input name="event_name" type="text" class="form-control"
											placeholder="제목을 입력하세요">
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="location"><h3>행사
												위치</h3></label> <input name="event_loc" type="text" class="form-control"
											placeholder="위치를 입력해주세요 ex) 서울시 금천구 가산동">
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="location"><h3>주최자</h3></label>
										<input name="event_comp" type="text" class="form-control"
											placeholder="주최자 성함을 입력해주세요">
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="message"><h3>행사
												홍보 내용</h3></label>
										<textarea name="event_content" cols="30" rows="10"
											class="form-control" placeholder="내용을 입력하세요"></textarea>
									</div>
									<!-- **************파일첨부 1************* -->
									<div class="form-group "> 
												사진1</h3></label>
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
														type="file" accept="image/png, image/jpeg, image/gif"
														name="event_pictemp" class="" />
													<!-- rename it -->
												</div>
											</span>
										</div>
										<!-- /input-group image-preview [TO HERE]-->
									</div>
									<!-- Form actions -->
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