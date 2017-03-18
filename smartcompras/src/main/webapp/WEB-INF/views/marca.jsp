<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>SmartCompras</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	
	<div class="container">

	<div class="container-fluid"  id="form-listagem" >
		<form class="form-horizontal marca" action="/addmarcas" method="POST">
			<fieldset id="formmarcas">
				<legend>Marca</legend>
				<p>
					<label class="control-label" for="marca">Marca</label> <input
						class="form-control input-sm" type="text" id="marca" name="marca"
						size="40" />
				</p>
				<div class="col-lg-10 col-lg-offset-4">
					<button type="submit" class="btn btn-primary">Cadastrar</button>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<button type="reset" class="btn btn-warning">Cancel</button>
				</div>
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
<link href="https://fonts.googleapis.com/css?family=Catamaran|Hammersmith+One|Imprima" 	rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/droplist.js"></script>

</html>