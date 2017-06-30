<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/YogoYogo/css/register/register.css" />
<script type="text/javascript">
	$(function(){
		$(".subDiv").hide();
		
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
            <form class="form-horizontal" method="post"  id="basicForm" action="join.do">        
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
          <label class="control-label col-sm-3">아이디 : <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
              <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
              <input type="email" class="form-control" name="mem_id" id="mem_id" placeholder="이메일을 입력하여 주세요." value="">
            </div>
            <small> 맞음/틀림</small> </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">비밀번호 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
              <input type="password" class="form-control" name="mem_pass" id="mem_pass" placeholder="Choose password (5-15 chars)" value="">
           </div>   
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">비밀번호 확인 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
              <input type="password" class="form-control" name="cpassword" id="cpassword" placeholder="Confirm your password" value="">
            </div>  
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">이름 : <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <input type="text" class="form-control" name="mem_name" id="mem_name" placeholder="Enter your Name here" value="">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">닉네임 : <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <input type="text" class="form-control" name="mem_nick" id="mem_nick" placeholder="Enter your Name here" value="">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">전화번호 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
          	<div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
            <input type="text" class="form-control" name="mem_call" id="mem_call" placeholder="ex)010-4321-8109" value="">
            </div>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">사진첨부 : <br>
          <small>(optional)</small></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group"> <span class="input-group-addon" id="file_upload"><i class="glyphicon glyphicon-upload"></i></span>
<!--               <input type="text" name="file_nm" id="file_nm" class="form-control upload" placeholder="사진을 첨부하여 주세요." aria-describedby="file_upload"> -->
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-xs-offset-3 col-xs-10">
            <input type="submit" value="Sign Up" class="btn btn-primary" id="basicSignUp">
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
          <div class="col-md-8 col-sm-9">
              <div class="input-group">
              <input type="text" class="form-control" name="car_number" id="car_number" placeholder="트럭번호 입력" value="">
            </div>
          </div>
        </div>

        <div class="form-group">
          <label class="control-label col-sm-3">상호명 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
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