<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="/YogoYogo4/css/login/loginView.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
    	<h3 class="omb_authTitle">Login or <a href="#">Sign up</a></h3>
		<div class="row omb_row-sm-offset-3 omb_socialButtons">
    	    <div class="col-xs-4 col-sm-2">
		        <a href="#" class="btn btn-lg btn-block omb_btn-facebook">
			        <i class="fa fa-facebook visible-xs"></i>
			        <span class="hidden-xs">Facebook</span>
		        </a>
	        </div>
        	<div class="col-xs-4 col-sm-2">
		        <a href="#" class="btn btn-lg btn-block omb_btn-twitter">
			        <i class="fa fa-twitter visible-xs"></i>
			        <span class="hidden-xs">Twitter</span>
		        </a>
	        </div>	
        	<div class="col-xs-4 col-sm-2">
		        <a href="#" class="btn btn-lg btn-block omb_btn-google">
			        <i class="fa fa-google-plus visible-xs"></i>
			        <span class="hidden-xs">Google+</span>
		        </a>
	        </div>	
		</div>

		<div class="row omb_row-sm-offset-3 omb_loginOr">
			<div class="col-xs-12 col-sm-6">
				<hr class="omb_hrOr">
				<span class="omb_spanOr">or</span>
			</div>
		</div>

		<div class="row omb_row-sm-offset-3">
			<div class="col-xs-12 col-sm-6">	
			    <form class="omb_loginForm"  autocomplete="off" id="frm">
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