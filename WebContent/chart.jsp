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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- <script src="js/jquery2.0.3.min.js"></script> -->
<!-- charts -->
<script src="/YogoYogo/js/chart/raphael-min.js"></script>
<script src="/YogoYogo/js/chart/morris.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.3.0/Chart.bundle.js"></script> -->
<!-- //charts -->
<script type="text/javascript">
$(function() {
	$.ajax({
		url : "chartList.do",
		type : "post",
		dataType : 'json',
		data: {'selectDay' : '2017-07-09'},
		success : function(data) {
			console.log(data);
			
			Morris.Area({
                element: 'graph7',
                data: data,
                xkey: '시간',
                ykeys: ['평균값'],
                labels: ['평균값'],
                lineColors:['rgba(255, 110, 87, 100)',
                               'rgba(255, 206, 86, 100)']
              });
		}
	});
});
</script>
</head>
<body>
<section  class="container">
<!--main content start-->
<!-- <section id="main-content"> -->
   <section class="wrapper">
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
					<script>
						/* data stolen from http://howmanyleft.co.uk/vehicle/jaguar_'e'_type */
						var day_data = [
						  {"period": "2016-10-01", "평균값": 3407},
						  {"period": "2016-09-30", "평균값": 3351},
						  {"period": "2016-09-29", "평균값": 3269},
						  {"period": "2016-09-20", "평균값": 3246},
						  {"period": "2016-09-19", "평균값": 3257},
						  {"period": "2016-09-18", "평균값": 3248},
						  {"period": "2016-09-17", "평균값": 3171},
						  {"period": "2016-09-16", "평균값": 3171},
						  {"period": "2016-09-15", "평균값": 3201},
						  {"period": "2016-09-12", "평균값": 3215}
						];
						Morris.Bar({
						  element: 'graph8',
						  data: day_data,
						  xkey: 'period',
						  ykeys: ['평균값'],
						  labels: ['평균값'],
						  xLabelAngle: 60,
						  barColors:['rgba(255, 110, 87, 100)']
						});
						</script>

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
					<script>
						var month_data = [
										  {"elapsed": "1월", "평균값": 34},
										  {"elapsed": "2월", "평균값": 24},
										  {"elapsed": "3월", "평균값": 3},
										  {"elapsed": "4월", "평균값": 12},
										  {"elapsed": "5월", "평균값": 13},
										  {"elapsed": "6월", "평균값": 22},
										  {"elapsed": "7월", "평균값": 5},
										  {"elapsed": "8월", "평균값": 26},
										  {"elapsed": "9월", "평균값": 12},
										  {"elapsed": "10월", "평균값": 12},
										  {"elapsed": "11월", "평균값": 12},
										  {"elapsed": "12월", "평균값": 19}
										];
						Morris.Line({
						  element: 'graph9',
						  data: month_data,
						  xkey: 'elapsed',
						  ykeys: ['평균값'],
						  labels: ['평균값'],
						  parseTime: false,
						  lineColors:['rgba(255, 110, 87, 100)',
					                    'rgba(255, 206, 86, 100)']
						});
						</script>

				</div>
			</div>
		</div>
                  <div class="clearfix"></div>
      </div>
</section>
</section>
</body>
</html>