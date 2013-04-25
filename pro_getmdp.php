<?php
require_once('include/config.php');


//var_dump($_SERVER);




$smarty->assign("title", "Collection");

$smarty->assign("country_conf", COUNTRY_CODE . ".conf");

$smarty->assign('argArray', $argArray);

$smarty->display('collections.tpl');