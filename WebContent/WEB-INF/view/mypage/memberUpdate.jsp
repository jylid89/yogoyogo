<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 수정페이지</title>
<!-- stylesheet -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,600italic,600' rel='stylesheet' type='text/css'>
<!-- bootstrap Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- bootstrap Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">


<!-- Javascript files -->		

<!-- BOOTSTRAP Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- for dragging/swiping/pinching, include hammer.js -->
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<body class="body-layout">
<!-- Logo & Navigation starts -->
<div class="container sub-layout">
<!-- Menu End -->
<!-- Body -->
<div class="join-agree-layout">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$('input:radio[name=chk_info]:input[value='+$('#pmem_state').val()+']').attr("checked", true);
});
	
</script>

<br><br>

<div class="jumbotron">
		<h1><span style="color: inherit; line-height: 1.4; font-family: 돋움, Dotum, Helvetica, sans-serif; font-size: 21px;">고객만족을 우선으로 생각하며, 최고 보다는 최선을 다하는 회사가 되겠습니다.</span></h1>
</div>
	<div class="row">
		<div class="col-sm-offset-2 col-sm-8">
			<div class="col-sm-offset-2 col-sm-8">
			<form class="form-horizontal" role="form" id="joinForm" method="post" action="memberUpdate.do" autocomplete="off" novalidate="novalidate">
				<div class="panel panel-default">
					<div class="panel-heading">
						회원 정보수정
					</div> <!-- panel heading -->
					
					<div class="panel-body">
						<div class="form-group joinForm-id">
							<label for="id" class="col-sm-4 control-label"> 아이디 <br> <small class="text-danger">(필수입력)</small> </label>
							<div class="col-sm-8">
								<input id="mem_id" name="mem_id" type="text" class="form-control" placeholder="abcd@efg.com" autofocus="" disabled = "disabled" value="${vo.mem_id}">
							</div>
						</div>
						<div class="form-group joinForm-pw">
							<label for="pw" class="col-sm-4 control-label"> 비밀번호 <br> <small class="text-danger">(필수입력)</small> </label>
							<div class="col-sm-8">
								<input id="mem_pass" name="mem_pass" type="password" class="form-control" placeholder="Password">
							</div>
						</div>
						<div class="form-group joinForm-pw2">
							<label for="pw2" class="col-sm-4 control-label"> 비밀번호 확인 <br> <small class="text-danger">(필수입력)</small> </label>
							<div class="col-sm-8">
								<input id="pw2" name="pw2" type="password" class="form-control" placeholder="Password (재입력)">
							</div>
						</div>
						<div class="form-group joinForm-id">
							<label for="id" class="col-sm-4 control-label"> 닉네임 <br> <small class="text-danger"></small> </label>
							<div class="col-sm-8">
								<input id="mem_nick" name="mem_nick" type="text" class="form-control" value="${vo.mem_nick}">
							</div>
						</div>
						<div class="form-group joinForm-name">
							<label for="name" class="col-sm-4 control-label"> 이름 <br> <small class="text-danger">(필수입력)</small> </label>
							<div class="col-sm-8">
								<input id="mem_name" name="mem_name" type="text" class="form-control" placeholder="홍길동" value="${vo.mem_name}">
							</div>
						</div>
					    	<div class="form-group joinForm-birthdate">
							<label for="birthdate" class="col-sm-4 control-label"> 생년월일  </label>
							<div class="col-sm-8">
								<input id="name" name="name" type="text" class="form-control" placeholder="910829" value="">
							</div>
						</div>
					    	<div class="form-group joinForm-tel">
							<label for="tel" class="col-sm-4 control-label"> 연락처  </label>
							<div class="col-sm-8">
								<input id="mem_call" name="mem_call" type="text" class="form-control" placeholder="000-0000-0000" value="${vo.mem_call}">
							</div>
						</div>
						
						<div class="form-group">
							<input type="hidden" id="pmem_state" value="${vo.mem_state}" />
							<label for="type" class="col-sm-4 control-label"> 회원유형  </label>
							&nbsp&nbsp&nbsp&nbsp
							<input type="radio" name="chk_info" value="일반회원"> 일반회원&nbsp
							<input type="radio" name="chk_info" value="사업자"> 사업자&nbsp
							<input type="radio" name="chk_info" value="행사 기획자"> 행사 기획자&nbsp
							<br/>
							<input type="radio" name="chk_info" value="광고 대행사"> 광고 대행사&nbsp
						</div>
				
							<div class="form-group joinForm-addr">
							<label for="addr" class="col-sm-4 control-label"> 활동지역 </label>
							<div class="col-sm-8">
								<select id="mem_state" name="mem_state" class="form-control" placeholder="">
									<option>서울특별시</option>
									<option>인천광별시</option>
									<option>경기도</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-4 control-label"> 메뉴 </label>
							<div class="col-sm-8">
								<input id="mem_point" type="checkbox">먹을거리 &nbsp
								<input id="mem_point" type="checkbox">마실거리 &nbsp
								<input id="mem_point" type="checkbox">즐길거리 &nbsp
							</div>
						</div>
						<div class="form-group joinForm-addr">
							<label for="addr" class="col-sm-4 control-label"> 등록증 </label>
							<div class="col-sm-8">
								<input id="" type="checkbox">위생교육증 &nbsp
								<input id="" type="checkbox">보건증 &nbsp
								<input id="" type="checkbox">구조변경허가증 &nbsp
								<br/>
								<input id="" type="checkbox">LPG 승인서 &nbsp
							</div>
						</div>
					</div><!-- panel body -->
					<div class="panel-footer">
						<div class="form-group" style="padding-top: 10px">
							<div class="col-sm-offset-3 col-sm-6">
								<input type="submit" class="btn btn-lg btn-primary btn-block" value="회원정보수정" />
							</div>
						</div>						
					</div>
				</div>
			</form>	
		</div>
</div>
<!-- Footer -->
</body>

</body>
</html>