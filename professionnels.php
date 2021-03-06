<?php
require_once('include/config.php');



//check identification
if ( !isset($_SESSION["lpa_pro"]) ) {
	$redirect = BASE_URL . "/" . COUNTRY_CODE . "/professionnels/acces";

	header('location:'.$redirect);
	exit;
}


$send = false;
if($_POST) {
	//var_dump($_POST);
	
	$var = "";
	
	//echo $var==TRUE ? 'TRUE' : 'FALSE';
	
	$name = filter_var($_POST["name"], FILTER_SANITIZE_SPECIAL_CHARS);
	$firstname = filter_var($_POST["firstname"], FILTER_SANITIZE_SPECIAL_CHARS);
	$company = filter_var($_POST["company"], FILTER_SANITIZE_SPECIAL_CHARS);
	$email = filter_var($_POST["email"], FILTER_SANITIZE_EMAIL);
	
	$formValues = array(
						"name" => $name,
						"firstname" => $firstname,
						"email" => $email,
						"company" => $company,
				);
	
	
	
	$errors = array();
	$errors["name"] = empty($name) ? "erreur nom" : false;
	$errors["firstname"] = empty($firstname) ? "erreur prenom" : false;
	$errors["company"] = empty($company) ? "erreur company" : false;
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
					'Reply-To: '.$email . "\r\n" .
					'X-Mailer: PHP/' . phpversion();
	
		$message = "
					nom : ".$name." \r\n
					prenom : ".$firstname." \r\n
					siciete : ".$company." \r\n
					email :  ".$email;
		
	    mail(EMAIL_CONTACT, $subject, $message, $headers);	
	    
	    $send = true;

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


$smarty->assign("send", $send);
$smarty->assign("title", "Collection Pro");
$smarty->assign("country_conf", COUNTRY_CODE . ".conf");
$smarty->display('professionnels.tpl');