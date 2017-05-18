angular.module("estagiarios").controller("listaEstagiariosCtrl", function($scope){

		/*Recupera as informações do setor selecionado*/
		var unidade1 = {
            id: 1,
            nome: 'Benfica/RJ',
            setores:
                [
                    { 
                    	id: 1, 
                    	nome: 'Vendas',
                    	cargos:[

                    		{
                    			id:"1",
                    			nome:"Designer Gráfico"
                    		},

							{
								id:"2",
								nome:"Programador"
							},
							{
								id:"3",
								nome:"Psicólogo",
							}	
                    	]
                	},
                    {
                    	id: 2,
                     	nome: 'Comercial',
                     	cargos:[
                     		{
                     			id:"4",
                     			nome:"Vendedor",
                     		}
                     	]
                    }
                ],
        };

        var unidade2 = {
            id: "3",
            nome: 'Minas Gerais',
            setores:
                [
                    { 
                    	id: '3', 
                    	nome: 'Jurídico',
                    	cargos:[

                    		{
                    			id:"5",
                    			nome:"Advogado"
                    		},

							{
								id:"2",
								nome:"Programador"
								
							},
							{
								id:"3",
								nome:"Psicólogo"					
							}	
                    	]
                	},
                    {
                    	id: 4,
                     	nome: 'Talentos',
                     	cargos:[
                     		{
                     			id:"6",
                     			nome:"Comercial"                     			
                     		}
                     	]
                    }
                ],
        };

        $scope.unidades =[{nome:"Benfica/RJ"},{nome:"Minas Gerais"}];

        $scope.getSetores=function(unidade){
        	return unidade1.setores;
        };

        $scope.estagiarios=[
                    		{id:"1",nome:"Berenice",unidade:"Benfica/RJ",setor:"Vendas",cargo:"Designer Gráfico",gestor:"Maria Aparecida",dataAdmissao:"01/01/2016",dataUltimaAvaliacao:"20/05/2016",ciclo:"2",status:true},
							{id:"2",nome:"Amanda",unidade:"Benfica/RJ",setor:"Vendas",cargo:"Designer Gráfico",gestor:"Maria Aparecida",dataAdmissao:"10/02/2016",dataUltimaAvaliacao:"30/06/2016",ciclo:"1",status:false},
							{id:"3",nome:"Ronaldo",unidade:"Benfica/RJ",setor:"Vendas",cargo:"Designer Gráfico",gestor:"Maria Aparecida",dataAdmissao:"10/03/2016",dataUltimaAvaliacao:"30/07/2016",ciclo:"2",status:true},
							{id:"4",nome:"José",unidade:"Benfica/RJ",setor:"Vendas",cargo:"Designer Gráfico",gestor:"Maria Aparecida",dataAdmissao:"10/04/2016",dataUltimaAvaliacao:"30/08/2016",ciclo:"3",status:true},
							{id:"5",nome:"Marcos",unidade:"Benfica/RJ",setor:"Vendas", cargo:"Programador",gestor:"Maria Aparecida",dataAdmissao:"01/01/2016",dataUltimaAvaliacao:"20/05/2016",ciclo:"2",status:true},
							{id:"6",nome:"Roberta",unidade:"Benfica/RJ",setor:"Vendas", cargo:"Programador",gestor:"Maria Aparecida",dataAdmissao:"10/02/2016",dataUltimaAvaliacao:"30/06/2016",ciclo:"1",status:false},
							{id:"7",nome:"Raimundo",unidade:"Benfica/RJ",setor:"Vendas", cargo:"Programador",gestor:"Maria Aparecida",dataAdmissao:"10/03/2016",dataUltimaAvaliacao:"30/07/2016",ciclo:"2",status:true},
							{id:"8",nome:"Gustavo",unidade:"Benfica/RJ",setor:"Vendas", cargo:"Programador",gestor:"Maria Aparecida",dataAdmissao:"10/04/2016",dataUltimaAvaliacao:"30/08/2016",ciclo:"3",status:true},
							{id:"9",nome:"Verônica",unidade:"Benfica/RJ",setor:"Vendas", cargo:"Psicólogo",gestor:"Maria Aparecida",dataAdmissao:"01/01/2016",dataUltimaAvaliacao:"20/05/2016",ciclo:"2",status:true},
							{id:"10",nome:"André",unidade:"Benfica/RJ",setor:"Vendas", cargo:"Psicólogo",gestor:"Maria Aparecida",dataAdmissao:"10/02/2016",dataUltimaAvaliacao:"30/06/2016",ciclo:"1",status:false},
							{id:"11",nome:"Ricardo",unidade:"Benfica/RJ",setor:"Vendas", cargo:"Psicólogo",gestor:"Maria Aparecida",dataAdmissao:"10/03/2016",dataUltimaAvaliacao:"30/07/2016",ciclo:"2",status:true},
							{id:"12",nome:"Matheus",unidade:"Benfica/RJ",setor:"Vendas", cargo:"Psicólogo",gestor:"Maria Aparecida",dataAdmissao:"10/04/2016",dataUltimaAvaliacao:"30/08/2016",ciclo:"3",status:true},
                    		{id:"13",nome:"Rodrigo",unidade:"Benfica/RJ",setor:"Comercial",cargo:"Vendedor",gestor:"Maria Aparecida",dataAdmissao:"01/01/2016",dataUltimaAvaliacao:"20/05/2016",ciclo:"2",status:true},
							{id:"14",nome:"Thays",unidade:"Benfica/RJ",setor:"Comercial",cargo:"Vendedor",gestor:"Maria Aparecida",dataAdmissao:"10/02/2016",dataUltimaAvaliacao:"30/06/2016",ciclo:"1",status:false},
							{id:"15",nome:"Arthur",unidade:"Benfica/RJ",setor:"Comercial",cargo:"Vendedor",gestor:"Maria Aparecida",dataAdmissao:"10/03/2016",dataUltimaAvaliacao:"30/07/2016",ciclo:"2",status:true},
							{id:"16",nome:"Thuanne",unidade:"Benfica/RJ",setor:"Comercial",cargo:"Vendedor",gestor:"Maria Aparecida",dataAdmissao:"10/04/2016",dataUltimaAvaliacao:"30/08/2016",ciclo:"3",status:true},	                    	
	                    	
	                    	{id:"17",nome:"Rodrigo",unidade:"Minas Gerais",setor:"Talentos",cargo:"Comercial",gestor:"Maria Aparecida",dataAdmissao:"01/01/2016",dataUltimaAvaliacao:"20/05/2016",ciclo:"2",status:true},
							{id:"18",nome:"Thays",unidade:"Minas Gerais",setor:"Talentos",cargo:"Comercial",gestor:"Maria Aparecida",dataAdmissao:"10/02/2016",dataUltimaAvaliacao:"30/06/2016",ciclo:"1",status:false},
							{id:"19",nome:"Arthur",unidade:"Minas Gerais",setor:"Talentos",cargo:"Comercial",gestor:"Maria Aparecida",dataAdmissao:"10/03/2016",dataUltimaAvaliacao:"30/07/2016",ciclo:"2",status:true},
							{id:"20",nome:"Thuanne",unidade:"Minas Gerais",setor:"Talentos",cargo:"Comercial",gestor:"Maria Aparecida",dataAdmissao:"10/04/2016",dataUltimaAvaliacao:"30/08/2016",ciclo:"3",status:true},
	                    	{id:"21",nome:"Verônica",unidade:"Minas Gerais",setor:"Vendas", cargo:"Psicólogo",gestor:"Maria Aparecida",dataAdmissao:"01/01/2016",dataUltimaAvaliacao:"20/05/2016",ciclo:"2",status:true},
							{id:"22",nome:"André",unidade:"Minas Gerais",setor:"Vendas", cargo:"Psicólogo",gestor:"Maria Aparecida",dataAdmissao:"10/02/2016",dataUltimaAvaliacao:"30/06/2016",ciclo:"1",status:false},
							{id:"23",nome:"Ricardo",unidade:"Minas Gerais",setor:"Vendas", cargo:"Psicólogo",gestor:"Maria Aparecida",dataAdmissao:"10/03/2016",dataUltimaAvaliacao:"30/07/2016",ciclo:"2",status:true},
							{id:"24",nome:"Matheus",unidade:"Minas Gerais",setor:"Vendas", cargo:"Psicólogo",gestor:"Maria Aparecida",dataAdmissao:"10/04/2016",dataUltimaAvaliacao:"30/08/2016",ciclo:"3",status:true}
                    			
        ];

    $scope.statusOptions = {
    	availableOptions: [
		    {value: 'all', name: 'Todos'},
		    {value: '1', name: 'Ativos'},
		    {value: '0', name: 'Desligados'}
    	],
    	selectedStatus:"1" //This sets the default value of the select in the ui
    };

});