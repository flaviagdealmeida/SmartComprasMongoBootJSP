<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>SmartCompras</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	
	<div class="container">

	<form class="form-horizontal cadastro" action="alteraSupermercado" method="post">
			<fieldset>
	<input type="hidden" class="form-control" id="inputNome" name="id"  value="${supermercado.id}" />
				<legend>Editar Supermercado</legend>
				<div class="form-group"  id="cad">					
					<div class="col-lg-10">
						<input type="text" class="form-control" id="inputNome"  name="supermercado" value="${supermercado.supermercado}"/>
					</div>
				</div>
				<div class="form-group"  id="cad">					
					<div class="col-lg-10">
						<input type="text" class="form-control" id="inputNome"  name="cnpj" value="${supermercado.cnpj}"/>
					</div>
				</div>
				<div class="form-group"  id="cad">					
					<div class="col-lg-10">
						<input type="text" class="form-control" id="inputNome"  name="contato" value="${supermercado.contato}"/>
					</div>
				</div>
				<div class="form-group"  id="cad">					
					<div class="col-lg-10">
						<input type="email" class="form-control" id="inpuEmail" name="email" value="${supermercado.email}"/>
					</div>
				</div>
				
				<div class="form-group"  id="cad">					
					<div class="col-lg-10">
				<input type="text" class="form-control" id="inpuRole"  name="permissao" value="${supermercado.permissao}"/>
				</div>
				</div>	
				<div class="form-group"  id="cad">
					
					<div class="col-lg-10">
						<input type="text" class="form-control" id="inputCep" name="cep" value="${supermercado.cep}"/>
					</div>
				</div>
				<div class="form-group"  id="cad">
					
					<div class="col-lg-10">
						<input type="text" class="form-control" id="inputCompl" name="complemento" value="${supermercado.complemento}"/>
					</div>
				</div>
				<div class="form-group"  id="cad">					
					<div class="col-lg-10">
						<input type="tel" class="form-control" id="inputFone" name="telefone" value="${supermercado.telefone}"/>
					</div>
				</div>
				<div class="form-group" id="cad">
					
					<div class="col-lg-10">
						<input type="password" class="form-control" id="inputSenha" name="senha" value="${supermercado.senha}"/>
						
					</div>
				</div>
				<div class="form-group" id="cad">
					<div class="col-lg-10 col-lg-offset-2">
						<button type="submit" class="btn btn-warning">Cadastrar</button>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<button type="reset" class="btn btn-primary">Cancelar</button>
					</div>
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

<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" 	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link href="https://fonts.googleapis.com/css?family=Catamaran|Hammersmith+One|Imprima" 	rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/droplist.js"></script>

</html>