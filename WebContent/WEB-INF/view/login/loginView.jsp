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
    String redirectURI = URLEncoder.encode("http://192.168.0.178:8080/YogoYogo/naverlogin.do", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/YogoYogo/css/loginview/loginview.css">
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#loginOK").click(function(){
			//신청/취소버튼 구분
			$.ajax({
				url : "loginCheck.do",
				type : "post",
				data : {"mem_id" : $("#mem_id").val() , "mem_pass" : $("#mem_pass").val()},
				
				success : function(data) {
					if(data == "1"){
						$("#frm").attr("action", "login.do").submit();
					}else{
						alert("아이디와 비밀번호가 일치하지 않습니다. 확인해주세요.");
						return;
					}
				}
			});
			
		});
	});
</script>    

<title>로그인 페이지</title>
</head>
<body>
<div class="container">
    <div class="omb_login">
    	<h3 class="omb_authTitle">로그인 페이지</h3>
		<div class="text-center">
			<a href="<%=apiURL%>"><img height="44px" width="250px" src="/YogoYogo/images/login/네이버 아이디로 로그인_완성형_Green.PNG"/></a><br/><br/>
			<a id="custom-login-btn" href="javascript:loginWithKakao()">
				<img height="44px" width="250px" src="/YogoYogo/images/login/kakao_account_login_btn_medium_narrow.png"/>
			</a><br/><br/>
<div id="fb-root"></div>
<script>
  window.fbAsyncInit = function() {
    FB.init({
    	appId      : '662140027327622',
        cookie     : true,
        xfbml      : true,
        version    : 'v2.8'
    });
    FB.AppEvents.logPageView();
    
    FB.getLoginStatus(function(response) {
	    statusChangeCallback(response);
	  });
  };
  
  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.9&appId=1738956586403230";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
  
   function checkLoginState() {
	    FB.getLoginStatus(function(response) {
	      statusChangeCallback(response);
	    });
	  }
  
  function statusChangeCallback(response) {
	    if (response.status === 'connected') {
	    	FB.api('/me', function(data) {
	    	    alert(JSON.stringify(data));
// 	    	    alert(response.email);
	    	}, {scope: 'publish_stream,user_likes'});
	    } else {
	    }
	  }
</script>
<div class="fb-login-button" data-height="44px" data-width="250px" data-max-rows="1" data-size="large" data-button-type="login_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false" data-onlogin="checkLoginState();"></div>
<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('d088e1794401d40ad78daf3b6e19bdea');
    function loginWithKakao() {
      // 로그인 창을 띄웁니다.
      Kakao.Auth.login({
    	  success: function(authObj) {
    	        // 로그인 성공시, API를 호출합니다.
    	        Kakao.API.request({
    	          url: '/v1/user/me',
    	          success: function(res) {
//     	        	alert(JSON.stringify(res));
    	        	$('#kmail').val(res.kaccount_email);
    	        	$('#kname').val(res.properties.nickname);
//     	        	$('#form').attr('action', '')
    	          },
    	          fail: function(error) {
    	            alert(JSON.stringify(error));
    	          }
    	        });
    	      }, 
    	      fail: function(err) {
    	        alert(JSON.stringify(err));
    	      }
      });
    };
  //]]>
</script>
		</div>
		<form id="form">
			<input type="hidden" id="kmail" name="mem_id" value="" />
			<input type="hidden" id="kname" name="mem_name" value="" />
		</form>
		
		<div class="row omb_row-sm-offset-3">
			<div class="col-xs-12 col-sm-6">
			    <form class="omb_loginForm"  autocomplete="off" id="frm" method="post">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-user"></i></span>
						<input type="text" class="form-control" name="mem_id" id="mem_id" placeholder="email address">
					</div>
					<span class="help-block"></span>
										
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-lock"></i></span>
						<input type="password" class="form-control" name="mem_pass" id="mem_pass" placeholder="Password">
					</div>

				</form>
					<input type="button" class="btn btn-lg btn-primary btn-block" value="로그인"  id="loginOK"/>
			</div>
    	</div>
		<div class="row omb_row-sm-offset-3">
			<div class="col-xs-12 col-sm-3">
				<p class="omb_forgotPwd">
					<a href="#">비밀번호 찾기</a>
				</p>
			</div>
		</div>	    	
	</div>
 </div>
</body>
</html>