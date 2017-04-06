<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<meta charset="utf-8" />
<title>SmartCompras</title>

</head>
<body>
	<nav class="nav navbar-inverse graf" id="menu">
		<a href="sistema"><button class="btn btn-primary" id="btnsistema">Sistema</button></a>
		<button  class="btn btn-primary" onClick="localizarUsuario()">Minha Localização</button> <br>
	</nav>
	<input type="hidden" id="txtLatitude" name="txtLatitude" value="-22.9068467" />
	 <input type="hidden" id="txtLongitude" name="txtLongitude" value="-43.17289649999998" />

	<div class="container"></div>

	<div id="map"></div>
	<div id="right-panel">
		<h2>Resultados</h2>
		<ul id="places"></ul>
		
		

		
		<button id="more" class="btn btn-primary">Mais Resultados</button>

	</div>


<script src="mapa/maps.js"></script>

	<script
		src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCSGfv4ntRNDLddqFqpatn-rkdTqaY0zR8&amp;libraries=places&amp;callback=initMap"
		async defer>
		
	</script>

	<footer> </footer>

</body>

<style>
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}

#map {
	height: 90%;
}

#right-panel {
	font-family: 'Roboto', 'sans-serif';
	line-height: 30px;
	padding-left: 10px;
}

#right-panel select, #right-panel input {
	font-size: 15px;
}

#right-panel select {
	width: 100%;
}

#right-panel i {
	font-size: 12px;
}
</style>
<title>Place search pagination</title>



<script>
	var map;
	
	var pyrmont = {lat:-22.9068467 , lng: -43.17289649999998};
	function initMap() {
		
	
		  
		map = new google.maps.Map(document.getElementById('map'), {
			center : pyrmont,
			zoom : 17
		});
	

	
		
	}
	
</script>
<style>
#right-panel {
	font-family: Arial, Helvetica, sans-serif;
	position: absolute;
	right: 5px;
	top: 60%;
	margin-top: -195px;
	height: 350px;
	width: 230px;
	padding: 5px;
	z-index: 5;
	border: 1px solid #999;
	background: #fff;
	border-radius: 8px;
	margin-right: 5%;
}

h2 {
	font-size: 22px;
	margin: 0 0 5px 0;
	text-align: center;
}

ul {
	list-style-type: none;
	padding: 0;
	margin: 0;
	height: 271px;
	width: 215px;
	overflow-y: scroll;
}

li {
	background-color: #f1f1f1;
	padding: 10px;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
}

li:nth-child(odd) {
	background-color: #fcfcfc;
}

#more {
	width: 100%;
	margin: 5px 0 0 0;
}
</style>
<!-- CSS -->
<link rel="stylesheet" href="css/estiloprodutos.css" />
<link rel="stylesheet" href="css/stylehome.css" />
<!-- CSS -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link
	href="https://fonts.googleapis.com/css?family=Catamaran|Hammersmith+One|Imprima"
	rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="js/droplist.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Angular -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.1/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.1/angular-resource.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.1/angular-route.min.js"></script>
<script src="js/main.js"></script>
<script src="js/controllers/fotos-controller.js"></script>
<script src="js/droplist.js"></script>
<!-- Angular -->
</html>