<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Wool Industry a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!-- 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
<link href="/YogoYogo/css/catering/listStyle.css" rel="stylesheet" type="text/css" media="all" />
<!-- <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" /> -->

<!-- google fonts -->
<!-- <link href="//fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700" rel="stylesheet"> -->
<!-- <link href="//fonts.googleapis.com/css?family=Gudea:400,400i,700&amp;subset=latin-ext" rel="stylesheet"> -->
<!-- <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet"> -->
<!-- //google fonts -->
</head>
<body>
<!-- team section -->
<section class="team-agileinfo" >
		<h3 class="heading">our team</h3>
	<div class="container">
	<!-- 리스트 불러오기 -->
		<c:forEach items="${listModel}" var="a" >
		<div class="col-lg-3 col-md-3 col-sm-6 team-w3l">
			<a href="detail.do?truck_num=${a.truck_num }">
			<div class="team-info">
				<div class="hover06 column" data-aos="example-anim3">
					<figure><img src="${a.truck_picreal1 }" alt="w3layouts" class="img-responsive"></figure>
				</div>
				<h4 data-aos="zoom-in">${a.truck_name}</h4>
				<p data-aos="zoom-in">${a.truck_addr }</p>
			</div>
			</a>
		</div>	
		</c:forEach>
		<div class="clearfix"></div>
	</div>
</section>
<!-- /team section -->
</body>
</html>