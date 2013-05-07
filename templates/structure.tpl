{config_load file=$country_conf section="header"}
{config_load file=$country_conf section="footer"}	
{config_load file=$country_conf section="formulaire"}	

<!DOCTYPE html>
<html lang="">
<head>
	<meta charset="utf-8">
	<title>{$smarty.const.SITE_NAME}
	{if $smarty.server.SCRIPT_NAME == '/boutique.php' }
		- {#title_store#|capitalize}
	{elseif $smarty.server.SCRIPT_NAME == '/contacts.php' }
		- {#title_contacts#|capitalize}
	{elseif $smarty.server.SCRIPT_NAME == '/histoire.php' }
		- {#title_story#|capitalize}
	{elseif $smarty.server.SCRIPT_NAME == '/collection.php' }
		- {#title_collection#|capitalize} {$saison|capitalize} {$annee}
	{elseif $smarty.server.SCRIPT_NAME == '/collection_pro.php'}
		- {#title_collection#|capitalize} Professionnels {$saison|capitalize} {$annee}
	{elseif $smarty.server.SCRIPT_NAME == '/professionnels.php'}
		- {#title_pro#|capitalize}  
	{/if}
	</title>
	
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="robots" content="" />
	<meta name="viewport" content="width=device-width">
	
<!-- 	<link href="../css/main.css" media="screen" rel="stylesheet" type="text/css" /> -->
	
	<link rel="stylesheet/less" type="text/css" href="{$smarty.const.BASE_URL}/css/style.less" />
	<script src="{$smarty.const.BASE_URL}/js/vendor/less-1.3.3.min.js" type="text/javascript"></script>
	<script src="{$smarty.const.BASE_URL}/js/vendor/jquery-1.9.1.min.js" charset="utf-8"></script>
	<script src="{$smarty.const.BASE_URL}/js/vendor/jquery.easing.1.3.js" charset="utf-8"></script>
	
	
</head>
<body>

		<!--
<div id="halo">

		</div>
-->
	<div id="info" style=" position:fixed; z-index:99999; display:;">0
	</div>
	

	
	
	
	
	<div id="stickyHeader" style="display:block; visibility:hidden; position:fixed; width:100%; background:red; z-index:99999;">
		
		{include file="_menu.tpl" }
	</div>
	
	<header id="header">
		
		<div id="content">
				<div id="lang">
				<a href="{$smarty.const.BASE_URL}/fr/{*$argArray.page*}">FR</a> |<a href="{$smarty.const.BASE_URL}/en/{*$argArray.page*}">EN</a>
				
			</div>
		
			<div id="logo">
				<a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/accueil"><img src="{$smarty.const.BASE_URL}/img/header_logo_lil.png" title="LiL pour l'autre" alt="LiL pour l'autre" /></a>
			</div>
			<nav>
				{include file="_menu.tpl"}		
			</nav>
			
	
		
		</div>
		<div id="halo"></div>
	</header>
	

	

	<section>
		{block name="section"}
			block de section
		{/block}
	</section>
	
	<footer id="footer">
		{include file="_footer.tpl"}
		
		
	</footer>
	
	
	<script type="text/javascript" charset="utf-8">
		{literal}
		$( document ).ready(function() {
			
			
			$(document).scroll(function(){
		//
			var refPosition = $('#info').offset();	
			$('#info').html(refPosition.top);		

			if(refPosition.top >= 250) {
				//$("#stickyHeader").show();
				//$("#header").stop().css({top: '-180px', position: 'fixed'});
				
			} else {
				//$("#stickyHeader").hide();	
/* 					$("#header").stop().animate({top: '0px', position: 'relative'}); */
			}
			
/*
			if(refPosition.top >= 50) {
				$("#header").stop().animate({top: '-160px'}, 900,  'easeOutCirc');
				
			} else {
				$("#header").stop().animate({top: '0px'}, 900, 'easeOutCirc');
			}
*/

		});
			
			

			
		});
		{/literal}
	</script>


</body>
</html>