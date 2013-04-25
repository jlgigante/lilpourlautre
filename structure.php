<?php

var_dump($_SERVER);

$Langue = explode(',',$_SERVER['HTTP_ACCEPT_LANGUAGE']);
//$Langue = strtolower(substr(chop($Langue[0]),0,2));

var_dump($Langue);

$dirname = dirname($_SERVER['REQUEST_URI']);

var_dump( $_SERVER['PHP_SELF'] );
$lenght = strlen( $dirname );
$pos = strrpos( $dirname, '/' )+1;
$rest = $lenght-$pos;

if (substr_count($dirname, 'admin') != 0) {
  define('COUNTRY_CODE', $_GET['country_code'] );
} else {
  define('COUNTRY_CODE',  substr( $dirname, -$rest ) ) ;
}
var_dump(COUNTRY_CODE);
?>

<!DOCTYPE html>
<html lang="">
<head>
	<meta charset="utf-8">
	<title></title>
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="robots" content="" />
</head>
<body>


	<header id="header">
		<nav>
			<ul>
				<li><a href="http://lilpourlautre.loc:8888/{$smarty.const.COUNTRY_CODE}/accueil">Acceuil</a></li>
				<li><a href="http://lilpourlautre.loc:8888/{$smarty.const.COUNTRY_CODE}/collection">Collections</a></li>
				<li>Boutique</li>
				<li>e-boutique</li>
				<li>
					<form action="structure.html" method="" accept-charset="utf-8">
						<select name="langues" id="langues">
							<option value="fr">FR</option>
							<option value="UK">UK</option>
							
						</select>
					</form>
					
					
				</li>
			</ul>			
		</nav>
		
	</header>
	
	
	<section>
	</section>
	
	<footer id="footer">
	
		<div id="column">
			<h2>LIL pour l'autre une histoire</h2>
			<p>
				Elégance et chic comme une priorité, exigence, savoir-faire et style sont les valeurs qui ont conforté la notoriété de LIL pour l'AUTRE depuis prés de 30 ans.
			</p>			
			<p><a href="">Lire la suite</a></p>
		</div>
		
		<div id="column">
			<h2>Professionnels</h2>
			<p>
				Pour accéder à la collection à venir, entrez le mot de passe.
			</p>
			
			<form action="" method="post" accept-charset="utf-8" name="form_professionnels">
				<fieldset>
					<legend>Professionnels form</legend>
					<p>
						<label for="first">mot de passe: </label>
						<input type="text" name="first" id="first" />
					</p>
				</fieldset>
				<p>
					<input type="submit" />
				</p>
			</form>
		</div>
		
		<div id="column">
			<ul>
				<li><a href="">Contacts</a></li>
				<li><a href="">Presse</a></li>
				<li><a href="">Facebook</a></li>
				<li><a href="">Twitter</a></li>
			</ul>
		</div>
	
	</footer>


</body>
</html>