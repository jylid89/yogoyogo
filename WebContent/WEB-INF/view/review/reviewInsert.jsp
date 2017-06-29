<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰 남기기</title>
<link rel="shortcut icon" href="favicon.png">


<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/yogoyogo4/css/qna/qnaInsert.css">

<link rel="stylesheet" href="/yogoyogo4/assets/css/bootstrap.min.css">

<link rel="stylesheet" href="/yogoyogo4/assets/css/animate.css">
<link rel="stylesheet" href="/yogoyogo4/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="/yogoyogo4/assets/css/slick.css">
<link rel="stylesheet" href="/yogoyogo4/assets/js/rs-plugin/css/settings.css">

<link rel="stylesheet" href="/yogoyogo4/assets/css/styles.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="/yogoyogo4/assets/js/jquery-1.11.1.min.js"></script>
	<script src="/yogoyogo4/assets/js/bootstrap.min.js"></script>
<!-- Bootstrap 3.3.2 -->

<script type="text/javascript" src="/yogoyogo4/assets/js/modernizr.custom.32033.js"></script>
<script type="text/javascript" src="/yogoyogo4/js/qna/qnaInsert.js"></script>
<script src="/yogoyogo4/assets/js/slick.min.js"></script>
	<script src="/yogoyogo4/assets/js/placeholdem.min.js"></script>
	<script src="/yogoyogo4/assets/js/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
	<script
		src="/yogoyogo4/assets/js/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<script src="/yogoyogo4/assets/js/waypoints.min.js"></script>
	<script src="/yogoyogo4/assets/js/scripts.js"></script>

</head>
<body>

	<div class="wrapper">

		<section id="support" class="doublediagonal">
			<div class="container">
				<div class="section-heading scrollpoint sp-effect3">
					<h1>리뷰 작성하기</h1>
					<div class="divider"></div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-12 col-sm-12 scrollpoint sp-effect1">
								<form  id="frm" action="reviewInsert.do" method="post">
								
									<div class="form-group">
										<label class="col-md-3 control-label" for="name" ><h3>제목</h3></label> 
										<input type="text" class="form-control" placeholder="제목을 입력하세요" name="rev_title">
									</div>
									
									<div class="form-group">
										<label class="col-md-3 control-label" for="message" ><h3>내용</h3></label>
										<textarea cols="30" rows="10" class="form-control" placeholder="내용을 입력하세요" name="rev_content"></textarea>
									</div>
									 <div class="form-group ">
										<label class="col-md-12 control-label" for="message"><h3>파일첨부</h3></label>
									            <!-- image-preview-filename input [CUT FROM HERE]-->
									            <div class="input-group image-preview">
									                <input type="text" class="form-control image-preview-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
									                <span class="input-group-btn">
									                    <!-- image-preview-clear button -->
									                    <button type="button" class="btn image-preview-clear btn-primary btn-lg" style="display:none;">
									                        <span class="glyphicon glyphicon-remove"></span> Clear
									                    </button>
									                    <!-- image-preview-input -->
									                    <div class="btn image-preview-input btn-primary btn-lg">
									                        <span class="glyphicon glyphicon-folder-open"></span>
									                        <span class="image-preview-input-title">Browse</span>
									                        <input type="file" accept="image/png, image/jpeg, image/gif" name=""  class=""/> <!-- rename it -->
									                    </div>
									                </span>
									            </div><!-- /input-group image-preview [TO HERE]--> 
									        </div>

									<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
									<center><input type="submit" class="btn btn-primary btn-lg btn-align" id="btnInsert" value="완료"/>
									<button type='reset' class="btn  btn-lg btn-align">취소</button></center>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>
	<script>
		$(document).ready(function() {
			appMaster.preLoader();
		});
	</script>
</body>

</html>