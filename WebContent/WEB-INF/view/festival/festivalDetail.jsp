<%@ page import="java.text.NumberFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	//줄 바꾸기
	pageContext.setAttribute("br", "<br/>");
	pageContext.setAttribute("cn", "\n");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
<link rel="stylesheet" href="/Marketing/css/festivaldetail.css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<!-- 다음맵 API -->
<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=
f237c90fc0f07115759cbf267df10e2b&libraries=services"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		
		$.ajax({
			url : "confirmCheck.do",
			type : "post",
			data : {
				"event_num" : $("#event_num").val(),
				"truck_num" : $("#truck_num").val()
			},
			success : function(data) {
				if (data == "0") {
					$("#btn_confirm").show();
					$("#btn_cancel").hide();
				} else {
					$("#btn_confirm").hide();
					$("#btn_cancel").show();
				}
			}
		})

		//신청하기 버튼 클릭시
		$("#btn_confirm").click(function() {
			alert("aa");
			var result = confirm(' 신청 기간은 승인 다음날부터 3개월까지 입니다. 신청하시겠습니까?');
			if (result) {
				$("#frm").attr("action", "eventConfirmInsert.do").submit();
			}
		});

		//신청취소 버튼 클릭시
		$("#btn_cancel").click(function() {
			var result = confirm('신청을 취소하시겠습니까? (승인이 된 후에는 취소가 불가 합니다.)');
				if (result) {
					$.ajax({
						url : "confirmCancel.do",
						type : "post",
						data : {
						"event_num" : $("#event_num").val(),
						"truck_num" : $("#truck_num").val()
					},
					success : function(data) {
						if (data != "대기중") {
							alert("승인이 완료되어 취소가 불가 합니다.");
							return;
						} else {
							$("#frm").attr("action","eventConfirmDelete.do").submit();
						}
					}
				})
			}

		});
	});
</script>
</head>
<body>
	<header
		style="background:url('/YogoYogo/images/festival/festivalBackground.jpg') center center no-repeat scroll"
		class="business-header">
	<div class="container">
		<div class="row">
			<div class="col-lg-12  text-center">
				<br> <br> <br> <br> <br> <br>
				<p class="tagline">${viewModel.event_name}</p>
				<br>
			</div>
		</div>
	</div>

	</header>
	<div class="container">
		<div class="col-xs-12">
			<div class="page-header">
				<h2>주최자 : ${viewModel.event_comp }</h2>
				&nbsp;&nbsp;&nbsp;
				<h2>행사 날짜 : ${viewModel.event_start } ~ ${viewModel.event_end }</h2>
			</div>
			<div class="page-header">
				<h1>행 사 내 용</h1>
			</div>
			<img alt="" src="/Marketing/img/${viewModel.event_picreal }"> <br>
			<br>
			<br>
			<p>${fn:replace(viewModel.event_content,cn,br)}</p>
		</div>
		
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
								'서울특별시 금천구 가산디지털1로 151',
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
			<input type="hidden" name=event_num value=${viewModel.event_num }>
			<a onclick="javascript:location.href='festivalUpdate.do?event_num=${viewModel.event_num}'">수정</a>
			<a onclick="javascript:location.href='festivalDelete.do?event_num=${viewModel.event_num}'">삭제</a>
			<a onclick="javascript:location.href='festivalList.do'">목록가기</a>
		<div class="col-xs-12 btn_group">
			<div class="offer btn_group">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<!--                         <span class="usd"><sup>$</sup></span> -->
				<!--                         <span class="number">39</span> -->
				<!--                         <span class="cents"><sup>95</sup></span> -->
				<input type="button" class="btn btn-primary" value="입점 신청하기" id="btn_confirm" /> &nbsp;&nbsp;&nbsp;&nbsp; 
				<input type="button" class="btn btn-danger" value="신청취소" id="btn_cancel" /> 
				<input type="hidden" value="N" id="flag" />
				<form name="frm" id="frm" method="post">
				<input type="hidden" value="${viewModel.event_num }"
					   name="event_num" id="event_num" /> <input type="hidden"
					   value="TRUCK003" name="truck_num" id="truck_num" />
				</form>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
			</div>
		</div>
	</div>




</body>
</html>