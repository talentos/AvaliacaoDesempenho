<?php
require_once('connectdb.php');
$data=  json_decode(file_get_contents('php://input'));
$function=$data->function;

switch ($function) {
	case 'cadastrar':

		$estagiario=$data->estagiario;

		$nome = $estagiario->nome;
		$fk_cargo_id = $estagiario->cargo->id;
		$fk_gestor_id = $estagiario->gestor->id;
		$dataAdmissao = $estagiario->dataAdmissao;
		
		

		if(!($estagiario->nivel)){
			$nivel=1;
		}else{
			$nivel= $estagiario->nivel;
		}
		$status = 1;



		
		$query = $dbhandle->query(" INSERT INTO estagiario (nome, fk_cargo, fk_gestor, dataAdmissao, nivel, status)	VALUES ( '$nome', '$fk_cargo_id', '$fk_gestor_id', '$dataAdmissao', '$nivel', '$status')");

		$idEstagiario = $dbhandle->insert_id;

		if(($estagiario->dataUltimaAvaliacao == false)){
			$dataUltimaAvaliacao=null;
		}else{
			$dataUltimaAvaliacao= $estagiario->dataUltimaAvaliacao;
			$query = $dbhandle->query(" INSERT INTO avaliacao (dataAvaliacao, fk_aluno)
		VALUES ( '$dataUltimaAvaliacao', '$idEstagiario')");
		}

		

		$dbhandle->close();

		break;
	case 'desligar':
		# code...
		break;
	case 'alterar':
		# code...
		break;
	case 'listar':
		# code...
		break;
	
	
}
?>