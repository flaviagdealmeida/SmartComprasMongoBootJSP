<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
	
<!-- Trigger the modal with a button -->


<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Total por Mercado</h4>
      </div>
      <div class="modal-body">
      		<ul>
      			<li>Hipermercado Extra </li>
      			<dl>R$ 141,90</dl>
      			<li>Prezunic Supermercado </li>
      			<dl>R$ 165,80</dl>
      			<li>Pão de Açúcar </li>
      			<dl>R$ 152,10</dl>
      		
      		</ul>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-warning" data-dismiss="modal">Fechar</button>
      </div>
    </div>

  </div>
</div>

	
	<div class="container">
	
			
	
		<div class="container-fluid" id="form-listagem">
			
			
					<h3>Análise de Preço</h3>
					<h2>${item.nomeLista}</h2> 
<!-- 					<a href="listadecompras">Continuar Comprando</a> -->
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Produto</th>
								
								<th><button type="button" class="btn btn-warning btn-lg" data-toggle="modal" data-target="#myModal"><i class="fa fa-cart-plus" aria-hidden="true"></i> Total Lista</button></th>
								
							</tr>
						</thead>
						<c:forEach var="item" items="${item.produtos}" varStatus="status">
							<tbody>
								<tr>
									<td>${item.produto}</td>
									<td>${item.marca}</td>
								</tr>
								<tr>
									<c:forEach var="itemPreco" items="${item.preco}" varStatus="index">
										<tbody>
											<tr>
												<td>
													<li>${itemPreco.supermercado} - R$ ${itemPreco.valor}</li>
												</td>
												<td>
												</td>
											</tr>	
										</tbody>
									</c:forEach>	
								</tr>
							</tbody>
						</c:forEach>
						
					</table>
				</div>
				
				
	</div>


	<jsp:include page="rodape.jsp"></jsp:include>



</body>

<style>
#mySidenav a {
    position: absolute; /* Position them relative to the browser window */
    left: -80px; /* Position them outside of the screen */
    transition: 0.3s; /* Add transition on hover */
    padding: 15px; /* 15px padding */
    width: 100px; /* Set a specific width */
    text-decoration: none; /* Remove underline */
    font-size: 20px; /* Increase font size */
    color: white; /* White text color */
    border-radius: 0 5px 5px 0; /* Rounded corners on the top right and bottom right side */
}

#mySidenav a:hover {
    left: 0; /* On mouse-over, make the elements appear as they should */
}

/* The about link: 20px from the top with a green background */
#about {
    top: 20px;
    background-color: #4CAF50;
}

</style>


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