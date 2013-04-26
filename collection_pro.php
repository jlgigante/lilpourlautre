<?php
require_once('include/config.php');


//var_dump($_SERVER);

//check identification

$param = $_POST;
var_dump($_POST);
if( isset($param) and !empty($param) )
{

	

	define('CODE_RETOUR_VALIDE', '0');
	define('CODE_RETOUR_ERREUR', '1');
	
	echo json_encode( array('code_retour' => CODE_RETOUR_ERREUR, 'message' => 'Remplir les champs obligatoires.', 'errors'  => $errors) );
	exit;

}



$arrayCollection = array(
				"printemps-ete", 
				"automne-hiver",
);

if ( isset($_GET['saison']) ) {



	if ( !in_array($_GET['saison'], $arrayCollection) ) {
		Utils::get404($smarty);
	}




	//check
	$collectionBaseDir = "img/collections/pro/".$_GET['saison']."/".$_GET['annee']."/";
	$arrayCollectionImg = array();
	
	if( @$collection = opendir($collectionBaseDir) ) {
		$i = 0;
		//on construie la liste des images
		while(false !== ($fichier = readdir($collection)))
		{	
			if($fichier != '.' && $fichier != '..' && $fichier != '.DS_Store' && $fichier != 'index.php' && $fichier != 'Icon')
			{
				//$arrayCollectionImg['id'] = $i;
				
				
				
				$arrayCollectionImg[$i]['url'] = BASE_URL."/".$collectionBaseDir.$fichier;
				
				list($width, $height, $type, $attr) = getimagesize($arrayCollectionImg[$i]["url"]);
				
				$arrayCollectionImg[$i]['width'] = $width;
				$arrayCollectionImg[$i]['height'] = $height;
				
				$i++;
			}
			
		}
		
	
		//var_dump($arrayCollectionImg);
		//die();
		
		//on envoie l'url de la collection
		$smarty->assign("arrayCollectionImg", $arrayCollectionImg);
		
	} else {
		//die("KO");
		Utils::get404($smarty);
	}

}


$smarty->assign("title", "Collection PRO");

$smarty->assign("country_conf", COUNTRY_CODE . ".conf");

//$smarty->assign('argArray', $argArray);

$smarty->display('collections.tpl');