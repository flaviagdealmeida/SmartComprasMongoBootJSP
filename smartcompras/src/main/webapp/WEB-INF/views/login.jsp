<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>SmartCompras</title>

</head>
<body>

	<nav class="navbar navbar-inverse" id="menu">

		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">SmartCompras</a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="home">Home</a></li>
				</ul>
			</div>
		</div>

	</nav>

	<div class="container">

		<form class="form-horizontal cadastro" action="addusuario" method="post">
			<fieldset>
				<legend>Login</legend>
				<div class="form-group"  id="cad">
					<div class="col-lg-8">
						<input type="email" class="form-control" id="inpuEmail"
							placeholder="Email" />
					</div>
				</div>
				<div class="form-group" id="cad">
					<div class="col-lg-8">
						<input type="password" class="form-control" id="inputSenha"
							placeholder="Senha" />
						
					</div>
				</div>
				<div class="form-group" id="cad">
					<div class="col-lg-8">
						<a href="#">Esqueceu a senha? </a>
					</div>
				</div>
				
				<div class="form-group" id="cad">
					<div class="col-lg-8">
						<button type="submit" class="btn btn-warning btn-lg btn-block">Acessar</button>
					</div>
				</div>
				
				<div class="form-group" id="cad">
					<div class="col-lg-10">
						Não tem nenhuma conta? <a href="cadastro">Crie uma grátis</a>
					</div>
				</div>
				<div class="form-group " id="cad">
					<div class="col-lg-10 texto">
						Conecte com: <i class="fa fa-facebook-square fa-2x" aria-hidden="true"></i>
					</div>
				</div>
				
				
			</fieldset>
		</form>


	</div>

	<div th:include="rodape :: rodape"></div>
</body>
<link rel="stylesheet" href="css/stylehome.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link
	href="https://fonts.googleapis.com/css?family=Catamaran|Hammersmith+One|Imprima"
	rel="stylesheet" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



</html>