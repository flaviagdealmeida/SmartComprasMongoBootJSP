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

	<form class="form-horizontal cadastro" action="addsupermercados" method="post">
			<fieldset>
				<legend>Novo Supermercado</legend>
				<div class="form-group"  id="cad">					
					<div class="col-lg-10">
						<input type="text" class="form-control" id="inputNome"  name="supermercado"
							placeholder="Supermercado" />
					</div>
				</div>
				<div class="form-group"  id="cad">					
					<div class="col-lg-10">
						<input type="text" class="form-control" id="inputNome"  name="cnpj"
							placeholder="CNPJ" />
					</div>
				</div>
				<div class="form-group"  id="cad">					
					<div class="col-lg-10">
						<input type="text" class="form-control" id="inputNome"  name="contato"
							placeholder="Responsavel Contato" />
					</div>
				</div>
				<div class="form-group"  id="cad">					
					<div class="col-lg-10">
						<input type="email" class="form-control" id="inpuEmail"
							placeholder="Email" name="email"/>
					</div>
				</div>
				
				<input type="hidden" class="form-control" id="inpuRole"  name="permissao" value="ROLE_GEST"/>
					
				<div class="form-group"  id="cad">
					
					<div class="col-lg-10">
						<input type="text" class="form-control" id="inputCep"
							placeholder="CEP" name="cep"/>
					</div>
				</div>
				<div class="form-group"  id="cad">
					
					<div class="col-lg-10">
						<input type="text" class="form-control" id="inputCompl"
							placeholder="Complemento" name="complemento"/>
					</div>
				</div>
				<div class="form-group"  id="cad">					
					<div class="col-lg-10">
						<input type="tel" class="form-control" id="inputFone"
							placeholder="Telefone" name="telefone"/>
					</div>
				</div>
				<div class="form-group" id="cad">
					
					<div class="col-lg-10">
						<input type="password" class="form-control" id="inputSenha"
							placeholder="Senha" name="senha"/>
						
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