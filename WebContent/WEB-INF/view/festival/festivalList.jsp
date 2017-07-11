<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String mem_id = (String)session.getAttribute("mem_id"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Spicy Club Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,  Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link rel="stylesheet" href="/YogoYogo/css/festival/style.css" type="text/css" media="all" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>

</head>
	<body>
	<!-- 리스트불러오기 -->
	<div class="container">
		<div class="col-md-12">
			<div class="w3l-heading">
			<br/><br/>
				<h3><font face="함초롬돋움" size="8px">행사목록</font></h3>
			<br/><br/>
			</div>
			
			<c:forEach items='${listModel}'  var="a">
				<div class="col-sm-4 w3_tab_img_left">
					<div class="demo">
						<a href="festivalView.do?event_num=${a.event_num}" id="doDetail">
								<img src="${a.event_picreal}" alt=" " class="img-responsive festiImg" />
						</a>
					</div>
						<div class="agile-gallery-info">
						<h5><font face="함초롬돋움">${a.event_name}</font></h5>
						<br/><br/>
					</div>
				</div>
			</c:forEach>
						<input type="hidden" id="mem_id" value="<%=mem_id %>"/>
			<div class="clearfix"></div>
		</div>
		<div class="text-right evt">
			<button class="btn btn-1 btn-1a" onclick="javascript:location.href='festivalInsert.do'" id="btn_insert">글쓰기</button>
		</div>
	</div>
	<!-- //리스트 엔드 -->
</body>
</html>