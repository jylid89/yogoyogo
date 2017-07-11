<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/YogoYogo/css/register/register.css" />
<link rel="stylesheet" href="/YogoYogo/css/festival/jquery-ui.css" />
<style type="text/css">
	.ui-datepicker-trigger{
		float: left;	
	}

</style>
<script src="/YogoYogo/js/festival/jquery-ui.js"></script>
<script type="text/javascript">
	$(function(){
		
		$("#event_start").datepicker({
		    showOn : "both",
		    buttonImage : "/YogoYogo/images/festival/pickerIcon.jpg",
		    dateFormat: 'yy-mm-dd',
		    defaultDate : "+1w",
		    changeMonth : true,
		    	onClose : function(selectedDate){
		    		$("#event_end").datepicker("option", "minDate", selectedDate);
		    	}
		  });
		$("#event_end").datepicker({
		    showOn : "both",
		    buttonImage : "/YogoYogo/images/festival/pickerIcon.jpg",
		    dateFormat: 'yy-mm-dd',
		    changeMonth : true,
		    onClose : function(selectedDate){
		    	$("#event_start").datepicker("option", "maxDate", selectedDate);
		    	}
		  });
			
		$("#eventInsert").click(function(){
			
			var loc = $("#sample4_roadAddress").val();	
			$("#event_loc").val(loc);
			$("#event_map").val($("#sample4_postcode").val());			
				var result = confirm(' 행사를 등록 하시겠습니까?');
					if(result) {
						$("#festivalForm").attr("action","festivalInsertOk.do").submit();
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
    <div class="col-md-12">
    <br/><br/>
        <h1 class="entry-title"><span>행사 추가</span> </h1>
        <hr>
            <form class="form-horizontal" method="post"  id="festivalForm" enctype="multipart/form-data">        
        <br/><br/>
        <div class="form-group">
          <label class="control-label col-sm-3">행사명 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-9">
              <input type="email" class="form-control" name="event_name" id="event_name" value="">
        </div>
              <div class="checkId"></div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">행사위치<span class="text-danger">*</span></label>
          <div class="col-md-3 col-sm-9">
			<input type="text" class="form-control" id="sample4_postcode"  readonly="readonly" />
          </div>
			<input type="button" class="btn btn-info" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" />
          </div>
          <div class="form-group">
          	<label class="control-label col-sm-3"></label>
		 <div class="col-md-5 col-sm-9">
				<input type="text" class="form-control" id="sample4_roadAddress"  readonly="readonly"/>
		 </div>
		 </div>
		 <div class="form-group">
		 	<label class="control-label col-sm-3"></label>
		 <div class="col-md-5 col-sm-9">
				<input type="text" class="form-control" id="sample4_jibunAddress"  readonly="readonly" />
		</div>
				<span id="guide" style="color:#999"></span>
				<input type="hidden" id="event_loc" name="event_loc" />
				<input type="hidden" id="event_map" name="event_map" />
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">행사 시작 날짜 : <span class="text-danger">*</span></label>
          	<div class="col-md-3 col-sm-9">
            	<input type="text" class="form-control" name="event_start" id="event_start" >
        	</div>
        </div>
        <div class="form-group">
        	<label class="control-label col-sm-3">행사 종료 날짜 : <span class="textnger">*</span></label>
          		<div class="col-md-3 col-sm-9">
              		<input type="text" class="form-control" name="event_end" id="event_end" >
        		</div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">행사 주최 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-9">
              <input type="text" class="form-control" name="event_comp" id="event_comp" value="">
        </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">행사 홍보내용 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-9">
              <textarea class="form-control" name="event_content" id="event_content" rows="30"></textarea> 
        </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">사진첨부 : <br></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group"> <span class="input-group-addon" id="file_upload"><i class="glyphicon glyphicon-upload"></i></span>
              <input type="file" name="event_pictemp" class="form-control" placeholder="사진을 첨부하여 주세요." aria-describedby="file_upload">
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-xs-offset-3 col-xs-10">
          	<input  type="reset" value="취소" class="btn btn-primary">
            <input name="foodInsert" type="button" value="등록" class="btn btn-primary" id="eventInsert">
          </div>
        </div>
      </form>
        </div>
</div>
</div>

</body>
</html>