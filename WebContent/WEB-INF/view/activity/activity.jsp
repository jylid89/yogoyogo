<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩 깔았어요 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/Marketing/view/css/activity.css">
</head>
<body>

	<!-- for문을 돌리기 -->
	
	<!-- <link async href="http://fonts.googleapis.com/css?family=Advent%20Pro" data-generated="http://enjoycss.com" rel="stylesheet" type="text/css"/> -->

	<div class="container">
		<div class="containerright">
		<button class="enjoy-css" onclick="javascript:location.href='/Marketing/view/activityinsert.jsp'">글 쓰기</button>
		</div>
		<hr>
	
		<div class="row">
			<div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
				<ul class="event-list">
					<li><time datetime="2014-07-20">
							<span class="day">4일</span> <span class="month">사월</span> <span
								class="year">2014</span> <span class="time">ALL DAY</span>
						</time>

						<div class="info">
							<h2 class="title">타임라인</h2>
							<p class="desc">나는요 오빠가 좋은걸~</p>
							<img alt="달력 사진" src="/Marketing/img/kim.jpg" />
						</div></li>
					<li><time datetime="2014-07-20 0000">
							<span class="day">8</span> <span class="month">Jul</span> <span
								class="year">2014</span> <span class="time">12:00 AM</span>
						</time>
						<div class="info">
							<h2 class="title">One Piece Unlimited World Red</h2>
							<p class="desc">PS Vita</p>
						</div></li>
					<li><time datetime="2014-07-20 2000">
							<span class="day">20</span> <span class="month">Jan</span> <span
								class="year">2014</span> <span class="time">8:00 PM</span>
						</time>
						<div class="info">
							<h2 class="title">Mouse0270's 24th Birthday!</h2>
							<p class="desc">Bar Hopping in Erie, Pa.</p>
							<img alt="My 24th Birthday!" src="" />
						</div>
					<li><time datetime="2014-07-31 1600">
							<span class="day">31</span> <span class="month">Jan</span> <span
								class="year">2014</span> <span class="time">4:00 PM</span>
						</time>
						<div class="info">
							<h2 class="title">Disney Junior Live On Tour!</h2>
							<p class="desc">Pirate and Princess Adventure</p>
							<img alt="Disney Junior Live On Tour!" src="" />
						</div></li>
				</ul>
				<div class="row">
					<div class="col-md-12">
						<button class="btn btn-default orange-circle-button" href="">
							더 보기 <span class="orange-circle-greater-than"></span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>