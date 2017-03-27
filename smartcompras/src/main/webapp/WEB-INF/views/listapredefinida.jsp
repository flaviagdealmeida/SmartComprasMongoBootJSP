<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html ng-app="imagens">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width-device-width" />
<title>SmartCompras</title>
</head>
<body ng-controller="FotosController" class="ng-scope">

	<jsp:include page="menu.jsp"></jsp:include>

	<div class="container">

		<form class="form-horizontal form-produtos" action="/addlistapre"
			method="POST">
			<fieldset>
				<legend>Lista Predefinida</legend>
				<p>
					<label class="control-label" for="nomeLista">Nome Lista</label> <input
						class="form-control" type="text" id="nomeLista" name="nomeLista"
						size="40" />
				</p>

				<p>
					<input class="form-control" type="hidden" id="tipoLista"
						name="tipoLista" size="40" value="predefinida" />
				</p>

				<div class="checkbox">
					<ul>
						<c:forEach var="produto" items="${produtoList}">
						<li ><input type="checkbox" value=${produto.id}
							id="produtos" name="produtos" />${produto.produto}</li>
						</c:forEach>
					</ul>

				</div>

				<div class="col-lg-10 col-lg-offset-4 botoes">
					<input type="submit" class="btn btn-primary" value="Cadastrar" />
					<!-- input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /-->
					<button type="reset" class="btn btn-warning">Cancelar</button>
				</div>
			</fieldset>
		</form>


	</div>
<footer>
	<jsp:include page="rodape.jsp"></jsp:include>
</footer>

</body>
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