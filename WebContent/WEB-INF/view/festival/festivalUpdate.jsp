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
	href="/Marketing/view/css/activityinsert.css">
<script type="text/javascript"
	src="/Marketing/view/js/activityinsert.js"></script>

</head>
<body>
	<div class="wrapper">

		<section id="support" class="doublediagonal">
			<div class="container">
				<div class="section-heading scrollpoint sp-effect3">
					<h1>행사 수정하기</h1>
					<div class="divider"></div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-12 col-sm-12 scrollpoint">
								<form role="form" method="post" action="festivalUpdateOk.do"
									enctype="multipart/form-data">
									<div class="form-group">
										<input type="hidden" name='event_num'
											value="${listModel.event_num}"> <label
											class="col-md-3 control-label" for="name"><h3>행사
												제목</h3></label> <input name="event_name" type="text" class="form-control"
											value="${listModel.event_name }">
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="location"><h3>행사
										위치</h3></label> <input name="event_loc" type="text" class="form-control"
										value="${listModel.event_loc }">
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="location"><h3>주최자</h3></label>
										<input name="event_comp" type="text" class="form-control"
										value="${listModel.event_comp }">
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="message">
										<h3>행사 홍보 내용</h3></label>
										<textarea name="event_content" cols="30" rows="10"
										class="form-control">${listModel.event_content }</textarea>
									</div>
									<!-- **************파일첨부 1************* -->
									<div class="form-group ">
										사진1
										</h3>
										</label>
										<!-- image-preview-filename input [CUT FROM HERE]-->
										<div class="input-group image-preview">
											<span class="input-group-btn"> <!-- image-preview-clear button -->
												<button type="button"
													class="btn image-preview-clear btn-primary btn-lg"
													style="display: none;">
													<span class="glyphicon glyphicon-remove"></span> Clear
												</button> <!-- image-preview-input -->
												<div class="btn image-preview-input btn-primary btn-lg">
													<!--  -->
													<input type='hidden' name='exFile'
														value="${listModel.event_picreal}" /> 
														<a>${listModel.event_picreal }</a>
														<input type="file" accept="image/png, image/jpeg, image/gif"
														name="event_pictemp" class=""></input>
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