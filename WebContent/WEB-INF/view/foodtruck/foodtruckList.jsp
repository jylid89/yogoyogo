<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>푸드트럭 리스트</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"> -->
<!-- 부가적인 테마 -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css"> -->
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<link rel="stylesheet" type="text/css" href="/YogoYogo/css/foodtruck/foodtruckList.css">
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=f237c90fc0f07115759cbf267df10e2b&libraries=services"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<script src="/YogoYogo/js/foodtruck/foodtruckList.js"></script>
</head>
<div class="body">
	<div class="trucklist container">
		<div class="text-center wow fadeIn animated margin-bottom-20 animated"
			data-wow-offset="120" data-wow-duration="1.5s"
			style="visibility: visible; -webkit-animation-duration: 1.5s; -moz-animation-duration: 1.5s; animation-duration: 1.5s;">
			<h2>푸드트럭 리스트</h2>
			<div class="colored-line"></div>
		</div>
		<div class="row">
			<div class="col-md-10 col-sm-offset-1">
				<div class="row">
					<c:forEach varStatus="status" items="${list}" var="a" >
						<div class="col-md-3 col-xs-6  text-center">
							<div class="logo">
								<a href="foodtruckDetail.do?truck_num=${a.truck_num}"> <img
									src="${a.truck_pictemp1}"
									class="img-circle img-responsive img-border center-block"
									alt="Vege 4 Love">
								</a>
							</div>
							<div class="title">
								<a href="foodtruckDetail.do?truck_num=${a.truck_num}">${a.truck_name}</a><br/>
								<a href="reviewList.do?truck_num=${a.truck_num}">리뷰</a>
							</div>
						</div>
						<c:if test="${status.count % 4 == 0 }">
							</div>
							<br/><br/><br/>
				<div class="row">
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<!-- 검색창 부분 -->
	<div class="container filter">
		<div class="row">
			<div class="col-lg-3 col-md-6 col-md-offset-3 col-lg-offset-0">
				<div class="well">
					<h3 align="center">푸드트럭 검색</h3>
					<form id='form' method="post" class="form-horizontal" action="foodtruckList_search.do">
						<div class="form-group">
							<label for="location1" class="control-label">카테고리</label> <select
								class="form-control" id="category" name='category'>
								<option value="푸드트럭명">푸드트럭명</option>
								<option value="메뉴">메뉴</option>
								<option value="위치">위치</option>
							</select> <br/> 
							
						</div>
						<div class="form-group" id="foodtruck_name">
							<label for="type1" class="control-label">푸드트럭명 검색</label> <br/>
							<input id="search_name" name="search_name"
								type="text" class="form-control" placeholder="검색어를 입력해주세요"
								autofocus="">
						</div>
						
						<div class="form-group" id="foodtruck_menu">
							<label for="type1" class="control-label">메뉴 검색</label> <br/>
							<input type="checkbox" name="eat" >먹을거리 &nbsp
							<input type="checkbox" name="drink" >마실거리 &nbsp
							<input type="checkbox" name="enjoy" >즐길거리 &nbsp
						</div>
						
						<div class="form-group" id="foodtruck_loc">
							<label for="type1" class="control-label">주소검색</label>
							<a id='real_loc' class="btn glyphicon glyphicon-record" role="button"></a> 							
							<input name="addr" id="addr" type="text"
								class="form-control" placeholder="주소를 입력해주세요" autofocus="">
						</div>
						<p class="text-center">
							<a id="submit" class="btn btn-primary glyphicon glyphicon-search" role="button"></a>
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>
	<a id="menu-toggle" href="#" class="btn btn-primary btn-lg toggle"><i
		class="glyphicon glyphicon-bookmark"></i></a>
	<a id="menu-close" href="#" class="btn btn-primary btn-lg toggle"><i
		class="glyphicon glyphicon-remove"></i></a>
</div>
</html>