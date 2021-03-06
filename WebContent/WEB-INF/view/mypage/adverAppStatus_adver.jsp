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
<!--         <link rel="stylesheet" href="css/mypage/bootstrap.min.css"> -->
        <!-- Ionicons Fonts Css -->
        <link rel="stylesheet" href="/YogoYogo/css/mypage/ionicons.min.css">
        <!-- animate css -->
        <link rel="stylesheet" href="/YogoYogo/css/mypage/animate.css">
        <!-- Hero area slider css-->
        <link rel="stylesheet" href="/YogoYogo/css/mypage/slider.css">
        <!-- owl craousel css -->
        <link rel="stylesheet" href="/YogoYogo/css/mypage/owl.carousel.css">
        <link rel="stylesheet" href="/YogoYogo/css/mypage/owl.theme.css">
        <link rel="stylesheet" href="/YogoYogo/css/mypage/jquery.fancybox.css">
        <!-- template main css file -->
        <link rel="stylesheet" href="/YogoYogo/css/mypage/main.css">
        <!-- responsive css -->
<!--         <link rel="stylesheet" href="/YogoYogo/css/mypage/responsive.css"> -->
        
        <!-- Template Javascript Files
        ================================================== -->
        <!-- modernizr js -->
        <script src="/YogoYogo/js/mypage/modernizr-2.6.2.min.js"></script>
        <!-- jquery -->
<!--         <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> -->
        <!-- owl carouserl js -->
        <script src="/YogoYogo/js/mypage/owl.carousel.min.js"></script>
        <!-- bootstrap js -->

<!--         <script src="js/mypage/bootstrap.min.js"></script> -->
        <!-- wow js -->
        <script src="/YogoYogo/js/mypage/wow.min.js"></script>
        <!-- slider js -->
        <script src="/YogoYogo/js/mypage/slider.js"></script>
        <script src="/YogoYogo/js/mypage/jquery.fancybox.js"></script>
        <!-- template main js -->
        <script src="/YogoYogo/js/mypage/main.js"></script>
<!--         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
		<script type="text/javascript">
		
			$(function(){
				
				var truck_num;
				
				$(".reduOK").click(function(){
					var index = $(".reduOK").index(this);
					truck_num = $(".truck_num").eq(index).val(); 
				})
				
				$(".adOK").click(function(){
					var index = $(".adOK").index(this);
					truck_num = $(".truck_num").eq(index).val(); 
					
				});
			
				
				$("#refuse_OK").click(function(){
// 					$(".flag").val("거절");
					$("#truck_num").val(truck_num);
					$("#adv_num").val($(".adv_num").val());
					$("#reForm").attr("action","advRefuseUpdate.do").submit();
				});
				
				$("#ack_OK").click(function(){
// 					$(".flag").val("승인")
					$("#adv_num2").val($(".adv_num").val());	
					$("#truck_num2").val($(".truck_num").val());
					$("#adForm").attr("action","advAckUpdate.do").submit();
				});
			});
		</script>
    </head>
        <body>
        
            <section id="works" class="works">
                <div class="container">
                    <div class="section-heading">
                        <h1 class="title wow fadeInDown" data-wow-delay=".3s">광고 신청현황</h1>
                    </div>
                    <div class="row">
                     <c:forEach varStatus="status" items="${list}" var="list" >
                        <div class="col-sm-4 col-xs-12">
                            <figure class="wow fadeInLeft animated portfolio-item" data-wow-duration="500ms" data-wow-delay="0ms">
                                <div class="img-wrapper">
                                    <img src="${list.truck_picreal1 }" class="img-responsive" alt="this is a title" style="width:400px;">
                                    <div class="overlay">
                                        <div class="buttons">
                                            <a href="" data-toggle="modal" class="reduOK" data-target="#ModalCancel">거절</a>
                                            <a href="" target="_blank" class="adOK"  data-toggle="modal" data-target="#ModalOK"  >승인</a>
                                        </div>
                                    </div>
                                </div>
                                <figcaption>
                                <h4>
                                <a href="foodtruckDetail.do?truck_num=${list.truck_num}">
                                <input type="hidden" class="truck_num"  value="${list.truck_num}"/>
                                    ${list.truck_name}
                                </a>
                                </h4>
                                </figcaption>
                            </figure>
                        </div>
       						<input type="hidden" value="${list.adv_num}" class="adv_num"/>
                    </c:forEach>
                    
                    <!-- 거절Modal -->
<div class="modal fade" id="ModalCancel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">거절사유를 입력하여 주세요.</h4>
      </div>
      <div class="modal-body">
      
      <form id="reForm">
       		<textarea id="advconf_reason" name="advconf_reason" style="width:100%;border:1;overflow:visible;text-overflow:ellipsis;" rows=10></textarea>
     		<input type="hidden" name="truck_num" id="truck_num" />
     		<input type="hidden"  name="adv_num" id="adv_num"/>
<!-- 		  	<input type="hidden" name="flag" class="flag" /> -->
     </form>
     
      </div>
      <div class="modal-footer">
      	 <button type="button" class="btn btn-default" data-dismiss="modal" id="refuse_cancel">취소</button>
        <button type="button" class="btn btn-default" data-dismiss="modal" id="refuse_OK">확인</button>
      </div>
    </div>
  </div></div>  
  
  
				<!-- 승인Modal -->       	
       	<div class="modal fade" id="ModalOK" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">승인메시지를 남겨주세요.</h4>
      </div>
      <div class="modal-body">
       	<form id="adForm">
       		<textarea id="advconf_reason" name="advconf_reason" style="width:100%;border:1;overflow:visible;text-overflow:ellipsis;" rows=10></textarea>
       		<input type="hidden" id="adv_num2" name="adv_num" /> 
       		<input type="hidden" id="truck_num2" name="truck_num" />
<!--        		<input type="hidden" name="flag" class="flag"  /> -->
       	</form>
      </div>
      <div class="modal-footer">
      	 <button type="button" class="btn btn-default" data-dismiss="modal" id="ack_cancel">취소</button>
        <button type="button" class="btn btn-default" data-dismiss="modal" id="ack_OK">확인</button>
      </div>
    </div>
  </div></div>
                    </div>
                </div>
            </section> <!-- #works -->
        </body>
    </html>