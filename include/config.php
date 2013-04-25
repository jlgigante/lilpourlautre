<?php
/*
 * Fichier de config
 */

/*
phpinfo();
var_dump($_SERVER);
*/

define("SITE_NAME", "LiL pour l'autre");

//
include("include/smarty_conf.php");

$param = $_GET;

//var_dump($_GET);

$lang_authorized = array("fr", "en");

if( @!$param['lang'] && @!in_array($param['lang'], $lang_authorized) ) {
	//die("DDd");
	$param['lang'] = 'fr';
}

define('COUNTRY_CODE',  $param['lang'] ) ;
/* var_dump($param); */

//var_dump($param);



/*
$Langue = explode(',',$_SERVER['HTTP_ACCEPT_LANGUAGE']);
$Langue = strtolower(substr(chop($Langue[0]),0,2));
//var_dump($Langue);

$dirname = dirname($_SERVER['REQUEST_URI']);
//var_dump($_SERVER['REQUEST_URI']);

$lenght = strlen( $dirname );
$pos = strrpos( $dirname, '/' )+1;

$rest = $lenght-$pos;

if (substr_count($dirname, 'admin') != 0) {
  $country_code = $_GET['country_code'];
} else {
  $country_code = substr( $dirname, -$rest );
}

$lang_authorized = array("fr", "en");

if( !in_array($country_code, $lang_authorized) ) {
	$country_code = "fr";
}
*/

//define('COUNTRY_CODE',  $country_code ) ;
//var_dump(COUNTRY_CODE);

//URL

$serverProt = "";
if( $_SERVER["SERVER_PORT"] == "8888") {
	$serverProt = ":".$_SERVER["SERVER_PORT"];
}

$baseUrl = "http://".$_SERVER["SERVER_NAME"].$serverProt;
$currentUrl = $baseUrl.$_SERVER["REQUEST_URI"];

define("BASE_URL", $baseUrl);
define("CURRENT_URL", $currentUrl);

//MOT DE PASSE PRO

define("PRO_MDP", "L1L");


//Gestion des param pour internationalisation des URL
//$arg = explode('&', $_SERVER['argv'][0]);


/*
$argArray = array();
foreach($arg as $k=>$v) {
	$val =  explode('=', $arg[$k]);
	$argArray[$val[0]] = $val[1];
}
*/

