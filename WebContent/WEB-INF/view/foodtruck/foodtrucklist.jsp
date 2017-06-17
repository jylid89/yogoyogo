<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<div class="row">
			<div class="col-md-10 col-sm-offset-1">
				<div class="row">
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/vege-4-love"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/67/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Vege 4 Love">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/vege-4-love">Vege 4 Love</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/dirty-bird-food-truck"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/65/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Dirty Bird Food Truck">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/dirty-bird-food-truck">Dirty Bird Food Truck</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/el-capo-food-truck"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/63/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="El Capo Food Truck">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/el-capo-food-truck">El Capo Food Truck</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/og-dogs-food-truck"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/62/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="OG Dogs Food&nbsp;Truck">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/og-dogs-food-truck">OG Dogs Food&nbsp;Truck</a>
						</div>
					</div>
				</div>
				<br/><br/><br/>
				<div class="row">
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/inbocca"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/60/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Inbocca">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/inbocca">Inbocca</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/lemon-rose"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/57/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Lemon Rose">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/lemon-rose">Lemon Rose</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/foods-of-the-realm"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/59/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Foods of the Realm">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/foods-of-the-realm">Foods of the Realm</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/thai-chicken-guy"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/54/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Thai Chicken Guy">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/thai-chicken-guy">Thai Chicken Guy</a>
						</div>
					</div>
				</div>
				<br/><br/><br/>
				<div class="row">
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/yum-thai-juice-bar"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/51/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Yum Thai Juice Bar">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/yum-thai-juice-bar">Yum Thai Juice Bar</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/miss-mabels"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/49/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Miss Mabel's">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/miss-mabels">Miss Mabel's</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/despana"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/48/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Despaña">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/despana">Despaña</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/nonnas-piada"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/47/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Nonna's Piada">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/nonnas-piada">Nonna's Piada</a>
						</div>
					</div>
				</div>
				<br/><br/><br/>
				<div class="row">
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/the-wienery"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/46/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="The Wienery">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/the-wienery">The Wienery</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/the-fancy-banger"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/45/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="The Fancy Banger">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/the-fancy-banger">The Fancy Banger</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/the-shuck-truck"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/44/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="The Shuck Truck">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/the-shuck-truck">The Shuck Truck</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/trinhys"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/40/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Trinhy's">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/trinhys">Trinhy's</a>
						</div>
					</div>
				</div>
				<br/><br/><br/>
				<div class="row">
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/shiso-fine"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/41/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Shiso Fine">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/shiso-fine">Shiso Fine</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/sakura-on-wheelz"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/39/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Sakura on Wheelz">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/sakura-on-wheelz">Sakura on Wheelz</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/fritzs-wieners"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/37/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Fritz’s Wieners">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/fritzs-wieners">Fritz’s Wieners</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/de-wafel"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/35/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="De Wafel">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/de-wafel">De Wafel</a>
						</div>
					</div>
				</div>
				<br/><br/><br/>
				<div class="row">
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/berlin-bangers"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/33/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Berlin Bangers">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/berlin-bangers">Berlin Bangers</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/mama-linhs"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/32/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Mama Linh’s">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/mama-linhs">Mama Linh’s</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/mister-gee-burger-truck"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/29/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Mister Gee Burger Truck">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/mister-gee-burger-truck">Mister Gee Burger
								Truck</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/caminito"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/27/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Caminito">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/caminito">Caminito</a>
						</div>
					</div>
				</div>
				<br/><br/><br/>
				<div class="row">
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/monster-rolls"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/23/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Monster Rolls">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/monster-rolls">Monster Rolls</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/street-sliders"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/18/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Street Sliders">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/street-sliders">Street Sliders</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/lets-do-yum-cha"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/7/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Lets Do Yum Cha">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/lets-do-yum-cha">Lets Do Yum Cha</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/agape-organic-food-truck"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/5/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Agapé Organic Food Truck">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/agape-organic-food-truck">Agapé Organic Food
								Truck</a>
						</div>
					</div>
				</div>
				<br/><br/><br/>
				<div class="row">
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/cantina-movil"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/2/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Cantina Movil">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/cantina-movil">Cantina Movil</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/tsuru"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/3/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Tsuru">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/tsuru">Tsuru</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/new-york-pastrami-deli"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/21/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="New York Pastrami Deli">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/new-york-pastrami-deli">New York Pastrami
								Deli</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/bite-size-delights"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/14/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Bite Size Delights">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/bite-size-delights">Bite Size Delights</a>
						</div>
					</div>
				</div>
				<br/><br/><br/>
				<div class="row">
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/the-nighthawk-diner"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/19/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="The Nighthawk Diner">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/the-nighthawk-diner">The Nighthawk Diner</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6  text-center">
						<div class="logo">
							<a href="/trucks/urban-pasta"> <img
								src="http://api.sydneyfoodtrucks.com.au/v2/trucks/4/icon?size=200"
								class="img-circle img-responsive img-border center-block"
								alt="Urban Pasta">
							</a>
						</div>
						<div class="title">
							<a href="/trucks/urban-pasta">Urban Pasta</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 검색창 부분 -->
	<div class="container filter">
		<div class="row">
			<div class="col-lg-3 col-md-6 col-md-offset-3 col-lg-offset-0">
				<div class="well">
					<h3 align="center">푸드트럭 검색</h3>
					<form class="form-horizontal">
						<div class="form-group">
							<label for="location1" class="control-label">카테고리</label> <select
								class="form-control" name="" id="location1">
								<option value="">푸드트럭명</option>
								<option value="">메뉴</option>
								<option value="">가격</option>
							</select> <br /> <input id="select_search" name="select_search"
								type="text" class="form-control" placeholder="검색어를 입력해주세요"
								autofocus="">
						</div>
						<div class="form-group">
							<label for="type1" class="control-label">지역</label><a href="#"
								class="btn glyphicon glyphicon-record" role="button"></a> <select
								class="form-control" name="" id="type1">
								<option value="">서울특별시</option>
								<option value="">인천광역시</option>
								<option value="">경기도</option>
							</select> <br /> <input id="addr" name="addr" type="text"
								class="form-control" placeholder="동을 입력해주세요" autofocus="">
						</div>
						<p class="text-center">
							<a href="#" class="btn btn-primary glyphicon glyphicon-search"
								role="button"></a>
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>
	<a id="menu-toggle" href="#" class="btn btn-primary btn-lg toggle"><i
		class="glyphicon glyphicon-bookmark"></i></a>
	<a id="menu-close" href="#" class="btn btn-primary btn-lg toggle"><i
		class="glyphicon glyphicon-remove"></i></a>
	</ul>
	</div>
</body>
</html>