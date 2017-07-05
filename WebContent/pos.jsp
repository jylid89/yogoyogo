<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="/Marketing/pos.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">


$(document).ready(function(){
	
    $("#button").click(function(){
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
				<div class="column">
					<div class="pos_menu" id='button'>고추장삼겹살</div>	
					<div class="pos_menu">맛있는갈비</div>
					<div class="pos_menu">비싼한우꽃등심</div>
				</div>
				<div class="column">
					<div class="pos_menu">고추장삼겹살</div>	
					<div class="pos_menu">맛있는갈비</div>
					<div class="pos_menu">비싼한우꽃등심</div>
				</div>
				<div class="column">
					<div class="pos_menu">고추장삼겹살</div>	
					<div class="pos_menu">맛있는갈비</div>
					<div class="pos_menu">비싼한우꽃등심</div>
				</div>
				<div class="column">
					<div class="pos_menu">고추장삼겹살</div>	
					<div class="pos_menu">맛있는갈비</div>
					<div class="pos_menu">비싼한우꽃등심</div>
				</div>
				<div class="column">
					<div class="pos_menu">고추장삼겹살</div>	
					<div class="pos_menu">맛있는갈비</div>
					<div class="pos_menu">비싼한우꽃등심</div>
				</div>
				<div class="column">
					<div class="pos_menu">고추장삼겹살</div>	
					<div class="pos_menu">맛있는갈비</div>
					<div class="pos_menu">비싼한우꽃등심</div>
				</div>
			</div>
			
			<!-- 계산 목록   -->
			<div class="col-md-4">
				<div class="sale-header">뭘넣어야할까</div>
				<div class="sale-body">
					<ul class="sale-list">
						<li id='list'>여기에 물품리스트</li>
						<li>여기에 물품리스트</li>
						<li>여기에 물품리스트</li>
						<li>여기에 물품리스트</li>
						<li>여기에 물품리스트</li>
						<li>여기에 물품리스트</li>
						<li>여기에 물품리스트</li>
					</ul>
					<div class="sale-list-footer">
					<ul class="sale-totals">
						<li class="sale-total-line col-md-12">
							<div class="col-md-6">총합</div>
							<div class="col-md-6">10,000원</div>
						</li>
					</ul>
					</div>
				</div>
				<div class="sale-footer col-md-12">
					<button class="btn sale-btn">
					<div class="col-md-6">결제</div>
					<div class="col-md-6">10,000원</div>
					</button>
				</div>
			</div>
			
		</div>
		
	</div>
</div>
</body>
</html>