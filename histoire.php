<?php
require_once('include/config.php');
$smarty->assign("country_conf", COUNTRY_CODE . ".conf");

//var_dump($_SERVER);




$smarty->assign("title", "Accueil");



$smarty->display('histoire.tpl');

