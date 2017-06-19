<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="favicon.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="css/qna/qnaInsert.css">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<!-- Bootstrap 3.3.2 -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/js/rs-plugin/css/settings.css">

<link rel="stylesheet" href="assets/css/styles.css">
<script type="text/javascript" src="assets/js/modernizr.custom.32033.js"></script>
<script type="text/javascript" src="js/qna/qnaInsert.js"></script>

</head>
<body>

	<div class="wrapper">

		<section id="support" class="doublediagonal">
			<div class="container">
				<div class="section-heading scrollpoint sp-effect3">
					<h1>Q&A 작성하기</h1>
					<div class="divider"></div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-12 col-sm-12 scrollpoint sp-effect1">
								<form role="form">
									<div class="form-group">
										<label class="col-md-3 control-label" for="name"><h3>글쓴이</h3></label> 
										<input type="text" class="form-control" placeholder="작성자 이름을 입력하세요">
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="name"><h3>제목</h3></label> 
										<input type="text" class="form-control" placeholder="제목을 입력하세요">
									</div>
									
									<div class="form-group">
										<label class="col-md-3 control-label" for="message"><h3>내용</h3></label>
										<textarea cols="30" rows="10" class="form-control"
											placeholder="내용을 입력하세요"></textarea>
									</div>

									<center><button type="submit" class="btn btn-primary btn-lg btn-align">완료</button>
									<button type='reset' class="btn  btn-lg btn-align">취소</button></center>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
 
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