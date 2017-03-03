$(function() {

		var colors = Highcharts.getOptions().colors, categories = [ 'Cereais',
				'Bebidas', 'Higiene', 'Limpeza', 'Carnes' ], name = 'Ocultar Dados', data = [
				{
					y : 55.11,
					color : colors[0],
					drilldown : {
						name : 'Cereais versions',
						categories : [ 'Cereais 6.0', 'Cereais 7.0', 'Cereais 8.0',
								'Cereais 9.0' ],
						data : [ 10.85, 7.35, 33.06, 2.81 ],
						color : colors[0]
					}
				},
				{
					y : 21.63,
					color : colors[1],
					drilldown : {
						name : 'Bebidas versions',
						categories : [ 'Bebidas 2.0', 'Bebidas 3.0',
								'Bebidas 3.5', 'Bebidas 3.6', 'Bebidas 4.0' ],
						data : [ 0.20, 0.83, 1.58, 13.12, 5.43 ],
						color : colors[1]
					}
				},
				{
					y : 11.94,
					color : colors[2],
					drilldown : {
						name : 'Higiene',
						categories : [ 'Higiene 5.0', 'Higiene 6.0',
								'Higiene 7.0', 'Higiene 8.0', 'Higiene 9.0',
								'Higiene 10.0', 'Higiene 11.0', 'Higiene 12.0' ],
						data : [ 0.12, 0.19, 0.12, 0.36, 0.32, 9.91, 0.50, 0.22 ],
						color : colors[2]
					}
				},
				{
					y : 7.15,
					color : colors[3],
					drilldown : {
						name : 'Limpeza',
						categories : [ 'Limpeza 5.0', 'Limpeza 4.0',
								'Limpeza 5.0', 'Limpeza 4.1',
								'Limpeza', 'Limpeza 3.1', 'Limpeza 4.1' ],
						data : [ 4.55, 1.42, 0.23, 0.21, 0.20, 0.19, 0.14 ],
						color : colors[3]
					}
				},
				{
					y : 2.14,
					color : colors[4],
					drilldown : {
						name : 'Carnes',
						categories : [ 'Aves', 'Peixe', 'Bovino' ],
						data : [ 0.12, 0.37, 1.65 ],
						color : colors[4]
					}
				} ];

		function setChart(name, categories, data, color) {
			chart.xAxis[0].setCategories(categories, false);
			chart.series[0].remove(false);
			chart.addSeries({
				name : name,
				data : data,
				color : color || 'white'
			}, false);
			chart.redraw();
		}

		var chart = $('#container')
				.highcharts(
						{
							chart : {
								type : 'column'
							},
							title : {
								text : 'Acompanhamento de gastos - Fevereiro 2017'
							},
							subtitle : {
								text : 'Clique na coluna e veja os detalhes.'
							},
							xAxis : {
								categories : categories
							},
							yAxis : {
								title : {
									text : 'Total percentual de gastos'
								}
							},
							plotOptions : {
								column : {
									cursor : 'pointer',
									point : {
										events : {
											click : function() {
												var drilldown = this.drilldown;
												if (drilldown) { // drill down
													setChart(
															drilldown.name,
															drilldown.categories,
															drilldown.data,
															drilldown.color);
												} else { // restore
													setChart(name, categories,
															data);
												}
											}
										}
									},
									dataLabels : {
										enabled : true,
										color : colors[0],
										style : {
											fontWeight : 'bold'
										},
										formatter : function() {
											return this.y + '%';
										}
									}
								}
							},
							tooltip : {
								formatter : function() {
									var point = this.point, s = this.x + ':<b>'
											+ this.y
											+ '% market share</b><br/>';
									if (point.drilldown) {
										s += 'Click to view ' + point.category
												+ ' versions';
									} else {
										s += 'Click to return to browser brands';
									}
									return s;
								}
							},
							series : [ {
								name : name,
								data : data,
								color : 'white'
							} ],
							exporting : {
								enabled : false
							}
						}).highcharts(); // return chart
	});