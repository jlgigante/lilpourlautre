
{extends file="structure.tpl"}

{block name="section"}
	
	{config_load file=$country_conf section="histoire"}
	<div id="content" class="histoire">
		
		<div>
			
		
			<h1>{#title_histoire#}</h1>
			
			<br/>
			
			<p>
				{#content_histoire#}
			</p>
			
			<p>
				<img src="{$smarty.const.BASE_URL}/img/jose.jpg" alt="Jose">
				<em>{#credit_photo#}</em>
			</p>
			<br>	
		
		</div>
		
	</div>
{/block}