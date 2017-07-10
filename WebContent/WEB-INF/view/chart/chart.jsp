<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->

<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="/YogoYogo/css/chart/style.css" rel='stylesheet' type='text/css' />
<!-- <link href="css/style-responsive.css" rel="stylesheet"/> -->
<link rel="stylesheet" href="/YogoYogo/css/chart/morris.css">
<!-- font CSS -->
<!-- <link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'> -->
<!-- font-awesome icons -->
<!-- <link rel="stylesheet" href="/YogoYogo/css/chart/font.css" type="text/css"/> -->
<!-- <link href="/YogoYogo/css/chart/font-awesome.css" rel="stylesheet">  -->
<!-- //font-awesome icons -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!-- <script src="js/jquery2.0.3.min.js"></script> -->
<!-- charts -->
<script src="/YogoYogo/js/chart/raphael-min.js"></script>
<script src="/YogoYogo/js/chart/morris.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.3.0/Chart.bundle.js"></script> -->
<!-- //charts -->
<script type="text/javascript">
$(function() {
	
	// 오늘 날짜 가지고오기
	var date = new Date();
	   
    var year  = date.getFullYear();
    var month = date.getMonth() + 1; // 0부터 시작하므로 1더함 더함
    var day   = date.getDate();
 
    if (("" + month).length == 1) { month = "0" + month; }
    if (("" + day).length   == 1) { day   = "0" + day;   }
    	
    // 년월일 표현
	var selectDay = year + "-" + month + "-" + day;
	
    // 년월 표현
    var selectMon = year + "-" + month;
	
    // 년 표현
    var selectYear = year;
	
    // 날짜 선택 오늘날짜로 선택
	$('#registration-date').val(selectDay);
		
    // 오늘 날짜를 바탕으로 차트 그리기 함수 부르기
	chart(selectDay, selectMon, selectYear);
	
    // 날짜 변경했을 때 변경될 날짜를 년월일 형식으로 만들기 
	$('#registration-date').change(function() {
		var strDay = $(this).val().split('-');
		
		var selectDay = strDay[0] + "-" + strDay[1] + "-" + strDay[2];
		var selectMon = strDay[0] + "-" + strDay[1];
		var selectYear = strDay[0];
		
		// 변경될 날짜를 바탕으로 차트 그리기 함수 부르기
		chart(selectDay, selectMon, selectYear);
	});
	
	// 3개의 차트 그리기 함수
	function chart(selectDay, selectMon, selectYear) {
		// 차트 그리기 전에 전에 그렸던 차트 내용 삭제
		$('#graph7').contents().remove();
		$('#graph8').contents().remove();
		$('#graph9').contents().remove();
		
		// 전달받은 년월일을 바탕으로 시간별 데이터 가지고 오기
		$.ajax({
			url : "chartListTime.do",
			type : "post",
			dataType : 'json',
			data: {'selectDay' : selectDay},
			success : function(data) {
				console.log(data);
				
				Morris.Area({
	                element: 'graph7',
	                data: data,
	                xkey: '시간',
	                ykeys: ['합계'],
	                labels: ['합계'],
	                lineColors:['rgba(255, 110, 87, 100)',
	                               'rgba(255, 206, 86, 100)']
	              });
			}
		});
		
		
		// 전달받은 년월을 바탕으로 날짜별 데이터 가지고 오기
		$.ajax({
			url : "chartListDay.do",
			type : "post",
			dataType : 'json',
			data: {'selectMon' : selectMon},
			success : function(data) {
				console.log(data);
				
				Morris.Bar({
					  element: 'graph8',
					  data: data,
					  xkey: '일',
					  ykeys: ['합계'],
					  labels: ['합계'],
					  xLabelAngle: 60,
					  barColors:['rgba(255, 110, 87, 100)']
					});
			}
		});
		
		// 전달받은 년을 바탕으로 월별 데이터 가지고 오기
		$.ajax({
			url : "chartListMon.do",
			type : "post",
			dataType : 'json',
			data: {'selectYear' : selectYear},
			success : function(data) {
				console.log(data);
				
				Morris.Line({
					  element: 'graph9',
					  data: data,
					  xkey: '월',
					  ykeys: ['합계'],
					  labels: ['합계'],
					  parseTime: false,
					  lineColors:['rgba(255, 110, 87, 100)',
				                    'rgba(255, 206, 86, 100)']
					});
			}
		});
	}
	
});
</script>
</head>
<body>
<section  class="container">
<!--main content start-->
<!-- <section id="main-content"> -->
   <section class="wrapper">
   	  <div class="form-group registration-date">
   	  		<div class="input-group registration-date-time">
            	<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span></span>
            	<input class="form-control" name="registration_date" id="registration-date" type="date" style="width : 150px;">
            </div>
      </div>
      <div class="chart_agile">
         <div class="col-md-12 chart_agile_left">
            <div class="chart_agile_top">
               <div class="area-grids-heading">
                     <h3>Monthly</h3>
               </div>
               <div class="chart_agile_bottom">
                  <div id="graph7"></div>
               </div>
            </div>
         </div>
         <div class="col-md-12 chart_agile_right">
			<div class="chart_agile_top">
				<div class="area-grids-heading">
					<h3>Daily</h3>
				</div>
				<div class="chart_agile_bottom">
					<div id="graph8"></div>
				</div>
			</div>
		</div>
		<div class="col-md-12 chart_agile_left">
			<div class="chart_agile_top">
				<div class="area-grids-heading">
					<h3>Yearly</h3>
				</div>
				<div class="chart_agile_bottom">
					<div id="graph9"></div>
				</div>
			</div>
		</div>
                  <div class="clearfix"></div>
      </div>
</section>
</section>
</body>
</html>