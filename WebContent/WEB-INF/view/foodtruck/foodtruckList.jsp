<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>푸드트럭 리스트</title>
<link rel="stylesheet" type="text/css" href="/YogoYogo/css/foodtruck/foodtruckList.css">
<link rel="stylesheet" type="text/css" href="/YogoYogo/css/main/style.css"/>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=f237c90fc0f07115759cbf267df10e2b&libraries=services"></script>
<script src="/YogoYogo/js/foodtruck/foodtruckList.js"></script>
<script src="/YogoYogo/js/main/modernizr.custom.97074.js"></script>
</head>
<div class="body">
	<!-- 리스트부분 -->
	<div class="special">
		<div class="container">
			<div class="special-heading">
				<h3>푸드트럭 리스트</h3>
			</div>
			<div class="mainContainer">
      	<div class="gallery-grids">
				<section>
					<ul id="da-thumbs" class="da-thumbs">
					<c:forEach varStatus="status" items="${list}" var="a" >
						<li>
							<a href="foodtruckDetail.do?truck_num=${a.truck_num}" class=" mask b-link-stripe b-animate-go   swipebox"  title="">
								<img src="${a.truck_picreal1}" alt="" />
								<div>
									<h5>${a.truck_name}</h5>
									<span>${a.truck_addr }</span>
								</div>
							</a>
						</li>
						</c:forEach>
						
					</ul>
				</section>
				<script type="text/javascript" src="/YogoYogo/js/main/jquery.hoverdir.js"></script>	
				<script type="text/javascript">
					$(function() {
					
						$(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );

					});
				</script>
			</div>
    </div>
		</div>
	</div>
	<!-- 리스트 엔드 -->
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