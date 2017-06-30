<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="/YogoYogo/css/mypage/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<script src="/YogoYogo/css/mypage/js/jquery-2.1.1.min.js"></script> 
<link href="/YogoYogo/css/mypage/css/font-awesome.css" rel="stylesheet"> 
<script src="/YogoYogo/css/mypage/js/Chart.min.js"></script>
<script src="/YogoYogo/css/mypage/js/chartinator.js" ></script>
<script src="/YogoYogo/css/mypage/js/skycons.js"></script>
<script type="text/javascript">
	$(function(){
		var reason;
		$(".reasonDetail").click(function(){
			var index = $(".reasonDetail").index(this);
			reason = $(".reason").eq(index).val();
			$("#hear").text(reason);
		});
	});

</script>
</head>
	<body>	
		<div class="work-progres">
			<div class="chit-chat-heading">
	      		Recent Followers
			</div>
			<br/><br/><br/><br/>
			<div class="table-responsive">
        		<table class="table table-hover table-bordered table-responsive">
		  			<thead>
						<tr>
			    			<th>#</th>
			    			<th>광고업체</th>
						    <th>제목</th>                                   
					  	    <th>상태</th>
			                <th>메시지</th>
		    			</tr>
					</thead>
					<tbody>
						<c:forEach varStatus="status" items="${list}" var="list" >
		    			<tr>
							<td>${status.count }</td>
							<td>${list.mem_nick}</td>
							<td><a href="advDetail.do?adv_num=${list.adv_num}">${list.adv_title }</a></td>                                 
		        			<td>
		            			<c:choose>
		        				<c:when test="${list.advconf_state == '대기중' }">
		            			<span class="label label-success">${list.advconf_state}</span>
		            			</c:when>
		            			<c:when test="${list.advconf_state == '승인' }">
		            			<span class="label label-info">${list.advconf_state}</span>
		            			</c:when>
		            			<c:otherwise>
		            			<span class="label label-danger">${list.advconf_state}</span>
		            			</c:otherwise>
		            		</c:choose>
		            			<input type="hidden" class="reason" value="${list.advconf_reason}"/>
		       				</td>
		        			<td>
		            			<span class="badge badge-info"><a style="color:white;" href="" data-toggle="modal" class="reasonDetail dedetail" data-target="#reasonDetail">상세보기</a></span>
		        			</td>
		    			</tr>
		    			</c:forEach>
        			</tbody>
				</table>
		     </div>
		     <br/><br/><br/><br/>
		</div>
		
		<div class="modal fade" id="reasonDetail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">메시지</h4>
      </div>
      <div class="modal-body">
      		<div id="hear"></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" id="refuse_OK">확인</button>
      </div>
    </div>
  </div></div>  
	</body>
</html>                     