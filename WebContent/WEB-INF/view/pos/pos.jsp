<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/YogoYogo/css/pos/pos.css">
<link rel="stylesheet" href="/YogoYogo/css/pos/calculator.css">
<link rel="stylesheet" href="/YogoYogo/css/pos/animate.css"
	type="text/css" />
<link rel="stylesheet" href="/YogoYogo/css/pos/rmodal.css"
	type="text/css" />
<script type="text/javascript" src="/YogoYogo/js/pos/rmodal.js"></script>
<script type="text/javascript" src="/YogoYogo/js/pos/calculator.js"></script>
<style type="text/css">
.modal .modal-dialog {
	width: 800px;
	height: 360px;
}
</style>
<script type="text/javascript">
$(function() {

	var cate_num;

	var modal = new RModal(document.getElementById('modal'), {
		beforeOpen : function(next) {
			console.log('beforeOpen');
			next();
		},
		afterOpen : function() {
			console.log('opened');
		},
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

	//결제 버튼 눌렀을 시 결제창
	$('.sale-btn').click(function(ev) {
		
		//tot = $("#total-price1").val();
		//price = $("#total_price_modal").val(tot);
		
		var total = $('#total-price').text();
		price = $("#total_price_modal").val(total);
		modal.open();
		
		order = $("#pos_order").text();
		$("#order").val(order);
		
		input_money = $("#screen").val();
		$("#input_money").text(input_money);
		
		$(".keys").click(function(){
			$("#change_money").val(String(Number($("#input_money").text())-(Number($('#total_price_modal').val()))))
		});
		
	
// 		alert(check1);
// 		alert(check2);
		
		
		
		
		$("input[type=radio][name=optionsRadios]").change(function(){
			var check1 = $("input[type=radio][id=optionsRadios1]:checked").val();
			var check2 = $("input[type=radio][id=optionsRadios2]:checked").val();
			if( check1 == "카드"){
				$('.money').hide();
			}else if(check2 == "현금"){
				$('.money').show();
			}
		});
	});

	$('#btn_complete').click(function() {
		$("#pos_order").val(String(Number($("#pos_order").text())+(Number(1))));
	});
	
	
	window.modal = modal;

});
</script>
<script type="text/javascript">

// 메뉴 클릭 시 화면에 메뉴 찍히는 쿼리
$(document).ready(function() {
	$(".pos_menu").click(function() {
		$("tbody").prepend("<tr><td>"+
							$(this).find('h4').text()
							+ "</td><td class='num'>1</td><td>"
							+ $(this).find('p').text()
							+ "</td><td><input class='plus btn' type='button' value='+' onclick='plus(this)'/></td><td><input class='minus btn' type='button' value='-' onclick='minus(this)'/></td><td><input class='del btn btn-danger' type='button' value='휴지통' onclick='del(this)'/></td></tr>")
		$("#total-price").text(String(Number($("#total-price").text())+ Number($(this).find('p').text())));
		$("#total-price1").val(String(Number($("#total-price").text())+ Number($(this).find('p').text())));
									});
				});
				
	// 휴지통 버튼				
	function del(elem) {
		$(elem).parents('tr').remove();
		$("#total-price")
				.text(
						String(Number($("#total-price").text())
								- (Number($(elem).parents('tr')
										.find('td:eq(2)').text()) * (Number($(
										elem).parents('tr').find('td:eq(1)')
										.text())))));
		$("#total-price1")
				.val(
						String(Number($("#total-price1").val())
								- (Number($(elem).parents('tr')
										.find('td:eq(2)').text()) * (Number($(
										elem).parents('tr').find('td:eq(1)')
										.text())))));
	}
	// + 버튼
	function plus(elem) {
		$("#total-price")
				.text(
						String(Number($("#total-price").text())
								+ Number($(elem).parents('tr').find('td:eq(2)')
										.text())));
		$("#total-price1")
				.val(
						String(Number($("#total-price").val())
								+ Number($(elem).parents('tr').find('td:eq(2)')
										.text())));
		$(elem).parents('tr').find('td:eq(1)').text(
				String(Number($(elem).parents('tr').find('td:eq(1)').text())
						+ Number(1)));

}
	
	// - 버튼
	function minus(elem) {
		if ($(elem).parents('tr').find('td:eq(1)').text() > 1) {
			$("#total-price").text(
					String(Number($("#total-price").text())
							- Number($(elem).parents('tr').find('td:eq(2)')
									.text())));
			$("#total-price1").val(
					String(Number($("#total-price1").val())
							- Number($(elem).parents('tr').find('td:eq(2)')
									.text())));
			$(elem).parents('tr').find('td:eq(1)')
					.text(
							String(Number($(elem).parents('tr')
									.find('td:eq(1)').text())
									- Number(1)));
		}


}
</script>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="taglin">${truck_name }</h1>
				<!-- 메뉴 버튼 -->
				<div class="col-md-7">
					<c:choose>
						<c:when test="${posModel == null }">
							<h1 class="tagline">메뉴가 없어요 사장님</h1>
						</c:when>
						<c:otherwise>
							<c:forEach items="${posModel}" var="p">
								<div class="pos_menu agile-menu-grid" id='button'>
									<img alt="" src="${p.menu_picreal }"
										style="width: 100%; height: 100%;">
									<div class="agileits-caption">
										<h4>${p.menu_name }</h4>
										<p>${p.menu_price }</p>
									</div>
								</div>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</div>

				<!-- 계산 목록   -->
				<div class="col-md-5">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title pos_order">주문번호</h3>
						</div>
						<div class="pos_order" id="pos_order">${seq}</div>
					</div>
					<div class="panel panel-success sale-body">
						<div class="panel-heading">
							<h3 class="panel-title">리스트</h3>
						</div>
						<div class="table-responsive">
							<table id="mytable" class="table table-bordred table-striped">
								<thead>
									<th>메뉴 이름</th>
									<th>개수</th>
									<th>가격</th>
									<th>추가</th>
									<th>빼기</th>
									<th>메뉴삭제</th>
								</thead>
								<tbody>
									<tr>
									</tr>
								</tbody>
							</table>
						</div>
					</div>

					<div class="sale-footer col-md-12 panel panel-success">
						<button type="submit" class="btn sale-btn btn-warning"
							id="sale-btn">
							<div class="col-md-6">
								<h3>합계</h3>
							</div>
							<div class="col-md-6">
								<h3 id="total-price">0</h3>
							</div>
						</button>
						<input name="pos_totprice" type="hidden" id="total-price1"
							value="0" class="total_price_first" />
						<input name="pos_num" type="hidden" id="pos_num"/>
					</div>
				</div>

			</div>

		</div>
	</div>
	<div id="modal" class="modal">
		<div class="modal-dialog animated">
			<div class="modal-content">
				<form class="form-horizontal" action="posInsertOk.do" method="post" >
					<div class="modal-header">
						<strong>결제</strong>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<div class="input-group col-md-12">
							<div class="col-md-4">
								<div id="calculator">
									<!-- Screen and clear key -->
									<div class="top">
										<span class="clear">C</span>
									</div>
							
									<div class="keys">
										<!-- operators and other keys -->
										<span>7</span> <span>8</span> <span>9</span>
										<span>4</span> <span>5</span> <span>6</span> 
										<span>1</span> <span>2</span> <span>3</span>
										<span>0</span> <span>00</span> <span>000</span>
									</div>
								</div>
							</div>
								<div class="col-md-3">
									<div class="text-padding">
										<label for="dummyText" class="control-label "> 주문번호 :
										</label>
									</div>
									<div class="text-padding">
										<label for="dummyText" class="control-label ">총 합계 : </label>
									</div>
									<div class="text-padding">
										<label for="dummyText" class="control-label ">결제 구분 :</label>
									</div>
									<div class="text-padding">
										<label for="dummyText" class="control-label">받은 금액 :</label>
									</div>
									<div class="text-padding">
										<label for="dummyText" class="control-label ">거스름 돈 :
										</label>
									</div>
								</div>
								<div class="col-md-4">
									<input type="text" name="pos_order" id="order"
										class="form-control input-padding">
									<input type="text"
										name="pos_totprice" id="total_price_modal" class="form-control input-padding">
									<div class="col-md-12 radio_button">
										<div class="col-md-6">
											<div class="radio input-padding" >
												<label> <input type="radio" name="optionsRadios"
													id="optionsRadios1" value="카드">카드
												</label>
											</div>
										</div>
										<div class="col-md-6">
											<div class="radio input-padding">
												<label> <input type="radio" name="optionsRadios"
													id="optionsRadios2" value="현금">현금
												</label>
											</div>
										</div>
									</div>
									<div class="money">
									<div   id="input_money"
										class="form-control input-padding screen"></div>
									<input type="text" name="change_money" id="change_money"
										class="form-control input-padding">
									</div>
								</div>
							</div>
						</div>

					</div>

					<div class="modal-footer">
						<button name="btn-default" id="btn-default"
							class="btn btn-default" type="button" onclick="modal.close();">취소</button>
						<button name="btn_complete" id="btn_complete"
							class="btn btn_complete" type="submit">결제</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	
	
</body>
</html>