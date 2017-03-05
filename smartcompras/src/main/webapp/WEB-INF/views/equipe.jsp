<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<title>SmartCompras</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<body>

	<div class="container">

	<div class="container-fluid topo">
		<a href="home" id="homeeq" class="btn btn-primary">Home</a>

		<h2>Engenharia de Software Senac Rio 2016</h2>
		<br />
	</div>
		<div class="rows">
			<div class="col-lg-2">
				<img class="img-circle" src="img/equipe/Eu.jpg" alt="Flavia Almeida"
					width="160" height="160" />
				<h2>Engenharia de Software Senac Rio 2016</h2>
		<br />
	</div>
		<div class="rows">
			<div class="col-lg-2">
				<img class="img-circle" src="img/equipe/Eu.jpg" alt="Flavia Almeida"
					width="160" height="160" />
				<h2>Fl�via Almeida</h2>
				<div class="panel">
					<p>
						Tecnologia em Inform�tica pela UniverCidade<br /> MBA em Analise
						de Sistemas com Gerenciamento de Projetos pela Unigranrio<br />
						Discente de Engenharia de Software com Java pela Faculdade Senac
						Rio<br /> Atualmente Docente do Senac Rio
					</p>
				</div>

			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-2">
				<img class="img-circle" src="img/Renan.jpg" alt="Renan Santos"
					width="160" height="160" />
				<h2>
					Renan <br /> Santos
				</h2>
				<div class="panel">
					<p>
						Sistemas da Informa��o pela Unigranrio<br /> Discente de
						Engenharia de Software com Java pela Faculdade Senac Rio<br />
						Atualmente Analista de Sistemas na Novo Horizonte Jacarepagu� Imp
						e Exp Ltda.
					</p>
				</div>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-2">
				<img class="img-circle" src="img/Renato.jpg" alt="Renato Galindo"
					width="160" height="160" />
				<h2>Renato Galindo</h2>
				<div class="panel">
					<p>
						Analise e Desenvolvimento de Sistemas pela Est�cio <br />
						Discente de Engenharia de Software com Java pela Faculdade Senac
						Rio<br /> Foi colaborador na Petrobr�s, Administrador de
						Sistemas, Coordenador de Suporte e Consultor T�cnico
					</p>
				</div>


			</div>

			<!-- /.col-lg-4 -->
			<!-- /.col-lg-4 -->
			<div class="col-lg-2">
				<img class="img-circle" src="img/Edilson.jpg" alt="Edilson Oliveira"
					width="160" height="160" />
				<h2>Edilson Oliveira</h2>
				<div class="panel">
					<p>
						Sistemas da Informa��o pela FIJ<br /> Discente de Engenharia de
						Software com Java pela Faculdade Senac Rio<br /> Adminstrador de
						Sistemas Solaris pela BB Tecnologia Atualmente DBA na BB
						Tecnologia
					</p>
				</div>


			</div>

			<!-- /.col-lg-4 -->

			<!-- /.col-lg-4 -->
			<div class="col-lg-2">
				<img class="img-circle" src="img/Felipe.jpg" alt="Felipe Marinho"
					width="160" height="160" />
				<h2>Felipe Marinho</h2>
				<div class="panel">
					<p>
						Sistema de Informa��o pela Universidade Igua�u<br /> Discente de
						Engenharia de Software com Java pela Faculdade Senac Rio<br />
						Exper�ncia profissional de 15 anos em An�lise de Sistemas <br />
						Atualmente Analista de Sistemas na Secretaria Estadual de Sa�de
					</p>
				</div>


			</div>
		</div>
		<!-- /.col-lg-4 -->
	</div>
	<!-- /.row -->




	<div th:include="rodape :: rodape"></div>
</body>
<link rel="stylesheet" href="css/stylehome.css" />
<link rel="stylesheet" href="css/estiloequipe.css" />
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link href="https://fonts.googleapis.com/css?family=Catamaran|Hammersmith+One|Imprima" rel="stylesheet" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>