angular.module("estagiarios").controller("avaliarEstagiario", function($scope){
	
	var questoes=new Array();		

	var texto="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis provident blanditiis, facilis quasi cum architecto accusamus, deleniti perferendis placeat hic beatae iure quis facere quibusdam soluta est in alias voluptatem.";

	var indicador="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic, aspernatur, excepturi. Odit nisi tempora non magnam velit iure eaque nesciunt, consequatur facere, minus enim aspernatur animi repudiandae earum architecto ea!";
			
	questoes=[
			{competencia: "Competencia 1" , texto: texto, indicador1: indicador, indicador2: indicador, indicador3: indicador, indicador4: indicador},
			{competencia: "Competencia 2" , texto: texto, indicador1: indicador, indicador2: indicador, indicador3: indicador, indicador4: indicador},
			{competencia: "Competencia 3" , texto: texto, indicador1: indicador, indicador2: indicador, indicador3: indicador, indicador4: indicador},
			{competencia: "Competencia 4" , texto: texto, indicador1: indicador, indicador2: indicador, indicador3: indicador, indicador4: indicador},
			{competencia: "Competencia 5" , texto: texto, indicador1: indicador, indicador2: indicador, indicador3: indicador, indicador4: indicador},
			{competencia: "Competencia 6" , texto: texto, indicador1: indicador, indicador2: indicador, indicador3: indicador, indicador4: indicador}
	];

	$scope.getQuestoes=function(){
		
		return questoes;
	};

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