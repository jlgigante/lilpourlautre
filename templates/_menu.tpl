{config_load file=$country_conf section="menu"}

<ul>
	<!--
<li>
		{if $nav == true}lil{/if}	
		
	</li>
-->
	<li {if $smarty.server.SCRIPT_NAME == '/index.php' }class="current"{/if}>&nbsp;<a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/accueil">{#home_page#}</a></li>
	<li {if $smarty.server.SCRIPT_NAME == '/collection.php' }class="current"{/if}>
		&nbsp;<a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/collection/printemps-ete/2014">collections{*#collection#|sprintf:'2014'*}</a>
		
		<ul class="sub" style="opacity:1;">
			<li><a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/collection/printemps-ete/2014">printemps-été 2014{*#collection#*}</a></li>
			<li ><a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/collection/printemps-ete/2012" style="opacity:1;">printemps-été 2013{*#collection#*}</a></li>
		</ul>
		
	</li>
	<li {if $smarty.server.SCRIPT_NAME == '/boutique.php' }class="current"{/if}>&nbsp;<a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/boutique">{#store#}</a></li>
<!-- 		<li {if $smarty.server.SCRIPT_NAME == '/histoire.php' }class="current"{/if}>&nbsp;<a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/histoire">{#histoire#}</a></li> -->
	<li {if $smarty.server.SCRIPT_NAME == '/contacts.php' }class="current"{/if}>&nbsp;<a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/contacts">{#contacts#}</a></li>
<!--
	<li>
		<a href="#">FR</a>|<a href="">EN</a>
	</li>
-->
</ul>	

