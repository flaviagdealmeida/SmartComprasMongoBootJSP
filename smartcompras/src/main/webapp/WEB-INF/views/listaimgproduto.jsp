<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org" ng-app="imagens">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width-device-width" />
	<title>SmartCompras</title>
</head>
<body ng-controller="FotosController" class="ng-scope">

	<div th:include="menu :: menu"></div>

	<div class="container">
		<form  class="form-horizontal" action="/listaimgproduto" method="POST">
			<table class="table table-striped table-hover ">
				<thead>
					<tr>
						<th>Produto</th>
						<th>Url Produto</th>
					</tr>
				</thead>
				<tbody>
					<tr th:each="produto : ${imgsList}">
						<td th:text="${produto.id}"></td>
						<td th:text="${produto.produto}"></td>
						<td th:text="${produto.imgProduto}"></td>
					</tr>
				</tbody>
			</table>

		</form>

	</div>


	<div th:include="rodape :: rodape"></div>
</body>

<!-- Angular -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.1/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.1/angular-resource.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.1/angular-route.min.js"></script>
<script src="js/main.js"></script>
<script src="js/controllers/fotos-controller.js"></script>
<!-- Angular -->

<link rel="stylesheet" href="css/stylehome.css" />
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" 	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link href="https://fonts.googleapis.com/css?family=Catamaran|Hammersmith+One|Imprima" 	rel="stylesheet" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</html>