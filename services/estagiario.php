<?php
require_once('connectdb.php');
$data=  json_decode(file_get_contents('php://input'));
$function=$data->function;





switch ($function) {
	case 'registerEstagiario':

		$estagiario=$data->estagiario;

		$nome = $estagiario->nome;
		$fk_cargo_id = $estagiario->cargo->id;
		$fk_gestor_id = $estagiario->gestor->id;
		$dataAdmissao = $estagiario->dataAdmissao;
		$nivel= $estagiario->nivel;
		$status = 1;

		
		$query = $dbhandle->query(" INSERT INTO estagiario (nome, fk_cargo, fk_gestor, dataAdmissao, nivel, status)	VALUES ( '$nome', '$fk_cargo_id', '$fk_gestor_id', '$dataAdmissao', '$nivel', '$status')");
		
		$idEstagiario = $dbhandle->insert_id;
		
		
		if(isset($estagiario->dataUltimaAvaliacao)){
		
			$dataUltimaAvaliacao= $estagiario->dataUltimaAvaliacao;
			$query = $dbhandle->query(" INSERT INTO avaliacao (dataAvaliacao, fk_aluno)
		VALUES ( '$dataUltimaAvaliacao', '$idEstagiario')");
		}

		$dbhandle->close();
		echo ($idEstagiario);
		break;


	case 'turnOffEstagiario':

		$idEstagiario = $data->idEstagiario;

		$query = $dbhandle->query("UPDATE estagiario SET status=0 WHERE estagiario.id = '$idEstagiario'");

		$dbhandle->close();
		
		break;

	case 'turnOnEstagiario':

		$idEstagiario = $data->idEstagiario;

		$query = $dbhandle->query("UPDATE estagiario SET status=1 WHERE estagiario.id = '$idEstagiario'");

		$dbhandle->close();
		
		break;
	
	case 'getEstagiarios':


		$unidade = $data->unidade;
		$result = $dbhandle-> query("SELECT DISTINCT estagiario.id as id, estagiario.nome as nome, setor.nome AS setor, cargo.nome as cargo, gestor.nome AS gestor, estagiario.dataAdmissao as dataAdmissao, (SELECT max(avaliacao.dataAvaliacao) FROM avaliacao where avaliacao.fk_estagiario=estagiario.id) as dataUltimaAvaliacao,estagiario.nivel as nivel, estagiario.status as status FROM estagiario INNER JOIN cargo ON cargo.id = estagiario.fk_cargo INNER JOIN setor ON setor.id = cargo.fk_setor INNER JOIN unidade ON unidade.id = setor.fk_unidade INNER JOIN gestor ON gestor.id = estagiario.fk_gestor LEFT JOIN avaliacao ON avaliacao.fk_estagiario = estagiario.id where unidade.id = '$unidade'");	

		$array = array();

		$array = $result->fetch_all( MYSQLI_ASSOC );

		//$encodedArray = array_map(utf8_encode, $array);	
		$json =  json_encode($array);

		echo ($json);

		$dbhandle->close();

		break;

	case 'getEstagiario':
		$idEstagiario = $data->idEstagiario;
		$result = $dbhandle-> query("SELECT estagiario.id AS id, estagiario.nome AS nome,unidade.id as idUnidade ,unidade.nome as unidade, setor.id as idSetor ,setor.nome as setor,cargo.id as idCargo , cargo.nome as cargo, gestor.id as idGestor, gestor.nome as gestor,estagiario.dataAdmissao as dataAdmissao, estagiario.nivel as nivel, estagiario.status as status, avaliacao.id as idAvaliacao, max(avaliacao.dataAvaliacao) as dataUltimaAvaliacao FROM estagiario INNER JOIN cargo on estagiario.fk_cargo=cargo.id INNER JOIN setor ON setor.id=cargo.fk_setor INNER JOIN unidade ON setor.fk_unidade=unidade.id INNER JOIN gestor on gestor.id=estagiario.fk_gestor LEFT JOIN avaliacao on avaliacao.fk_estagiario=estagiario.id where estagiario.id='$idEstagiario'");	

		$array = array();

		$array = $result->fetch_all( MYSQLI_ASSOC );

		$json =  json_encode($array);

		echo ($json);

		$dbhandle->close();

	break;

	case 'setEstagiario':

		$estagiario=$data->estagiario;

		$nome = $estagiario->nome;
		$idEstagiario = $estagiario->id;
		$fk_cargo_id = $estagiario->idCargo;
		$fk_gestor_id = $estagiario->idGestor;
		$dataAdmissao = $estagiario->dataAdmissao;		
		

		if(!($estagiario->nivel)){
			$nivel=1;
		}else{
			$nivel= $estagiario->nivel;
		}
		
		$query = $dbhandle->query("UPDATE estagiario SET nome = '$nome', fk_cargo ='$fk_cargo_id' , fk_gestor = '$fk_gestor_id', dataAdmissao = '$dataAdmissao' , nivel='$nivel' WHERE estagiario.id = '$idEstagiario'");

		$idAvaliacao = $estagiario->idAvaliacao;
		$dataUltimaAvaliacao = $estagiario->dataUltimaAvaliacao;	

		if($estagiario->avaliado == false){
			$query = $dbhandle->query("DELETE FROM avaliacao WHERE id='$idAvaliacao'");

		}else if($idAvaliacao == false){

			$query = $dbhandle->query(" INSERT INTO avaliacao (dataAvaliacao,fk_estagiario)	VALUES ( '$dataUltimaAvaliacao','$idEstagiario')");
		}else {
		
			$query = $dbhandle->query("UPDATE avaliacao SET dataAvaliacao = '$dataUltimaAvaliacao' WHERE avaliacao.id = '$idAvaliacao'");
		}

		$dbhandle->close();

		# code...
		break;
	
	
}

		

?>