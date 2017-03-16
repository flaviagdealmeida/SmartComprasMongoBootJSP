<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<title>SmartCompras</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<body>
	<!-- Menu -->
	<nav class="navbar navbar-inverse" id="menu">

		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="sistema">SmartCompras</a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="home">Home</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Lista <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a tabindex="-1" href="listadecompras">Lista de
									Compras</a></li>
							<li><a tabindex="-1" href="listadecompras">Minhas Listas</a></li>
							<li class="dropdown-submenu"><a class="test" tabindex="-1"
								href="#">Lista Pré-Definidas <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="#">Churrasco</a></li>
									<li><a tabindex="-1" href="#">Mensal</a></li>
								</ul></li>
						</ul></li>
					<li><a href="localizacao">Localização</a></li>
					<li class="dropdown"><a href="localizacao"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-expanded="false">Gráficos <span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="gastos">Acumulado do Ano</a></li>
							<li><a href="maiorgasto">Maior Gasto</a></li>
							<li><a href="#">Menor Gasto</a></li>
						</ul></li>

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Painel Administrativo <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="produto">Cadastro Produto</a></li>
							<li><a href="listaproduto">Lista de Produtos</a></li>
							<li><a href="marca">Cadastro Marca</a></li>
							<li><a href="listamarca">Lista de Marca</a></li>
							<li><a href="listapredefinida">Cadastro Lista
									Predefinida</a></li>

						</ul></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><c:out value="${pageContext.request.remoteUser}"></c:out></a></li>
					<li><a href="logout"> Logout </a> <input type="hidden"
						name="${_csrf.parameterName}" value="${_csrf.token}" /></li>
				</ul>



			</div>

		</div>

	</nav>

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
<script src="js/droplist.js"></script>
</html>