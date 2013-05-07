{config_load file=$country_conf section="menu"}








<ul>
	

	<!--
<li>
		{if $nav == true}lil{/if}	
		
	</li>
-->
	<li {if $smarty.server.SCRIPT_NAME == '/index.php' }class="current"{/if}>&nbsp;<a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/accueil">{#home_page#}</a></li>
	<li {if $smarty.server.SCRIPT_NAME == '/collection.php' or  $smarty.server.SCRIPT_NAME == '/collection_pro.php'  }class="current"{/if}>
		&nbsp;<a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/collection/{$confCollection.free.0.saison}/{$confCollection.free.0.annee}">collections{*#collection#|sprintf:'2014'*}</a>
		
		<ul class="sub" style="">
			{*menu free*}
			{foreach from=$confCollection.free key=k item=i}
				<li><a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/collection/{$i.saison}/{$i.annee}" {if $smarty.server.REQUEST_URI == "/{$smarty.const.COUNTRY_CODE}/collection/{$i.saison}/{$i.annee}" }class="sub-current"{/if}>{$i.saison} {$i.annee}{*#collection#*}</a></li>
			{/foreach}	
			
<!--
			<li><a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/collection/printemps-ete/2014">printemps-été 2014{*#collection#*}</a></li>
			<li ><a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/collection/printemps-ete/2012" style="opacity:1;">printemps-été 2013{*#collection#*}</a></li>
-->
			
			{if isset($smarty.session.lpa_pro)  }
				{foreach from=$confCollection.pro key=k item=i}
					<li><a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/collection/pro/{$i.saison}/{$i.annee}" {if $smarty.server.REQUEST_URI == "/{$smarty.const.COUNTRY_CODE}/collection/pro/{$i.saison}/{$i.annee}" }class="sub-current"{/if}>{$i.saison} {$i.annee}{*#collection#*}</a></li>
				{/foreach}
			{/if}
			
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

