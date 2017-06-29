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

<link rel="stylesheet" href="/yogoyogo4/css/catering/cateringDetail.css">

<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script -->
<!-- 	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->

<script type="text/javascript">
	jQuery(document).ready(function($) {

		$('#myCarousel').carousel({
			interval : 5000
		});

		$('#carousel-text').html($('#slide-content-0').html());

		//Handles the carousel thumbnails
		$('[id^=carousel-selector-]').click(function() {
			var id = this.id.substr(this.id.lastIndexOf("-") + 1);
			var id = parseInt(id);
			$('#myCarousel').carousel(id);
		});

		// When the carousel slides, auto update the text
		$('#myCarousel').on('slid.bs.carousel', function(e) {
			var id = $('.item.active').data('slide-number');
			$('#carousel-text').html($('#slide-content-' + id).html());
		});
	});
</script>
</head>
<body>
	<!-- 트럭 디테일 부분 -->
	<div class="container">
		<div id="main_area">
			<h1>${truckName}</h1>
			<!-- Slider -->
			<div class="row">
				<div class="col-xs-12" id="slider">
					<!-- Top part of the slider -->
					<div class="row">
						<div class="col-sm-8" id="carousel-bounding-box">
							<div class="carousel slide" id="myCarousel">
								<!-- Carousel items -->
								<div class="carousel-inner">
								
								<c:choose>
								<c:when test="${model == null}">
									<tr>
										<td colspan='7'>등록된 게시물이 없습니다.</td>
									</tr>
								</c:when>
								
								<c:otherwise>
									
									<c:forEach items="${model}" var='menu' varStatus="status">
									<c:choose>
									<c:when test="${status.count - 1 == 0 }">
										<div class="active item" data-slide-number="0">
                                       	 <img src="${menu.menu_picreal }"></div>
									</c:when>
									<c:otherwise>
										<div class="item" data-slide-number="${status.count-1 }">
											<img src="${menu.menu_picreal }"></div>
									</c:otherwise>
									</c:choose>
										</c:forEach>
								</c:otherwise>
							</c:choose>
								</div>
								<!-- Carousel nav -->
								<a class="left carousel-control" href="#myCarousel"
									role="button" data-slide="prev"> <span
									class="glyphicon glyphicon-chevron-left"></span>
								</a> <a class="right carousel-control" href="#myCarousel"
									role="button" data-slide="next"> <span
									class="glyphicon glyphicon-chevron-right"></span>
								</a>
							</div>
						</div>

						<div class="col-sm-4" id="carousel-text"></div>

						<div id="slide-content" style="display: none;">
							<c:choose>
								<c:when test="${model == null}">
									<tr>
										<td colspan='7'>등록된 게시물이 없습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach varStatus="status" items="${model}" var='menu'>
										<div id="slide-content-${status.count-1 }">
											<h2>${menu.menu_name }</h2>
											<p>${menu.menu_price } 원</p>
											<tr>
												<!--                                 모달버튼 -->
												<a href="#" class="btn btn-lg btn-success" data-toggle="modal" >케이터링 주문하기</a>
										</div>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
			<!--/Slider-->

			<div class="row hidden-xs" id="slider-thumbs">
				<!-- Bottom switcher of slider -->
				<ul class="hide-bullets">
				<c:choose>
								<c:when test="${model == null}">
									<tr>
										<td colspan='7'>등록된 게시물이 없습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach varStatus="status" items="${model}" var='menu'>
					<li class="col-sm-2"><a class="thumbnail"
						id="carousel-selector-${status.count-1 }"><img
							src="${menu.menu_pictemp }"></a></li>

				 </c:forEach>
				 </c:otherwise>
				 </c:choose>
				</ul>
			</div>
		</div>
	</div>
	<!-- 케이터링 신청 모달 -->
	<div class="modal fade" id="basicModal" tabindex="-1" role="dialog"
		aria-labelledby="basicModal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">Reservation</h4>
				</div>

				<form action="write_ok.do" method="POST">
					<div class="modal-body">
						<div class="col-md-12">
						<div class="col-md-6">
							<div class="form-group">
								<label>E-mail</label> <input type="email" name="mem_id"
									class="form-control"/>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>이름 :</label> <input type="text" name="cusname"
									class="form-control"/>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>연락처 :</label> <input type="tel" name="cate_call"
									class="form-control"/>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>날짜 : </label> <input type="date"
									name="cate_date" class="form-control"/>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>시간 : </label> <input type="text"
									name="cate_time" class="form-control"/>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>인원 : </label> <input type="number" name="cate_people"
									class="form-control"/>
							</div>
						</div>
						

						<div class="col-md-6">
							<div class="form-group">
								<label>예산 : </label> <input type="number" name="cate_budget"
									class="form-control"/>
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label>주소 :</label> <input type="text" name="cate_addr"
									class="form-control"/>
							</div>
						</div>
						<input type="hidden" value="${truckNum}"/>
						</div>
					</div>
					<div class="modal-footer">
						<div class="col-md-6 col-sm-offset-6 text-right">
								<button type="reset" class="btn btn-danger" data-dismiss="modal"
									style="margin-bottom: 0;">취소</button>
								<button type="submit" class="btn btn-primary">신청 완료</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>