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
<% String mem_state = (String)session.getAttribute("mem_state"); %>
<% String mem_id = (String)session.getAttribute("mem_id"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/YogoYogo/css/festival/festivaldetail.css">

<!-- 다음맵 API -->
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=f237c90fc0f07115759cbf267df10e2b&libraries=services"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="/YogoYogo/js/festival/festival.js"></script>

<!-- fireworks scripts -->
<script type="text/javascript" src="/YogoYogo/js/festival/jquery.fireworks.js"></script>
<script>
	setTimeout(function() {
		$('.w3-agilefireworks').fireworks();
	});
</script>

<script type="text/javascript">
	$(function(){
		//자신의 글만 수정 삭제 보이기
		if($("#writer_id").val() == $("#mem_id").val()){
				$(".updelete").show();
			}else{
				$(".updelete").hide();
			}
	});
</script>
</head>
<body>
	<!-- 헤더부분 -->
	<div class="w3-agilefireworks">
		<div style="background: url('/YogoYogo/images/festival/2.jpg') center center no-repeat scroll" class="business-header">
			<div class="col-lg-12  text-center">
				<br> <br> <br> <br> <br> <br>
					<p class="tagline">${viewModel.event_name}</p>
				<br>
			</div>
		</div>
	</div>
	<!-- 헤더 끝 -->
	<!-- 본문 -->
	<div class="container">
		<div class="col-xs-12">
			<div class="page-header">
				<h2><font face="함초롬돋움">주최  :  ${viewModel.event_comp }</font></h2>
				<br/><br/>
				<h2><font face="함초롬돋움">일시 : ${viewModel.event_start }  ~  ${viewModel.event_end }</font></h2>

			</div>
		</div>
		<div class="col-xs-12">
			<div class="page-header">
				<h1><font face="함초롬돋움">행 사 내 용</font></h1>
			</div>
			<img alt="" src="/YogoYogo/images/festival/${viewModel.event_picreal }"> 
				<h3 class="content"><font face="함초롬돋움">${fn:replace(viewModel.event_content,cn,br)}</font></h3>
		</div>
		<font face="함초롬돋움">
			<input type="hidden" id="writer_id" value="${viewModel.mem_id }"/>
			<input type="hidden" id="mem_id" value="<%=mem_id %>" />
		</font>
		
		<div class="col-xs-12">
			<div class="page-header">
				<h1><font face="함초롬돋움">위 치 정 보</font></h1>
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
								'${viewModel.event_map }',
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
		<!-- 수정 삭제 버튼 -->
		<div class="row">
			<div class="col-xs-12 btn_group">
				<div class="col-md-8 text-left">
					<a onclick="javascript:location.href='festivalList.do'"><button
							class="btn btn-1 btn-1a">목록</button></a>
				</div>
				<div class="col-md-4 text-right updelete">
					<a onclick="javascript:location.href='festivalUpdate.do?event_num=${viewModel.event_num}'">
						<button class="btn btn-1 btn-1a">수정</button>
					</a>
				    	<button class="btn btn-1 btn-1a" id="deleteBtn">삭제</button>
					 </a>
				</div>
				
			</div>
		</div>
		<!-- 입점 신청 버튼 -->
		<div class="col-xs-12 btn_group ceo">
			<div class="offer btn_group">
				<input type="button" class="btn btn-2 btn-primary" value="입점 신청하기" id="btn_confirm" /> 
				<input type="button"class="btn btn-3 btn-danger" value="신청취소" id="btn_cancel" /> <input
					type="hidden" value="N" id="flag" />
				<form id="festiForm" method="post">
					<input type="hidden" name="event_num" id="event_num" value="${viewModel.event_num }">
					<input type="hidden" value="${vo.truck_num }" name="truck_num" id="truck_num" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>