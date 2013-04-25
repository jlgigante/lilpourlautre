<?php

require_once('include/config.php');
include("include/Utils.class.php");
$smarty->assign("country_conf", COUNTRY_CODE . ".conf");
//


//var_dump($_GET);

//Utils::test();
//var_dump($smarty);
//Utils::get404($smarty);


$arrayCollection = array(
				"printemps-ete", 
				"automne-hiver",
);


//
if ( !in_array($_GET['saison'], $arrayCollection) ) {
	Utils::get404($smarty);
}


//check
$collectionBaseDir = "img/collections/".$_GET['saison']."/".$_GET['annee']."/";
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




$smarty->assign("title", "Collection");

$smarty->assign("country_conf", COUNTRY_CODE . ".conf");

//$smarty->assign('argArray', $argArray);

$smarty->display('collections.tpl');