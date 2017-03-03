<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org" ng-app="imagens">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width-device-width" />
<title>SmartCompras</title>
</head>
<body ng-controller="FotosController" class="ng-scope">

	<jsp:include page="menu.jsp"></jsp:include>


	<div class="container">

		<div class="container-fluid">

			<form action="/delprodutoslista" method="POST">
				<table class="table table-striped table-hover " id="titulos">
					<thead>
						<tr>
							<th width="200px">Imagem Produto</th>
							<th class="tit">Produto</th>
							<th class="tit">Imagem do Produto</th>
							<th class="tit">Tipo de Produto</th>
							<th class="tit">Marca</th>
							<th class="tit">Excluir</th>
							<th class="tit">Alterar</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach var="produto" items="${list}">

							<tr>
								<td><img class="imgtable" th:src="${produto.imgProduto}"
									alt="${produto.produto}" /></td>
								<td class="tit"><c:out value="${produto.produto}" /></td>
								<td class="tit"><c:out value="${produto.imgProduto}" /></td>
								<td class="tit"><c:out value="${produto.tipoProduto}" /></td>
								<td class="tit"><c:out value="${produto.marca}" /></td>
								<td class="coluna tit"><button 	class="btn btn-danger btn-sm" type="submit"
										<c:out value="*{produto.id}" /> name="removerProdutos">
									Excluir</button></td>
							<td class="coluna tit"><button
									class="btn btn-warning btn-sm" type="submit"
									th:value="*{produto.id}" name="alterarProdutos">
									Alterar</button></td>

							</tr>
						</c:forEach>

					</tbody>
				</table>

			</form>

		</div>

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
<!-- Angular -->


</html>