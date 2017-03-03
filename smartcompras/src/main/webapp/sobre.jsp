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



	<!-- Menu -->





	<div class="container">

		<div class="container-fluid topo">
			<a href="home" id="home" class="btn btn-primary">Home</a>
			<h2>O SmartCompras</h2>
		</div>


		<h2>
			<b>O SmartCompras</b>
		</h2>
		<blockquote>
			<p>SmartCompras � uma solu��o em que o usu�rio busca sua lista de
				compras (personalizada; favoritos ou pr�-definida; sugest�o do
				software), levando em considera��o a sua localiza��o, proporcionado
				a escolha do mesmo ir at� o mercado mais pr�ximo ou o que tem a
				melhor oferta.</p>

			<p>A proposta do SmartCompras � que independentemente do tamanho
				da sua lista de mercado, voc� possa ter op��o de escolha de onde
				fazer suas compras. Como sugest�o temos dois caminhos: O que oferece
				o melhor pre�o e tamb�m o que � mais pr�ximo. Assim, fica a seu
				crit�rio escolher onde efetivar suas compras.</p>

			<p>A solu��o baseia-se em um sistema que funcionar� via
				computador, tablet e/ou celular, onde o usu�rio crie uma conta com
				uma lista de produtos que costuma comprar todos os meses (lista de
				mercado) ou com listas disponibilizadas no pr�prio site, como por
				exemplo, churrasco, almo�o ou festa e a partir dessas escolhas o
				sistema fa�a sua busca os melhores pre�os ou indique onde comprar os
				produtos, levando em considera��o a localiza��o do usu�rio.</p>



			<p>H� tamb�m a possibilidade de compartilhar a lista com os
				amigos atrav�s de redes sociais ou e-mail.</p>

			<p>Para acompanhamento dos gastos, os usu�rios contar�o com
				gr�ficos gerados a partir das buscas realizadas, assim tamb�m poder�
				fazer um planejamento financeiro para meses subsequentes.</p>
		</blockquote>
		<small>SmartGroup <cite title="SmartGroup">SmartGroup</cite></small>




	</div>



	<div th:include="rodape :: rodape"></div>

</body>
<link rel="stylesheet" href="css/stylehome.css" />
<link rel="stylesheet" href="css/estiloequipe.css" />
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
</html>