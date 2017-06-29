angular.module("estagiarios").controller("listaEstagiariosCtrl", function($http,$scope){

		unidades=[];

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

//--------------------------------------------------------------------------------------
          
        $scope.getSetoresCargos=function(unidade){
            $http({
            url: 'services/setores.php',
            method: "POST",
            data: {'unidade' : unidade,
                    'function' : 'getSetoresCargos'
            }
            }).then(function(response){
                
                $scope.setores=(response.data);
                    

            }).catch(function(){
                console.log("Erro de comunicação com o banco");             
            }); 
        };
//-------------------------------------------------------------------------------------------
    
    $scope.estagiarios=[];

    $scope.getEstagiarios=function(unidade){
        $http({
            url: 'services/estagiario.php',
            method: "POST",
            data: {'unidade' : unidade,
                    'function' : 'getEstagiarios'
            }
        }).then(function(response){
                
            $scope.estagiarios=(response.data);
                

        }).catch(function(){
            console.log("Erro de comunicação com o banco");             
        }); 
    };


//----------------------------------------------------------------------------------------------
    
    $scope.statusOptions = {
    	availableOptions: [
		    {value: 'all', name: 'Todos'},
		    {value: '1', name: 'Ativos'},
		    {value: '0', name: 'Desligados'}
    	],
    	selectedStatus:"1" //This sets the default value of the select in the ui
    };



//------------------------------------------------------------------------------------------------
    $scope.getProxAvaliacao = function(dataAdmissao,dataUltimaAvaliacao){
        var d = new Date();
        var today = d.getTime();

        $scope.avaliar=false;

        if(dataUltimaAvaliacao){        

            dataProxAvaliacao = parseInt(dataUltimaAvaliacao)+14428800000;
           
            if(today>dataProxAvaliacao){
                $scope.avaliar=true;
            }
            return dataProxAvaliacao;

        }else{
            dataProxAvaliacao = parseInt(dataAdmissao)+14428800000;
            
            if(today>dataProxAvaliacao){
                $scope.avaliar=true;
            }
            return dataProxAvaliacao;
        }
    };

});