<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
	 <!DOCTYPE html>
<html>
	 <head>
<title>Insert title here</title>
<style type="text/css">
	.container{
		margin: 50px auto;
	}
</style>
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->
<!-- <link rel="stylesheet" href="/yogoyogo4/css/qna/qna.css"> -->
<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
<!-- <script -->
<!-- 	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
</head>
<div class="body">
	<div class="container">
		<div class="row">
		 <h1>Q&A</h1> 
		 <div class="col-md-2 col-md-offset-10">
            <form action="" class="search-form">
                <div class="form-group has-feedback">
            		<label for="search" class="sr-only">Search</label>
            		<input type="text" class="form-control" name="search" id="search" placeholder="search">
              		<span class="glyphicon glyphicon-search form-control-feedback"></span>
            	</div>
            </form>
        </div>
		</div><!-- row end -->
			<div class="col-md-12">
				<div class="table-responsive">
						
					<table class="table table-hover">
						<thead>
							<tr>
								<th>NO</th>
								<th>제목</th>
								<th>글쓴이</th>
								<th>작성시간</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${listModel }" var="list">
							<tr>
								<td>${list.board_num }</td>
								<td><a href="qnadetail.do?board_num=${list.board_num }">${list.board_title }</a></td>
								<td>${list.mem_nick }</td>
								<td>${list.board_time }</td>
								<td>${list.board_count }</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12">
					<div class="col-md-offset-11">
						<a href="qnaForm.do"><h4>글쓰기</h4></a>
					</div>
					<div class="col-md-4 col-md-offset-4">
					<div class="clearfix"></div>
					<ul class="pagination pull-right">
						<li class="disabled"><a href="#"><span
								class="glyphicon glyphicon-chevron-left"></span></a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#"><span
								class="glyphicon glyphicon-chevron-right"></span></a></li>
					</ul>
					</div>
					
					</div>
				</div>

			</div><!-- col-md-12 end -->
		</div><!-- container end -->
</div>
</html>