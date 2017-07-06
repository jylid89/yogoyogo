<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메뉴 추가 및 수정(사업자)</title>
<style type="text/css">
</style>
<link rel="stylesheet" href="/YogoYogo/assets/css/animate.css">
<link rel="stylesheet" href="/YogoYogo/css/mypage/menu.css">
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
			<div class="col-sm-offset-1 col-sm-10">
			<form class="form-horizontal" role="form" id="menuForm" method="post" autocomplete="off" novalidate="novalidate" enctype="multipart/form-data">
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
						<input type="hidden" id="add_pic" name="ex_pic" value="">
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
                        	<input type="file" accept="image/png, image/jpeg, image/gif" name="menu_pictemp"/> <!-- rename it -->
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
	</div>
</body>
</html>