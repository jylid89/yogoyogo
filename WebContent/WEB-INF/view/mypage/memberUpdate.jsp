<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% String mem_state =  request.getParameter("mem_state");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/YogoYogo/css/register/register.css" />
<script type="text/javascript">
	$(function(){
		
		var count = 0;
		
		//패스워드 유효성검사
		$("#changePass").blur(function(){
			var regExp_pass = /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,20}$/;
			
			if ( $("#changePass").val() != null && $("#changePass").val().match(regExp_pass) != null) {
				$(".passChecked1").text("비밀번호가 올바릅니다.");
				$("#confirmPass").blur(function(){
					if($("#confirmPass").val() != null && $("#changePass").val() != null){
						
						if($("#confirmPass").val() == $("#changePass").val()){
							$(".passChecked2").text("비밀번호가 일치합니다.");
							$("#mem_pass").val($("#changePass").val());
						}else{
							$(".passChecked2").text("비밀번호가 다릅니다.");
						}
					}
				});
			}else{
				$(".passChecked1").text("비밀번호가 올바르지 않습니다.");
				return;
			}
		});
		
		//전화번호 유효성검사
		$("#mem_call").blur(function(){
			var call_check =  /^\d{3}-\d{3,4}-\d{4}$/;
			
			if ( $("#mem_call").val() != null && $("#mem_call").val().match(call_check) != null) {
				$(".callCheck").text("전화번호가 올바릅니다.");
				count = count + 1;
			}else{
				$(".callCheck").text("전화번호가 올바르지 않습니다.");
				return;
			}
			
		});
		//basicUpdateUp(일반회원 수정시)
		$("#basicUpdateUp").click(function(){
			//비밀번호가 변경되었으면 mem_pass에 변경된 값 넣어주기
			var result = confirm("수정 하시겠습니까?");
			if(result){
				$("#memUpdateForm").attr("action", "memberUpdate.do").submit();
			}
		});
		
	});

</script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>
<body>
	<div class="container">
	<div class="row">
    <div class="col-md-8">
    <br/><br/>
        <h1 class="entry-title"><span>회원정보 수정</span> </h1>
        <hr>
            <form class="form-horizontal" method="post"  id="memUpdateForm">        
        <div class="form-group">
          <label class="control-label col-sm-3">아이디(이메일) : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-9">
              <input type="email" class="form-control" readonly="readonly" name="mem_id" id="mem_id"  value="${vo.mem_id }">
        	<input type="hidden" value="${vo.mem_state}" id="mem_state"/>
        </div>
              <div class="checkId"></div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">비밀번호 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
              <input type="password" class="form-control" id="changePass"  value="">
          	  <input type="hidden" name="mem_pass" id="mem_pass" value="${vo.mem_pass }"/>
          </div>
          <div class="passChecked1"></div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">비밀번호 확인 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
              <input type="password" class="form-control" name="confirmPass" id="confirmPass" value="">
          </div>
          <div class="passChecked2"></div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">이름 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-9">
            <input type="text" class="form-control" readonly="readonly" name="mem_name" id="mem_name" placeholder="Enter your Name here" value="${vo.mem_name }">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">닉네임 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-9">
            <input type="text" class="form-control" readonly="readonly" name="mem_nick" id="mem_nick" placeholder="Enter your Name here" value="${vo.mem_nick }">
          </div>
          <div class="nickCheck"></div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">핸드폰번호 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-9">
            <input type="text" class="form-control" name="mem_call" id="mem_call" placeholder="ex)010-4321-8109" value="${vo.mem_call }">
          </div>
            <div class="callCheck"></div>
        </div>
        <div class="form-group">
          <div class="col-xs-offset-3 col-xs-10">
         	<input type="button" value="취소하기" class="btn btn-primary" id="basicUpdateCancel">
            <input type="button" value="수정하기" class="btn btn-primary" id="basicUpdateUp">
          </div>
        </div>
      </form>
    </div>
</div>
</div>

</body>
</html> 