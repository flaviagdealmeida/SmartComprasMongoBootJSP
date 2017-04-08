<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="imagens">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width-device-width" />
<title>SmartCompras</title>
</head>
<body ng-controller="FotosController" class="ng-scope">

	<jsp:include page="menu.jsp"></jsp:include>


	<div class="container">


		<div class="fotoProduto">
			<img class="img-responsive" alt="{{titulofoto}}" src="{{url}}" />

		</div>



		<form class="form-horizontal form-produtos" action="/addprodutos"
			method="POST">
			<fieldset>
				<legend>Produtos</legend>
				<div class="form-group">
					<label class="control-label" for="produto">Produto</label> <input
						class="form-control" type="text" id="produto" name="produto"
						size="40" ng-mode="titulofoto" />
				</div>

				<div class="form-group">
					<label class="control-label" for="imgProduto">Imagem do
						Produto</label> <input class="form-control" value="img/produtos/"
						type="text" id="imgProduto" name="imgProduto" size="40"
						ng-model="url" />

				</div>

				<div class="form-group">
					<label for="marca" class="control-label">Marca</label> 
				
					<select class="form-control" name="marca">
					<c:forEach var="marca" items="${listMarca}">		
						<option value=${marca.marca}>${marca.marca}</option>
					</c:forEach>
					</select>
				
				</div>
				<div class="form-group">
				
					<label for="supermercado" class="control-label">Supermercado</label> 
				
					<select class="form-control" name="supermercado">
					<c:forEach var="supermercado" items="${supermercadoLista}">		
						<option value=${supermercado.id}>${supermercado.supermercado}</option>
					</c:forEach>
					</select>
				</div>
				<div class="form-group">
					<label class="control-label" for="produto">Preço</label> <input
						class="form-control" type="text" id="produto" name="valor"
						size="40" />

				</div>
				
				
				
				
				
				<div class="form-group">
					<label for="tipo" class="control-label">Tipo Produto</label> <select
						class="form-control" id="tipoProduto" name="tipoProduto">
						<option>Bebidas</option>
						<option>Biscoitos</option>
						<option>Bomboniere</option>
						<option>Carne Aves</option>
						<option>Carne Bovina</option>
						<option>Carne Suína</option>
						<option>Peixes e frutos do mar</option>
						<option>Cereais</option>
						<option>Congelados</option>
						<option>Conservas</option>
						<option>Higiene</option>
						<option>Hortifrutigrangeiro</option>
						<option>Laticíneos</option>
						<option>Limpeza</option>
						<option>Massas</option>
						<option>Salgados</option>
						<option>Condimentos</option>

					</select>

				</div>



				<div class="col-lg-10 col-lg-offset-4 botoes">
					<input type="submit" class="btn btn-primary" value="Cadastrar" />
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<button type="reset" class="btn btn-warning">Cancelar</button>
				</div>





			</fieldset>
		</form>


	</div>

	<jsp:include page="rodape.jsp"></jsp:include>

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