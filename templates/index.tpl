{extends file="structure.tpl"}
{block name="section"}
	{config_load file=$country_conf section="homepage"}
	<div id="content" class="homepage">
			<h1>
				<span>{#mea_line_1#}</span>
				<span>{#mea_line_2#}</span>
				<span>{#mea_line_3#}</span>
			</h1>
			<!--

			{foreach from=$confCollection.free.0 key=k item=i}
				<li><a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/{$i.type}/{$i.saison}/{$i.annee}" {if $smarty.server.REQUEST_URI == "/{$smarty.const.COUNTRY_CODE}/{$i.type}/{$i.saison}/{$i.annee}" }class="sub-current"{/if}>{$i.libel} </a></li>
			{/foreach}	
			
-->
{*$confCollection.free.0.en*}
			<p>
				<a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/{$confCollection.collection.0.type}/{$confCollection.collection.0.saison}/{$confCollection.collection.0.annee}"><span class="right_arrow"></span>{if $smarty.const.COUNTRY_CODE == "fr"}{$confCollection.collection.0.libel.fr}{else if $smarty.const.COUNTRY_CODE == "en"}{$confCollection.collection.0.libel.en}{/if}</a>
			</p>
		</div>
		<script type="text/javascript" charset="utf-8">
		{literal}
		$( document ).ready(function() {
			var lien = $(".homepage p a").attr("href");
			$(".homepage").click(function(){
				$(location).attr("href", lien);
			});
		});
		{/literal}
		</script>
	</div>
{/block}	