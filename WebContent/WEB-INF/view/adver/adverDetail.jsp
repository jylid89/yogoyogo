<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="favicon.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/Marketing/view/css/activityinsert.css">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<link rel="stylesheet" href="css/adver/adverDetail.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	
	$(function(){
		
		//신청/취소버튼 구분
		$.ajax({
			url : "confirmCheck.do",
			type : "post",
			data : {"adv_num" : $("#adv_num").val() , "truck_num" : $("#truck_num").val()},
			success : function(data) {
				if(data == "0"){
					$("#btn_confirm").show();
					$("#btn_cancel").hide();
				}else{
					$("#btn_confirm").hide();
					$("#btn_cancel").show();
				}	
			}
		})
		
		//신청하기 버튼 클릭시
		$("#btn_confirm").click(function(){
			var result = confirm(' 기간은 승인 다음날부터 3개월까지 입니다.신청하시겠습니까?');
			if(result) {
				$("#frm").attr("action","advConfirmInsert.do").submit();
			}
		});
		
		//신청취소 버튼 클릭시
		$("#btn_cancel").click(function(){
			var result = confirm('신청을 취소하시겠습니까? (승인이 된 후에는 취소가 불가 합니다.)');
				if(result) {
					$.ajax({
						url : "confirmCancel.do",
						type : "post",
						data : {"adv_num" : $("#adv_num").val() , "truck_num" : $("#truck_num").val()},
						success : function(data) {
							if(data != "대기중"){
								alert("승인이 완료되어 취소가 불가 합니다.");
								return;
							}else{
								$("#frm").attr("action","advConfirmDelete.do").submit();
							}	
						}
					})
			}
			
		});
	});

</script>    
</head>
<body>

<div class="container">
    <div class="row"><h1 class="text-center">${vo.adv_title }</h1>
        <p class="text-center">${vo.mem_nick }</p>
    </div>

	<div class="row">
        <div class="col-md-6 col-md-offset-3">
              <div class="panel-heading" id="head">
                <div class="panel-title" id="title">
                    <span class="visible-xs">Automatic Transmission Service</span>
                </div>
              </div>
              <div class="panel-body">
                <img src="images/adver/bita2.jpg" class="coupon-img img-rounded">
                <br/><br/>
                <div class="col-md-9">
                    <p>${vo.adv_content }</p>
                </div>
                <div class="col-md-3">
                    <div class="offer">
<!--                         <span class="usd"><sup>$</sup></span> -->
<!--                         <span class="number">39</span> -->
<!--                         <span class="cents"><sup>95</sup></span> -->
						<input type="button" class="btn btn-primary2" value="신청하기" id="btn_confirm"/>
						<input type="button" class="btn btn-primary2" value="신청취소" id="btn_cancel"/>
						<input type="hidden" value="N"  id="flag"/>
						<form name="frm" id="frm" method="post">
							<input type="hidden" value="${vo.adv_num }" name="adv_num" id="adv_num"/>
							<input type="hidden" value="TRUCK003" name="truck_num" id="truck_num"/>
						</form>
                    </div>
                </div>
                <div class="col-md-12">
                    <p class="disclosure">서울 서초구 서초중앙로 85 가산빌딩 T 02-6006-7777
					COPYRIGHT(C) KWANG DONG PHARMACEUTICAL CO., LTD. ALL RIGHTS RESERVED </p>
                </div>
              </div>
    	</div>
    </div>
    </div>
<!--     <p class="text-center"><a href="#" class="btn btn-default">Back to top <i class="fa fa-chevron-up"></i></a></p> -->
</body>
</html>