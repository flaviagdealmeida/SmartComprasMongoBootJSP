<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*" %>
<%@ page import="br.org.smartcompras.models.*" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width-device-width" />
<title>SmartCompras</title>


</head>
<body>

	<jsp:include page="menu.jsp"></jsp:include>


	<div class="container">

		<nav class="navbar navbar-inverse" id="menu">

			<div class="container-fluid">
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right clearfix">
						<li class="active"><a href="#" rel="nofolow">Sua
								Lista(${carrinhoCompras.totalItens}) </a></li>
					</ul>
				</div>
			</div>
		</nav>




		<div class="container-fluid topo">
			<h2>Lista de Compras</h2>
		</div>

		<form action="" method="post">
		
		<div class="container-fluid">
		
			<div class="row">
				<c:forEach items="${churrascoLista}" var="produtos">
					<div class="col-sm-3">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">${produtos.produto}</h3>
							</div>
							<div class="panel-body">
								<div class="row">
									<img class="imgpnl" src=${produtos.imgProduto} alt=${produtos.produto} name="imgProduto"/>
								</div>
								<div class="row car">
									
										<div class="col-sm-2"></div>
										<div class="col-sm-4">
											<label>Qtde: </label> <input type="number" name="quantidade" id="quantidade"
												min="1" max="100" />
										</div>
										<div class="col-sm-4">
 

											<!--button class="btn btn-warning btn-sm" type="submit" onclick="inserirLinhaTabela()">
									<i class="fa fa-cart-plus fa-2x" aria-hidden="true"></i>
								</button-->
								<button onclick="inserirLinhaTabela()" type="button"><i class="fa fa-cart-plus fa-2x" aria-hidden="true"></i></button> 

										</div>
									
								</div>
								
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			
		</div>
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



<script>
	// Função responsável por inserir linhas na tabela
	function inserirLinhaTabela() {
		var produto = document.getElementById("produtos").value;
		var quantidade = document.getElementById("quantidade").value;
		// Captura a referência da tabela com id “minhaTabela”
		/*   var table = document.getElementById("minhaTabela");
		  // Captura a quantidade de linhas já existentes na tabela
		  var numOfRows = table.rows.length;
		  // Captura a quantidade de colunas da última linha da tabela
		  var numOfCols = table.rows[numOfRows-1].cells.length;
		  // Insere uma linha no fim da tabela.
		  var newRow = table.insertRow(numOfRows);
		
		 
		  
		  // Faz um loop para criar as colunas
		  for (var j = 0; j < numOfCols; j++) {
		      // Insere uma coluna na nova linha 
		      newCell = newRow.insertCell(j);
		      // Insere um conteúdo na coluna
		     	// newCell.innerHTML = "Linha "+ numOfRows + " – Coluna "+ j;
		      newCell.innerHTML = "Produto "+ produto + " – Quantidade "+ quantidade;
		  }
		  
		 */
		alert(produto + " - " + quantidade);

	}
</script>



</html>