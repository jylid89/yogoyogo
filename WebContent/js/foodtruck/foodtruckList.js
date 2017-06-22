window.onload = function() {
	// 실시간 위치를 선택했을 때 확인창을 띄워서 확인버튼을 누를시에  
	document.getElementById('real_loc').onclick = function() {
		var con_loc = confirm("현재 위치로 설정하시겠습니까?");
		if(con_loc == true) {
			if (navigator.geolocation) {
			    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
			    navigator.geolocation.getCurrentPosition(function(position) {
			        
			        var lat = position.coords.latitude, // 위도
			            lon = position.coords.longitude; // 경도
			            
			        var geocoder = new daum.maps.services.Geocoder();
			        
			        // 현재위치의 좌표를 이용해서 행정동 주소 정보를 검색창에 표시합니다.
			        searchAddrFromCoords(new daum.maps.LatLng(lat, lon), function(status, result) {
			        	if (status === daum.maps.services.Status.OK) {
			               	document.getElementById('addr').value = result[0].fullName;
			        	}
			        });
			        
			        function searchAddrFromCoords(coords, callback) {
			            // 좌표로 행정동 주소 정보를 요청합니다
			            geocoder.coord2addr(coords, callback);         
			        }
			});

			} else { // 위치 정보를 사용 할 수 없을 때 메시지를 보여준다.
			    alert("위치 서비스를 사용할 수 없습니다.");
			}
		}
	}
}

$(function() {
	// 검색창의 푸드트럭 메뉴 폼과 위치 폼을 숨긴다.  
	$("#foodtruck_menu").hide();
	$("#foodtruck_loc").hide();
	
	// 상단 오른쪽의 찾기 버튼을 클릭했을 때 검색창을 보여주고 버튼을 닫기버튼으로 바꾼다.
	$("#menu-toggle").click(function() {
		$('.filter').slideDown();
		$('#menu-close').show();
		$(this).hide();
	});
	
	// 검색창의 닫기 버튼을 눌렀을 때 검색창을 숨기고 버튼을 찾기 버튼으로 바꾼다.
	$("#menu-close").click(function() {
		$('#select_search').val("");
		$('#addr').val("");
		$('.filter').slideUp();
		$('#menu-toggle').show();
		$(this).hide();
	});
	
	// 카테고리가 변경 될 때마다 카테고리에 따라 보여줄 폼을 보여준다.
	$("#category").change(function() {
		if( $(this).children("option:selected").text() == "푸드트럭명" ) {
			$("#foodtruck_menu").hide();
			$("#foodtruck_loc").hide();
			$("#foodtruck_name").show();
		} else if( $(this).children("option:selected").text() == "메뉴") {
			$("#foodtruck_name").hide();
			$("#foodtruck_menu").show();
			$("#foodtruck_loc").hide();
		} else if( $(this).children("option:selected").text() == "위치") {
			$("#foodtruck_name").hide();
			$("#foodtruck_menu").hide();
			$("#foodtruck_loc").show();
		}
	});
	
	$('#submit').click(function() {
		$('#form').submit();
	});
});

