<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="/Marketing/css/pos/pos.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {

	$(".pos_menu").click(function() {
		$("tbody").prepend("<tr><td>"+$(this).find('h4').text()+
				"</td><td class='num'>1</td><td>"+$(this).find('p').text()+
				"</td><td><input class='plus btn' type='button' value='+' onclick='plus(this)'/></td><td><input class='minus btn' type='button' value='-' onclick='minus(this)'/></td><td><input class='del btn btn-danger' type='button' value='휴지통' onclick='del(this)'/></td></tr>")
		$("#total-price").text(String(Number($("#total-price").text())+Number($(this).find('p').text())));
		$("#total-price1").val(String(Number($("#total-price").text())+Number($(this).find('p').text())));
	});

});
function del(elem){
	$(elem).parents('tr').remove();
	$("#total-price").text(String(Number($("#total-price").text())-(Number($(elem).parents('tr').find('td:eq(2)').text())*(Number($(elem).parents('tr').find('td:eq(1)').text())))));
	$("#total-price1").val(String(Number($("#total-price1").val())-(Number($(elem).parents('tr').find('td:eq(2)').text())*(Number($(elem).parents('tr').find('td:eq(1)').text())))));
}
function plus(elem){
	$("#total-price").text(String(Number($("#total-price").text())+Number($(elem).parents('tr').find('td:eq(2)').text())));
	$("#total-price1").val(String(Number($("#total-price").val())+Number($(elem).parents('tr').find('td:eq(2)').text())));
	$(elem).parents('tr').find('td:eq(1)').text(String(Number($(elem).parents('tr').find('td:eq(1)').text())+Number(1)));

}
function minus(elem){
	if($(elem).parents('tr').find('td:eq(1)').text() > 1){
		$("#total-price").text(String(Number($("#total-price").text())-Number($(elem).parents('tr').find('td:eq(2)').text())));
		$("#total-price1").val(String(Number($("#total-price1").val())-Number($(elem).parents('tr').find('td:eq(2)').text())));
		$(elem).parents('tr').find('td:eq(1)').text(String(Number($(elem).parents('tr').find('td:eq(1)').text())-Number(1)));
	}
}
</script>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="taglin">푸드트럭 제목</h1>
				<!-- 메뉴 버튼 -->
				<div class="col-md-7">
					<c:choose>
						<c:when test="${posModel == null }">
							<h1 class="tagline">메뉴가 없어요 사장님</h1>
						</c:when>
						<c:otherwise>
							<c:forEach items="${posModel}" var="p">
								<div class="pos_menu agile-menu-grid" id='button'>
										<img alt="" src="/Marketing/img/${p.menu_picreal }" style="width: 100%; height: 100%;">
										<div class="agileits-caption">
											<h4>${p.menu_name }</h4>
											<p>${p.menu_price }</p>
										</div>
								</div>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</div>
s
				<!-- 계산 목록   -->
				<div class="col-md-5">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">주문번호</h3>
						</div>
						<h1>24</h1>
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
						<form method="post" action="posInsertOk.do">
							<button type="submit" class="btn sale-btn btn-warning">
								<div class="col-md-6">
									<h3>결제</h3>
								</div>
								<div class="col-md-6">
									<h3 id="total-price">0</h3>
								</div>
							</button>
							<input name="pos_totprice" type="hidden" id="total-price1" value="0"/>
						</form>
					</div>
				</div>

			</div>

		</div>
	</div>
</body>
</html>