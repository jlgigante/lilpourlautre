{config_load file=$country_conf section="menu"}
{config_load file=$country_conf section="footer"}
{config_load file=$country_conf section="histoire"}	
		<div id="content">
			
		
			<div class="column">
				<h2>{#title_histoire#}</h2>
				<p>
					{#content_histoire#|nl2br|truncate:170:'...'} 
				</p>			
				<p class="lire"><a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/histoire">Lire la suite</a></p>
			</div>
			
			<div class="column">
				<h2>Professionnels</h2>
				<p>
					Pour accéder à la collection à venir, entrez le mot de passe.
				</p>
				
				<form action="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/collection_pro.php" method="post" accept-charset="utf-8" name="form_professionnels">
					<fieldset>
						<legend>Professionnels form</legend>
						<p>
							<label for="first">mot de passe: </label>
							<input type="text" name="first" id="first" />
						</p>
					</fieldset>
					<p>
						<input type="submit" />
					</p>
				</form>
			</div>
			
			<div class="column">
				<h2 class="hidden">
					Contacts
				</h2>
				<ul>
					<li><a  class="contacts" href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/contacts">{#contacts#}</a></li>
					<li><a href="http://google.com">Presse</a></li>
					<li><a href="">Facebook</a></li>
					<li><a href="">Twitter</a></li>
				</ul>
			</div>

		</div>