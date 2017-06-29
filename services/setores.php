<?php
require_once('connectdb.php');
header('Content-Type: application/json');
header('Content-Type: text/html; charset=utf-8');


$data=  json_decode(file_get_contents('php://input'));


$function = $data->function;

switch ($function) {
	case 'getSetores':	

		$unidade = $data->unidade;
		$result = $dbhandle-> query("SELECT * FROM setor WHERE fk_unidade='$unidade'");		 
		$array = array();

		$array = $result->fetch_all( MYSQLI_ASSOC );

		//$encodedArray = array_map(utf8_encode, $array);	
		$json =  json_encode($array);

		echo ($json);

		//echo json_last_error();
		//$unidades=[{id:'1',nome:'Benfica/RJ'},{id:'2',nome:'Minas Gerais'},{id:'3',nome:'São Paulo'}];
		$dbhandle->close();

		break;

	case 'getSetoresCargos':

		$unidade = $data->unidade;
		$result = $dbhandle-> query("SELECT setor.nome AS setor, cargo.nome AS cargo
									FROM setor
									INNER JOIN cargo ON cargo.fk_setor = setor.id
                                    inner JOIN unidade on unidade.id = setor.fk_unidade
                                    WHERE unidade.id = '$unidade'
									ORDER BY setor.nome");		 
		$array = array();

		$array = $result->fetch_all( MYSQLI_ASSOC );

		//$encodedArray = array_map(utf8_encode, $array);	
		$json =  json_encode($array);

		echo ($json);
		
		$dbhandle->close();
		break; 

}

		

?>