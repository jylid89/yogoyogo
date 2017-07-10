<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>자유게시판 상세</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="/YogoYogo/css/freeboard/freeboard.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="">
				<div class="one-post">
					<!--Post Description-->
					<div class="bd-radius">
						<div class="post-post-content postMetaInline-media" style="">
							<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 pd">
								<div class="media">
									<div class="media-left">
										<a href="#"> <img
											src="/YogoYogo/images/freeboard/businessman.png"
											class="media-object" alt="Sample Image">
										</a>
									</div>
									<div class="media-body">
										<h4 class="media-heading mg mg-t-5">
											<span>${freeVO.mem_nick}</span>
										</h4>
										<input type="hidden" value="${freeVO.board_num}" name="board_num">
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 pd">
								<ul class="nav list-unstyled">
								</ul>
							</div>
							<div class="clearfix"></div>
						</div>

						<div class="pd-b-10 pd-t-10 pd-r-15 pd-l-15"
							style="padding: 10px 35px 35px 35px; max-height: 500px; position: relative; overflow: block;">
							<h4 class="mg mg-t-5 mg-b-5 posttitle-font"></h4>
							<h3>${freeVO.board_title}</h3>
							<div class="mg postdesc-font"
								style="-webkit-transition: top 1s; -moz-transition: top 1s; -o-transition: top 1s; transition: top 1s; margin: 15px">
								${freeVO.board_content}</div>
							<a href="freeModify.do?board_num=${freeVO.board_num}" style="text-decoration: none; display: inline-block; float: right; padding: 10px; margin: 5px; color: white; background-color: orange"><div class="freeModify">수정</div></a>
							<a href="freeDelete.do?board_num=${freeVO.board_num}" style="text-decoration: none; display: inline-block; float: right; padding: 10px; margin: 5px; color: white; background-color: orange"><div class="freeDelete">삭제</div></a>
						</div>
						<div class="post-post-content postMetaInline-media" style="border-bottom: none">
							<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 pd">
								<div class="nav list-unstyled"></div>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 pd">
								<ul class="nav list-unstyled">
									<li></li>
								</ul>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
