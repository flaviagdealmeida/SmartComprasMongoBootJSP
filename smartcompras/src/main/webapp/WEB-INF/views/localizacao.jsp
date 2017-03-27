<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<meta charset="utf-8" />

</head>
<body>
	<nav class="nav navbar-inverse graf" id="menu">
		<a href="sistema"><button class="btn btn-primary" id="btnsistema">Sistema</button></a>
	</nav>

	<div class="container"></div>
	<div id="map"></div>
	<div id="right-panel">
		<h2>Resultados</h2>
		<ul id="places"></ul>
		<button id="more">Mais Resultados</button>

	</div>

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

	function initMap() {
		var pyrmont = {
			lat : -22.877718,
			lng : -43.259127
		};
		map = new google.maps.Map(document.getElementById('map'), {
			center : pyrmont,
			zoom : 17
		});

		var service = new google.maps.places.PlacesService(map);
		service.nearbySearch({
			location : pyrmont,
			radius : 500,
			types : [ 'grocery_or_supermarket' ]
		}, processResults);
	}

	function processResults(results, status, pagination) {
		if (status !== google.maps.places.PlacesServiceStatus.OK) {
			return;
		} else {
			createMarkers(results);

			if (pagination.hasNextPage) {
				var moreButton = document.getElementById('more');

				moreButton.disabled = false;

				moreButton.addEventListener('click', function() {
					moreButton.disabled = true;
					pagination.nextPage();
				});
			}
		}
	}

	function createMarkers(places) {
		var bounds = new google.maps.LatLngBounds();
		var placesList = document.getElementById('places');

		for (var i = 0, place; place = places[i]; i++) {
			var image = {
				url : place.icon,
				size : new google.maps.Size(71, 71),
				origin : new google.maps.Point(0, 0),
				anchor : new google.maps.Point(17, 34),
				scaledSize : new google.maps.Size(25, 25)
			};

			var marker = new google.maps.Marker({
				map : map,
				icon : image,
				title : place.name,
				position : place.geometry.location
			});

			placesList.innerHTML += '<li>' + place.name + '</li>';

			bounds.extend(place.geometry.location);
		}
		map.fitBounds(bounds);
	}
</script>
<style>
#right-panel {
	font-family: Arial, Helvetica, sans-serif;
	position: absolute;
	right: 5px;
	top: 60%;
	margin-top: -195px;
	height: 330px;
	width: 200px;
	padding: 5px;
	z-index: 5;
	border: 1px solid #999;
	background: #fff;
}

h2 {
	font-size: 22px;
	margin: 0 0 5px 0;
}

ul {
	list-style-type: none;
	padding: 0;
	margin: 0;
	height: 271px;
	width: 200px;
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