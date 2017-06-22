<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>광고 대행</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="/YogoYogo/js/adver/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/YogoYogo/js/adver/font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="/YogoYogo/js/adver/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="/YogoYogo/js/adver/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">

<div class="page-header">
    <h1>광고대행 <small>푸드트럭 광고협찬</small></h1>
</div>
<!-- Featured Items - START -->
  <div class="container">
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
<!--             <div class="col-md-4"> -->
<!--                 <div> -->
<!--                     <img src="http://www.prepbootstrap.com/Content/images/template/featureditems/product_002.jpg" alt="" class="img-rounded img-thumbnail"/> -->
<!--                     <h2>Item A</h2> -->
<!--                     <p style="text-align: left;"> -->
<!--                         <span class="fa fa-info-circle"></span> -->
<!--                         A quality item for purchase. Features state of the art technology -->
<!--                     </p> -->
<!--                     <p style="text-align: left;"> -->
<!--                         <span class="fa fa-bank "></span> -->
<!--                         0% Financing available -->
<!--                     </p> -->
<!--                     <p style="text-align: left;"> -->
<!--                         <span class="fa fa-calendar "></span> -->
<!--                         21 months full warranty -->
<!--                     </p> -->
<!--                     <a href="#" class="btn btn-success" title="More">more »</a> -->
<!--                 </div> -->
<!--             </div> -->
            
<!--             <div class="col-md-4"> -->
<!--                 <div> -->
<!--                     <img src="http://www.prepbootstrap.com/Content/images/template/featureditems/product_003.jpg" alt="" class="img-rounded img-thumbnail"/> -->
<!--                     <h2>Item A</h2> -->
<!--                     <p style="text-align: left;"> -->
<!--                         <span class="fa fa-info-circle"></span> -->
<!--                         A quality item for purchase. Features state of the art technology -->
<!--                     </p> -->
<!--                     <p style="text-align: left;"> -->
<!--                         <span class="fa fa-bank "></span> -->
<!--                         0% Financing available -->
<!--                     </p> -->
<!--                     <p style="text-align: left;"> -->
<!--                         <span class="fa fa-calendar "></span> -->
<!--                         4 months full warranty -->
<!--                     </p> -->
<!--                     <a href="#" class="btn btn-success" title="More">more »</a> -->
<!--                 </div> -->
<!--             </div> -->
            
        </div>
    </div>

<style>
.style_featured{
    padding: 20px 0;
    text-align: center;
}
.style_featured > div > div{
    padding: 10px;
    border: 1px solid transparent;
    border-radius: 4px;
    transition: 0.5s;
}
.style_featured > div:hover > div{
    margin-top: +19px;
    border: 1px solid rgb(153, 200, 250);
    box-shadow: rgba(0, 0, 0, 0.1) 0px 9px 9px 9px;
    background: rgba(153, 200, 250, 0.1);
    transition: 0.99s;
}
</style>

<!-- Featured Items - END -->

</div>

</body>
</html>