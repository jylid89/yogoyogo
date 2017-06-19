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

	<div class="container">

		<div class="col-xs-12">
			<h1>입점신청</h1>
			
			<!-- 슬라이드 부분 -->
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
										<h4>푸드트럭 명</h4>
										<p>메뉴</p>
										<div class="text-right">
											<button class='btn btn-primary'>선택</button>
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

			<!-- 푸드트럭 선택 부분 -->
			<div class=" col-sm-12">
				<form class="form-horizontal" role="form" id="joinForm"
					method="post" action="#" autocomplete="off" novalidate="novalidate">
					<div class="panel panel-default">
						<div class="panel-heading">푸드트럭 선정</div>
						<!-- panel heading -->

						<div class="panel-body">
							<div class="form-group menu">
								<label for="menu_name" class="col-sm-2 control-label">
									푸드트럭 명 </label>
								<div class="col-sm-10">
									<input id="menu_name" name="menu_name" type="text"
										class="form-control" placeholder="떡볶이" value="">
								</div>
							</div>
							<div class="form-group price">
								<label for="price" class="col-sm-2 control-label"> 메뉴 </label>
								<div class="col-sm-10">
									<input id="price" name="tel" type="text" class="form-control"
										placeholder="3000">
								</div>
							</div>


						</div>
						<!-- panel body -->
						<div class="panel-footer">
							<div class="form-group" style="padding-top: 10px">
								<div class="col-sm-offset-3 col-sm-6">
									<input type='submit' class="btn btn-lg btn-primary btn-block"
										value="푸드트럭 선정">
								</div>
							</div>
						</div>
						<!-- 푸드트럭 선정 목록 -->
						<div class="col-md-12">
							<div class="table-responsive">
								<div class="page-header">
									<h2>선정 푸드트럭 목록</h2>
								</div>
								<table class="table table-hover">
									<thead>
										<tr>
											<th>푸드트럭명</th>
											<th>메뉴</th>
										</tr>
									</thead>
									<tbody>
										<tr tabindex="1">
											<td>푸드트럭명</td>
											<td>메뉴명</td>
										</tr>
										<tr tabindex="2">
											<td>푸드트럭명</td>
											<td>메뉴명</td>
										</tr>
									</tbody>
								</table>
							</div>
				</form>
			</div>

		</div>
		<!-- /.col-xs-12 -->

	</div>
	<!-- /.container -->
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
</body>
</html>