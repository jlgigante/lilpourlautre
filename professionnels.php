<?php
require_once('include/config.php');


//var_dump($_SERVER);

//check identification





if($_POST) {
	var_dump($_POST);
	
	
	
	echo $var==TRUE ? 'TRUE' : 'FALSE';
	
}


if( isset($param["code"])  )
{


	
	$errors = '';

	define('CODE_RETOUR_VALIDE', '0');
	define('CODE_RETOUR_ERREUR', '1');
	

	
	if ( empty($param["code"] ) ) {
		echo json_encode( array('code_retour' => CODE_RETOUR_ERREUR, 'message' => 'Remplir les champs obligatoires.', 'errors'  => $errors) );
	exit;
	}

	if ( $param["code"] != PRO_MDP ) {
		echo json_encode( array('code_retour' => CODE_RETOUR_ERREUR, 'message' => 'Code d\'accès incorrect', 'errors'  => $errors) );
	exit;
	}
	
	$_SESSION["lpa_pro"] = "OK";
	
	
	$redirect = BASE_URL . "/" . COUNTRY_CODE . "/collection/pro/" . $confCollection["pro"][0]["saison"] . "/" . $confCollection["pro"][0]["annee"];
	
	
	echo json_encode( array('code_retour' => CODE_RETOUR_VALIDE, 'message' => 'COOL', 'redirect'  => $redirect) );
	exit;

}


$smarty->assign("title", "Collection Pro");
$smarty->assign("country_conf", COUNTRY_CODE . ".conf");
$smarty->display('professionnels.tpl');