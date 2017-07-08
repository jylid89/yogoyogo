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
<link href="/Marketing/css/chart/style.css" rel='stylesheet' type='text/css' />
<!-- <link href="css/style-responsive.css" rel="stylesheet"/> -->
<link rel="stylesheet" href="/Marketing/css/chart/morris.css">
<!-- font CSS -->
<!-- <link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'> -->
<!-- font-awesome icons -->
<!-- <link rel="stylesheet" href="/YogoYogo/css/chart/font.css" type="text/css"/> -->
<!-- <link href="/YogoYogo/css/chart/font-awesome.css" rel="stylesheet">  -->
<!-- //font-awesome icons -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- <script src="js/jquery2.0.3.min.js"></script> -->
<!-- charts -->
<script src="/Marketing/js/chart/raphael-min.js"></script>
<script src="/Marketing/js/chart/morris.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.3.0/Chart.bundle.js"></script> -->
<!-- //charts -->
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
<script>
$(document).ready(function(){
	
	//동적으로 원격에 있는 json파일(결과값)을 로드
	$.ajax({
	
		url : "chartList.do",
		data:{'selectDay' : $('.selectDay').val()},
		dataType : "json",
		success : function(data){
			//받아온 json을 테이블에 출력
			console.log(data);
			
			var daily = new Array();
			
			daily.push(data[i].tot_price)
			
			
	}
		
		
		
});
	
	var daily = {x: '2013-03-31 04:00:00', y: 4, z: 4};
	
	Morris.Area({
	
		element: 'graph7',	  
		data: daily,
		xkey: 'x',
		ykeys: ['y', 'z'],
		labels: ['Y', 'Z'],
		lineColors:['rgba(255, 110, 87, 100)',
		                 'rgba(255, 206, 86, 100)']
	
	});
	
	
});



	
</script>

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
						  {"period": "2016-10-01", "licensed": 3407, "sorned": 660},
						  {"period": "2016-09-30", "licensed": 3351, "sorned": 629},
						  {"period": "2016-09-29", "licensed": 3269, "sorned": 618},
						  {"period": "2016-09-20", "licensed": 3246, "sorned": 661},
						  {"period": "2016-09-19", "licensed": 3257, "sorned": 667},
						  {"period": "2016-09-18", "licensed": 3248, "sorned": 627},
						  {"period": "2016-09-17", "licensed": 3171, "sorned": 660},
						  {"period": "2016-09-16", "licensed": 3171, "sorned": 676},
						  {"period": "2016-09-15", "licensed": 3201, "sorned": 656},
						  {"period": "2016-09-12", "licensed": 3215, "sorned": 622}
						];
						Morris.Bar({
						  element: 'graph8',
						  data: day_data,
						  xkey: 'period',
						  ykeys: ['licensed', 'sorned'],
						  labels: ['Licensed', 'SORN'],
						  xLabelAngle: 60,
						  barColors:['rgba(255, 110, 87, 100)',
					                    'rgba(255, 206, 86, 100)']
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
						var day_data = [
						  {"elapsed": "I", "value": 34},
						  {"elapsed": "II", "value": 24},
						  {"elapsed": "III", "value": 3},
						  {"elapsed": "IV", "value": 12},
						  {"elapsed": "V", "value": 13},
						  {"elapsed": "VI", "value": 22},
						  {"elapsed": "VII", "value": 5},
						  {"elapsed": "VIII", "value": 26},
						  {"elapsed": "IX", "value": 12},
						  {"elapsed": "X", "value": 19}
						];
						Morris.Line({
						  element: 'graph9',
						  data: day_data,
						  xkey: 'elapsed',
						  ykeys: ['value'],
						  labels: ['value'],
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