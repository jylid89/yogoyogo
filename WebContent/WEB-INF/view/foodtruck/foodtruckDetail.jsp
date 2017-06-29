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
<link rel="stylesheet" href="/yogoyogo4/css/foodtruck/foodtruckStyle.css">
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

	<header class="business-header" style="background-image: url(${foodtruck.truck_picreal1});">
	<div class="container">
		<div class="row">
			<div class="col-lg-12  text-center">
				<br> <br> <br> <br> <br> <br>
				<hr>
				<h1 class="tagline">${foodtruck.truck_name }</h1>
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
				<h1>위 치 정 보</h1>
			</div>
			<!-- map보여지는 부분 -->
			<div id="map" style="width: 100%; height: 500px;"></div>
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
	</div>


	<div class="container">
		<div class="col-xs-12">
			<div class="page-header">
				<h1>메 뉴</h1>
			</div>
			<div class="carousel slide" id="myCarousel">
				<div class="carousel-inner">
				<c:forEach varStatus="status" items="${menuList}" var='menu'>
					<div class="item active">
						<ul class="thumbnails">
								<li class="col-sm-3">
									<div class="fff">
										<div class="thumbnail">
											<img src="${menu.menu_picreal }" alt="">
										</div>
										<div class="caption">
											<h4>${menu.menu_name }</h4>
											<p>${menu.menu_price }</p>
											<p>${menu.menu_content }</p>
										</div>
									</div>
								</li>
						</ul>
					</div>
					</c:forEach>
					<!-- /Slide1 -->
					
				</div>


				<!-- /.control-box -->

			</div>
			<!-- /#myCarousel -->

		</div>
		<!-- /.col-xs-12 -->
	</div>
	<!-- /.container -->
</div>
</html>