<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>케이터링 신청현황 리스트(사용자)</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="/YogoYogo/css/mypage/animate.css"
	type="text/css" />
<link rel="stylesheet" href="/YogoYogo/css/mypage/rmodal.css"
	type="text/css" />
<script type="text/javascript" src="/YogoYogo/js/mypage/rmodal.js"></script>
<link rel="stylesheet" type="text/css" href="/YogoYogo/css/mypage/catAppStatus_user.css">
<style type="text/css">
.modal .modal-dialog {
	width: 400px;
}
</style>
<script type="text/javascript">
$(function(){
	
	var cate_num;
	
	var modal = new RModal(document.getElementById('modal'), {
		//content: 'Abracadabra'
		beforeOpen : function(next) {
			console.log('beforeOpen');
			next();
		},
		afterOpen : function() {
			console.log('opened');
		}

		,
		beforeClose : function(next) {
			console.log('beforeClose');
			next();
		},
		afterClose : function() {
			console.log('closed');
		}
	});

	document.addEventListener('keydown', function(ev) {
		modal.keydown(ev);
	}, false);

	
	//거절 버튼 눌렀을 시 메세지 띄우기
	$('.reasonDetail').click(function(ev) {
		modal.open();
		var index = $(".reasonDetail").index(this);
		reason = $(".reason").eq(index).val();
		$("#hear").text(reason);
	});

	window.modal = modal;
	
});
</script>
</head>
<body>
<br/><br/>
<div class="container">
	<div class="row">
		<c:forEach varStatus="status" items="${list}" var="list" >
		<div class="row"> 
                    <div class="col-xs-12 col-sm-3 col-md-3">
                        <a href="#">
                            <img src="${list.truck_picreal1 }" class="img-responsive img-box img-thumbnail"> 
                        </a>
                    </div> 
                    <div class="col-xs-12 col-sm-9 col-md-9">
                        <div class="list-group">
                            <div class="list-group-item">
                                <div class="row-content">
                                    <div class="list-group-item-heading">
                                    	<input type="hidden" class="reason" value="${list.cate_reason }"/>
                                        <a href="${list.truck_num}" title="sintret">
                                            <small>${list.truck_name}</small>
                                        </a>
                                    </div>
                                    <small>
                                    ${list.truck_addr}
                                        <br>
                                    </small>
                                </div>
                            </div>
                        </div>
                        <table class='table table-hover ' style="text-align: center;">
                        	<thead>
                        		<tr>
                        			<th class='text-center'>날짜</th>
                        			<th class='text-center'>시간</th>
                        			<th class='text-center'>인원</th>
                        			<th class='text-center'>예산</th>
                        			<th class='text-center'>장소</th>
                        			<th class='text-center'>상태</th>
                        		</tr>
                        	</thead>
                        		<tr>
                        			<td>${list.cate_date}</td>
                        			<td>${list.cate_time}</td>
                        			<td>${list.cate_people}</td>
                        			<td>${list.cate_budget}</td>
                        			<td>${list.cate_addr}</td>
                        			<td>
		                   			<c:choose>
				        				<c:when test="${list.cate_state == '대기중'}">
				            			<span class="btn btn-success reasonDetail">${list.cate_state}</span>
				            			</c:when>
				            			<c:when test="${list.cate_state == '승인'}">
				            			<button class="btn btn-info reasonDetail">${list.cate_state}</button>
				            			</c:when>
				            			<c:otherwise>
				            			<button class="btn btn-danger reasonDetail">${list.cate_state}</button>
				            			</c:otherwise>
				            		</c:choose>
		            				</td>
                        			<td></td>
                        		</tr>
                        </table>
                    </div> 
                </div>
                <hr>
         </c:forEach>
	</div>
</div>
	<div id="modal" class="modal">
		<div class="modal-dialog animated">
			<div class="modal-content">
				<form  class="form-horizontal" method="get">
					<div class="modal-header">
						<br>
						<strong>메시지~</strong>
						<hr>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<div class="input-group col-xs-12">
							<br>
								<label id="hear" class="col-xs-8"></label>
<!-- 								<div id="hear" -->
<!-- 									class="form-control"></div> -->
								<input type="hidden" id="cate_num" class="cateNum" name="cate_num"/>
							</div>
						</div>
					</div>

					<div class="modal-footer">
						<button name="btn-default" id="btn-default"
							class="btn btn-primary" type="button" onclick="modal.close();">확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>