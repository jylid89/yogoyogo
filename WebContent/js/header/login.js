/**
 * 
 */

addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } 


$(function() {
		
	
	// 로그인 버튼을 눌렀을 때 ajax를 통해 아이디 비밀번호 확인
	$("#loginOK").click(function(){
		$.ajax({
			url : "loginCheck.do",
			type : "post",
			data : {"mem_id" : $("#id").val() , "mem_pass" : $("#pass").val()},
			
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
	
	// 로그인 안한 상태일 때 로그인 버튼 보여주기
	
	$('.login').show();
	$('.logout').hide();
	$(".adverClass").hide();
	
	// 로그인 했을때
	if ($('#mem_name').val() != "null") {
		$('.login').hide();
		$('.logout').show();
		
		// 로그인한 회원이 일반회원일때
		if($('#mem_state').val() == "일반회원") {
			$('.user').show();
			$('.ceo').hide();
			$('.adver').hide();
			$('.evt').hide();
			$(".adverClass").hide();
			
		// 로그인한 회원이 사업자일때
		} else if($('#mem_state').val() == "사업자") {
			$('.user').hide();
			$('.ceo').show();
			$('.adver').hide();
			$('.evt').hide();
			$(".adverClass").show();
			
		// 로그인한 회원이 광고업체일때
		} else if($('#mem_state').val() == "광고업체") {
			$('.user').hide();
			$('.ceo').hide();
			$('.adver').show();
			$('.evt').hide();
			$(".adverClass").show();
		
		// 로그인한 회원이 행사기획자일때
		} else if($('#mem_state').val() == "행사기획자") {
			$('.user').hide();
			$('.ceo').hide();
			$('.adver').hide();
			$('.evt').show();
			$(".adverClass").hide();
		}
		
	}
	
});

$(document).ready(function () { 
		$('#horizontalTab').easyResponsiveTabs({ 
			type: 'default', //Types: default, vertical, accordion            
			width: 'auto', //auto or any width like 600px 
			fit: true   // 100% fit in a container 
		});  

//페이스북 로그인 했을때 사용자 정보 가지고 오기
window.fbAsyncInit = function() {
    FB.init({
    	appId      : '275983546204498',
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
//	    	    alert(JSON.stringify(data));
// 	    	    alert(response.email);
	    	}, {scope: 'publish_stream,user_likes'});
	    } else {
	    }
	  }  
});

// 구글 로그인 했을 때 사용자 정보 가지고 오는 부분
function onSignIn(googleUser) {
//	  var profile = googleUser.getBasicProfile();
//	  alert('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
//	  alert('Name: ' + profile.getName());
//	  alert('Image URL: ' + profile.getImageUrl());
//	  alert('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
	}

//<![CDATA[
// 카카오톡 로그인 javascript
Kakao.init('d088e1794401d40ad78daf3b6e19bdea');
function loginWithKakao() {
  // 로그인 창을 띄웁니다.
  Kakao.Auth.login({
	  success: function(authObj) {
	        // 로그인 성공시, API를 호출합니다.
	        Kakao.API.request({
	          url: '/v1/user/me',
	          success: function(res) {
// 	        	alert(JSON.stringify(res));
	        	$('#kmail').val(res.kaccount_email);
	        	$('#kname').val(res.properties.nickname);
// 	        	$('#form').attr('action', '')
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


