<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<link href="/YogoYogo/css/adver/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Francois+One' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
		</script>
	</head>
<body>
	<div class="container">
		<div class="text-center">
			<h1>광고대행</h1>
		</div>
			
		 <div class="col-md-12">
				<ul class="lb-album" >
				<c:forEach varStatus="status" items="${list}" var="list" >
					<li>
						<a  href="advDetail.do?adv_num=${list.adv_num}" >
							<img src="${list.adv_picreal}" alt="image01">
							<span class="glyphicon glyphicon-search" aria-hidden="true"> ${list.mem_nick }</span>
						</a>
					</li>
					</c:forEach>
				</ul>
			<div class="clear"></div>
     </div>
     <div class="col-md-12 text-right">
				<button class="btn btn-1 btn-1a"
					onclick="javascript:location.href='insertForm.do'">글쓰기</button>
			</div>
     </div>
</body>
</html>
