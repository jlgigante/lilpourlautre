
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
		
		{foreach from=$arrayCollectionImg key=id item=imgFile}
		
			<li class="produit">
								
						<div>
							<img id="prod0{$id}" src="{$smarty.const.BASE_URL}/img/grey.gif" data-original="{$imgFile.url}" alt="{#$imgFile.id#|nl2br}" title=""  class="visuel" />
							<p>
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