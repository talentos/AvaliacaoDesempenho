<?php
require_once('connectdb.php');
header('Content-Type: application/json');
header('Content-Type: text/html; charset=utf-8');


$data=  json_decode(file_get_contents('php://input'));


$function = $data->function;

switch ($function) {
	case 'getGestores':	

		$setor = $data->setor;
		$result = $dbhandle-> query("SELECT * FROM gestor WHERE fk_setor='$setor'");		 
		$array = array();

		$array = $result->fetch_all( MYSQLI_ASSOC );

			
		$json =  json_encode($array);

		echo ($json);
		
		$dbhandle->close();

		break;
	case 'getCargos':
		# code...
		break; 

}


?>