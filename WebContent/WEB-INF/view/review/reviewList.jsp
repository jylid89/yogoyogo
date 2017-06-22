<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰 글 보기</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="/YogoYogo/css/review/review.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	
	$(function(){
		
		//글쓰기 버튼 클릭시 페이지 이동 
		$("#revInsert").click(function(){
			$(location).attr('href', 'reviewform.do');
		});
	});

</script>
</head>
<body>
<div class="container">
  
  
  <div class="row">
    <div class="col-lg-12">
      <h2 class="text-center">리뷰 남기기</h2>
      <p>
        
      </p>
      <ul class="timeline">
      
      <c:forEach varStatus="status" items="${list}" var="list" >
        <c:choose>
	        <c:when test="${status.count % 2 == 0 }">
	        	<li class="timeline-inverted">
	        </c:when>
	        <c:otherwise>
	        <li>
	        </c:otherwise>
        </c:choose>
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="http://lorempixel.com/250/250/cats/1" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4 class="subheading">${list.mem_nick}</h4>
              <h4>${list.rev_title}</h4>
            </div>
            <div class="timeline-body">
              <p class="text-muted">
               ${list.rev_content } / ${list.rev_date }
              </p>
            </div>
          </div>
          <div class="line"></div>
        </li>
        </c:forEach>
      </ul>
      <input type="button" class="btn" id="revInsert" name="revInsert" value="글쓰기"/>
    </div>
  </div>
</div>
</body>
</html>