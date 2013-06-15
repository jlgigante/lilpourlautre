
{extends file="structure.tpl"}

{block name="section"}
{config_load file=$country_conf section="professionnels_form"}
	<div id="content" class="professionnels_form">	
		<div>
			<h1>Title : {#title_pro#}</h1>
			<h2>
				{#intro#}				
			</h2>	
			<p>
				{#text#}				
			</p>
	
	<!--
demande de mot de passe
	{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/pro
-->

			<form action="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/professionnels/acces" method="post" name="form_get_code">
			
				<fieldset>
					<legend>Form Name</legend>
					<p>
						<label for="first">{#name#}</label>
						<input type="text" name="name" id="name" placeholder="{#name#}" value="{if isset($formValues.name)}{$formValues.name}{/if}" {if isset($errors.name) }class="form-error"{/if} required >
					</p>
					<p>
						<label for="first">{#firstname#}</label>
						<input type="text" name="firstname" id="firstname" placeholder="{#firstname#}" value="{if isset($formValues.firstname)}{$formValues.firstname}{/if}" {if isset($errors.firstname) }class="form-error"{/if} required>
					</p>

					<p>
						<label for="first">{#compagny#}</label>
						<input type="text" name="company" id="company" placeholder="{#company#}" value="{if isset($formValues.company)}{$formValues.company}{/if}" {if isset($errors.company) }class="form-error"{/if} required>
					</p>

					<p>
						<label for="first">{#email#}</label>
						<input type="email" name="email" id="email" placeholder="{#email#}"  value="{if isset($formValues.email)}{$formValues.email}{/if}"  {if isset($errors.email) }class="form-error"{/if} required >
						<input type="submit" name="valider" style="float:right;" value="{#submit#}"/>
					</p>
				</fieldset>
				
				{if isset($send) && $send == '1'}
					<p class="confirmation">
						confirmation
					</p>
					{*
					<p class="error">
						error
					</p>
					*}
				
			{/if}
				
				
			</form>
		</div>
		
		<script type="text/javascript" charset="utf-8">
		
		var baseUrl = "{$smarty.const.BASE_URL}";
		
 		var messageErrorPassword = "{#message_error_password#}";
 		var messageValidePassword = "{#message_valide_password#}";
		
		{literal}
		$( document ).ready(function() {
	
			//
			$("#form_get_code").submit(function() {
			
				//$("#retour").fadeOut(100).hide();
				//
				var nom = $("#nom");
				var prenom = $("#prenom");
				var email = $("#email");
				var action = "getCode";
				//
				//code.removeClass('input-err');
				//
				function effacerForm (formulaire) { 
					$(':input', formulaire).delay(1000)
						.not(':button, :submit, :reset, :hidden')
						.val('')
						.removeAttr('checked')
						.removeAttr('selected').removeClass('input-err');
				}			
							
				//
				$.ajax({
				type: "POST",
				url: baseUrl+"/json_pro.php",
				data: {"nom":nom.val(), "prenom":prenom.val(), "email":email.val(), "action":action },
				// dataType : "json",
				success: function(msg){
					var doc = eval('(' + msg + ')');
					if(doc.code_retour == 1) { //Erreur
						$("#retour").addClass('error').html(messageErrorPassword).fadeIn();
						
						/*
	$.each(doc.errors, function(key, value){
							var inputId = '#'+key;
							$(inputId).addClass('input-err');
						});
	*/					
					}
					else if (doc.code_retour == 0){ //valide
						$("#retour").removeClass('error').addClass('confirmation').html(messageValidePassword).fadeIn();
						window.location = doc.redirect; 
					}
				},
				error: function(){
					alert('Erreur');
				}
			});
			return false;		
			});
		});
		{/literal}
	</script>

	</div>
{/block}