<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<link href="/YogoYogo/css/adver/css/style.css" rel="stylesheet" type="text/css" media="all" />
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
	<div class="header-bottom">  
	<br/><br/>
			<h1><center><font size=12px>광고대행</font></center></h1>
   <br/><br/>
		 <div class="wrap">
		    <div class="header-left" id="home">
		      <section>
				<ul class="lb-album" >
				<c:forEach varStatus="status" items="${list}" var="list" >
					<li>
						<a href="advDetail.do?adv_num=${list.adv_num}" >
							<img src="${list.adv_picreal}" alt="image01">
							<span class="glyphicon glyphicon-search" aria-hidden="true"> ${list.mem_nick }</span><br/>
						</a>
<!-- 						<div class="lb-overlay" id="image-1"> -->
<!-- 							<a href="#page" class="lb-close">x Close</a> -->
<%-- 							<img src="${list.adv_picreal}" alt="image01"> --%>
<!-- 							<div> -->
<!-- 								<h3>pointe <span>/point/</span></h3> -->
<!-- 								<p>Dance performed on the tips of the toes</p> -->
<!-- 							</div> -->
<!-- 						</div> -->
					</li>
					</c:forEach>
				</ul>
			</section>
			<div class="clear"></div>
        </div>
     </div>
 </div>       
</body>
</html>
