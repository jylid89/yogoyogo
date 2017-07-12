<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/YogoYogo/css/news/news.css">
<link href="https://cdn.rawgit.com/singihae/Webfonts/master/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=CabinSketch:700" />
<style type="text/css">
.jua {font-family:'BM JUA','배달의민족 주아',sans-serif;}
.hana{font-family:'BM HANNA','배달의민족 한나', sans-serif; }
</style>
<script type="text/javascript" src="/YogoYogo/js/news/news.js"></script>


</head>
	<body>
		<div class="container">
			<div class="row">
			<br/><br/>
    			<center><h1  style="font-family: hunR;font-color:black">푸드트럭 뉴스</h1></center>
    			<br/><br/>
	    			<section id="pinBoot">
						<c:forEach varStatus="status" items="${list}" var="list" >
	      					<article class="white-panel"><a href="newsDetail.do?board_num=${list.board_num}">
	      						<img src="${list.board_picreal }" alt=""></a>
	      					<br/><br/>
	        					<h4><a href="newsDetail.do?board_num=${list.board_num}">
	        						<font face="hanna">${list.board_title }</font></a></h4>
	        					<br/>
	        					<a href="newsDetail.do?board_num=${list.board_num}"><p>${list.board_content}</p></a>s
	      					</article>
						</c:forEach>
	    			</section>
			</div>
		</div>
	</body>
</html>