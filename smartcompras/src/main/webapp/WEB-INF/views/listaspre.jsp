<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html ng-app="imagens">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width-device-width , initial-scale=1" />


<title>SmartCompras</title>


</head>
<body ng-controller="FotosController" class="ng-scope">

	<jsp:include page="menu.jsp"></jsp:include>
	<div class="container">
		<div class="container-fluid" id="form-listagem">
			<form action="/delpredefinida" method="POST">
				<fieldset>
					<legend>Listagem de Predefinidas</legend>
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Nome Lista</th>
								<th>Itens</th>
							</tr>
						</thead>
						<c:forEach var="predefinida" items="${preLists}">
							<tbody>
								<tr>
									<td>${predefinida.nomeLista}</td>
									
									<td class="coluna"><button class="btn btn-danger btn-sm"
											type="submit" value=${predefinida.id} name="removerPredefinida">
											
								<i class="fa fa-trash fa-lg" aria-hidden="true"></i></button></td>

								</tr>
							</tbody>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						</c:forEach>
					</table>
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