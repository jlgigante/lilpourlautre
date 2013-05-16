{config_load file=$country_conf section="histoire"}	

		<div id="content">
			
			<div class="column">
				<h2>{#title_histoire#}</h2>
				<p>
					{#content_histoire#|nl2br|truncate:170:'...'} 
				</p>			
				<p class="lire"><a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/histoire">{#read_more#}</a></p>
			</div>
			
			<div class="column">
				<h2>{#title_pro#}</h2>
				<p class="clearfix">
					{#content_pro#}
				</p>
				
				
				<form action="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/collection_pro.php" method="post" accept-charset="utf-8" name="form_professionnels" id="form_professionnels">
					<fieldset>
						<legend>Professionnels form</legend>
						
							<label for="first">mot de passe: </label>
							<input type="password" name="code" id="code" required="true" placeholder="{#password#}" >
							<input type="hidden" name="country_code" value="{$smarty.const.COUNTRY_CODE|escape}">
						
					</fieldset>
					
						<input type="submit" name="valider" id="valider" value="{#submit#|capitalize}" />
					
				</form>
				<p id="retour"></p>
				<p><a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/pro">{#link_pro_get_pass#}</a></p>
			</div>
			
			<div class="column">
				<h2>
					Contacts
				</h2>
				<ul>
					<li><a class="contacts" href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/contacts">{#social_contacts#}</a></li>
					<li><a class="press" href="http://google.com">{#social_press#}</a></li>
					<li><a class="facebook" href="">Facebook</a></li>
					<li><a class="twitter" href="">Twitter</a></li>
				</ul>
			</div>

		</div>
		
		
		<script type="text/javascript" charset="utf-8">
		
		var baseUrl = "{$smarty.const.BASE_URL}";
		
 		var messageErrorPassword = "{#message_error_password#}";
 		var messageValidePassword = "{#message_valide_password#}";
		
		{literal}
		$( document ).ready(function() {
	
	//
	$("#form_professionnels").submit(function() {
			
			//$("#retour").fadeOut(100).hide();
			//
			var code = $("#code");
			var action = "access";
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
			data: {"code":code.val(), "action":action },
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
