<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>케이터링 신청현황 리스트(사용자)</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="/YogoYogo/css/mypage/catAppStatus_user.css">
</head>
<body>
<br/><br/>
<div class="container">
	<div class="row">
		<c:forEach varStatus="status" items="${list}" var="list" >
		<div class="row"> 
                    <div class="col-xs-12 col-sm-3 col-md-3">
                        <a href="#">
                            <img src="http://wanderluxe.theluxenomad.com/wp-content/uploads/2014/10/http-www.urchinbali.comgallery.jpg" class="img-responsive img-box img-thumbnail"> 
                        </a>
                    </div> 
                    <div class="col-xs-12 col-sm-9 col-md-9">
                        <div class="list-group">
                            <div class="list-group-item">
                                <div class="row-content">
                                    <div class="list-group-item-heading">
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
                        			<td><input class='btn' type='button' value='${list.cate_state}'></td>
                        		</tr>
                        </table>
                    </div> 
                </div>
                <hr>
         </c:forEach>
	</div>
</div>
</body>
</html>