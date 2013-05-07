<?php
require_once('include/config.php');
include("include/Utils.class.php");

//var_dump($_SERVER);




include("include/Collection.class.php");


//

$collection = new Collection();

try {

	if ( $collection->isProConnected() === false) {
		//redirege vers la page pro
		header("location:" . BASE_URL . "/" . COUNTRY_CODE . "/pro");
	}
	//var_dump( $collection->isProConnected() );


	$collection->setSaison( $_GET['saison']);
	$collection->setAnnee( $_GET['annee'] );	
	$collection->setBaseUrl( BASE_URL );

	$smarty->assign("saison", $collection->getSaison());	
	$smarty->assign("annee", $collection->getAnnee());
	
/* 	var_dump($collection->getCollectionImg("pro")); */
	
	$smarty->assign("arrayCollectionImg", $collection->getCollectionImg("pro"));	
	$smarty->assign("collection_conf", "collection-" . $_GET['saison'] . "-" . $_GET['annee'] . ".conf");	
}
catch (Exception $e) {

	//var_dump( $e->getMessage() );
	Utils::get404($smarty);
}



$smarty->assign("title", "Collection PRO");

$smarty->assign("country_conf", COUNTRY_CODE . ".conf");

//$smarty->assign('argArray', $argArray);

$smarty->display('collections.tpl');