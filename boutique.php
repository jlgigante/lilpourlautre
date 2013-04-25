<?php
require_once('include/config.php');


//var_dump($_SERVER);


//var_dump($_SERVER);







//$smarty->config_dir = "../i18n/";
$smarty->assign("country_conf", COUNTRY_CODE . ".conf");


$smarty->display('boutique.tpl');


