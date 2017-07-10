<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<% String mem_state = (String)session.getAttribute("mem_state"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="Spicy Club Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<title>Insert title here</title>
<!-- css -->
<link rel="stylesheet" href="/YogoYogo/css/festival/style.css" type="text/css" media="all" />
<!--// css -->
<script type="text/javascript">
	// 	jQuery(document).ready(function($) {
	// 		$(".scroll").click(function(event){		
	// 			event.preventDefault();
	// 			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
	// 		});
	// 	});
</script>
</head>
<body>
<!-- 리스트불러오기 -->
	<div class="container">
		<div class="col-md-12">
			<div class="w3l-heading">
				<h3>행사목록</h3>
			</div>
			<div class="text-right adver">
				<button class="btn btn-1 btn-1a"
					onclick="javascript:location.href='festivalInsert.do'">글쓰기</button>
			</div>
			
			<c:forEach items='${listModel}'  var="a">
			<div class="col-sm-4 w3_tab_img_left">
				<div class="demo">
					<a href="festivalView.do?event_num=${a.event_num}">
							<img src="/YogoYogo/images/festival/${a.event_picreal}" alt=" " class="img-responsive" />
					</a>
				</div>
				<div class="agile-gallery-info">
					<h5>${a.event_name}</h5>
					<p>${a.event_content }</p>
				</div>
			</div>
			</c:forEach>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //리스트 엔드 -->
</body>
</html>