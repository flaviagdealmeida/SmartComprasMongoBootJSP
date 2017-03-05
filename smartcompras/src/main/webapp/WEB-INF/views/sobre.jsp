<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<p>SmartCompras é uma solução em que o usuário busca sua lista de
				compras (personalizada; favoritos ou pré-definida; sugestão do
				software), levando em consideração a sua localização, proporcionado
				a escolha do mesmo ir até o mercado mais próximo ou o que tem a
				melhor oferta.</p>

			<p>A proposta do SmartCompras é que independentemente do tamanho
				da sua lista de mercado, você possa ter opção de escolha de onde
				fazer suas compras. Como sugestão temos dois caminhos: O que oferece
				o melhor preço e também o que é mais próximo. Assim, fica a seu
				critério escolher onde efetivar suas compras.</p>

			<p>A solução baseia-se em um sistema que funcionará via
				computador, tablet e/ou celular, onde o usuário crie uma conta com
				uma lista de produtos que costuma comprar todos os meses (lista de
				mercado) ou com listas disponibilizadas no próprio site, como por
				exemplo, churrasco, almoço ou festa e a partir dessas escolhas o
				sistema faça sua busca os melhores preços ou indique onde comprar os
				produtos, levando em consideração a localização do usuário.</p>



			<p>Há também a possibilidade de compartilhar a lista com os
				amigos através de redes sociais ou e-mail.</p>

			<p>Para acompanhamento dos gastos, os usuários contarão com
				gráficos gerados a partir das buscas realizadas, assim também poderá
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