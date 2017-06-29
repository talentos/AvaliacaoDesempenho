angular.module("estagiarios",["ngRoute"]).config(function($routeProvider,$locationProvider) {
	
    $routeProvider
    .when("/", {
        templateUrl : "view/listarEstagiarios.html"
    })
    .when("/cadastrarEstagiario", {
        templateUrl : "view/cadastrarEstagiario.html"
    })
    .when("/editarEstagiario/:id", {
        templateUrl : 'view/editarEstagiario.html'
    })
    .when("/listarEstagiarios", {
        templateUrl : "view/listarEstagiarios.html"
    })
    .when("/avaliarEstagiario/:id", {
        templateUrl : "view/avaliarEstagiario.html"
    })
    .when("/relatorioEstagiario", {
        templateUrl : "view/relatorioEstagiario.html"
    })
    .otherwise({ redirectTo: 'view/listarEstagiarios.html' 
	});

	$locationProvider.hashPrefix('');
});


