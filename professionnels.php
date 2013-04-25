<?php
require_once('include/config.php');


//var_dump($_SERVER);

//check identification

if($_POST) {
	var_dump($_POST);
}


$smarty->assign("title", "Collection Pro");

$smarty->assign("country_conf", COUNTRY_CODE . ".conf");


$smarty->display('professionnels.tpl');