{extends file="structure.tpl"}
{block name="section"}
	{config_load file=$country_conf section="homepage"}
	<div id="content" class="homepage">
			<h1>
				<span>{#mea_line_1#}</span>
				<span>{#mea_line_2#}</span>
				<span>{#mea_line_3#}</span>
			</h1>
			<p>
				<a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/collection/printemps-ete/2014">{#lien_collection#}</a>
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