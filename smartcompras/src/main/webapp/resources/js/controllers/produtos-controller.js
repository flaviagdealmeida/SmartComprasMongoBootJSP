angular.module('produtos').controller(function($scope, $http){
	
	$scope.imgs =[];
	
	$http.get('api/listaimgproduto')
	.success(function(img){
		$scope.imgs = img;
	})
	.error(function(erro){
		console.log(error);
	})
});

app.controller('ProdutosController', function($scope, $http) {
   $http.get("api/listaimgproduto")
   .then(function (response) {
	   $scope.produtos = response.data.records;});
}); 

angular.module('produtos').factory('ProdutosController', function($http) {
    return {
        getProduct: function(id) {
            return $http.get('api/listaimgproduto').then(function(response) {
                return response.data;
            });
        }
    };
});

/*$http.get("welcome.htm").then(function (response) {
    $scope.myWelcome = response.data;
});
});*/