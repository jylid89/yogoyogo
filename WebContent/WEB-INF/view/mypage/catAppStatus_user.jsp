<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>catAppStatus_user.jsp</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<style type="text/css">
.list-group {border-radius: 0;}
.list-group .list-group-item {background-color: transparent;overflow: hidden;border: 0;border-radius: 0;padding: 0 16px;}
.list-group .list-group-item .row-picture,
.list-group .list-group-item .row-action-primary {float: left;display: inline-block;padding-right: 16px;padding-top: 8px;}
.list-group .list-group-item .row-picture img,
.list-group .list-group-item .row-action-primary img,
.list-group .list-group-item .row-picture i,
.list-group .list-group-item .row-action-primary i,
.list-group .list-group-item .row-picture label,
.list-group .list-group-item .row-action-primary label {display: block;width: 56px;height: 56px;}
.list-group .list-group-item .row-picture img,
.list-group .list-group-item .row-action-primary img {background: rgba(0, 0, 0, 0.1);padding: 1px;}
.list-group .list-group-item .row-picture img.circle,
.list-group .list-group-item .row-action-primary img.circle {border-radius: 100%;}
.list-group .list-group-item .row-picture i,
.list-group .list-group-item .row-action-primary i {background: rgba(0, 0, 0, 0.25);border-radius: 100%;text-align: center;line-height: 56px;font-size: 20px;color: white;}
.list-group .list-group-item .row-picture label,
.list-group .list-group-item .row-action-primary label {margin-left: 7px;margin-right: -7px;margin-top: 5px;margin-bottom: -5px;}
.list-group .list-group-item .row-content {display: inline-block;width: calc(100% - 92px);min-height: 66px;}
.list-group .list-group-item .row-content .action-secondary {position: absolute;right: 16px;top: 16px;}
.list-group .list-group-item .row-content .action-secondary i {font-size: 20px;color: rgba(0, 0, 0, 0.25);cursor: pointer;}
.list-group .list-group-item .row-content .action-secondary ~ * {max-width: calc(100% - 30px);}
.list-group .list-group-item .row-content .least-content {position: absolute;right: 16px;top: 0px;color: rgba(0, 0, 0, 0.54);font-size: 14px;}
.list-group .list-group-item .list-group-item-heading {color: rgba(0, 0, 0, 0.77);font-size: 20px;line-height: 29px;}
.list-group .list-group-separator {clear: both;overflow: hidden;margin-top: 10px;margin-bottom: 10px;}
.list-group .list-group-separator:before {content: "";width: calc(100% - 90px);border-bottom: 1px solid rgba(0, 0, 0, 0.1);float: right;}

.bg-profile{background-color: #3498DB !important;height: 150px;z-index: 1;}
.bg-bottom{height: 100px;margin-left: 30px;}
.img-profile{display: inline-block !important;background-color: #fff;border-radius: 6px;margin-top: -50%;padding: 1px;vertical-align: bottom;border: 2px solid #fff;-moz-box-sizing: border-box;box-sizing: border-box;color: #fff;z-index: 2;}
.row-float{margin-top: -40px;}
.explore a {color: green; font-size: 13px;font-weight: 600}
.twitter a {color:#4099FF}
.img-box{box-shadow: 0 3px 6px rgba(0,0,0,.16),0 3px 6px rgba(0,0,0,.23);border-radius: 2px;border: 0;}
</style>

</head>
<body>
<br/><br/>
<div class="container">
	<div class="row">
		<div class="row"> 
                    <div class="col-xs-12 col-sm-3 col-md-3">
                        <a href="#">
                            <img src="http://wanderluxe.theluxenomad.com/wp-content/uploads/2014/10/http-www.urchinbali.comgallery.jpg" class="img-responsive img-box img-thumbnail"> 
                        </a>
                    </div> 
                    <div class="col-xs-12 col-sm-9 col-md-9">
                        <div class="list-group">
                            <div class="list-group-item">
                                <div class="row-picture">
                                    <a href="#" title="sintret">
                                        <img class="circle img-thumbnail img-box" src="http://sintret.com/img/andy.jpg" alt="sintret">
                                    </a>
                                </div>
                                <div class="row-content">
                                    <div class="list-group-item-heading">
                                        <a href="#" title="sintret">
                                            <small>푸드트럭이름</small>
                                        </a>
                                    </div>
                                    <small>
                                        <i class="glyphicon glyphicon-time"></i> 4일 전에 신청 <span class="twitter"> <i class="fa fa-twitter"></i></span>
                                        <br>
                                    </small>
                                </div>
                            </div>
                        </div>
                        <h4><a href="#">케이터링 신청한 제목</a></h4>
                        <table class='table table-hover ' style="text-align: center;">
                        	<thead>
                        		<tr>
                        			<th class='text-center'>날짜</th>
                        			<th class='text-center'>시간</th>
                        			<th class='text-center'>인원</th>
                        			<th class='text-center'>예산</th>
                        			<th class='text-center'>장소</th>
                        			<th class='text-center'>상태</th>
                        		</tr>
                        	</thead>
                        		<tr>
                        			<td>2017.06.17</td>
                        			<td>13:00-17:00</td>
                        			<td>100명</td>
                        			<td>100.000원</td>
                        			<td>부천시 원미구 상2동 주민센터</td>
                        			<td><input class='btn' type='button' value='대기중'></td>
                        		</tr>
                        </table>
                    </div> 
                </div>
                <hr>

                <div class="row"> 
                    <div class="col-xs-12 col-sm-3 col-md-3">
                        <a href="#">
                            <img src="http://wanderluxe.theluxenomad.com/wp-content/uploads/2014/09/http-barbacoabali.com_.jpg" class="img-responsive img-box img-thumbnail"> 
                        </a>
                    </div> 
                    <div class="col-xs-12 col-sm-9 col-md-9">
                        <div class="list-group">
                            <div class="list-group-item">
                                <div class="row-picture">
                                    <a href="#" title="sintret">
                                        <img class="circle img-thumbnail img-box" src="http://sintret.com/img/andy.jpg" alt="sintret">
                                    </a>
                                </div>
                                <div class="row-content">
                                    <div class="list-group-item-heading">
                                        <a href="#" title="sintret">
                                            <small>sintret</small>
                                        </a>
                                    </div>
                                    <small>
                                        <i class="glyphicon glyphicon-time"></i> 1 month ago via <span class="twitter"> <i class="fa fa-twitter"></i> <a target="_blank" href="https://twitter.com/sintret" alt="sintret" title="sintret">@sintret</a></span>
                                        <br>
                                        <span class="explore"><i class="glyphicon glyphicon-th"></i> <a href="#">Explore 9 places </a></span>
                                    </small>
                                </div>
                            </div>
                        </div>
                        <h4><a href="#">Top 8 Best Bali Restaurants - WanderLuxe Magazine</a></h4>
                        <p>We know that there’s tons to noms in Bali, but what’s the best and where are they? Here are our top 8 Seminyak Bali restaurants to visit.</p>
                    </div> 
                </div>
                <hr>


                <div class="row"> 
                    <div class="col-xs-12 col-sm-3 col-md-3">
                        <a href="#">
                            <img src="http://i.huffpost.com/gen/2038950/thumbs/s-BANGKOK-NOODLES-large.jpg" class="img-responsive img-box img-thumbnail"> 
                        </a>
                    </div> 
                    <div class="col-xs-12 col-sm-9 col-md-9">
                        <div class="list-group">
                            <div class="list-group-item">
                                <div class="row-picture">
                                    <a href="#" title="sintret">
                                        <img class="circle img-thumbnail img-box" src="http://sintret.com/img/andy.jpg" alt="sintret">
                                    </a>
                                </div>
                                <div class="row-content">
                                    <div class="list-group-item-heading">
                                        <a href="#" title="sintret">
                                            <small>sintret</small>
                                        </a>
                                    </div>
                                    <small>
                                        <i class="glyphicon glyphicon-time"></i> 1 month ago via <span class="twitter"> <i class="fa fa-twitter"></i> <a target="_blank" href="https://twitter.com/sintret" alt="sintret" title="sintret">@sintret</a></span>
                                        <br>
                                        <span class="explore"><i class="glyphicon glyphicon-th"></i> <a href="#">Explore 9 places </a></span>
                                    </small>
                                </div>
                            </div>
                        </div>
                        <h4><a href="#">These Are The Best Noodle Spots In Bangkok</a></h4>
                        <p>BANGKOK (AP) — With its fluorescent bulbs and cafeteria-style tables, the Bangkok restaurant Raan Jay Fai wouldn't win any awards for interior decorating.              But that hasn't deterred Martha Stewart, one of the restaurant's many fans...</p>
                    </div> 
                </div>
                <hr>
	</div>
</div>
</body>
</html>