<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%
    	String mem_id = (String)session.getAttribute("mem_id");
    %>
<!DOCTYPE html>
<html class="no-js">
    <head>
        <!-- Basic Page Needs
        ================================================== -->
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="icon" type="image/png" href="images/favicon.png">
        <title>Timer Agency Template</title>
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <!-- Mobile Specific Metas
        ================================================== -->
        <meta name="format-detection" content="telephone=no">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- Template CSS Files
        ================================================== -->
        <link rel="stylesheet" href="css/mypage/bootstrap.min.css">
        <!-- Ionicons Fonts Css -->
        <link rel="stylesheet" href="css/mypage/ionicons.min.css">
        <!-- animate css -->
        <link rel="stylesheet" href="css/mypage/animate.css">
        <!-- Hero area slider css-->
        <link rel="stylesheet" href="css/mypage/slider.css">
        <!-- owl craousel css -->
        <link rel="stylesheet" href="css/mypage/owl.carousel.css">
        <link rel="stylesheet" href="css/mypage/owl.theme.css">
        <link rel="stylesheet" href="css/mypage/jquery.fancybox.css">
        <!-- template main css file -->
        <link rel="stylesheet" href="css/mypage/main.css">
        <!-- responsive css -->
        <link rel="stylesheet" href="css/mypage/responsive.css">
        
        <!-- Template Javascript Files
        ================================================== -->
        <!-- modernizr js -->
        <script src="js/mypage/modernizr-2.6.2.min.js"></script>
        <!-- jquery -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <!-- owl carouserl js -->
        <script src="js/mypage/owl.carousel.min.js"></script>
        <!-- bootstrap js -->

        <script src="js/mypage/bootstrap.min.js"></script>
        <!-- wow js -->
        <script src="js/mypage/wow.min.js"></script>
        <!-- slider js -->
        <script src="js/mypage/slider.js"></script>
        <script src="js/mypage/jquery.fancybox.js"></script>
        <!-- template main js -->
        <script src="js/mypage/main.js"></script>
    </head>
        <body>
            <section id="works" class="works">
                <div class="container">
                    <div class="section-heading">
                        <h1 class="title wow fadeInDown" data-wow-delay=".3s">광고 승인목록</h1>
                    </div>
                    
                    <div class="row">
                     <c:forEach varStatus="status" items="${list}" var="list" >
                        <div class="col-sm-4 col-xs-12">
                            <figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
                                <div class="img-wrapper">
                                    <img src="images/foodtruck/1.jpg" class="img-responsive" >
                                </div>
                                <figcaption>
                                <h4>
                                <a href="foodtruckDetail.do?truck_num=${list.truck_num}">
                                    ${list.truck_name}
                                </a>
                                </h4>
                                </figcaption>
                            </figure>
                        </div>
       						<input type="hidden" value="${list.adv_num}" name="adv_num" id="adv_num"/>
                    </c:forEach>

<!--                         <div class="col-sm-4 col-xs-12"> -->
<!--                             <figure class="wow fadeInLeft animated" data-wow-duration="500ms" data-wow-delay="300ms"> -->
<!--                                 <div class="img-wrapper"> -->
<!--                                     <img src="images/foodtruck/2.jpg" class="img-responsive" alt="this is a title" > -->
<!--                                     <div class="overlay"> -->
<!--                                         <div class="buttons"> -->
<!--                                             <a rel="gallery" class="fancybox" href="images/portfolio/item-2.jpg">승인</a> -->
<!--                                             <a target="_blank" href="single-portfolio.html">취소</a> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <figcaption> -->
<!--                                 <h4> -->
<!--                                 <a href="#"> -->
<!--                                     봉고봉고 -->
<!--                                 </a> -->
<!--                                 </h4> -->
<!--                                 <p> -->
<!--                                      닭강정 : W5,000 / 핫도그 : W3,000 -->
<!--                                 </p> -->
<!--                                 </figcaption> -->
<!--                             </figure> -->
<!--                         </div> -->
                        
<!--                         <div class="col-sm-4 col-xs-12"> -->
<!--                             <figure class="wow fadeInLeft animated" data-wow-duration="500ms" data-wow-delay="300ms"> -->
<!--                                 <div class="img-wrapper"> -->
<!--                                     <img src="images/foodtruck/3.jpg" class="img-responsive" alt="" > -->
<!--                                     <div class="overlay"> -->
<!--                                         <div class="buttons"> -->
<!--                                             <a rel="gallery" class="fancybox" href="images/portfolio/item-3.jpg">승인</a> -->
<!--                                             <a target="_blank" href="single-portfolio.html">취소</a> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <figcaption> -->
<!--                                 <h4> -->
<!--                                 <a href="#"> -->
<!--                                    피자핏짜 -->
<!--                                 </a> -->
<!--                                 </h4> -->
<!--                                 <p> -->
<!--                                     페퍼로니 : W15,000 -->
<!--                                 </p> -->
<!--                                 </figcaption> -->
<!--                             </figure> -->
<!--                         </div> -->
<!--                         <div class="col-sm-4 col-xs-12"> -->
<!--                             <figure class="wow fadeInLeft animated" data-wow-duration="500ms" data-wow-delay="600ms"> -->
<!--                                 <div class="img-wrapper"> -->
<!--                                     <img src="images/foodtruck/4.jpg" class="img-responsive" alt="" > -->
<!--                                     <div class="overlay"> -->
<!--                                         <div class="buttons"> -->
<!--                                             <a rel="gallery" class="fancybox" href="images/portfolio/item-4.jpg">승인</a> -->
<!--                                             <a target="_blank" href="single-portfolio.html">취소</a> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <figcaption> -->
<!--                                 <h4> -->
<!--                                 <a href="#"> -->
<!--                                     현진이네 포장마차 -->
<!--                                 </a> -->
<!--                                 </h4> -->
<!--                                 <p> -->
<!--                                     산낙지 : W15,000 / 쭈꾸미 : W12,000 -->
<!--                                 </p> -->
<!--                                 </figcaption> -->
<!--                             </figure> -->
<!--                         </div> -->
<!--                         <div class="col-sm-4 col-xs-12"> -->
<!--                             <figure class="wow fadeInLeft animated" data-wow-duration="500ms" data-wow-delay="900ms"> -->
<!--                                 <div class="img-wrapper"> -->
<!--                                     <img src="images/foodtruck/5.jpg" class="img-responsive" alt="" > -->
<!--                                     <div class="overlay"> -->
<!--                                         <div class="buttons"> -->
<!--                                             <a rel="gallery" class="fancybox" href="images/portfolio/item-5.jpg">승인</a> -->
<!--                                             <a target="_blank" href="single-portfolio.html">취소</a> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <figcaption> -->
<!--                                 <h4> -->
<!--                                 <a href="#"> -->
<!--                                     상준이네 치킨 -->
<!--                                 </a> -->
<!--                                 </h4> -->
<!--                                 <p> -->
<!--                                     후라이드 : W15,000 / 양념 : W17,000  -->
<!--                                 </p> -->
<!--                                 </figcaption> -->
<!--                             </figure> -->
<!--                         </div> -->
<!--                         <div class="col-sm-4 col-xs-12"> -->
<!--                             <figure class="wow fadeInLeft animated" data-wow-duration="500ms" data-wow-delay="1200ms"> -->
<!--                                 <div class="img-wrapper"> -->
<!--                                     <img src="images/foodtruck/6.jpg" class="img-responsive" alt="" > -->
<!--                                     <div class="overlay"> -->
<!--                                         <div class="buttons"> -->
<!--                                             <a rel="gallery" class="fancybox" href="images/portfolio/item-6.jpg">승인</a> -->
<!--                                             <a target="_blank" href="single-portfolio.html">취소</a> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <figcaption> -->
<!--                                 <h4> -->
<!--                                 <a href="#"> -->
<!--                                     커피커핑 -->
<!--                                 </a> -->
<!--                                 </h4> -->
<!--                                 <p> -->
<!--                                     아메리카노 : W3,000 / 라뗴 : W3,500 -->
<!--                                 </p> -->
<!--                                 </figcaption> -->
<!--                             </figure> -->
<!--                         </div> -->
                    </div>
                </div>
            </section> <!-- #works -->
        </body>
    </html>