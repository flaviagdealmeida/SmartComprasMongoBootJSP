$(function() {
	var colors = Highcharts.getOptions().colors, categories = [ 'Cereais',
			'Bebidas', 'Biscoitos', 'Peixes e frutos do mar' ], name = 'Ocultar Dados', data = [
			{
				y : 18.0,
				color : colors[0],
				drilldown : {
					name : 'Cereais versions',
					categories : [ 'Açucar Refinado', 'Arroz Tio João',
							'Farinha de Mandioca' ],
					data : [ 10.85, 7.35, 2.81 ],
					color : colors[0]
				}
			},
			{
				y : 5.1,
				color : colors[1],
				drilldown : {
					name : 'Bebidas versions',
					categories : [ 'Cerveja Amstel Lata' ],
					data : [ 0.20 ],
					color : colors[1]
				}
			},
			{
				y : 11.9,
				color : colors[2],
				drilldown : {
					name : 'Biscoito versions',
					categories : [ 'Biscoito Gergilim',
							'Biscoito Leite Maltado' ],
					data : [ 0.65, 0.45 ],
					color : colors[2]
				}
			}, {
				y : 65.0,
				color : colors[4],
				drilldown : {
					name : 'Carnes version',
					categories : [ 'Peixe' ],
					data : [ 65.0 ],
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
							text : 'Acompanhamento de gastos - Abril 2017'
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
												setChart(drilldown.name,
														drilldown.categories,
														drilldown.data,
														drilldown.color);
											} else { // restore
												setChart(name, categories, data);
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
										+ this.y + '% market share</b><br/>';
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