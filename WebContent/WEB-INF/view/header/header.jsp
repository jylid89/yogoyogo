<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String mem_name = (String)session.getAttribute("mem_name");
%>
<!DOCTYPE html>
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	
	$(function(){
		
		$("#login").show();
		$("#logout").hide();
		$("#logMsg").hide();
		if($("#mem_name").val() != "null"){
			$("#logout").show();
			$("#login").hide();
			$("#logMsg").show();
			
		}else{
			$("#login").show();
			$("#logout").hide();
			$("#logMsg").hide();
		}
	});

</script>    
</head>
<div class="header" >
<nav class="navbar-default" role="navigation">
<!--   <div class="container"> -->
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-slide-dropdown">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

    <div class="collapse navbar-collapse" id="bs-slide-dropdown">
        <ul class="nav navbar-nav ">
            <li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown">푸드트럭 <span class="caret"></span></a>				
			  <ul class="dropdown-menu" role="menu">
                <li><a href="foodtruckList.do">푸드트럭 목록</a></li>
                <li><a href="#">타임라인</a></li>
                <li><a href="#">리뷰</a></li>
              </ul>                
            </li>
        	
        	<li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown">행사<span class="caret"></span></a>				
			  <ul class="dropdown-menu" role="menu">
                <li><a href="#">행사목록</a></li>
                <li><a href="#">행사지도</a></li>
              </ul>                
            </li>
        	<li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown">케이터링<span class="caret"></span></a>				
			  <ul class="dropdown-menu" role="menu">
                <li><a href="catelist.do">케이터링 신청</a></li>
                <li><a href="catelist.do">견적문의</a></li>
              </ul>                
            </li>
        	<li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown">서비스<span class="caret"></span></a>				
			  <ul class="dropdown-menu" role="menu">
                <li><a href="#">서비스 이용방법</a></li>
                <li><a href="adverList.do">광고대행</a></li>
              </ul>                
            </li>
            <li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown">커뮤니티 <span class="caret"></span></a>				
			  <ul class="dropdown-menu" role="menu">
			  	<li><a href="#">뉴스</a></li>
                <li><a href="#">공지사항</a></li>
                <li><a href="freeboard.do">자유게시판</a></li>
                <li><a href="qnaList.do">Q&A</a></li>
              </ul>                
                <input type="hidden" value="<%=mem_name %>" id="mem_name" />
            </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="loginView.do" id="login">로그인</a>
            <li><a href="logOut.do" id="logout">로그아웃</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
        	<li><a id="logMsg"><%=mem_name %>님, 환영합니다.</a></li>
        </ul>
            
    </div><!-- /.navbar-collapse -->
<!--   </div> -->
  <!-- /.container-fluid -->
</nav>
</div>
</html>