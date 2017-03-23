<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
	
<title>SmartCompras</title>

</head>
<body>

	<nav class="navbar navbar-inverse" id="menu">

	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="home">SmartCompras</a>
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

		<form class="form-horizontal cadastro" action="/login" method="POST">
			<fieldset>
			
			<input type="hidden" class="form-control" id="inputrole" name="authorities"/>
				<legend>Login</legend>
				<div class="form-group" id="cad">
					<div class="col-lg-8">
						<input type="email" class="form-control" id="inpuEmail"
							placeholder="Email" name="username" />
					</div>
	
				</div>
				<div class="form-group" id="cad">
					<div class="col-lg-8">
						<input type="password" class="form-control" id="inputSenha"
							placeholder="Senha" name="password" />
						
						<c:if test="${param.login}">
							
						</c:if>

						<c:if test="${param.error ne null}">
							<div class="alert-danger">Invalid username and password.</div>
						</c:if>
						<c:if test="${param.logout ne null}">
							<div class="alert-normal">You have been logged out.</div>
						</c:if>
					</div>
					<input type="hidden" name="${_csrf.parameterName}" 	value="${_csrf.token}" />
					
				</div>
				<div class="form-group" id="cad">
					<div class="col-lg-8">
						<a href="#">Esqueceu a senha? </a>
					</div>
				</div>

				<div class="form-group" id="cad">
					<div class="col-lg-8">
						<button type="submit" class="btn btn-warning btn-lg btn-block">Acessar</button>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					</div>
				</div>

				<div class="form-group" id="cad">
					<div class="col-lg-10">
						Não tem nenhuma conta? <a href="cadastro">Crie uma grátis</a>
					</div>
				</div>
				
	</fieldset>
	</form>


	</div>

	<jsp:include page="rodape.jsp"></jsp:include>
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