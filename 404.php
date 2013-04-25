<?php
require_once('include/config.php');
include("include/Utils.class.php");
$smarty->assign("country_conf", COUNTRY_CODE . ".conf");
Utils::get404($smarty);

/*
if (!headers_sent()) {
            header('HTTP/1.1 404 Not Found');
}		
$smarty->display('404.tpl');
exit();
*/


//$smarty->display('404.tpl');
