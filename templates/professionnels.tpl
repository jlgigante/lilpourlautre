
{extends file="structure.tpl"}

{block name="section"}
{config_load file=$country_conf section="professionnels"}
	<div id="content" class="professionnels">	
		
	
		<div>
			
			<div>
				<h1>Collection Automne Hiver 2013</h1>
				<h2>								
					{#title_1#}
				</h2>
				<br>
				<p>
					{#text_1#}
				</p>
				 <br><br> 
				<h2>
					{#title_2#}
				</h2>
				<br>
				<p>
					{#text_2#}
				</p>
				<br>
				
				
				<p class="center">
					<input type="button" value="{#link_value#}"  onclick="location.href='{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/{$confCollection.press.0.type}/{$confCollection.press.0.saison}/{$confCollection.press.0.annee}';">
				</p>
			</div>
			
			<div>
				<img src="{$smarty.const.BASE_URL}/img/pressbook/automne-hiver/2013/05.jpg" alt="">
						</div>
				
		</div>
	
		


	</div>
{/block}