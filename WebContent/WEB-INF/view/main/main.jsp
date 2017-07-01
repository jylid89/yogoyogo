<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!--         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->
     <!-- Add this css File in head tag-->
<!--         <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" media="all"> -->
<!--         <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css" rel="stylesheet" media="all"> -->
    <!-- 합쳐지고 최소화된 최신 CSS -->
<!--         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->

    <!-- 부가적인 테마 -->
<!--         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!--         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
        
        <link rel="stylesheet" type="text/css" href="/YogoYogo/css/style.css">
        <link rel="javascript" type="text/javascript" href="/YogoYogo/js/index.js">
<div class="body">
        <div id="bootstrap-touch-slider" class="carousel bs-slider fade  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="5000" >

            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#bootstrap-touch-slider" data-slide-to="0" class="active"></li>
                <li data-target="#bootstrap-touch-slider" data-slide-to="1"></li>
                <li data-target="#bootstrap-touch-slider" data-slide-to="2"></li>
                <li data-target="#bootstrap-touch-slider" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper For Slides -->
            <div class="carousel-inner" role="listbox">

                <!-- Third Slide -->
                <div class="item active">

                    <!-- Slide Background -->
                    <img src="/YogoYogo/images/main/img1.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>

                    <div class="container">
                        <div class="row">
                            <!-- Slide Text Layer -->
                            <div class="slide-text slide_style_left">
                                <h1 data-animation="animated zoomInRight">푸드트럭</h1>
                                <p data-animation="animated fadeInLeft">푸드트럭의 위치 및 메뉴를 확인 하실 수 있습니다.</p>
                                <a href="foodtruckList.do" target="_blank"  class="btn btn-primary" data-animation="animated fadeInRight">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End of Slide -->

                <!-- Second Slide -->
                <div class="item">
                    <!-- Slide Background -->
                    <img src="/YogoYogo/images/main/img2.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>
                    <!-- Slide Text Layer -->
                    <div class="slide-text slide_style_center">
                        <h1 data-animation="animated flipInX">행사목록</h1>
                        <p data-animation="animated lightSpeedIn">현재 진행중인 행사를 확인 할 수 있습니다.</p>
                        <a href="http://bootstrapthemes.co/" target="_blank"  class="btn btn-primary" data-animation="animated fadeInRight">자세히 보기</a>
                    </div>
                </div>
                <!-- End of Slide -->

                <!-- Third Slide -->
                <div class="item">

                    <!-- Slide Background -->
                    <img src="/YogoYogo/images/main/img3.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>
                    <!-- Slide Text Layer -->
                    <div class="slide-text slide_style_right">
                        <h1 data-animation="animated zoomInLeft">케이터링</h1>
                        <p data-animation="animated fadeInRight">케이터링 메뉴 및 신청을 할 수 있습니다.</p>
                        <a href="catelist.do" target="_blank" class="btn btn-primary" data-animation="animated fadeInRight">자세히 보기</a>
                    </div>
                </div>
                <!-- End of Slide -->

				<!-- Fourth Slide -->
                <div class="item">

                    <!-- Slide Background -->
                    <img src="/YogoYogo/images/main/img4.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>
                    <!-- Slide Text Layer -->
                    <div class="slide-text slide_style_right">
                        <h1 data-animation="animated zoomInLeft">광고신청</h1>
                        <p data-animation="animated fadeInRight">푸드트럭에 달 수 있는 광고를 확인 할 수 있습니다.</p>
                        <a href="adverList.do" target="_blank" class="btn btn-primary" data-animation="animated fadeInRight">자세히 보기</a>
                    </div>
                </div>
                <!-- End of Slide -->
                
            </div><!-- End of Wrapper For Slides -->

            <!-- Left Control -->
            <a class="left carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="prev">
                <span class="fa fa-angle-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>

            <!-- Right Control -->
          
            <!-- Right Control -->
            <a class="right carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next">
                <span class="fa fa-angle-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div> <!-- End  bootstrap-touch-slider Slider -->
        
    <div class="Container">
	</div>
    <div class="mainContainer">
        <h3 class="truckTitle"><a href="foodtruckList.do">트럭리스트</a></h3>
        <div class="truckList">
            <div class="row">
            	<c:forEach varStatus="status" items="${list}" var="a" >
                <div class="col-sm-2 truckListItem">
                    <a href="foodtruckDetail.do?truck_num=${a.truck_num}"> <img
									src="${a.truck_picreal1}"
									class="img-circle img-responsive img-border center-block"
									alt="Vege 4 Love">
								</a>
                    <a href="foodtruckDetail.do?truck_num=${a.truck_num}">${a.truck_name}</a>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
   
</div>
