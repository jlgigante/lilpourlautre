
{extends file="structure.tpl"}

{block name="section"}
	<div id="content" class="professionnels">
		

	<h1>Title : {#title_pro#}</h1>
	
	<p>L'accès à la collection à venir est protégé est réservé aux professionels.</p>	
	<p>Veuillez remplir le formulaire suivant.</p>
	<p>Nous prendrons contact avec vous dans les plus brefs délais afin que vous puissiez accéder à cet espace</p>
	
	demande de mot de passe
	{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/pro
	
	<form action="" method="post" name="form_mdp">
		<fieldset>
			<legend>Form Name</legend>
			<p>
				<label for="first">First Input: </label>
				<input type="text" name="first" id="first" />
			</p>
		</fieldset>
		
		<p>
			<input type="submit" />
		</p>
	</form>
	
	</div>	
	
{/block}