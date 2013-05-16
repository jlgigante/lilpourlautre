<?php
require_once('include/config.php');


//var_dump($_SERVER);

//check identification



if($_POST) {
	var_dump($_POST);
	
	$var = "";
	
	//echo $var==TRUE ? 'TRUE' : 'FALSE';
	
	$name = filter_var($_POST["name"], FILTER_SANITIZE_SPECIAL_CHARS);
	$firstname = filter_var($_POST["firstname"], FILTER_SANITIZE_SPECIAL_CHARS);
	$email = filter_var($_POST["email"], FILTER_SANITIZE_EMAIL);
	
	$formValues = array(
						"name" => $name,
						"firstname" => $firstname,
						"email" => $email,
				);
	
	
	
	$errors = array();
	$errors["name"] = empty($name) ? "erreur nom" : false;
	$errors["firstname"] = empty($firstname) ? "erreur prenom" : false;
	$errors["email"] =  !filter_var($email, FILTER_VALIDATE_EMAIL) ? "erreur email" : false;
	//
	foreach($errors as $key=>$val)
	{
		if ($val == false) unset($errors[$key]);
	}
	
	if( !empty($errors) ) {
		$smarty->assign("errors", $errors);
		$smarty->assign("formValues", $formValues);			
	}
	else {
		//$to      = 'contact@troisw-agenceweb.com';
		$subject = "LiL pour l'autre - demande de code ";
		$message = 'Bonjour !';
		$headers = 'From: '.EMAIL_CONTACT."\r\n" .
					'Reply-To: '.$param['email'] . "\r\n" .
					'X-Mailer: PHP/' . phpversion();
	
		$message = "
					nom : ".$param['nom']." \r\n
					prenom : ".$param['prenom']." \r\n
					email :  ".$param['email']." \r\n
					telephone :  ".$param['telephone']." \r\n
					entreprise :  ".$param['entreprise']." \r\n
					message :  ".$param['message'];
		
		     mail(EMAIL_CONTACT, $subject, $message, $headers);	
	}
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