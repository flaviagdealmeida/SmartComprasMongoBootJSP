<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SmartCompras</title>

<script type="text/javascript" 	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="js/charts/maiorgrafico.js"> </script>
</head>
<body>
	<nav class="nav navbar-inverse graf" id="menu">
		<a href="sistema"><button class="btn btn-primary" id="btnsistema">Sistema</button></a>
	</nav>
	
	
		<script src="js/charts/highcharts.js"></script>
		<script src="js/charts/modules/exporting.js"></script>
	
		
		
		<div id="container" style="min-width: 85%; height: 400px; margin: 2%" th:fragment="maiorgasto"></div>

	<footer>
		<jsp:include page="rodape.jsp"></jsp:include>
	</footer>
</body>
<link rel="stylesheet" href="css/stylehome.css" />
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" 	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link href="https://fonts.googleapis.com/css?family=Catamaran|Hammersmith+One|Imprima" 	rel="stylesheet" />


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</html>
