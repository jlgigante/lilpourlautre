<?php
require_once('include/config.php');


//var_dump($_SERVER);


$smarty->assign("title", "Contact");

$smarty->assign("country_conf", COUNTRY_CODE . ".conf");

$smarty->display('contacts.tpl');

