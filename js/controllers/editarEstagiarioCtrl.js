angular.module("estagiarios").controller("editarEstagiarioCtrl", function($scope, $routeParams,$http) {
    idEstagiario = $routeParams.id;


    $scope.editarEstagiario= function(estagiario){

    	window.location ='#/editarEstagiario/'+estagiario;

    };
    //----------------------------------------------------------------

    function getEstagiario(idEstagiario){

    	$http({
			url: 'services/estagiario.php',
			method: "POST",
			data: {'idEstagiario' : idEstagiario,
					'function' : 'getEstagiario'					
					}
		}).then(function(response){

			$scope.estagiarioInfo=(response.data[0]);

		}).catch(function(){
			console.log("Erro de comunicação com o banco");				
		});
	 }	
	
    getEstagiario(idEstagiario);
    //------------------------------------------------------------------
   	var unidades=[];

		$http({
			url: 'services/unidades.php',
			method: "POST",
			data: {'function' : 'getUnidades'
			}
		}).then(function(response){
				
				unidades=(response.data);
				

		}).catch(function(){
				console.log("Erro de comunicação com o banco");				
		});
	
		$scope.getUnidades =function(){	
			return unidades;
		};

	//----------------------------------------------------------------
	
		var setores=[];
		

		$http({
			url: 'services/setores.php',
			method: "POST",
			data: {'function' : 'getSetores',
					'unidade' : 1
			}
		}).then(function(response){
				
				setores=(response.data);
				

		}).catch(function(){
				console.log("Erro de comunicação com o banco");				
		});
	
		$scope.getSetores =function(){	
			return setores;
		};
	

	
	
});