<?php
	define("HOSTNAME","localhost");
	define("USERNAME","root");
	define("PASSWORD","");
	define("DATABASE","avaldesempenho");

	$dbhandle=new mysqli(HOSTNAME,USERNAME,PASSWORD,DATABASE) or die("Unable to Connect DB");
	$dbhandle->set_charset("utf8");
?>