<?php
require_once('include/config.php');


//var_dump($_SERVER);

//check identification

$param = $_POST;

if( isset($param) and !empty($param) )
{

	define('CODE_RETOUR_VALIDE', '0');
	define('CODE_RETOUR_ERREUR', '1');
	
	echo json_encode( array('code_retour' => CODE_RETOUR_ERREUR, 'message' => 'Remplir les champs obligatoires.', 'errors'  => $errors) );
	exit;

}


$smarty->assign("title", "Collection Pro");

$smarty->assign("country_conf", COUNTRY_CODE . ".conf");


$smarty->display('collections.tpl');