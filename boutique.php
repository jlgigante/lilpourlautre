<?php
require_once('include/config.php');
//$smarty->config_dir = "../i18n/";
$smarty->assign("country_conf", COUNTRY_CODE . ".conf");


$smarty->display('boutique.tpl');

