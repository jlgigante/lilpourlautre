{extends file="structure.tpl"}

{block name="section"}
	{config_load file=$country_conf section="homepage"}
	
	<div id="content" class="hp">
		<!-- <h1>Title : {#title_home_page#}</h1> -->
		<h1>
			<p>{#mea_line_1#}</p>
			<p>{#mea_line_2#}</p>
			<p>{#mea_line_3#}</p>
		</h1>
		
		
	</div>
	
{/block}