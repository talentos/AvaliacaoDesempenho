angular.module("estagiarios").controller("cadastrarEstagiarioCtrl", function($scope,$http){

		unidades=[];

		$http({
			url: '../services/unidades.php',
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
		//----------------------------------------------

		$scope.setores=[];

		$scope.getSetores=function(unidade){
			
			$http({
			url: '../services/setores.php',
			method: "POST",
			data: {'unidade' : unidade,
					'function' : 'getSetores'					
					}
			}).then(function(response){

					$scope.setores=(response.data);					

			}).catch(function(){
					console.log("Erro de comunicação com o banco");				
			});

		};
		//----------------------------------------------
		$scope.gestores=[];

		$scope.getGestores=function(setor){
			if(!setor){
				$scope.gestores=[];
			}else{

				$http({
				url: '../services/gestor.php',
				method: "POST",
				data: {'setor' : setor,
						'function' : 'getGestores'					
						}
				}).then(function(response){
						
						$scope.gestores=(response.data);					

				}).catch(function(){
						console.log("Erro de comunicação com o banco");				
				});
			}			

		};
		//-------------------------------------------------

		$scope.cargos=[];

		$scope.getCargos=function(setor){
			if(!setor){
				$scope.cargos=[];
			}else{

				$http({
				url: '../services/cargo.php',
				method: "POST",
				data: {'setor' : setor,
						'function' : 'getCargos'					
						}
				}).then(function(response){
						console.log(response);
						$scope.cargos=(response.data);					

				}).catch(function(){
						console.log("Erro de comunicação com o banco");				
				});
			}
		};

		$scope.cadastrarEstagiario=function(estagiario){
			$http({
				url: '../services/estagiario.php',
				method: "POST",
				data: {'estagiario': estagiario,
						'function' : 'cadastrar'
				 }
			}).then(function(response){
			
				$scope.cadastroSuccess=true;
				$scope.cadastroError=false;

			}).catch(function(){
				$scope.cadastroError=true;
				$scope.cadastroSuccess=false;
				$scope.estagiario.id="1";				
			});
			
		};

});
