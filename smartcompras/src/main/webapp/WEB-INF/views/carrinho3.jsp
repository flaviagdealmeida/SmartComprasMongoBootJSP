<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="br.org.smartcompras.models.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SmartCompras</title>
</head>
<body ng-controller="FotosController" class="ng-scope">

	<jsp:include page="menu.jsp"></jsp:include>
	<div class="container">
		<div class="container-fluid" id="form-listagem">
			<form action="#">
				<fieldset>
					<legend>Carrinho de Compras</legend>
					<a href="listadecompras3">Continuar Comprando</a>
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Produto</th>
								<th>Tipo Produto</th>
								<th>Quantidade</th>
								<th>Remover</th>
							</tr>
						</thead>
						<c:forEach var="ListaCompras" items="${itens}">
							<tbody>
								<tr>
									<td>${ListaCompras.produto}</td>
									<td>${ListaCompras.marca}</td>
									<td>${ListaCompras.tipoProduto}</td>
									<td><!--button class="btn btn-danger btn-sm"type="submit" value="" name="">
											
									<i class="fa fa-trash fa-lg" aria-hidden="true"></i>
								
									</button--></td>
								</tr>
							</tbody>
						</c:forEach>
						
					</table>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				</fieldset>
			</form>
		</div>
	</div>


	<jsp:include page="rodape.jsp"></jsp:include>



</body>

<!-- CSS -->
<link rel="stylesheet" href="css/estiloprodutos.css" />
<link rel="stylesheet" href="css/stylehome.css" />
<!-- CSS -->

<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" 	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Catamaran|Hammersmith+One|Imprima" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="js/droplist.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Angular -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.1/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.1/angular-resource.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.1/angular-route.min.js"></script>
<script src="js/main.js"></script>
<script src="js/controllers/fotos-controller.js"></script>
<script src="js/droplist.js"></script>
<!-- Angular -->



</html>