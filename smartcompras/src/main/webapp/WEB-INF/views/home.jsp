<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
	
<title>SmartCompras</title>
	
	
	<link rel="stylesheet" href="css/stylehome.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	<link href="https://fonts.googleapis.com/css?family=Catamaran|Hammersmith+One|Imprima" 	rel="stylesheet" />
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-inverse" id="menu">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">SmartCompras</a>
			</div>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="login"><i class="fa fa-user-circle fa-2x"
						aria-hidden="true"></i> Login</a></li>
			</ul>
		</div>
	</nav>


	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
			<li data-target="#myCarousel" data-slide-to="5"></li>
		</ol>

		<!-- Wrapper for slides -->
		<c:url value="img" var="imgPath" />
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="img/slider/slider1.jpg" alt="slider1" />
			</div>

			<div class="item">
				<img src="img/slider/slider2.jpg" alt="slider2" />
			</div>

			<div class="item">
				<img src="img/slider/slider3.jpg" alt="slider3" />
			</div>

			<div class="item">
				<img src="img/slider/slider4.jpg" alt="slider4" />
			</div>

			<div class="item">
				<img src="img/slider/slider5.jpg" alt="slider5" />
			</div>

			<div class="item">
				<img src="img/slider/slider6.jpg" alt="slider6" />
			</div>

		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	

	<div class="container">
		<div class="banner">
			<h2>SERVIÇOS</h2>
			<img src="img/home/responsivo.png" alt="responsivo" />
			<h4>Integração de serviços inteligentes e tecnologia de ponta</h4>
			<br />
		</div>

		<div class="row">
			<div class="col-sm-4 ">
				<img src="resources/img/home/placa1s.jpg" alt="Placa 1" />
			</div>

			<div class="col-sm-4">
				<img src="resources/img/home/placa3s.jpg" alt="Placa 3" />
			</div>

			<div class="col-sm-4">
				<img src="resources/img/home/placa2s.jpg" alt="Placa 2" />
			</div>
		</div>


		<div class="row">
			<div class="col-sm-6 ">
				<img src="resources/img/home/escrevendo.jpg" alt="Listas" />
			</div>

			<div class="col-sm-6" id="postit">
				<img src="resources/img/home/postit1.png" alt="postit" />
			</div>

		</div>
		<div class="row">
			<div class="col-sm-6" id="postit">
				<img src="resources/img/home/postit2.png" alt="postit" />
			</div>
			<div class="col-sm-6">
				<img src="resources/img/home/cofrinho.jpg" alt="Custos" />
			</div>
		</div>
		<div class="row">

			<div class="col-sm-6">
				<img src="resources/img/home/mapas.jpg" alt="Pensamento" />
			</div>
			<div class="col-sm-6" id="postit">
				<img src="resources/img/home/postit3.png" alt="postit" />
			</div>
		</div>
	</div>
	<footer>

		<%@ include file="rodape.jsp"%>
	</footer>
</body>




</html>
