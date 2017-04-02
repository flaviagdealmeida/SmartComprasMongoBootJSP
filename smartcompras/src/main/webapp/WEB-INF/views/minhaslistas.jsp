<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>SmartCompras</title>

</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>

<div class="container">
		<div class="container-fluid" id="form-listagem">
			<form  method="GET">
				<fieldset>
					<legend>Minhas Listas</legend>
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Lista</th>
								
							</tr>
						</thead>
						<c:forEach var="item" items="${itemLista}">
							<tbody>
								<tr>
									<td>${item.nomeLista}</td>
									<td class="coluna"><button class="btn btn-danger btn-sm"
											type="submit" value=${item.id } name="removerMarca">
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
								<i class="fa fa-trash fa-lg" aria-hidden="true"></i></button></td>

								</tr>
							</tbody>
						</c:forEach>
					</table>
				</fieldset>
			</form>
		</div>
	</div>


	<footer>
		<jsp:include page="rodape.jsp"></jsp:include>
	</footer>
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



<!-- Slider -->


<!-- #region Jssor Slider Begin -->
<!-- Generator: Jssor Slider Maker -->
<!-- Source: http://www.jssor.com -->
<!-- This code works with jquery library. -->
<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="js/jssor.slider-22.2.6.mini.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		var jssor_1_SlideshowTransitions = [ {
			$Duration : 1200,
			x : 0.2,
			y : -0.1,
			$Delay : 20,
			$Cols : 8,
			$Rows : 4,
			$Clip : 15,
			$During : {
				$Left : [ 0.3, 0.7 ],
				$Top : [ 0.3, 0.7 ]
			},
			$Formation : $JssorSlideshowFormations$.$FormationStraightStairs,
			$Assembly : 260,
			$Easing : {
				$Left : $Jease$.$InWave,
				$Top : $Jease$.$InWave,
				$Clip : $Jease$.$OutQuad
			},
			$Outside : true,
			$Round : {
				$Left : 1.3,
				$Top : 2.5
			}
		}, {
			$Duration : 1500,
			x : 0.3,
			y : -0.3,
			$Delay : 20,
			$Cols : 8,
			$Rows : 4,
			$Clip : 15,
			$During : {
				$Left : [ 0.1, 0.9 ],
				$Top : [ 0.1, 0.9 ]
			},
			$SlideOut : true,
			$Formation : $JssorSlideshowFormations$.$FormationStraightStairs,
			$Assembly : 260,
			$Easing : {
				$Left : $Jease$.$InJump,
				$Top : $Jease$.$InJump,
				$Clip : $Jease$.$OutQuad
			},
			$Outside : true,
			$Round : {
				$Left : 0.8,
				$Top : 2.5
			}
		}, {
			$Duration : 1500,
			x : 0.2,
			y : -0.1,
			$Delay : 20,
			$Cols : 8,
			$Rows : 4,
			$Clip : 15,
			$During : {
				$Left : [ 0.3, 0.7 ],
				$Top : [ 0.3, 0.7 ]
			},
			$Formation : $JssorSlideshowFormations$.$FormationStraightStairs,
			$Assembly : 260,
			$Easing : {
				$Left : $Jease$.$InWave,
				$Top : $Jease$.$InWave,
				$Clip : $Jease$.$OutQuad
			},
			$Outside : true,
			$Round : {
				$Left : 0.8,
				$Top : 2.5
			}
		}, {
			$Duration : 1500,
			x : 0.3,
			y : -0.3,
			$Delay : 80,
			$Cols : 8,
			$Rows : 4,
			$Clip : 15,
			$During : {
				$Left : [ 0.3, 0.7 ],
				$Top : [ 0.3, 0.7 ]
			},
			$Easing : {
				$Left : $Jease$.$InJump,
				$Top : $Jease$.$InJump,
				$Clip : $Jease$.$OutQuad
			},
			$Outside : true,
			$Round : {
				$Left : 0.8,
				$Top : 2.5
			}
		}, {
			$Duration : 1800,
			x : 1,
			y : 0.2,
			$Delay : 30,
			$Cols : 10,
			$Rows : 5,
			$Clip : 15,
			$During : {
				$Left : [ 0.3, 0.7 ],
				$Top : [ 0.3, 0.7 ]
			},
			$SlideOut : true,
			$Reverse : true,
			$Formation : $JssorSlideshowFormations$.$FormationStraightStairs,
			$Assembly : 2050,
			$Easing : {
				$Left : $Jease$.$InOutSine,
				$Top : $Jease$.$OutWave,
				$Clip : $Jease$.$InOutQuad
			},
			$Outside : true,
			$Round : {
				$Top : 1.3
			}
		}, {
			$Duration : 1000,
			$Delay : 30,
			$Cols : 8,
			$Rows : 4,
			$Clip : 15,
			$SlideOut : true,
			$Formation : $JssorSlideshowFormations$.$FormationStraightStairs,
			$Assembly : 2049,
			$Easing : $Jease$.$OutQuad
		}, {
			$Duration : 1000,
			$Delay : 80,
			$Cols : 8,
			$Rows : 4,
			$Clip : 15,
			$SlideOut : true,
			$Easing : $Jease$.$OutQuad
		}, {
			$Duration : 1000,
			y : -1,
			$Cols : 12,
			$Formation : $JssorSlideshowFormations$.$FormationStraight,
			$ChessMode : {
				$Column : 12
			}
		}, {
			$Duration : 1000,
			x : -0.2,
			$Delay : 40,
			$Cols : 12,
			$SlideOut : true,
			$Formation : $JssorSlideshowFormations$.$FormationStraight,
			$Assembly : 260,
			$Easing : {
				$Left : $Jease$.$InOutExpo,
				$Opacity : $Jease$.$InOutQuad
			},
			$Opacity : 2,
			$Outside : true,
			$Round : {
				$Top : 0.5
			}
		}, {
			$Duration : 2000,
			y : -1,
			$Delay : 60,
			$Cols : 15,
			$SlideOut : true,
			$Formation : $JssorSlideshowFormations$.$FormationStraight,
			$Easing : $Jease$.$OutJump,
			$Round : {
				$Top : 1.5
			}
		} ];
		var jssor_1_options = {
			$AutoPlay : true,
			$SlideshowOptions : {
				$Class : $JssorSlideshowRunner$,
				$Transitions : jssor_1_SlideshowTransitions,
				$TransitionsOrder : 1
			},
			$ArrowNavigatorOptions : {
				$Class : $JssorArrowNavigator$
			},
			$BulletNavigatorOptions : {
				$Class : $JssorBulletNavigator$
			}
		};
		var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
		/*responsive code begin*/
		/*you can remove responsive code if you don't want the slider scales while window resizing*/
		function ScaleSlider() {
			var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
			if (refSize) {
				refSize = Math.min(refSize, 900);
				jssor_1_slider.$ScaleWidth(refSize);
			} else {
				window.setTimeout(ScaleSlider, 10);
			}
		}
		ScaleSlider();
		$(window).bind("load", ScaleSlider);
		$(window).bind("resize", ScaleSlider);
		$(window).bind("orientationchange", ScaleSlider);
		/*responsive code end*/
	});
</script>
<style>
/* jssor slider bullet navigator skin 01 css */
/*
        .jssorb01 div           (normal)
        .jssorb01 div:hover     (normal mouseover)
        .jssorb01 .av           (active)
        .jssorb01 .av:hover     (active mouseover)
        .jssorb01 .dn           (mousedown)
        */
.jssorb01 {
	position: absolute;
}

.jssorb01 div, .jssorb01 div:hover, .jssorb01 .av {
	position: absolute;
	/* size of bullet elment */
	width: 2px;
	height: 2px;
	filter: alpha(opacity = 70);
	opacity: .7;
	overflow: hidden;
	cursor: pointer;
	border: #000 1px solid;
}

.jssorb01 div {
	background-color: gray;
}

.jssorb01 div:hover, .jssorb01 .av:hover {
	background-color: #d3d3d3;
}

.jssorb01 .av {
	background-color: #fff;
}

.jssorb01 .dn, .jssorb01 .dn:hover {
	background-color: #555555;
}
/* jssor slider arrow navigator skin 05 css */
/*
        .jssora05l                  (normal)
        .jssora05r                  (normal)
        .jssora05l:hover            (normal mouseover)
        .jssora05r:hover            (normal mouseover)
        .jssora05l.jssora05ldn      (mousedown)
        .jssora05r.jssora05rdn      (mousedown)
        .jssora05l.jssora05lds      (disabled)
        .jssora05r.jssora05rds      (disabled)
        */
.jssora05l, .jssora05r {
	display: block;
	position: absolute;
	/* size of arrow element */
	width: 20px;
	height: 20px;
	cursor: pointer;
	background: url('img/a17.png') no-repeat;
	overflow: hidden;
}

.jssora05l {
	background-position: -5px -20px;
}

.jssora05r {
	background-position: -35px -20px;
}

.jssora05l:hover {
	background-position: -65px -20px;
}

.jssora05r:hover {
	background-position: -85px -20px;
}

.jssora05l.jssora05ldn {
	background-position: -125px -20px;
}

.jssora05r.jssora05rdn {
	background-position: -1650px -20px;
}

.jssora05l.jssora05lds {
	background-position: -5px -20px;
	opacity: .3;
	pointer-events: none;
}

.jssora05r.jssora05rds {
	background-position: -35px -20px;
	opacity: .3;
	pointer-events: none;
}
</style>


</html>