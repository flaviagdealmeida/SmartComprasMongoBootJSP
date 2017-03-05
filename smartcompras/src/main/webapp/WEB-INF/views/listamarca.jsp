<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="imagens">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width-device-width , initial-scale=1" />

<!--  
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/r/bs-3.3.5/jq-2.1.4,dt-1.10.8/datatables.min.css" />
<script src="https://cdn.datatables.net/r/bs-3.3.5/jqc-1.11.3,dt-1.10.8/datatables.min.js"></script>
<script	src="https://cdn.datatables.net/responsive/2.1.1/js/dataTables.responsive.min.js"></script>
<link  href="https://cdn.datatables.net/responsive/2.1.1/css/responsive.bootstrap.min.css" />
-->

<title>SmartCompras</title>

<script>
	$(document).ready(function() {
		$('#myTable').DataTable();
	});
</script>

</head>
<body ng-controller="FotosController" class="ng-scope">

	<jsp:include page="menu.jsp"></jsp:include>
	<div class="container">
		<div class="container-fluid" id="form-listagem">
			<form action="/delmarca" method="POST">
				<fieldset>
					<legend>Listagem de Marcas</legend>
					<table class="table table-striped table-hover ">
						<thead>
							<tr>
								<th>Marca</th>
								<th>Ação</th>
							</tr>
						</thead>
						<c:forEach var="marca" items="${marcaLista}">
							<tbody>
								<tr>
									<td>${marca.marca}</td>
									<td class="coluna"><button class="btn btn-danger btn-sm"
											type="submit" value=${marca.id } name="removerMarca">
								<i class="fa fa-trash fa-lg" aria-hidden="true"></i></button></td>

								</tr>
							</tbody>
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