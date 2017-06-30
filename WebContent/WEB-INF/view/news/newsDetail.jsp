<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="/YogoYogoo/assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	
	<body>
			<!-- Main -->
			<div>
					<div id="main" class="container">
						
						<div class="row 200%">
							<div class="12u">

								<!-- Blog -->
									<section class="box blog">
										<div>
											<div class="row">
												<div class="9u 12u(mobile)">
													<div class="content content-left">

															<article class="box post">
																<header>
																	<h3>${vo.board_title }</h3>
																	<ul class="meta">
																		<li class="icon fa-clock-o">${vo.board_count } views</li>
																	</ul>
																</header>
																<a href="#" class="image featured"><img src="${vo.board_picreal }" alt="" /></a>
																<p>
																	${vo.board_content}
																</p>
															</article>

													</div>
												</div>
												<div class="3u 12u(mobile)">
													<div class="sidebar">

														<!-- Archives -->
															<ul class="divided">
															<c:forEach varStatus="status" items="${list}" var="list" >
																<li>
																	<article class="box post-summary">
																		<h3><a href="newsDetail.do?board_num=${list.board_num}">${list.board_title}</a></h3>
																		<ul class="meta">
																			<li class="icon fa-clock-o">${list.board_count } views</li>
																		</ul>
																	</article>
																</li>
																</c:forEach>
															</ul>
													</div>
												</div>
											</div>
										</div>
									</section>
							</div>
						</div>
					</div>
</div>
		<!-- Scripts -->
<!-- 			<script src="/YogoYogoo/assets/js/jquery.min.js"></script> -->
<!-- 			<script src="/YogoYogoo/assets/js/jquery.dropotron.min.js"></script> -->
<!-- 			<script src="/YogoYogoo/assets/js/skel.min.js"></script> -->
<!-- 			<script src="/YogoYogoo/assets/js/skel-viewport.min.js"></script> -->
<!-- 			<script src="/YogoYogoo/assets/js/util.js"></script> -->
<!-- 			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]--> -->
<!-- 			<script src="assets/js/main.js"></script> -->

	</body>
</html>