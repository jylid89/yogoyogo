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
<script type="text/javascript">
$(function(){
$(".modal-wide").on("show.bs.modal", function() {
	  var height = $(window).height() - 200;
	  $(this).find(".modal-body").css("max-height", height);
	});
	var mark_content;
	var mark_picreal;
	var mark_num;
	$(".btn_update").click(function(){
		
		var index = $(".btn_update").index(this);
		mark_content = $(".mark_content").eq(index).text();
		$("#ta_update").val(mark_content);
		mark_picreal = $(".mark_picreal").eq(index).text();
		$("#pic_real").val(mark_picreal);
	});
});
</script>
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
		
		if( $('#request_truck_num').val() == $('#session_truck_num').val() ) {
			$('#isWriter').show();
		}
		else {
			$('#isWriter').hide();
		}
	});
</script>
</head>
<div class="body">
	<input type="hidden" id="request_truck_num" value="<%=request.getParameter("truck_num")%>">
	<input type="hidden" id="session_truck_num" value="<%=session.getAttribute("truck_num")%>">
	
	<!-- main -->
	<div class="col-xs-12" style="background-color: #fff;">
		<div class="page-header">
			<h1>${foodtruck.truck_name }</h1>
		</div>
	</div>
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

									var content = '<div class="wrap">'
											+ '    <div class="info">'
											+ '        <div class="title">'
											+ '            푸드트럭명'
											+ '            <div class="close" onclick="closeOverlay()" title="닫기"></div>'
											+ '        </div>'
											+ '        <div class="body">'
											+ '            <div class="img">'
											+ '                <img src="${foodtruck.truck_picreal1}" width="73" height="70">'
											+ '           </div>'
											+ '            <div class="desc">'
											+ '                <div class="ellipsis">${foodtruck.truck_addr}</div>'
											+ '            </div>'
											+ '        </div>' + '    </div>'
											+ '</div>';

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
								class="question" /> <label class="label" for="question1">
								<img src="/YogoYogo/images/foodtruck/menu.png" alt="" />
								<p>먹을거리</p>
							</label>
							<section id="answer1">
							<div class="panel-body">
							<c:forEach varStatus="status" items="${menu_eat}" var="menu_eat" >
								<div class="col-md-3 order-grid">
									<img src="${menu_eat.menu_picreal }"
										class="img-responsive" alt="/">
									<div class="caption">
										<div class="small">
											<span class="text-ellipsis">${menu_eat.menu_name }</span><br /> <strong
												class="text-ellipsis ">${menu_eat.menu_price }</strong>
										</div>
									</div>
								</div>
							</c:forEach>
							</div>
							</section>

							<input id="question2" type="checkbox" name="toggle"
								class="question" /> <label class="label" for="question2">
								<img src="/YogoYogo/images/foodtruck/menu.png" alt="" />
								<p>마실거리</p>
							</label>

							<section id="answer2">
							<div class="panel-body">
							<c:forEach varStatus="status" items="${menu_drink}" var="menu_drink" >
								<div class="col-md-3 order-grid">
									<img src="${menu_drink.menu_picreal } style="height:300px;, width:300px;" class="img-responsive" alt="/">
									<div class="caption">
										<div class="small">
											<span class="text-ellipsis">${menu_drink.menu_name }</span><br /> <strong
												class="text-ellipsis ">${menu_drink.menu_price }</strong>
										</div>
									</div>
								</div>
							</c:forEach>
							</div>
							</section>

							<input id="question3" type="checkbox" name="toggle"
								class="question" /> <label class="label" for="question3">
								<img src="/YogoYogo/images/foodtruck/menu.png" alt="" />
								<p>즐길거리</p>
							</label>

							<section id="answer3">
							<div class="panel-body">
							<c:forEach varStatus="status" items="${menu_enjoy}" var="menu_drink" >
								<div class="col-md-3 order-grid">
									<img src="${menu_enjoy.menu_picreal }"
										class="img-responsive" alt="/">
									<div class="caption">
										<div class="small">
											<span class="text-ellipsis">${menu_enjoy.menu_name }</span><br /> <strong
												class="text-ellipsis ">${menu_enjoy.menu_price }</strong>
										</div>
									</div>
								</div>
							</c:forEach>
							</div>
							</section>

						</div>
					</div>
				<!-- timeline -->
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
						<div class="facts" id="isWriter">
							<div class="text-right">
								<button class="btn btn-1 btn-1a" onclick="javascript:location.href='activityInsert.do?truck_num=${foodtruck.truck_num}'">글쓰기</button>
							</div>
						</div>
						<c:forEach varStatus="status" items="${activityList}" var="activityList" >
						<div class="facts">
							<div class="single-grid">
								<div class="blog-left-grid">
									<div class="blog-leftl">
										<h4>${activityList.mark_date}</h4>
									</div>
									<div class="blog-leftr">
										<div class="text-left">
											
										</div>
										<p>${activityList.mark_content}</p>
										<img src="${activityList.mark_picreal}" alt=" "
											class="img-responsive" />
											
									</div>
									
									<div class="clear"></div>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
					<!-- //Review -->
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
					<c:forEach varStatus="status" items="${reviewList}" var="reviewList" >
						<div class="facts">
					<div class="facts_left">
						<img src="${reviewList.rev_picreal }" alt=" " class="img-responsive" />
					</div>
					<div class="facts_right">
						<div class="facts_right1">
							<h2>${revieList.rev_title }</h2>
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
						<p>${reviewList.rev_content }</p>
					</div>
					<div class="clear"></div>
				</div>
					</c:forEach>
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