<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="pos.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$("#button").click(function() {
			$("#list").text($(this).text());
		});

	});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="taglin">푸드트럭 제목</h1>
				<!-- 메뉴 버튼 -->
				<div class="col-md-8">
					<div class="pos_menu agile-menu-grid" id='button'>
						<img alt="" src="/YogoYogo/images/runfoodtruck/bulgogi.jpg" style="width: 100%; height: 100%;">
						<div class="agileits-caption">
							<h4>불고기피자</h4>
							<p>3000원</p>
						</div>
					</div>
					<div class="pos_menu agile-menu-grid" id='button'>
						<img alt="" src="/YogoYogo/images/runfoodtruck/combination.jpg" style="width: 100%; height: 100%;">
						<div class="agileits-caption">
							<h4>콤비네이션피자</h4>
							<p>3000원</p>
						</div>
					</div>
					<div class="pos_menu agile-menu-grid" id='button'>
						<img alt="" src="/YogoYogo/images/runfoodtruck/goguma.jpg" style="width: 100%; height: 100%;">
						<div class="agileits-caption">
							<h4>고구마피자</h4>
							<p>3000원</p>
						</div>
					</div>
					<div class="pos_menu agile-menu-grid" id='button'>
						<img alt="" src="/YogoYogo/images/runfoodtruck/peperoni.jpg" style="width: 100%; height: 100%;">
						<div class="agileits-caption">
							<h4>페퍼로니피자</h4>
							<p>3000원</p>
						</div>
					</div>
					<div class="pos_menu agile-menu-grid" id='button'>
						<img alt="" src="/YogoYogo/images/runfoodtruck/shrimp.jpg" style="width: 100%; height: 100%;">
						<div class="agileits-caption">
							<h4>쉬림프피자</h4>
							<p>3000원</p>
						</div>
					</div>
					<div class="pos_menu agile-menu-grid" id='button'>
						<img alt="" src="/YogoYogo/images/runfoodtruck/beer.jpg" style="width: 100%; height: 100%;">
						<div class="agileits-caption">
							<h4>생맥주</h4>
							<p>3000원</p>
						</div>
					</div>
					<div class="pos_menu agile-menu-grid" id='button'>
						<img alt="" src="/YogoYogo/images/runfoodtruck/coke.jpg" style="width: 100%; height: 100%;">
						<div class="agileits-caption">
							<h4>콜라</h4>
							<p>3000원</p>
						</div>
					</div>
					<div class="pos_menu agile-menu-grid" id='button'>
						<img alt="" src="/YogoYogo/images/runfoodtruck/remonade.jpg" style="width: 100%; height: 100%;">
						<div class="agileits-caption">
							<h4>레모네이드</h4>
							<p>3000원</p>
						</div>
					</div>
				</div>

				<!-- 계산 목록   -->
				<div class="col-md-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">주문번호</h3>
						</div>
						<h1>24</h1>
					</div>
					<div class="panel panel-success sale-body">
						<div class="panel-heading">
							<h3 class="panel-title">리스트</h3>
						</div>
						<div class="table-responsive">
							<table id="mytable" class="table table-bordred table-striped">

								<thead>

									<th>메뉴 이름</th>
									<th>개수</th>
									<th>가격</th>
									<th>Delete</th>
								</thead>
								<tbody>

									<tr>
										<td>고추장삼겹살</td>
										<td>1개</td>
										<td>3000원</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>맛있는갈비</td>
										<td>1개</td>
										<td>3000원</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>맛있는갈비</td>
										<td>1개</td>
										<td>3000원</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>고추장삼겹살</td>
										<td>1개</td>
										<td>3000원</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- 						<ul class="list-group"> -->
						<!-- 							<a href="#" class="list-group-item" id="list">Cras justo odio</a> -->
						<!-- 							                    <a href="http://www.jquery2dotnet.com/2013/11/bootstrap-navigation-custom-design.html" class="list-group-item active">Dapibus ac facilisis in</a> -->
						<!-- 							<a href="#" class="list-group-item">Morbi leo risus</a> -->
						<!-- 							<a href="#" class="list-group-item">Porta ac consectetur ac</a> -->
						<!-- 							<a href="#" class="list-group-item">Vestibulum at eros</a> -->
						<!-- 						</ul> -->

					</div>
					<div class="sale-footer col-md-12 panel panel-success">
						<button class="btn sale-btn btn-warning">
							<div class="col-md-6">
								<h3>결제</h3>
							</div>
							<div class="col-md-6">
								<h3>10,000원</h3>
							</div>
						</button>
					</div>
				</div>

				<!-- 			<div class="col-md-4"> -->
				<!-- 				<div class="sale-header">뭘넣어야할까</div> -->
				<!-- 				<div class="sale-body"> -->
				<!-- 					<ul class="sale-list"> -->
				<!-- 						<li id='list'>여기에 물품리스트</li> -->
				<!-- 						<li>여기에 물품리스트</li> -->
				<!-- 						<li>여기에 물품리스트</li> -->
				<!-- 						<li>여기에 물품리스트</li> -->
				<!-- 						<li>여기에 물품리스트</li> -->
				<!-- 						<li>여기에 물품리스트</li> -->
				<!-- 						<li>여기에 물품리스트</li> -->
				<!-- 					</ul> -->
				<!-- 					<div class="sale-list-footer"> -->
				<!-- 					<ul class="sale-totals"> -->
				<!-- 						<li class="sale-total-line col-md-12"> -->
				<!-- 							<div class="col-md-6">총합</div> -->
				<!-- 							<div class="col-md-6">10,000원</div> -->
				<!-- 						</li> -->
				<!-- 					</ul> -->
				<!-- 					</div> -->
				<!-- 				</div> -->
				<!-- 				<div class="sale-footer col-md-12"> -->
				<!-- 					<button class="btn sale-btn"> -->
				<!-- 					<div class="col-md-6">결제</div> -->
				<!-- 					<div class="col-md-6">10,000원</div> -->
				<!-- 					</button> -->
				<!-- 				</div> -->
				<!-- 			</div> -->

			</div>

		</div>
	</div>
</body>
</html>