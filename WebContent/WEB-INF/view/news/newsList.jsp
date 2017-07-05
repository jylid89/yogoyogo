<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/YogoYogo/css/news/news.css">
<script type="text/javascript" src="/YogoYogo/js/news/news.js"></script>
</head>
	<body>
		<div class="container">
			<div class="row">
			<br/><br/>
    			<h2>푸드트럭 뉴스</h2>
    			<br/><br/>
	    			<section id="pinBoot">
						<c:forEach varStatus="status" items="${list}" var="list" >
	      					<article class="white-panel"><img src="${list.board_picreal }" alt="">
	      					<br/><br/>
	        					<h4><a href="newsDetail.do?board_num=${list.board_num}"><font face="나눔고딕">${list.board_title }</font></a></h4>
	        					<br/>
	        					<p>${list.board_content}</p>
	      					</article>
						</c:forEach>
	    			</section>
			</div>
		</div>
	</body>
</html>