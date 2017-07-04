<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
<!-- <link rel="stylesheet" href="/YogoYogo/css/foodtruck/foodtruckStyle.css"> -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"> -->
<!-- 부가적인 테마 -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css"> -->

<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script -->
<!-- 	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="responsive Profile Tabs Widget responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- //for-mobile-apps -->
<!-- <script type='text/javascript' src="js/jquery-1.11.2.min.js"></script> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->
<link href="/YogoYogo/css/foodtruck/style.css" rel="stylesheet"
	type="text/css" media="all" />
<link
	href='//fonts.googleapis.com/css?family=Droid+Serif:400,400italic,700,700italic'
	rel='stylesheet' type='text/css'>
<!-- 다음맵 API -->
<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=
f237c90fc0f07115759cbf267df10e2b&libraries=services"></script>

<script type="text/javascript">
	//Carousel Auto-Cycle
	$(document).ready(function() {
		$('.carousel').carousel({
			interval : 6000
		})
	});
</script>
</head>
<div class="body">

	<!-- main -->
	<div class="col-xs-12" style="background-color: #fff;">
	<div class="page-header" >
	<h1>${foodtruck.truck_name }</h1>
	</div>
	</div>
<!-- 	<div class="container"> -->
		<div class="col-xs-14">
			<!-- map보여지는 부분 -->
			<div id="map" style="width: 100%; height: 300px;"></div>
			<script type="text/javascript">
				var overlay;
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				mapOption = {
					center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
					level : 3
				// 지도의 확대 레벨
				};

				// 지도를 생성합니다    
				var map = new daum.maps.Map(mapContainer, mapOption);

				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new daum.maps.services.Geocoder();

				// 주소로 좌표를 검색합니다
				geocoder
						.addr2coord(
								'${foodtruck.truck_addr}',
								function(status, result) {

									// 정상적으로 검색이 완료됐으면 
									if (status === daum.maps.services.Status.OK) {

										var coords = new daum.maps.LatLng(
												result.addr[0].lat,
												result.addr[0].lng);

										// 결과값으로 받은 위치를 마커로 표시합니다
										var marker = new daum.maps.Marker({
											map : map,
											position : coords
										});

										//			         // 인포윈도우로 장소에 대한 설명을 표시합니다
										//			         var infowindow = new daum.maps.InfoWindow({
										//			             content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
										//			         });
										//			         infowindow.open(map, marker);

										// 커스텀 오버레이에 표시할 컨텐츠 입니다
										// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
										// 별도의 이벤트 메소드를 제공하지 않습니다 
										var content = '<div class="wrap">'
												+ '    <div class="info">'
												+ '        <div class="title">'
												+ '            푸드트럭명'
												+ '            <div class="close" onclick="closeOverlay()" title="닫기"></div>'
												+ '        </div>'
												+ '        <div class="body">'
												+ '            <div class="img">'
												+ '                <img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">'
												+ '           </div>'
												+ '            <div class="desc">'
												+ '                <div class="ellipsis">서울특별시 금천구 가산디지털1로 151</div>'
												+
												//			       		      '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' + 
												'                <div><a href="http://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>'
												+ '            </div>'
												+ '        </div>'
												+ '    </div>' + '</div>';

										// 마커 위에 커스텀오버레이를 표시합니다
										// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
										overlay = new daum.maps.CustomOverlay({
											content : content,
											map : map,
											position : marker.getPosition()
										});

										//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
										daum.maps.event.addListener(marker,
												'click', function() {
													overlay.setMap(map);
												});

										// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
										map.setCenter(coords);
									}
								});
				//커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
				var closeOverlay = function() {
					overlay.setMap(null);
				}
			</script>
		</div>
<!-- 	</div> -->
	<div class="main">
		<div class="sap_tabs">
			<div id="horizontalTab"
				style="display: block; width: 100%; margin: 0px;">
				<ul class="resp-tabs-list">
					<li class="resp-tab-item grid1" aria-controls="tab_item-0"
						role="tab"><span>푸드트럭 <i>정보</i></span></li>
					<li class="resp-tab-item grid2" aria-controls="tab_item-1"
						role="tab"><span>타임 <i>라인</i></span></li>
					<li class="resp-tab-item grid3" aria-controls="tab_item-2"
						role="tab"><span>리뷰 </span></li>
					<div class="clear"></div>
				</ul>

				<div class="resp-tabs-container">
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
				<!-- 메뉴부분 -->
				<div class="facts">
					<input id="question1" type="checkbox" name="toggle"
						class="question" /> <label class="label" for="question1"> <img
						src="/YogoYogo/images/foodtruck/menu.png" alt="" />
						<p>먹을거리</p>
					</label>
					<section id="answer1">
					<div class="panel-body">
						<div class="col-md-3 order-grid">
							<img src="/YogoYogo/images/foodtruck/d1.jpg" class="img-responsive" alt="/">
							<div class="caption">
								<div class="small">
									<span class="text-ellipsis">메뉴</span><br /> <strong
										class="text-ellipsis ">가격</strong>
								</div>
							</div>
						</div>
						<div class="col-md-3 order-grid">
							<img src="/YogoYogo/images/foodtruck/d2.jpg" class="img-responsive" alt="/">
						</div>
						<div class="col-md-3 order-grid">
							<img src="/YogoYogo/images/foodtruck/d3.jpg" class="img-responsive" alt="/">
						</div>
						<div class="col-md-3 order-grid">
							<img src="/YogoYogo/images/foodtruck/d4.jpg" class="img-responsive" alt="/">
						</div>
						<div class="clerafix"></div>
					</div>
					</section>

					<input id="question2" type="checkbox" name="toggle"
						class="question" /> <label class="label" for="question2">  <img
						src="/YogoYogo/images/foodtruck/menu.png" alt="" />
						<p>마실거리</p>
					</label>

					<section id="answer2">
					<p>You don't. Simple.</p>
					</section>

					<input id="question3" type="checkbox" name="toggle"
						class="question" /> <label class="label" for="question3">  <img
						src="/YogoYogo/images/foodtruck/menu.png" alt="" />
						<p>즐길거리</p>
					</label>

					<section id="answer3">
					<p>Yes, and it looks good. Pretty awesome, eh?</p>
					</section>

				</div>
					</div>
				</div>
				
			
			<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
				<div class="facts">
					<div class="facts_left">
						<img src="/YogoYogo/images/foodtruck/1.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="facts_right">
						<div class="facts_right1">
							<h2>James Robert</h2>
						</div>
						<div class="facts_right2">
							<ul>
								<li><a href="#" class="facebook"> </a></li>
								<li><a href="#" class="twitter"> </a></li>
								<li><a href="#" class="p"> </a></li>
								<li><a href="#" class="g-plus"> </a></li>
							</ul>
						</div>
						<div class="clear"></div>
						<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
					</div>
					<div class="clear"></div>
				</div>
				<div class="facts">
					<div class="facts_left">
						<img src="/YogoYogo/images/foodtruck/2.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="facts_right">
						<div class="facts_right1">
							<h2>Mill Franklin</h2>
						</div>
						<div class="facts_right2">
							<ul>
								<li><a href="#" class="facebook"> </a></li>
								<li><a href="#" class="twitter"> </a></li>
								<li><a href="#" class="p"> </a></li>
								<li><a href="#" class="g-plus"> </a></li>
							</ul>
						</div>
						<div class="clear"></div>
						<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
					</div>
					<div class="clear"></div>
				</div>
				<div class="facts">
					<div class="facts_left">
						<img src="/YogoYogo/images/foodtruck/3.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="facts_right">
						<div class="facts_right1">
							<h2>Michael Crisp</h2>
						</div>
						<div class="facts_right2">
							<ul>
								<li><a href="#" class="facebook"> </a></li>
								<li><a href="#" class="twitter"> </a></li>
								<li><a href="#" class="p"> </a></li>
								<li><a href="#" class="g-plus"> </a></li>
							</ul>
						</div>
						<div class="clear"></div>
						<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
				<div class="facts">
					<div class="facts_left">
						<img src="/YogoYogo/images/foodtruck/1.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="facts_right">
						<div class="facts_right1">
							<h2>James Robert</h2>
						</div>
						<div class="facts_right2">
							<ul>
								<li><a href="#" class="facebook"> </a></li>
								<li><a href="#" class="twitter"> </a></li>
								<li><a href="#" class="p"> </a></li>
								<li><a href="#" class="g-plus"> </a></li>
							</ul>
						</div>
						<div class="clear"></div>
						<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>
	</div>
<script src="/YogoYogo/js/foodtruck/easyResponsiveTabs.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#horizontalTab').easyResponsiveTabs({
			type : 'default', //Types: default, vertical, accordion           
			width : 'auto', //auto or any width like 600px
			fit : true
		// 100% fit in a container
		});
	});
</script>
<!-- //main -->


</div>
</html>