angular.module("estagiarios", []);

angular.module("estagiarios").controller("redirect",function($scope,$location){

	

	$scope.voltarListagemEstagiarios=function(){
		window.location="../index.html";
	}

	$scope.cadastrarNovoEstagiarioPage=function(){
		var url=window.location.toString();			

		if(   url.indexOf("cadastrarEstagiario")  >-1  ) {

			location.reload();

		}else if(   url.indexOf("editarEstagiario") >-1   ){

			window.location="../view/cadastrarEstagiario.html";

		}else{
			window.location="view/cadastrarEstagiario.html";
		}		
	};

	$scope.editarEstagiarioPage=function(id){
		var url=window.location.toString();
		if(url.indexOf("index")>-1){
			window.location="view/editarEstagiario.html?id="+id;
		}else if(url.indexOf("cadastrarEstagiario")>-1){
			window.location="../view/editarEstagiario.html?id="+id;
		}else if(url.indexOf("editarEstagiario")>-1){
			location.reload();
		}		
	};

	$scope.avaliarEstagiarioPage=function(id){
		window.location="view/avaliarEstagiario.html?id="+id;
	};

	$scope.relatorioEstagiarioPage=function(id){
		window.location="view/relatorioEstagiario.html?id="+id;
	};
});