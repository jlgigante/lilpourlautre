
{extends file="structure.tpl"}

{block name="section"}

	<div id="content" class="collection">
	{config_load file=$collection_conf section="collection"}

	<h1>Title : {#title_collection#}</h1>
	

		
		<!--
<div style="width:100%; height: 400px; display:inline; background:yellow; float:left;">	
			video
		</div>
-->
		<ul>
		
		{if $smarty.get.type == "pressbook" && $smarty.get.saison == "automne-hiver" && $smarty.get.annee == "2013"}
		<li>
			<div class="intro">		
				
				<h2>
					<span>making of </span>
					<span>de la  collection </span>
					<span>automne / hiver 2013</span>
				</h2>
				
				<div class="video">
					<iframe src="http://player.vimeo.com/video/68122960?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="350" height="262" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
				</div>
				
			</div>
		</li>
		{/if}
		{foreach from=$arrayCollectionImg key=id item=imgFile}
		
			<li>
								
						<div>
							<img id="prod0{$id}" src="{$smarty.const.BASE_URL}/img/grey.gif" data-original="{$imgFile.url}" alt="{#$imgFile.id#|nl2br}" title=""  class="visuel" />
							<p {if $smarty.get.saison == "automne-hiver"}class="blanc opacity"{/if}>
								{#$imgFile.id#|nl2br}
							</p>
						</div>
					
			</li>
			
		 <script type="text/javascript" charset="utf-8">
					$( document ).ready(function() {	
						var pic = $("#img-{$id}");
						
						pic.removeAttr("width");
						pic.removeAttr("height");
					
						//console.log( pic.width() );		
						//console.log( pic.height() );					
					});
					</script>

		{/foreach}
		

		</ul>


<script src="{$smarty.const.BASE_URL}/js/vendor/jquery.lazyload.js?v=1.8.3" charset="utf-8"></script>
 <script type="text/javascript" charset="utf-8">
      $(function() {
          $("img").lazyload({
              effect : "fadeIn"
              /*
              appear : function(elements_left, settings) {
                  console.log("appear");
                  console.log(elements_left);
                  //console.log(this, elements_left, settings);
              },
              load : function(elements_left, settings) {
                  console.log("load");
                  console.log(elements_left);
                  //console.log(this, elements_left, settings);
              }
              */
          });
      });
  </script>

</div>


{/block}