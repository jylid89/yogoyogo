<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/YogoYogo/css/main/font.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 	<script type="text/javascript" src="/YogoYogo/js/main//jquery.min.js"></script> -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!--     <link href="/YogoYogo/css/header/font-awesome.css" rel="stylesheet">  -->
    
    
    <title><tiles:getAsString name="title"/></title>

</head>
<body>
        <tiles:insertAttribute name="header" />
            <tiles:insertAttribute name="body" />
        <tiles:insertAttribute name="footer" />
        
</body>
</html>