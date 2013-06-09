
{extends file="structure.tpl"}

{block name="section"}

{config_load file=$country_conf section="contact"}
	<div id="content" class="contacts">
			<h1>{#title_contacts#}</h1>
		
			<ul>
				<li>
					<h2>
						Showroom
						</h2>
					<p>
						17, rue du Louvre<br/>
						75001 Paris<br/>
						Tel : 01 42 61 36 26
					</p>
					<a href="mailto:info@lilpourlautre.com">info@lilpourlautre.com</a>
				</li>
				<li>
					<h2>
						{#title_commercial_service#}
					</h2>
					<a href="mailto:g.poussy@lilpourlautre.com">g.poussy@lilpourlautre.com</a>

				</li>
				<li>
					<h2>
						{#title_press_service#}
					</h2>
					<a href="mailto:johannasa@dresscodepress.com">johannasa@dresscodepress.com</a>					
				</li>
				<li>
					<h2>
						{#title_boutique#}
						</h2>
					<p>
						2 bis, rue de Gribeauval <br/>
						Paris 7ème<br/>
						Tel : 01 40 49 03 02
					</p>
					<a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/boutique" alt="{#voir_boutique#}">{#voir_boutique#}</a>
				</li>
			</ul>

	</div>
{/block}







