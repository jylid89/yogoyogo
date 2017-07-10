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
		
		
		if($("#mem_state").val() == "사업자"){
			$(".subDiv").show();
			$("#basicUpdateUp").hide();
			$("#basicUpdateCancel").hide();
			
			if($("#truck_catestate").val() == "Y"){
				$("input:radio[name='catestate']:radio[value='yes']").prop("checked",true);
			}else{
				$("input:radio[name='catestate']:radio[value='no']").prop("checked",true);
			}
			
			
		}else{
			$(".subDiv").hide();
		}
		
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
							$("#realPass").val($("#changePass").val());
						}else{
							$(".passChecked2").text("비밀번호가 다릅니다.");
							return;
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
		
		//케이터링 여부
		$(".truck_catestate").click(function(){
			var index = $(".truck_catestate").index(this);
			if($(".truck_catestate").index(this) == 0){
				$("#truck_catestate").val("Y");
			}else if($(".truck_catestate").index(this) == 1){
				$("#truck_catestate").val("N");
			}
			
		});
		
		
		$("#truckUpdate").click(function(){
			var result = confirm("수정 하시겠습니까?");
			if(result){
				
				$("#truck_postnum").val($("#sample4_postcode").val());
				$("#truck_addr").val($("#sample4_roadAddress").val());

				$("#updateForm").attr("action", "memberCeoUpdate.do").submit();
			}
		});
		
	});

</script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>
</head>
<body>
	<div class="container">
	<div class="row">
    <div class="col-md-8">
    <br/><br/>
        <h1 class="entry-title"><span>회원정보 수정</span> </h1>
        <hr>
            <form class="form-horizontal" method="post"  id="updateForm" enctype="multipart/form-data">        
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
          	  <input type="hidden" name="mem_pass" id="realPass" value="${vo.mem_pass }"/>
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
        <!-- ====================== 푸드트럭 추가폼 =========================== -->
    <div class="subDiv">
        <div class="form-group">
          <label class="control-label col-sm-3">트럭번호 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-9">
            <input type="text" class="form-control" name="car_number" id="car_number" value="${vo.car_number }">
          </div>
          <div class="car_number"></div>
        </div>

        <div class="form-group">
          <label class="control-label col-sm-3">상호명 <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-9">
            <input type="text" class="form-control" name="truck_name" id="truck_name" value="${vo.truck_name }">
          </div>
          <div class="truck_name"></div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">주소<span class="text-danger">*</span></label>
          <div class="col-md-3 col-sm-9">
			<input type="text" class="form-control" id="sample4_postcode"  readonly="readonly" value="${vo.truck_postnum }"/>
          </div>
			<input type="button" class="btn btn-info" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" />
          </div>
          <div class="form-group">
          	<label class="control-label col-sm-3"></label>
		 <div class="col-md-5 col-sm-9">
				<input type="text" class="form-control" id="sample4_roadAddress"  readonly="readonly" value="${vo.truck_addr }"/>
		 </div>
		 </div>
		 <div class="form-group">
		 	<label class="control-label col-sm-3"></label>
		 <div class="col-md-5 col-sm-9">
				<input type="hidden" class="form-control" id="sample4_jibunAddress"  readonly="readonly" />
		</div>
				<span id="guide" style="color:#999"></span>
				<input type="hidden" id="truck_addr" name="truck_addr" />
				<input type="hidden" id="truck_postnum" name="truck_postnum"/>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">케이터링여부 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group">
              <label class="radio-inline">
				  <input type="radio"  class="truck_catestate" name="catestate" value="yes"> 예
			  </label>
			  <label class="radio-inline">
				  <input type="radio" class="truck_catestate" name="catestate" value="no"> 아니오
			  </label>
			  <input type="hidden" id="truck_catestate" name="truck_catestate" value="${vo.truck_catestate }"/>
           </div>   
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">사진첨부 : <br>
          <small>(optional)</small></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group"> <span class="input-group-addon" id="file_upload"><i class="glyphicon glyphicon-upload"></i></span>
              <input type="file" name="truck_pictemp" class="form-control upload" >
              <input type='hidden' name='exfile' value="${vo.truck_picreal1}" /> 
              <input type="hidden" name="mem_state" id="mem_state" value="${vo.mem_state }"/>
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-xs-offset-3 col-xs-10">
          	<input  type="button" value="돌아가기" class="btn btn-primary">
            <input name="foodInsert" type="button" value="수정하기" class="btn btn-primary" id="truckUpdate">
          </div>
        </div>
        </div>
      </form>
    </div>
</div>
</div>

</body>
</html> 