<?php
require_once('include/config.php');

$param = $_REQUEST;



if( isset($param["code"])  )
{

/* 	var_dump($param["action"]); */

	
	$errors = '';

	define('CODE_RETOUR_VALIDE', '0');
	define('CODE_RETOUR_ERREUR', '1');
	


	if( isset($param["action"]) ) {
		
		
		
		
		
		/*
		 * Formulaire du footer
		 */
		if( $param["action"] == "access" ) {
			
			if ( empty($param["code"] ) ) {
				echo json_encode( 
								array(
									'code_retour' => CODE_RETOUR_ERREUR, 
									'message' => 'Remplir les champs obligatoires.', 
									'errors'  => $errors) 
								);
				exit;
			}
		
			if ( $param["code"] != PRO_MDP ) {
				echo json_encode( 
								array(
									'code_retour' => CODE_RETOUR_ERREUR, 
									'message' => 'Code d\'accès incorrect', 
									'errors'  => $errors) 
								);
				exit;
			}
			
			$_SESSION["lpa_pro"] = "OK";
			
			$redirect = BASE_URL . "/" . COUNTRY_CODE . "/collection/pro/" . $confCollection["pro"][0]["saison"] . "/" . $confCollection["pro"][0]["annee"];
				
			echo json_encode( array('code_retour' => CODE_RETOUR_VALIDE, 'message' => 'COOL', 'redirect'  => $redirect) );
			exit;
			
		}
		
		
		
		
		
		
	}
	
	

}