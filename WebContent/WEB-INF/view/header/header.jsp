<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
    function init() {
        window.addEventListener('scroll', function(e){
            var distanceY = window.pageYOffset || document.documentElement.scrollTop,
                shrinkOn = 300,
                header = document.querySelector("header");
            if (distanceY > shrinkOn) {
                classie.add(header,"smaller");
            } else {
                if (classie.has(header,"smaller")) {
                    classie.remove(header,"smaller");
                }
            }
        });
    }
    window.onload = init();
</script>

<link rel="stylesheet" type="text/css" href="css/header/header.css">
<link rel="javascript" type="text/javascript" href="js/header/header.js">
<header>
    <div class="container clearfix">
        <h1 id="logo">
            LOGO
        </h1>
        <nav>
            <a href="">푸드트럭</a>
            <a href="">행사리스트</a>
            <a href="">케이터링</a>
            <a href="">커뮤니티</a>
            <a href="">서비스</a>
        </nav>
    </div>
</header><!-- /header -->