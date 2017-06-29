angular.module("estagiarios").controller("avaliarEstagiarioCtrl", function($scope, $routeParams,$http) {
    idEstagiario = $routeParams.id;


    $scope.avaliarEstagiario= function(estagiario){

    	window.location ='#/avaliarEstagiario/'+estagiario;

    };

    $http({
			url: 'services/estagiario.php',
			method: "POST",
			data: {'idEstagiario' : idEstagiario,
					'function' : 'getEstagiario'					
					}
		}).then(function(response){

			$scope.estagiarioInfo=(response.data[0]);
		
			//getQuestoes(response.data[0].cargo);
			getQuestoes("Designer EAD"); //selecionar os cargos


		}).catch(function(error){
			console.log("Erro de comunicação com o banco1");
			console.log(error);					
		});

		//--- ler as questões
	function getQuestoes(cargo){


		var questoes=new Array();		

		var indicadores=[];
		

		$http({
			url: 'services/indicadores.php',
			method: "POST",
			data: {'cargo' : cargo,
					'function' : 'getIndicadores'					
					}
			}).then(function(response){

					indicadores=(response.data[0]);

					var indicador1=[indicadores.indicadorTecnica,indicadores.descTecnica1,
									indicadores.descTecnica2,indicadores.descTecnica3,
									indicadores.descTecnica4,indicadores.pesoTecnica];

					var indicador2=[indicadores.indicadorMotivacao,indicadores.descMotivacao1,
									indicadores.descMotivacao2,indicadores.descMotivacao3,
									indicadores.descMotivacao4,indicadores.pesoMotivacao];

					var indicador3=[indicadores.indicadorOAprendizado,indicadores.descOAprendizado1,
									indicadores.descOAprendizado2,indicadores.descOAprendizado3,
									indicadores.descOAprendizado4,indicadores.pesoOAprendizado];

					var indicador4=[indicadores.indicadorFCliente,indicadores.descFCliente1,
									indicadores.descFCliente2,indicadores.descFCliente3,
									indicadores.descFCliente4,indicadores.pesoFCliente];

					var indicador5=[indicadores.indicadorCResultado,indicadores.descCResultado1,
									indicadores.descCResultado2,indicadores.descCResultado3,
									indicadores.descCResultado4,indicadores.pesoCResultado];

					var indicador6=[indicadores.indicadorTEquipe,indicadores.descTEquipe1,
									indicadores.descTEquipe2,indicadores.descTEquipe3,
									indicadores.descTEquipe4,indicadores.pesoTEquipe];

					indicadores=[indicador1,indicador2,indicador3,indicador4,indicador5,indicador6];

					$scope.indicadores=indicadores;			

			}).catch(function(){
					console.log("Erro de comunicação com o banco");				
			});

	}

	$scope.getIndicadores=function(cargo){
		return indicadores;
	}

	$scope.current = 0;

	$scope.next = function(){
	  	if($scope.current<5){
	    	$scope.current++;
	    }       
	};
	$scope.previous = function(){
	    if($scope.current>0){
	  		$scope.current--;
	    }
	};
});