angular.module('produtos-diretivas',[])
.directive('meuPainel', function(){
	
	var ddo={};
	ddo.restrict="AE" // atribute Element

	ddo.scope ={
			titulo:'@'
	};
	
	ddo.transclude = true;
	
	ddo.templateUrl ='js/diretivas/';
		
		
	
	
	
	
	
	
	return ddo;
	
});

