<?php

require_once('include/config.php');
include("include/Utils.class.php");
include("include/Collection.class.php");


//

$collection = new Collection();

try {
	$collection->setSaison( $_GET['saison']);
	$collection->setAnnee( $_GET['annee'] );
	$collection->setType( $_GET['type'] );

	
	$collection->setBaseUrl( BASE_URL );

	
	$smarty->assign("type", $collection->getType());	
	$smarty->assign("saison", $collection->getSaison());	
	$smarty->assign("annee", $collection->getAnnee());
	
	$smarty->assign("arrayCollectionImg", $collection->getCollectionImg());	
	$smarty->assign("collection_conf", $_GET['type'] . "-" . $_GET['saison'] . "-" . $_GET['annee'] . ".conf");	
}
catch (Exception $e) {

	//var_dump( $e->getMessage() );
	Utils::get404($smarty);
}




$smarty->assign("title", "Collection");

$smarty->assign("country_conf", COUNTRY_CODE . ".conf");



$smarty->display('collections.tpl');