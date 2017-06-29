angular.module("estagiarios").controller("editarEstagiarioCtrl", function($scope, $routeParams,$http) {
    idEstagiario = $routeParams.id;


    $scope.editarEstagiario= function(estagiario){

    	window.location ='#/editarEstagiario/'+estagiario;

    };
    //----------------------------------------------------------------
    $scope.cargoFieldActive=false;
	$scope.gestorFieldActive=false;		
    	$http({
			url: 'services/estagiario.php',
			method: "POST",
			data: {'idEstagiario' : idEstagiario,
					'function' : 'getEstagiario'					
					}
		}).then(function(response){

			$scope.estagiarioInfo=(response.data[0]);


			if(response.data[0].dataUltimaAvaliacao!=null){
				$scope.estagiarioInfo.avaliado=true;
			}
		

			getUnidades();
			getSetores(response.data[0].idUnidade);
			getCargos(response.data[0].idSetor);
			getGestores(response.data[0].idSetor);
			

		}).catch(function(error){
			console.log("Erro de comunicação com o banco1");
			console.log(error);					
		});

    //------------------------------------------------------------------
   	function getUnidades(){
		$http({
			url: 'services/unidades.php',
			method: "POST",
			data: {'function' : 'getUnidades'
					}
		}).then(function(response){
				
			$scope.unidades=(response.data);
				
		}).catch(function(){
				console.log("Erro de comunicação com o banco");				
		});
		
		$scope.getUnidades =function(){	
			getUnidades();
			
		};
	}

	//----------------------------------------------------------------
	
	
	function getSetores(idUnidade){
		$http({
			url: 'services/setores.php',
			method: "POST",
			data: {'function' : 'getSetores',
					'unidade' : idUnidade
			}
		}).then(function(response){
					$scope.setores=(response.data);
				
			}).catch(function(){
				console.log("Erro de comunicação com o banco");				
		});
	};

	$scope.getSetores = function(idUnidade){
		getSetores(idUnidade);
	};	

	//----------------------------------------------------

	function getCargos(idSetor){
		$http({
			url: 'services/cargo.php',
			method: "POST",
			data: {'function' : 'getCargos',
					'setor' : idSetor
			}
		}).then(function(response){
					$scope.cargos=(response.data);
				
		}).catch(function(){
				console.log("Erro de comunicação com o banco");				
		});
	};

	$scope.getCargos = function(idSetor){
		getCargos(idSetor);
	};	

	//---------------------------------------------------------

	function getGestores(idSetor){
		$http({
			url: 'services/gestor.php',
			method: "POST",
			data: {'function' : 'getGestores',
					'setor' : idSetor
			}
		}).then(function(response){
					$scope.gestores=(response.data);
				
		}).catch(function(){
				console.log("Erro de comunicação com o banco");				
		});
	};

	$scope.getGestores = function(idSetor){
		getGestores(idSetor);
	};	

//-----------------------------------------------------------

 	$scope.setEstagiario= function(estagiario){
			$http({
				url: 'services/estagiario.php',
				method: "POST",
				data: {'estagiario': estagiario,
						'function' : 'setEstagiario'
				 }
			}).then(function(response){
			
				$scope.cadastroSuccess=true;
				$scope.cadastroError=false;

			}).catch(function(){
				
				$scope.cadastroError=true;
				$scope.cadastroSuccess=false;			
			});
			
	
    };
    $scope.changeStatusEstagiario=function(idEstagiario,status){
    	if(status==0){
    		$http({
				url: 'services/estagiario.php',
				method: "POST",
				data: {'idEstagiario': idEstagiario,
						'function' : 'turnOnEstagiario'
				 }
			}).then(function(response){
				$scope.estagiarioInfo.status=1;
				$scope.cadastroSuccess=true;
				$scope.cadastroError=false;

			}).catch(function(){
				
				$scope.cadastroError=true;
				$scope.cadastroSuccess=false;				
			});
    	}else{
    		$http({
				url: 'services/estagiario.php',
				method: "POST",
				data: {'idEstagiario': idEstagiario,
						'function' : 'turnOffEstagiario'
				 }
			}).then(function(response){
				$scope.estagiarioInfo.status=0;
				$scope.cadastroSuccess=true;
				$scope.cadastroError=false;

			}).catch(function(){
				
				$scope.cadastroError=true;
				$scope.cadastroSuccess=false;				
			});
    	}
    }
//--------------------------------------------------
    $scope.openModal=function(modal){
    	var modal=document.getElementById(modal);
    	modal.classList.remove('modal__background--closed');
    }
    $scope.closeModal=function(modal){
    	var modal=document.getElementById(modal);
    	modal.classList.add('modal__background--closed');
    }



});