<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/YogoYogo/css/register/register.css" />
<script type="text/javascript">
	$(function(){
		
		var count = 0;
		
		//푸드트럭 사업자 div 숨기기
		$(".subDiv").hide();
		
		//회원 구분하기
		$(".radioohoh").click(function(){
			var index = $(".radioohoh").index(this);
			if($(".radioohoh").index(this) == 1){
				$(".subDiv").show();
				$("#basicSignUp").hide();
				$("#mem_state").val("사업자");
			}else if($(".radioohoh").index(this) == 0){
				$(".subDiv").hide();
				$("#basicSignUp").show();
				$("#mem_state").val("일반회원");
			}else if($(".radioohoh").index(this) == 2){
				$(".subDiv").hide();
				$("#basicSignUp").show();
				$("#mem_state").val("광고업체");
			}else{
				$(".subDiv").hide();
				$("#basicSignUp").show();
				$("#mem_state").val("행사기획자");
			}
		});
		
		//아이디 중복확인
		$("#mem_id").blur(function(){
			
			var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			
			if ( $("#mem_id").val() != null && $("#mem_id").val().match(regExp) != null) {
				$(".checkId").text("이메일 형식이 올바릅니다.");
				$.ajax({
					url : "idCheck.do",
					type : "post",
					data : {"mem_id" : $("#mem_id").val()},
					success : function(data) {
						if($("#mem_id") != null){
							
							if(data == "0"){
								$(".checkId").text("");
								$(".checkId").text("사용 가능합니다.");
								count = count + 1;
							}else{
								$(".checkId").text("중복된 아이디가 존재합니다.");
								return;
							}	
						}
					}
				});
			   }else{
				   $(".checkId").text("이메일 형식이 올바르지 않습니다.");
				   return;
			   }
		});
		
		//패스워드 유효성검사
		$("#mem_pass").blur(function(){
			var regExp_pass = /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,20}$/;
			
			if ( $("#mem_pass").val() != null && $("#mem_pass").val().match(regExp_pass) != null) {
				$(".passCheck1").text("비밀번호가 올바릅니다.");
				$("#cpassword").blur(function(){
					if($("#cpassword").val() != null && $("#mem_pass").val() != null){
						
						if($("#cpassword").val() == $("#mem_pass").val()){
							$(".passCheck").text("비밀번호가 일치합니다.");
							count = count + 1;
						}else{
							$(".passCheck").text("비밀번호가 다릅니다.");
						}
					}
				});
			}else{
				$(".passCheck1").text("비밀번호가 올바르지 않습니다.");
				return;
			}
		});
		
		//닉네임 중복검사
		$("#mem_nick").blur(function(){
			$.ajax({
				url : "nickCheck.do",
				type : "post",
				data : {"mem_nick" : $("#mem_nick").val()},
				success : function(data) {
					if($("#mem_nick") != null){
						
						if(data == "0"){
							$(".nickCheck").text("사용 가능합니다.");
							count = count + 1;
						}else{
							$(".nickCheck").text("중복된 닉네임이 존재합니다.");
							return;
						}	
					}
				}
			});
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
		
		
		
		$("#basicSignUp").click(function(){
			
			if(count >= 4 && $('input:radio[name=inlineRadioOptions]').is(':checked')){
				var result = confirm(' 회원가입을 하시겠습니까?');
					if(result) {
						$("#basicForm").attr("action","join.do").submit();
					}
			}else{
				alert("회원 구분을 체크해주세요");
				return;
			}
		});
		
	});

</script>
</head>
<body>
	<div class="container">
	<div class="row">
    <div class="col-md-8">
    <br/><br/>
        <h1 class="entry-title"><span>회원가입</span> </h1>
        <hr>
            <form class="form-horizontal" method="post"  id="basicForm">        
        <div class="form-group">
          <label class="control-label col-sm-3">회원구분 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group">
            	<label class="radio-inline">
					<input type="radio" class="radioohoh" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 일반회원
				</label>
				<label class="radio-inline">
					<input type="radio" class="radioohoh" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 사업자
				</label>
				<br/>
				<label class="radio-inline">
				    <input type="radio" class="radioohoh" name="inlineRadioOptions" id="inlineRadio3" value="option3"> 광고대행사
				</label>
				<label class="radio-inline">
				    <input type="radio" class="radioohoh" name="inlineRadioOptions" id="inlineRadio4" value="option4"> 행사기획자
				</label>
					<input type="hidden" id="mem_state" name="mem_state" />
           </div>   
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">아이디(이메일) : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-9">
              <input type="email" class="form-control" name="mem_id" id="mem_id" placeholder="이메일을 입력하여 주세요." value="">
        </div>
              <div class="checkId"></div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">비밀번호 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
              <input type="password" class="form-control" name="mem_pass" id="mem_pass" placeholder="Choose password (5-15 chars)" value="">
          </div>
          <div class="passCheck1"></div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">비밀번호 확인 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
              <input type="password" class="form-control" name="cpassword" id="cpassword" placeholder="Confirm your password" value="">
          </div>
          <div class="passCheck"></div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">이름 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-9">
            <input type="text" class="form-control" name="mem_name" id="mem_name" placeholder="Enter your Name here" value="">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">닉네임 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-9">
            <input type="text" class="form-control" name="mem_nick" id="mem_nick" placeholder="Enter your Name here" value="">
          </div>
          <div class="nickCheck"></div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">핸드폰번호 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-9">
            <input type="text" class="form-control" name="mem_call" id="mem_call" placeholder="ex)010-4321-8109" value="">
          </div>
            <div class="callCheck"></div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">사진첨부 : <br>
          <small>(optional)</small></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group"> <span class="input-group-addon" id="file_upload"><i class="glyphicon glyphicon-upload"></i></span>
              <input type="file" name="file_nm" id="file_nm" class="form-control upload" placeholder="사진을 첨부하여 주세요." aria-describedby="file_upload">
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-xs-offset-3 col-xs-10">
            <input type="button" value="Sign Up" class="btn btn-primary" id="basicSignUp">
          </div>
        </div>
      </form>
    </div>
</div>
</div>

<!-- ====================== 푸드트럭 추가폼 =========================== -->
<div class="subDiv">
	<div class="container">
	<div class="row">
    <div class="col-md-8">
    <br/><br/>
            <form class="form-horizontal" method="post" name="signup" id="signup" enctype="multipart/form-data" >        
        <div class="form-group">
          <label class="control-label col-sm-3">트럭번호 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-9">
            <input type="text" class="form-control" name="car_number" id="car_number" placeholder="푸드트럭 번호를 입력하여 주세요." value="">
          </div>
        </div>

        <div class="form-group">
          <label class="control-label col-sm-3">상호명 <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-9">
            <input type="text" class="form-control" name="truck_name" id="truck_name" placeholder="상호명 입력" value="">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">활동 지역<span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
	          <select class="form-control selectpicker" id="Select1" style="height:30px">
	          	<option>1</option>
	          	<option>2</option>
	          	<option>3</option>
	          	<option>4</option>
	          	<option>5</option>
	          </select>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">케이터링여부 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group">
              <label class="radio-inline">
				  <input type="radio"  name="cateState" id="cateState1" value="option1"> 예
			  </label>
			  <label class="radio-inline">
				  <input type="radio" name="cateState" id="cateState2" value="option2"> 아니오
			  </label>
           </div>   
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">사진첨부 : <br>
          <small>(optional)</small></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group"> <span class="input-group-addon" id="file_upload"><i class="glyphicon glyphicon-upload"></i></span>
              <input type="file" name="file_nm" id="file_nm" class="form-control upload" placeholder="사진을 첨부하여 주세요." aria-describedby="file_upload">
            </div>
          </div>
        </div>
         <div class="form-group">
          <label class="control-label col-sm-3">사진첨부 : <br>
          <small>(optional)</small></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group"> <span class="input-group-addon" id="file_upload"><i class="glyphicon glyphicon-upload"></i></span>
              <input type="file" name="file_nm" id="file_nm" class="form-control upload" placeholder="사진을 첨부하여 주세요." aria-describedby="file_upload">
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-xs-offset-3 col-xs-10">
            <input name="Submit" type="submit" value="Sign Up" class="btn btn-primary">
          </div>
        </div>
      </form>
    </div>
</div>
</div>
</div>
</body>
</html>