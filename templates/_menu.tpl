{config_load file=$country_conf section="menu"}
{config_load file=$country_conf section="submenu"}

<ul>
	<li {if $smarty.server.SCRIPT_NAME == '/index.php' }class="current"{/if}>
		&nbsp;<a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/accueil">{#home_page#}</a>
	</li>
	<li {if $smarty.server.SCRIPT_NAME == '/collection.php'  && $smarty.get.type == 'collection'  or  $smarty.server.SCRIPT_NAME == '/collection_pro.php'  }class="current"{/if}>
		&nbsp;<a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/collection/{$confCollection.collection.0.saison}/{$confCollection.collection.0.annee}">collections{if isset($smarty.session.lpa_pro)} / Pro{/if}{*#collection#|sprintf:'2014'*}</a>
		
		<ul class="sub" style="">
			{*menu free*}
			{foreach from=$confCollection.collection key=k item=i}
				<li><a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/{$i.type}/{$i.saison}/{$i.annee}" {if $smarty.server.REQUEST_URI == "/{$smarty.const.COUNTRY_CODE}/{$i.type}/{$i.saison}/{$i.annee}" }class="sub-current"{/if}>
					{if $smarty.const.COUNTRY_CODE == "fr"}{$i.libel.fr}{else if $smarty.const.COUNTRY_CODE == "en"}{$i.libel.en}{/if}
				</a></li>
			{/foreach}			
			
			{*if isset($smarty.session.lpa_pro)  }
				{foreach from=$confCollection.pro key=k item=i}
					<li><a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/collection/pro/{$i.saison}/{$i.annee}" {if $smarty.server.REQUEST_URI == "/{$smarty.const.COUNTRY_CODE}/collection/pro/{$i.saison}/{$i.annee}" }class="sub-current"{/if}>{$i.saison} {$i.annee}</a></li>
				{/foreach}
			{/if*}			
		</ul>
		
	</li>
	<li {if $smarty.server.SCRIPT_NAME == '/boutique.php' }class="current"{/if}>
		&nbsp;<a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/boutique">{#store#}</a>
	</li>	
	<li {if $smarty.server.SCRIPT_NAME == '/collection.php' && $smarty.get.type == 'pressbook'  }class="current"{/if}>
		&nbsp;<a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/{$confCollection.press.0.type}/{$confCollection.press.0.saison}/{$confCollection.press.0.annee}">{#press#}</a>
	</li>	
	<li {if $smarty.server.SCRIPT_NAME == '/contacts.php' }class="current"{/if}>
		&nbsp;<a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/contacts">{#contacts#}</a>
	</li>
</ul>	






<select onchange="window.location.href=this.value">
	<option value="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/accueil" {if $smarty.server.SCRIPT_NAME == '/index.php'}selected{/if}>
		{#home_page#}
	</option>
	
	<optgroup label="collections">
	
		{foreach from=$confCollection.collection key=k item=i}
			<option value="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/{$i.type}/{$i.saison}/{$i.annee}" {if $smarty.server.REQUEST_URI == "/{$smarty.const.COUNTRY_CODE}/collection/{$i.saison}/{$i.annee}" && $smarty.get.type == 'collection'  }selected{/if}>
				{if $smarty.const.COUNTRY_CODE == "fr"}{$i.libel.fr}{else if $smarty.const.COUNTRY_CODE == "en"}{$i.libel.en}{/if}
			</option>
		{/foreach}		
	</optgroup>
	
	<option value="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/histoire" {if $smarty.server.SCRIPT_NAME == '/histoire.php' }selected{/if}>
		{#histoire#}
	</option>
	
	<option value="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/boutique" {if $smarty.server.SCRIPT_NAME == '/boutique.php' }selected{/if}>
		{#store#}
	</option>
	
	<option value="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/{$confCollection.press.0.type}/{$confCollection.press.0.saison}/{$confCollection.press.0.annee}" {if $smarty.server.SCRIPT_NAME == '/collection.php' && $smarty.get.type == 'pressbook'}selected{/if}>
		{#press#}
	</option>
	
	<option value="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/contacts" {if $smarty.server.SCRIPT_NAME == '/contacts.php' }selected{/if}>
		{#contacts#}
	</option>
	
		<option value="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/pro" {if $smarty.server.SCRIPT_NAME == '/professionnels.php' }selected{/if}>
		{#pro#}
	</option>


	{if isset($smarty.session.lpa_pro)}
		<optgroup  label="Collection Pro">
			{foreach from=$confCollection.pro key=k item=i}
				<option value="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/collection/pro/{$i.saison}/{$i.annee}" {if $smarty.server.REQUEST_URI == "/{$smarty.const.COUNTRY_CODE}/collection/pro/{$i.saison}/{$i.annee}" }selected{/if}>
					{$i.saison} {$i.annee}{*#collection#*}
				</option>
			{/foreach}
		</optgroup>
	{/if}	
</select>

