<?php /* Smarty version Smarty-3.1.13, created on 2013-06-16 00:37:55
         compiled from "templates/professionnels_form.tpl" */ ?>
<?php /*%%SmartyHeaderCode:43550262951bcc58d6b9016-73150857%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3db605dcceb4716f3c2e2cfcdb553175c38120d2' => 
    array (
      0 => 'templates/professionnels_form.tpl',
      1 => 1371335869,
      2 => 'file',
    ),
    '29dc823677545fc68809f6fbc92094210f947e5a' => 
    array (
      0 => 'templates/structure.tpl',
      1 => 1371329660,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '43550262951bcc58d6b9016-73150857',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_51bcc58da86765_89928740',
  'variables' => 
  array (
    'country_conf' => 0,
    'saison' => 0,
    'annee' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51bcc58da86765_89928740')) {function content_51bcc58da86765_89928740($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_capitalize')) include '/Users/jlgigante/Sites/lilpourlautre.git/libs/plugins/modifier.capitalize.php';
?><?php  $_config = new Smarty_Internal_Config($_smarty_tpl->tpl_vars['country_conf']->value, $_smarty_tpl->smarty, $_smarty_tpl);$_config->loadConfigVars("header", 'local'); ?>
<?php  $_config = new Smarty_Internal_Config($_smarty_tpl->tpl_vars['country_conf']->value, $_smarty_tpl->smarty, $_smarty_tpl);$_config->loadConfigVars("footer", 'local'); ?>	
<?php  $_config = new Smarty_Internal_Config($_smarty_tpl->tpl_vars['country_conf']->value, $_smarty_tpl->smarty, $_smarty_tpl);$_config->loadConfigVars("formulaire", 'local'); ?>	

<!DOCTYPE html>
<html lang="">
<head>
	<meta charset="utf-8">
	<title><?php echo @constant('SITE_NAME');?>

	<?php if ($_SERVER['SCRIPT_NAME']=='/boutique.php'){?>
		- <?php echo smarty_modifier_capitalize($_smarty_tpl->getConfigVariable('title_store'));?>

	<?php }elseif($_SERVER['SCRIPT_NAME']=='/contacts.php'){?>
		- <?php echo smarty_modifier_capitalize($_smarty_tpl->getConfigVariable('title_contacts'));?>

	<?php }elseif($_SERVER['SCRIPT_NAME']=='/histoire.php'){?>
		- <?php echo smarty_modifier_capitalize($_smarty_tpl->getConfigVariable('title_story'));?>

	<?php }elseif($_SERVER['SCRIPT_NAME']=='/collection.php'){?>
		- <?php echo smarty_modifier_capitalize($_smarty_tpl->getConfigVariable('title_collection'));?>
 <?php echo smarty_modifier_capitalize($_smarty_tpl->tpl_vars['saison']->value);?>
 <?php echo $_smarty_tpl->tpl_vars['annee']->value;?>

	<?php }elseif($_SERVER['SCRIPT_NAME']=='/collection_pro.php'){?>
		- <?php echo smarty_modifier_capitalize($_smarty_tpl->getConfigVariable('title_collection'));?>
 Professionnels <?php echo smarty_modifier_capitalize($_smarty_tpl->tpl_vars['saison']->value);?>
 <?php echo $_smarty_tpl->tpl_vars['annee']->value;?>

	<?php }elseif($_SERVER['SCRIPT_NAME']=='/professionnels.php'){?>
		- <?php echo smarty_modifier_capitalize($_smarty_tpl->getConfigVariable('title_pro'));?>
  
	<?php }?>
	</title>
	
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="robots" content="" />
	<meta name="viewport" content="width=device-width">
	
<!-- 	<link href="../css/main.css" media="screen" rel="stylesheet" type="text/css" /> -->
	
	<link rel="stylesheet" type="text/css" href="<?php echo @constant('BASE_URL');?>
/css/style.css" />
	<script src="<?php echo @constant('BASE_URL');?>
/js/vendor/less-1.3.3.min.js" type="text/javascript"></script>
	<script src="<?php echo @constant('BASE_URL');?>
/js/vendor/jquery-1.9.1.min.js" charset="utf-8"></script>
	<script src="<?php echo @constant('BASE_URL');?>
/js/vendor/jquery.easing.1.3.js" charset="utf-8"></script>
	
	
</head>
<body>

		<!--
<div id="halo">

		</div>
-->
	<div id="info" style=" position:fixed; z-index:99999; display:none;">0
	</div>
	

	
	
	
	
	<div id="stickyHeader" style="display:block; display:none; position:fixed; width:100%;  bottom:0px;  z-index:99999; text-align:right;">
		
					<a href="#header" style="background:#4a494b; padding:10px; ">TOP</a>
		
		
	</div>
	
	<header id="header">
		
		<div id="content">
				<div id="lang">
					
				<a href="<?php echo @constant('BASE_URL');?>
/fr/">FR</a> |<a href="<?php echo @constant('BASE_URL');?>
/en/">EN</a>
				
			</div>
		
			<div id="logo">
				<a href="<?php echo @constant('BASE_URL');?>
/<?php echo @constant('COUNTRY_CODE');?>
/accueil"><img src="<?php echo @constant('BASE_URL');?>
/img/header_logo_lil.png" title="LiL pour l'autre" alt="LiL pour l'autre" /></a>
			</div>
			<nav>
				<?php echo $_smarty_tpl->getSubTemplate ("_menu.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
		
			</nav>
			
	
		
		</div>
		<div id="halo"></div>
	</header>
	

	

	<section>
		
<?php  $_config = new Smarty_Internal_Config($_smarty_tpl->tpl_vars['country_conf']->value, $_smarty_tpl->smarty, $_smarty_tpl);$_config->loadConfigVars("professionnels_form", 'local'); ?>
	<div id="content" class="professionnels_form">	
		<div>
			<h1>Title : <?php echo $_smarty_tpl->getConfigVariable('title_pro');?>
</h1>
			<h2>
				<?php echo $_smarty_tpl->getConfigVariable('intro');?>
				
			</h2>	
			<p>
				<?php echo $_smarty_tpl->getConfigVariable('text');?>
				
			</p>
	
	<!--
demande de mot de passe
	<?php echo @constant('BASE_URL');?>
/<?php echo @constant('COUNTRY_CODE');?>
/pro
-->

			<form action="<?php echo @constant('BASE_URL');?>
/<?php echo @constant('COUNTRY_CODE');?>
/professionnels/acces" method="post" name="form_get_code">
			
				<fieldset>
					<legend>Form Name</legend>
					<p>
						<label for="first"><?php echo $_smarty_tpl->getConfigVariable('name');?>
</label>
						<input type="text" name="name" id="name" placeholder="<?php echo $_smarty_tpl->getConfigVariable('name');?>
" value="<?php if (isset($_smarty_tpl->tpl_vars['formValues']->value['name'])){?><?php echo $_smarty_tpl->tpl_vars['formValues']->value['name'];?>
<?php }?>" <?php if (isset($_smarty_tpl->tpl_vars['errors']->value['name'])){?>class="form-error"<?php }?> required >
					</p>
					<p>
						<label for="first"><?php echo $_smarty_tpl->getConfigVariable('firstname');?>
</label>
						<input type="text" name="firstname" id="firstname" placeholder="<?php echo $_smarty_tpl->getConfigVariable('firstname');?>
" value="<?php if (isset($_smarty_tpl->tpl_vars['formValues']->value['firstname'])){?><?php echo $_smarty_tpl->tpl_vars['formValues']->value['firstname'];?>
<?php }?>" <?php if (isset($_smarty_tpl->tpl_vars['errors']->value['firstname'])){?>class="form-error"<?php }?> required>
					</p>

					<p>
						<label for="first"><?php echo $_smarty_tpl->getConfigVariable('compagny');?>
</label>
						<input type="text" name="company" id="company" placeholder="<?php echo $_smarty_tpl->getConfigVariable('company');?>
" value="<?php if (isset($_smarty_tpl->tpl_vars['formValues']->value['company'])){?><?php echo $_smarty_tpl->tpl_vars['formValues']->value['company'];?>
<?php }?>" <?php if (isset($_smarty_tpl->tpl_vars['errors']->value['company'])){?>class="form-error"<?php }?> required>
					</p>

					<p>
						<label for="first"><?php echo $_smarty_tpl->getConfigVariable('email');?>
</label>
						<input type="email" name="email" id="email" placeholder="<?php echo $_smarty_tpl->getConfigVariable('email');?>
"  value="<?php if (isset($_smarty_tpl->tpl_vars['formValues']->value['email'])){?><?php echo $_smarty_tpl->tpl_vars['formValues']->value['email'];?>
<?php }?>"  <?php if (isset($_smarty_tpl->tpl_vars['errors']->value['email'])){?>class="form-error"<?php }?> required >
						<input type="submit" name="valider" style="float:right;" value="<?php echo $_smarty_tpl->getConfigVariable('submit');?>
"/>
					</p>
				</fieldset>
				
				<?php if (isset($_smarty_tpl->tpl_vars['send']->value)&&$_smarty_tpl->tpl_vars['send']->value=='1'){?>
					<p class="confirmation">
						confirmation
					</p>
					
				
			<?php }?>
				
				
			</form>
		</div>
		
		<script type="text/javascript" charset="utf-8">
		
		var baseUrl = "<?php echo @constant('BASE_URL');?>
";
		
 		var messageErrorPassword = "<?php echo $_smarty_tpl->getConfigVariable('message_error_password');?>
";
 		var messageValidePassword = "<?php echo $_smarty_tpl->getConfigVariable('message_valide_password');?>
";
		
		
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
		
	</script>

	</div>

	</section>
	
	<footer id="footer">
		<?php echo $_smarty_tpl->getSubTemplate ("_footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

		
		
	</footer>
	
	
	<script type="text/javascript" charset="utf-8">
		
		$( document ).ready(function() {
			
			

			$(document).scroll(function(){
		//
			var refPosition = $('#info').offset();	
			$('#info').html(refPosition.top);		
			

			
			if(refPosition.top >= 250) {
				$("#stickyHeader").slideDown('slow');
				//$("#header").stop().css({top: '-80px', position: 'fixed'});
				
			} else {
				$("#stickyHeader").slideUp('slow');	
				//	$("#header").stop().animate({top: '0px', position: 'relative'});
					
					
			}
			
/*
			if(refPosition.top >= 50) {
				$("#header").stop().animate({top: '-160px'}, 900,  'easeOutCirc');
				
			} else {
				$("#header").stop().animate({top: '0px'}, 900, 'easeOutCirc');
			}
*/

		});
			
			

			
		});
		
	</script>


</body>
</html><?php }} ?>