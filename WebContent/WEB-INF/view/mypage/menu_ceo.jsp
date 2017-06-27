<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메뉴 추가 및 수정(사업자)</title>
<style type="text/css">
</style>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<!-- Bootstrap 3.3.2 -->

<link rel="stylesheet" href="/YogoYogo2/assets/css/animate.css">

<link rel="stylesheet" href="/YogoYogo2/css/mypage/menu.css">
<script type="text/javascript" src="/YogoYogo2/js/mypage/menu.js"></script>
</head>
<body>

	<header class="business-header">
	<div class="container">
		<div class="row">
			<div class="col-lg-12  text-center">
				<hr>
				<h1 class="tagline">${truck_name}</h1>
				<hr>
				<p>${truck_addr }</p>
				<input type="hidden" id="truck_num" value="${truck_num }">
			</div>
		</div>
	</div>
	</header>

	<div class="container">
		<div class="col-xs-12">
			<div class="page-header">
				<h1>메 뉴</h1>
			</div>
			<div class="carousel slide" id="myCarousel">
				<div class="carousel-inner">
					<div class="item active">
						<ul class="thumbnails">
							<c:forEach items="${list}" var="list" varStatus="status" >
							<li class="col-sm-3">
								<div class="fff">
									<div class="thumbnail">
										<img src="http://placehold.it/360x240" alt="">
									</div>
									<div class="caption">
										<input type='hidden' id='menu_num' value="${list.menu_num}">
										<input type='hidden' id='menu_content' value="${list.menu_content }">
										<input type='hidden' id='menu_cate' value="${list.menu_cate }">
										<h4 id='menu_name'>${list.menu_name}</h4>
										<p id='menu_price'>${list.menu_price}원</p>
									</div>
								</div>
							</li>
								<c:if test="${ status.count % 4 == 0}">
									</ul>
									</div>
										<div class="item">
										<ul class="thumbnails">
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>


				<nav>
				<ul class="control-box pager">
					<li><a data-slide="prev" href="#myCarousel" class=""><i
							class="glyphicon glyphicon-chevron-left"></i></a></li>
					<li><a data-slide="next" href="#myCarousel" class=""><i
							class="glyphicon glyphicon-chevron-right"></i></a></li>
				</ul>
				</nav>
				
				<!-- /.control-box -->
				
			</div>
			<!-- /#myCarousel -->
		</div>
	</div>
<div class='text-right'>
	<input type="button" class='btn btn-primary' id="menuAddBtn" value="메뉴추가">
	<br/><br/><br/><br/>
</div>

<div class="col-sm-offset-1 col-sm-10" id="menuAdd">
			<div class="col-sm-offset-1 col-sm-10">
			<form class="form-horizontal" role="form" id="menuForm" method="post" autocomplete="off" novalidate="novalidate">
				<div class="panel panel-default">
					<div class="panel-heading change">
						메뉴추가
					</div> <!-- panel heading -->
					
					<div class="panel-body">
						<div class="form-group menu">
							<input type="hidden" name="truck_num" id="add_truck_num">
							<input type="hidden" name="menu_num" id="add_menu_num">
							<label for="menu_name" class="col-sm-4 control-label"> 메뉴명  </label>
							<div class="col-sm-8">
								<input id="add_menu_name" name="menu_name" type="text" class="form-control" placeholder="떡볶이" value="">
							</div>
						</div>
						<div class="form-group content">
							<label for="menu_content" class="col-sm-4 control-label"> 메뉴설명  </label>
							<div class="col-sm-8">
								<input id="add_menu_content" name="menu_content" type="text" class="form-control" placeholder="메뉴설명을 써주세요" value="">
							</div>
						</div>
					    <div class="form-group price">
							<label for="price" class="col-sm-4 control-label"> 가격  </label>
							<div class="col-sm-8">
								<input id="add_menu_price" name="menu_price" type="text" class="form-control" placeholder="3000원">
							</div>
						</div>
						
						<div class="form-group cate">
							<label for="price" class="col-sm-4 control-label"> 메뉴종류  </label>
							<div class="col-sm-8">
								<select id="add_menu_cate" name="menu_cate" class="form-control" placeholder="">
									<option>먹을거리</option>
									<option>마실거리</option>
									<option>즐길거리</option>
								</select>
							</div>
						</div>
						
						<div class="input-group image-preview">
							<label class="col-sm-4 control-label"> 사진첨부  </label>
                			<input type="text" class="form-control image-preview-filename" disabled="disabled">
                			<span class="input-group-btn">
                    		<!-- image-preview-clear button -->
                    		<button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                        		<span class="glyphicon glyphicon-remove"></span> Clear
                    		</button>
                    	<!-- image-preview-input -->
                    	<div class="btn btn-default image-preview-input">
                        	<span class="glyphicon glyphicon-folder-open"></span>
                        	<span class="image-preview-input-title">파일찾기</span>
                        	<input type="file" accept="image/png, image/jpeg, image/gif" name="input-file-preview"/> <!-- rename it -->
                    	</div>
                			</span>
            			</div><!-- /input-group image-preview [TO HERE]--> 
						
					</div><!-- panel body -->
					<div class="panel-footer">
						<div class="form-group" style="padding-top: 10px">
							<div class="col-sm-offset-3 col-sm-6 center-block text-center">
								<input type='button' id="menuBtn" class="btn btn-lg btn-primary" value="메뉴추가">
								<input type='button' id="menuMod" class="btn btn-lg btn-primary" value="메뉴수정">
								<input type='button' id="menuDel" class="btn btn-lg btn-danger" value="메뉴삭제">
							</div>
						</div>
					</div>
				</div>
			</form>	
		</div>
</div>
</body>
</html>