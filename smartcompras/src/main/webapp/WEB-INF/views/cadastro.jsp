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

		<form class="form-horizontal cadastro" action="addusuario" method="post">
			<fieldset>
				<legend>Novo Usuário</legend>
				<div class="form-group"  id="cad">
					
					<div class="col-lg-10">
						<input type="text" class="form-control" id="inputNome"
							placeholder="Nome" />
					</div>
				</div>
				<div class="form-group"  id="cad">
					
					<div class="col-lg-10">
						<input type="text" class="form-control" id="imputSobrenome"
							placeholder="Sobrenome" />
					</div>
				</div>
				<div class="form-group"  id="cad">
					
					<div class="col-lg-10">
						<input type="date" class="form-control" id="inpuNasc"
							placeholder="Data de Nascimento" />
					</div>
				</div>
				<div class="form-group"  id="cad">
					
					<div class="col-lg-10">
						<input type="email" class="form-control" id="inpuEmail"
							placeholder="Email" />
					</div>
				</div>
				<div class="form-group"  id="cad">
					
					<div class="col-lg-10">
						<input type="text" class="form-control" id="inputCep"
							placeholder="CEP" />
					</div>
				</div>
				<div class="form-group"  id="cad">
					
					<div class="col-lg-10">
						<input type="tel" class="form-control" id="inputFone"
							placeholder="Telefone" />
					</div>
				</div>
				<div class="form-group" id="cad">
					
					<div class="col-lg-10">
						<input type="password" class="form-control" id="inputSenha"
							placeholder="Senha" />
						
					</div>
				</div>
				<div class="form-group" id="cad">
					<div class="col-lg-10 col-lg-offset-2">
						<button type="submit" class="btn btn-warning">Cadastrar</button>
						<button type="reset" class="btn btn-primary">Cancelar</button>
					</div>
				</div>
			</fieldset>
		</form>


	</div>

	<jsp:include page="rodape.jsp"></jsp:include>
</body>
<link rel="stylesheet" href="css/stylehome.css" />
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
	<script src="js/droplist.js"></script>

<script src="js/droplist.js"></script>

</html>