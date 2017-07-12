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
.hide-bullets {
	list-style: none;
	margin-left: -40px;
	margin-top: 20px;
}
</style>
<script type="text/javascript">
$(function() {
	$('#cateSubmit').click(function() {
		$('#sum_cate_time').val($('#startTime').val()+"~"+$('#endTime').val());
		var cate_people = $('#cate_people').val().split('명')
		$('#cate_people').val(cate_people[0]);
		
		var cate_budget = $('#cate_budget').val().split('원')
		$('#cate_budget').val(cate_budget[0]);
		$('#cateForm').attr('action', 'write_ok.do').submit();
	});
});
</script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"> -->
<!-- 부가적인 테마 -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css"> -->

<!-- <link rel="stylesheet" href="/YogoYogo/css/catering/cateringDetail.css"> -->
	<link rel="stylesheet" href="/YogoYogo/css/catering/style.css">
<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script -->
<!-- 	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->

</head>
<body>
	<!-- menu -->
	<div class="menu">
		<div class="container">
			<div class="special-heading">
				<h3>${truckName }</h3>
			</div>
			<div class="menu-top-grids">
				<div class="w3ls-menu-grids">
					<c:forEach varStatus="status" items="${model}" var="model" >
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid text-center">
								<img src="${model.menu_picreal }" style="width:223px; height:250px;" alt="" />
								<div class="agileits-caption">
									<h4>${model.menu_name }</h4>
									<p>${model.menu_price }원</p>
								</div>
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<!-- //menu -->
	<!-- 케이터링 신청 부분 -->
	<h1 class="logout">케이터링 신청하기</h1>
	<div class="main-agile logout">
		<form id="cateForm" method="post">
			<input type="text" name="cate_name" placeholder="케이터링 제목" required="">
			<input type="text" name="cate_call" placeholder="신청자 연락처" required="">
			<input type="text" id="startTime" placeholder="시작시간" required="">
			<input type="text" id="endTime" placeholder="종료시간" required="">
			<input id="datepicker" name="cate_date" type="text" value="케이터링 날짜" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '케이터링 날짜';}" required="">
			<input type="text" name="cate_addr" placeholder="장소" required="">
			<input type="text" name="cate_people" id="cate_people" placeholder="인원수" required="">
			<input type="text" name="cate_budget" id="cate_budget" placeholder="예산" required="">
			<input type="hidden" name="truck_num" value="${truckNum }">
			<input type="hidden" id="sum_cate_time" name="cate_time" value="">
		</form>
			<input type="submit" id="cateSubmit" value="신청하기">
	</div>
<!-- Calendar -->
	<link rel="stylesheet" href="/YogoYogo/css/catering/jquery-ui.css" />
	<script src="/YogoYogo/js/catering/jquery-ui.js"></script>
		<script>
		$(function() {
			$( "#datepicker" ).datepicker({
				dateFormat: 'yy-mm-dd'
			});
		});
	 </script>
<!-- //Calendar -->
	
</body>
</html>