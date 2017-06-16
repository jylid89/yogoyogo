<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<!-- Bootstrap 3.3.2 -->

<link rel="stylesheet" href="assets/css/animate.css">

<link rel="stylesheet" href="css/mypage/menu.css">
<script type="text/javascript" src="js/mypage/menu.js"></script>
<script type="text/javascript">
	//Carousel Auto-Cycle
	$(document).ready(function() {
		$('.carousel').carousel({
			interval : 6000
		})
	});
</script>
</head>
<body>

	<header class="business-header">
	<div class="container">
		<div class="row">
			<div class="col-lg-12  text-center">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<hr>
				<h1 class="tagline">푸드트럭명</h1>
				<hr>
				<p>맛있는 푸드트럭집</p>
				<br>
			</div>
		</div>
	</div>
	</header>


	<div class="container">
		<div class="col-xs-12">
			<div class="page-header">
				<h1>메 뉴</h1>
			</div>
			<div class="carousel slide" id="myCarousel">
				<div class="carousel-inner">
					<div class="item active">
						<ul class="thumbnails">
							<li class="col-sm-3">
								<div class="fff">
									<div class="thumbnail">
										<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
									</div>
									<div class="caption">
										<h4>메뉴 명</h4>
										<p>3000원</p>
										<div class="text-right">
											<button class='btn btn-primary'>수정</button>
											<button class='btn btn-success'>삭제</button>
										</div>
									</div>
								</div>
							</li>
							<li class="col-sm-3">
								<div class="fff">
									<div class="thumbnail">
										<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
									</div>
									<div class="caption">
										<h4>Praesent commodo</h4>
										<p>Nullam Condimentum Nibh Etiam Sem</p>
										<a class="btn btn-mini" href="#">» Read More</a>
									</div>
								</div>
							</li>
							<li class="col-sm-3">
								<div class="fff">
									<div class="thumbnail">
										<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
									</div>
									<div class="caption">
										<h4>Praesent commodo</h4>
										<p>Nullam Condimentum Nibh Etiam Sem</p>
										<a class="btn btn-mini" href="#">» Read More</a>
									</div>
								</div>
							</li>
							<li class="col-sm-3">
								<div class="fff">
									<div class="thumbnail">
										<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
									</div>
									<div class="caption">
										<h4>Praesent commodo</h4>
										<p>Nullam Condimentum Nibh Etiam Sem</p>
										<a class="btn btn-mini" href="#">» Read More</a>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<!-- /Slide1 -->
					<div class="item">
						<ul class="thumbnails">
							<li class="col-sm-3">
								<div class="fff">
									<div class="thumbnail">
										<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
									</div>
									<div class="caption">
										<h4>Praesent commodo</h4>
										<p>Nullam Condimentum Nibh Etiam Sem</p>
										<a class="btn btn-mini" href="#">» Read More</a>
									</div>
								</div>
							</li>
							<li class="col-sm-3">
								<div class="fff">
									<div class="thumbnail">
										<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
									</div>
									<div class="caption">
										<h4>Praesent commodo</h4>
										<p>Nullam Condimentum Nibh Etiam Sem</p>
										<a class="btn btn-mini" href="#">» Read More</a>
									</div>
								</div>
							</li>
							<li class="col-sm-3">
								<div class="fff">
									<div class="thumbnail">
										<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
									</div>
									<div class="caption">
										<h4>Praesent commodo</h4>
										<p>Nullam Condimentum Nibh Etiam Sem</p>
										<a class="btn btn-mini" href="#">» Read More</a>
									</div>
								</div>
							</li>
							<li class="col-sm-3">
								<div class="fff">
									<div class="thumbnail">
										<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
									</div>
									<div class="caption">
										<h4>Praesent commodo</h4>
										<p>Nullam Condimentum Nibh Etiam Sem</p>
										<a class="btn btn-mini" href="#">» Read More</a>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<!-- /Slide2 -->
				</div>


				<nav>
				<ul class="control-box pager">
					<li><a data-slide="prev" href="#myCarousel" class=""><i
							class="glyphicon glyphicon-chevron-left"></i></a></li>
					<li><a data-slide="next" href="#myCarousel" class=""><i
							class="glyphicon glyphicon-chevron-right"></i></a></li>
				</ul>
				</nav>
				
				<!-- /.control-box -->
				
			</div>
			<!-- /#myCarousel -->
			
<div class='text-right'>
			<input type="button" class='btn btn-primary' value="메뉴추가">
		</div>

<div class="col-sm-offset-1 col-sm-10">
			<div class="col-sm-offset-1 col-sm-10">
			<form class="form-horizontal" role="form" id="joinForm" method="post" action="#" autocomplete="off" novalidate="novalidate">
				<div class="panel panel-default">
					<div class="panel-heading">
						메뉴수정 및 추가
					</div> <!-- panel heading -->
					
					<div class="panel-body">
						<div class="form-group menu">
							<label for="menu_name" class="col-sm-4 control-label"> 메뉴명  </label>
							<div class="col-sm-8">
								<input id="menu_name" name="menu_name" type="text" class="form-control" placeholder="떡볶이" value="">
							</div>
						</div>
					    <div class="form-group price">
							<label for="price" class="col-sm-4 control-label"> 가격  </label>
							<div class="col-sm-8">
								<input id="price" name="tel" type="text" class="form-control" placeholder="3000">
							</div>
						</div>
						
						<div class="input-group image-preview">
							<label class="col-sm-4 control-label"> 사진첨부  </label>
                			<input type="text" class="form-control image-preview-filename" disabled="disabled">
                			<span class="input-group-btn">
                    		<!-- image-preview-clear button -->
                    		<button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                        		<span class="glyphicon glyphicon-remove"></span> Clear
                    		</button>
                    	<!-- image-preview-input -->
                    	<div class="btn btn-default image-preview-input">
                        	<span class="glyphicon glyphicon-folder-open"></span>
                        	<span class="image-preview-input-title">파일찾기</span>
                        	<input type="file" accept="image/png, image/jpeg, image/gif" name="input-file-preview"/> <!-- rename it -->
                    	</div>
                			</span>
            			</div><!-- /input-group image-preview [TO HERE]--> 
						
					</div><!-- panel body -->
					<div class="panel-footer">
						<div class="form-group" style="padding-top: 10px">
							<div class="col-sm-offset-3 col-sm-6">
								<input type='submit' class="btn btn-lg btn-primary btn-block" value="메뉴추가&수정">
							</div>
						</div>						
					</div>
				</div>
			</form>	
		</div>
</div>
<!-- Footer -->
		</div>
		<!-- /.col-xs-12 -->
		
	</div>
	<!-- /.container -->
	<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</body>
</html>