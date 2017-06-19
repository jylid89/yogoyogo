<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/qna/qna.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

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
							<tr tabindex="1">
								<td>1</td>
								<td>케이터링 문의</td>
								<td>김상준</td>
								<td>5시간전</td>
								<td>5</td>
							</tr>
							<tr tabindex="2">
								<td>2</td>
								<td>푸드트럭 문의</td>
								<td>김상준</td>
								<td>4시간전</td>
								<td>22</td>
							</tr>
							<tr tabindex="3">
								<td>3</td>
								<td>커뮤니티 문의</td>
								<td>김상준</td>
								<td>3시간전</td>
								<td>11</td>
							</tr>
							<tr tabindex="4">
								<td>4</td>
								<td>행사 문의</td>
								<td>김상준</td>
								<td>2시간전</td>
								<td>44</td>
							</tr>
							<tr tabindex="5">
								<td>5</td>
								<td>행사지역 문의</td>
								<td>김상준</td>
								<td>1시간전</td>
								<td>55</td>
							</tr>
						</tbody>
					</table>
					<div class="col-md-12">
					<div class="col-md-offset-11">
						<a href="#"><h4>글쓰기</h4></a>
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
</body>
</html>