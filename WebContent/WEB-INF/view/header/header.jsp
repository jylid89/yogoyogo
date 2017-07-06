<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%
    String clientId = "zE5y1nty2rQY7EdwF341";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://192.168.0.178:8080/YogoYogo5/naverlogin.do", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
%>

<%
	String mem_name = (String)session.getAttribute("mem_name");
	String mem_state = (String)session.getAttribute("mem_state");
%>
<head>
<title>Electronic Store a Ecommerce Online Shopping Category Bootstrap Responsive Website Template | About :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Electronic Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<meta name="google-signin-client_id" content="709473571985-p4in51ou7vuhjknfg1n30av9b2sidbov.apps.googleusercontent.com">	
<!-- //for-mobile-apps -->
<!-- Custom Theme files -->
<link href="/YogoYogo/css/header/style.css" rel="stylesheet" type="text/css" media="all" /> 
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="/YogoYogo/css/header/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- web fonts --> 
<link href='//fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- //web fonts -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="/YogoYogo/js/header/easyResponsiveTabs.js" type="text/javascript"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script type="text/javascript" src="/YogoYogo/js/header/login.js"></script>
</head>
<div class="header"> 
	<input type="hidden" id="mem_name" value="<%=mem_name %>" />
	<input type="hidden" id="mem_state" value="<%=mem_state %>" />
	<!-- header modal -->
	<div class="modal fade" id="myModal88" tabindex="-1" role="dialog" aria-labelledby="myModal88"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;</button>
					<h4 class="modal-title" id="myModalLabel">LOGIN PAGE</h4>
				</div>
				<div class="modal-body modal-body-sub">
					<div class="row">
						<div class="col-md-8 modal_body_left modal_body_left1" style="border-right: 1px dotted #C2C2C2;padding-right:3em;">
<!-- 							<div class="sap_tabs">	 -->
<!-- 								<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;"> -->
<!-- 									<span>Sign in</span> -->
<!-- 									<ul> -->
<!-- 										<li class="resp-tab-item" aria-controls="tab_item-0"><span>Sign in</span></li> -->
<!-- 										<li class="resp-tab-item" aria-controls="tab_item-1"><span>Sign up</span></li> -->
<!-- 									</ul>		 -->
<!-- 									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0"> -->
<!-- 										<div class="facts"> -->
											<div class="register">
												<form method="post" id="frm">			
													<input type="text" id="mem_id" name="mem_id" placeholder="아이디(이메일)" required="">						
													<input type="password" id="mem_pass" name="mem_pass" placeholder="비밀번호" required="">										
												</form>
													<div class="sign-up">
														<input type="submit" id="loginOK" value="로그인"/>
													</div>
												<a href="register.do">회원가입</a>
											</div>
<!-- 										</div>  -->
<!-- 									</div>	  -->
<!-- 									<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1"> -->
<!-- 										<div class="facts"> -->
<!-- 											<div class="register"> -->
<!-- 												<form action="#" method="post">			 -->
<!-- 													<input placeholder="Name" name="Name" type="text" required=""> -->
<!-- 													<input placeholder="Email Address" name="Email" type="email" required="">	 -->
<!-- 													<input placeholder="Password" name="Password" type="password" required="">	 -->
<!-- 													<input placeholder="Confirm Password" name="Password" type="password" required=""> -->
<!-- 													<div class="sign-up"> -->
<!-- 														<input type="submit" value="Create Account"/> -->
<!-- 													</div> -->
<!-- 												</form> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> 			        					            	       -->
<!-- 								</div>	 -->
<!-- 							</div> -->
							
							<div id="OR" class="hidden-xs">OR</div>
						</div>
						<div class="col-md-4 modal_body_right modal_body_right1">
							<div class="row text-center sign-with">
								<div class="col-md-12">
									<a href="<%=apiURL%>"><img height="44px" width="250px" src="/YogoYogo/images/login/네이버 아이디로 로그인_완성형_Green.PNG"/></a><br/><br/>
									<a id="custom-login-btn" href="javascript:loginWithKakao()">
										<img height="44px" width="250px" src="/YogoYogo/images/login/kakao_account_login_btn_medium_narrow.png"/>
									</a><br/><br/>
<div id="fb-root"></div>
<div class="fb-login-button" data-height="44px" data-width="250px" data-max-rows="1" data-size="large" data-button-type="login_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false" data-onlogin="checkLoginState();"></div><br/><br/>

<div class="g-signin2" data-width="250px" data-height="44px" data-longtitle="true" data-theme="dark" data-onsuccess="onSignIn"></div>
		<form id="form">
			<input type="hidden" id="kmail" name="mem_id" value="" />
			<input type="hidden" id="kname" name="mem_name" value="" />
		</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> 
	<!-- header modal -->
	<!-- header -->
	<div class="header" id="home1">
		<div class="container">
			<div class="w3l_logo">
				<h1><a href="index.html">Electronic Store<span>Your stores. Your place.</span></a></h1>
			</div>
			<div class="search">
				<input class="search_box" type="checkbox" id="search_box">
				<label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
				<div class="search_form">
					<form action="#" method="post">
						<input type="text" name="Search" placeholder="Search...">
						<input type="submit" value="Send">
					</form>
				</div>
			</div>
			<div class="w3l_login login">
				<a href="#" data-toggle="modal" data-target="#myModal88"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
			</div>
			<div class="w3l_login logout">
				<a href="logOut.do"><span class="glyphicon glyphicon-off" aria-hidden="true"></span></a>
			</div>
			<br/><br/><br/>
			<div class="pull-right logout">
				<div style="margin-right : 100px;"><%=mem_name %>님 환영합니다.</div>
			</div>
		</div>
	</div>
	<!-- //header -->
	<!-- navigation -->
	<div class="navigation">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header nav_2">
					<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div> 
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav">
						<li><a href="foodtruckList.do" >푸드트럭</a></li> 	
						<li><a href="about.html" >행사</a></li>
						<li><a href="catelist.do">케이터링 신청</a></li>
						<li class="w3pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">서비스 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="useGuide.do">서비스 관련</a></li>
								<li><a href="adverList.do">광고대행</a></li>     
							</ul>
						</li>  
						<li class="w3pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">커뮤니티 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="icons.html">뉴스</a></li>
								<li><a href="codes.html">공지사항</a></li>
								<li><a href="freeboard.do">자유게시판</a></li>
								<li><a href="qnaList.do">Q&A</a></li>     
							</ul>
						</li>
						<li class="w3pages logout"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">마이페이지 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="selectMember.do">회원정보수정</a></li>
								<li class="ceo"><a href="menu_ceo.do">메뉴수정(사업자)</a></li>
								<li class="user"><a href="catAppStatus_user.do">케이터링신청현황(일반회원)</a></li>
								<li class="ceo"><a href="catAppStatus_ceo.do">케이터링신청현황(사업자)</a></li>
								<li class="ceo"><a href="adverAppStatus_ceo.do">광고신청현황(사업자)</a></li>
								<li class="adver"><a href="adverAppStatus_adver.do">광고신청현황(광고대행사)</a></li>
								<li class="adver"><a href="adverAppConfirm_adver.do">광고승인현황(광고대행사)</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->
</div>
</html>