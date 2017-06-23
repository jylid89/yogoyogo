<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<style type="text/css">
  #menu-toggle {
    top: 0;
    right: 0;
    position: fixed;
  }
  
  #menu-close {
  	top: 0;
    right: 0;
    position: fixed;
    display: none;
  }

  .toggle {
    margin: 5px 5px 0 0;
  }
  
  .filter {
  	top: 5px;
    right: -890px;
    position: fixed;
    display: none;
  }
</style>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#menu-toggle").click(function() {
		$('.filter').slideDown();
		$('#menu-close').show();
		$(this).hide();
	});
	
	$("#menu-close").click(function() {
		$('.filter').slideUp();
		$('#menu-toggle').show();
		$(this).hide();
	});
});
</script>
</head>
<body>
	<div class="trucklist container">
		<div class="text-center wow fadeIn animated margin-bottom-20 animated"
			data-wow-offset="120" data-wow-duration="1.5s"
			style="visibility: visible; -webkit-animation-duration: 1.5s; -moz-animation-duration: 1.5s; animation-duration: 1.5s;">
			<h2>푸드트럭 리스트</h2>
			<div class="colored-line"></div>
		</div>
		<!-- 리스트 부분 -->
		<div class="row">
			<div class="col-md-10 col-sm-offset-1">
				<div class="row">
					<c:choose>
        <c:when test="${listModel == null}">
            <tr><td colspan='7'>등록된 게시물이 없습니다.</td></tr>
        </c:when>
        <c:otherwise>
        <c:forEach items="${listModel}" var="a" >
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="detail.do?truck_num=${a.truck_num }"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/67/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Vege 4 Love">
							</a>
						</div>
						<div class="title">
							<a href="detail.do?truck_num=${a.truck_num }">${a.truck_name}</a>
							<p>${a.truck_addr }</p>
						</div>
					</div>
					</c:forEach>
					</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
</body>
</html>