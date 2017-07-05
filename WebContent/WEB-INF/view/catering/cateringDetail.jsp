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
				<h3>푸드트럭 명</h3>
			</div>
			<div class="menu-top-grids">
				<div class="w3ls-menu-grids">
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
								<img src="/YogoYogo/images/catering/m1.jpg" alt="" />
								<div class="agileits-caption">
									<h4>양꼬치</h4>
									<p>1900원</p>
								</div>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
								<img src="/YogoYogo/images/catering/m2.jpg" alt="" />
								<div class="agileits-caption">
									<h4>크리스피 치킨</h4>
									<p>16000원</p>
								</div>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
								<img src="/YogoYogo/images/catering/m3.jpg" alt="" />
								<div class="agileits-caption">
									<h4>Phasellus</h4>
									<p>$18</p>
								</div>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
								<img src="/YogoYogo/images/catering/m4.jpg" alt="" />
								<div class="agileits-caption">
									<h4>Mauris </h4>
									<p>$21</p>
								</div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
<!-- 				<div class="w3ls-menu-grids agileinfo"> -->
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
								<img src="/YogoYogo/images/catering/m5.jpg" alt="" />
								<div class="agileits-caption">
									<h4>Consectetur</h4>
									<p>$10</p>
								</div>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
								<img src="/YogoYogo/images/catering/m6.jpg" alt="" />
								<div class="agileits-caption">
									<h4>Suspendisse</h4>
									<p>$15</p>
								</div>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
								<img src="/YogoYogo/images/catering/m1.jpg" alt="" />
								<div class="agileits-caption">
									<h4>Phasellus</h4>
									<p>$18</p>
								</div>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
								<img src="/YogoYogo/images/catering/m2.jpg" alt="" />
								<div class="agileits-caption">
									<h4>Mauris </h4>
									<p>$21</p>
								</div>
						</div>
					</div>
					<div class="clearfix"> </div>
<!-- 				</div> -->
				<div class="w3ls-menu-grids wthree-menu-grids">
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
								<img src="/YogoYogo/images/catering/m3.jpg" alt="" />
								<div class="agileits-caption">
									<h4>Consectetur</h4>
									<p>$10</p>
								</div>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
								<img src="/YogoYogo/images/catering/m4.jpg" alt="" />
								<div class="agileits-caption">
									<h4>Suspendisse</h4>
									<p>$15</p>
								</div>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
								<img src="/YogoYogo/images/catering/m5.jpg" alt="" />
								<div class="agileits-caption">
									<h4>Phasellus</h4>
									<p>$18</p>
								</div>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
								<img src="/YogoYogo/images/catering/m6.jpg" alt="" />
								<div class="agileits-caption">
									<h4>Mauris </h4>
									<p>$21</p>
								</div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	<!-- //menu -->
	<!-- 케이터링 신청 부분 -->
	<h1>케이터링 신청하기</h1>
	<div class="main-agile">
		<form action="#" method="post">
			<input  id="datepicker" name="Text" type="text" value="시작 일자" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Arrival date';}" required="">
			<input  id="datepicker1" class="cal2" name="Text" type="text" value="종료 일자" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Departure date';}" required="">
			<input type="text"  class="hname" name="name" placeholder="시작시간" required="">
			<input type="text"  class="hname" name="name" placeholder="종료시간" required="">
			<input type="text"  class="hname" name="name" placeholder="인원 수" required="">
			<input type="text"  class="fname" name="First name" placeholder="이름" required="">
			<input type="text"  class="lname" name="Last name" placeholder="Email" required="">
			<input type="text"  class="pnum" name="Phone number" placeholder="핸드폰 번호" required="">
			<input type="text"  class="email" name="Email" placeholder="예산" required="">
			<input type="text"  class="addr" name="name" placeholder="주소" required="">
			<input type="submit" value="신청하기">
		</form>
	</div>
<!-- Calendar -->
	<link rel="stylesheet" href="/YogoYogo/css/catering/jquery-ui.css" />
	<script src="/YogoYogo/js/catering/jquery-ui.js"></script>
		<script>
		 $(function() {
		$( "#datepicker,#datepicker1" ).datepicker();
		});
	 </script>
<!-- //Calendar -->
	
</body>
</html>