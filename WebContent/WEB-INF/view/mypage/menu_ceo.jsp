<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메뉴 추가 및 수정(사업자)</title>
<style type="text/css">
</style>

<link rel="stylesheet" href="/YogoYogo/css/mypage/menu.css" />
<link rel="stylesheet" href="/YogoYogo/assets/css/animate.css" />
<link rel="stylesheet" href="/YogoYogo/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="/YogoYogo/assets/css/slick.css" />
<link rel="stylesheet" href="/YogoYogo/assets/js/rs-plugin/css/settings.css" />
<link rel="stylesheet" href="/YogoYogo/assets/css/style.css" />
<script type="text/javascript" src="/YogoYogo/assets/js/modernizr.custom.32033.js"></script>
<script type="text/javascript" src="/YogoYogo/js/activity/activityinsert.js"></script>
<script src="/YogoYogo/assets/js/slick.min.js"></script>
<script src="/YogoYogo/assets/js/placeholdem.min.js"></script>
<script src="/YogoYogo/assets/js/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
<script src="/YogoYogo/assets/js/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="/YogoYogo/js/mypage/menu.js"></script>
</head>
<body>

	<header class="business-header">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
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
					<c:choose>
        				<c:when test="${list == null}">
        				</c:when>
        				<c:otherwise>
							<c:forEach items="${list}" var="list" varStatus="status" >
							<li class="col-sm-3">
								<div class="fff">
									<div class="thumbnail">
										<img style="height:240px;, width:360px" id="menu_picreal" src="${list.menu_picreal }" alt="">
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
						</c:otherwise>
					</c:choose>
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
		<div class='text-right'>
			<input type="button" class='btn btn-primary' id="menuAddBtn" value="메뉴추가">
		<br/><br/><br/><br/>
		</div>
		<div class="col-sm-offset-1 col-sm-10" id="menuAdd">
		<form role="form" id="menuForm" method="post" autocomplete="off" novalidate="novalidate" enctype="multipart/form-data">
			<div class="col-sm-offset-1 col-sm-10">
									<div class="form-group">
										<label class="col-md-3 control-label" for="message"><h2 class="change">메뉴추가</h2></label>
									</div>
									<br/><br/><br/>
									<div class="form-group">
										<label class="col-md-3 control-label" for="message"><h3>메뉴명</h3></label>
										<input type="text" id="add_menu_name" name="menu_name" class="form-control" placeholder="메뉴명을 입력하세요" />
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="message"><h3>메뉴설명</h3></label>
										<input type="text" id="add_menu_content" name="menu_content" class="form-control" placeholder="메뉴설명을 입력하세요" />
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="message"><h3>가격</h3></label>
										<input type="text" id="add_menu_price" name="menu_price" class="form-control" placeholder="가격을 입력하세요" />
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="message"><h3>메뉴종류</h3></label>
										<select id="add_menu_cate" name="menu_cate" class="form-control">
											<option>먹을거리</option>
											<option>마실거리</option>
											<option>즐길거리</option>
										</select>
									</div>
<!-- 									**************파일첨부 1************* -->
									<div class="form-group ">
										<label class="col-md-12 control-label" for="message"><h3>메뉴사진</h3></label>
<!-- 										image-preview-filename input [CUT FROM HERE] -->
										<div class="input-group image-preview">
											<input type="hidden" id="add_pic" name="ex_pic" value="">
											<input type="text"
												class="form-control image-preview-filename"
												disabled="disabled"/>
<!-- 											don't give a name === doesn't send on POST/GET -->
											<span class="input-group-btn"> 
<!-- 											image-preview-clear button -->
												<button type="button"
													class="btn image-preview-clear btn-primary btn-lg"
													style="display: none;">
													<span class="glyphicon glyphicon-remove"></span>
													 Clear
												</button> 
<!-- 												image-preview-input -->
												<div class="btn image-preview-input btn-primary btn-lg">
													<span class="glyphicon glyphicon-folder-open"></span> <span
														class="image-preview-input-title">
														Browse</span> <input type="file" accept="image/png, image/jpeg, image/gif" name="menu_pictemp"/>
												</div>
											</span>
										</div>
<!-- 										/input-group image-preview [TO HERE] -->
									</div>
<!-- 									Form actions -->
									<div class="form-group">
										<div class="col-md-12 text-right">
											<input type='button' id="menuBtn" class="btn btn-lg btn-primary" value="메뉴추가">
											<input type='button' id="menuMod" class="btn btn-lg btn-primary" value="메뉴수정">
											<input type='button' id="menuDel" class="btn btn-lg btn-danger" value="메뉴삭제">
										</div>
									</div>
									<input type="hidden" name="truck_num" id="add_truck_num">
									<input type="hidden" name="menu_num" id="add_menu_num">
								</form>
		</div>
		</div>
	</div>
</body>
</html>