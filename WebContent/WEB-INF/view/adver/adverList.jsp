<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <meta charset="utf-8" />
    <title>광고 대행</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="/YogoYogo/js/adver/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/YogoYogo/js/adver/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="/YogoYogo/css/adver/adverList.css" />

    <script type="text/javascript" src="/YogoYogo/js/adver/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="/YogoYogo/js/adver/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="/YogoYogo/js/adver/adverList.js"></script>
<div class="body">
<div class="container">
<div class="page-header">
    <h1>광고대행 <small>푸드트럭 광고협찬</small></h1>
</div>
<!-- Featured Items - START -->
  <div class="container">
  <input type="button" class="btn" id="btnInsert" value="글쓰기" />
        <div class="row style_featured">
        
        <c:forEach varStatus="status" items="${list}" var="list" >
            <div class="col-md-4">
                <div>
                    <form method="post" id="frm" name="frm" action="advDetail.do">
                    <img src="http://www.prepbootstrap.com/Content/images/template/featureditems/product_001.jpg" alt="" class="img-rounded img-thumbnail" />
                    <h2>${list.mem_nick}</h2>
                    <p style="text-align: center;">
                        ${list.adv_title}
                    </p>
                    	<input type="hidden" name="adv_num" value="${list.adv_num }" />
                    	<input type="submit" class="btn btn-success" title="More" value="상세보기"/>
                    </form>
                </div>
            </div>
            
            </c:forEach>
        </div>
    </div>
</div>
</div>
