{config_load file=$country_conf section="menu"}
{config_load file=$country_conf section="footer"}
{config_load file=$country_conf section="histoire"}	
		<div id="content">
			
		
			<div class="column fb">
				<h2>{#title_histoire#}</h2>
				<p>
					{#content_histoire#|nl2br|truncate:170:'...'} 
				</p>			
				<p class="lire"><a href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/histoire">Lire la suite</a></p>
			</div>
			
			<div class="column">
				<h2>Professionnels</h2>
				<p class="clearfix">
					Pour accéder à la collection à venir, entrez le mot de passe.
				</p>
				
				
				<form action="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/collection_pro.php" method="post" accept-charset="utf-8" name="form_professionnels" id="form_professionnels">
					<fieldset>
						<legend>Professionnels form</legend>
						
							<label for="first">mot de passe: </label>
							<input type="password" name="code" id="code" required="true"/>
						
					</fieldset>
					
						<input type="submit" name="valider" id="valider" />
					
				</form>
				<p><a href="">Vous n'avez pas encore de mot de passe ?</a></p>
			</div>
			
			<div class="column">
				<h2 class="hidden">
					Contacts
				</h2>
				<ul>
					<li><a class="contacts" href="{$smarty.const.BASE_URL}/{$smarty.const.COUNTRY_CODE}/contacts">{#contacts#}</a></li>
					<li><a class="press" href="http://google.com">Presse</a></li>
					<li><a class="facebook" href="">Facebook</a></li>
					<li><a class="twitter" href="">Twitter</a></li>
				</ul>
			</div>

		</div>
		
		
		<script type="text/javascript" charset="utf-8">
		{literal}
		$( document ).ready(function() {
	
	//
	$("#form_professionnels").submit(function() {
			alert(555);
			return false;
			//$("#retour").fadeOut(100).hide();
			//
			var code = $("#code");
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
			url: baseUrl+"/index.php",
			data: {"nom":nom.val(), "prenom":prenom.val(), "email":email.val(), "telephone":telephone.val(), "entreprise":entreprise.val(), "message":message.val() },
			// dataType : "json",
			success: function(msg){
				var doc = eval('(' + msg + ')');
				if(doc.code_retour == 1) { //Erreur
					$("#retour").addClass('error').html(doc.message).fadeIn().delay(1500).fadeOut();
					$.each(doc.errors, function(key, value){
						var inputId = '#'+key;
						$(inputId).addClass('input-err');
					});					
				}
				else if (doc.code_retour == 0){ //valide
					$("#retour").addClass('valid').html('Merci').fadeIn().delay(1500).fadeOut();
					effacerForm("#form-contact");
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
