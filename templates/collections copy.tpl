
{extends file="structure.tpl"}

{block name="section"}

	<div id="content">
		

	<h1>Title : {#title_collection#}</h1>
	

		
		<!--
<div style="width:100%; height: 400px; display:inline; background:yellow; float:left;">	
			video
		</div>
-->
		<ul>
		
		{foreach from=$arrayCollectionImg key=id item=imgFile}
		
			<li style="width:50%; display:inline; float:left; background:black;">
			
				<div id="" style=" width:100%;  background:red; ">
					
					
			
					<img id="img-{$id}" src="{$smarty.const.BASE_URL}/img/grey.gif" data-original="{$imgFile.url}" alt="" title=""  style="width: 90%; heigth: auto; max-width:401px; image-rendering: optimizequality; display:block; margin:0 auto;" />
					<p {* style=" bottom: 25px; position: absolute; right: 50px; text-align: right; opacity:0.5; " *}>infos produits</p>
					
					 <script type="text/javascript" charset="utf-8">
					$( document ).ready(function() {	
/* 						console.log("ready!"); */
						var pic = $("#img-{$id}");
						
						pic.removeAttr("width");
						pic.removeAttr("height");
						
						console.log( pic.width() );		
						console.log( pic.height() );					
						
						
						
						
					});
					</script>
					
				</div>
			</li>
			
		<!--
	clear: both;
  		display: block;
  		height: auto;
  		margin: 10px auto;
  		position: relative;
  		width: 90%;
-->
				

		{/foreach}
		

		</ul>

		{*foreach from=$arrayCollectionImg item=urlImg}
	
			<div style="width:50%;  display:inline; background:black; float:left;">			
				<div id="" style="margin: 0 10px 5px 0; position:relative; background:black; ">
					<img src="{$smarty.const.BASE_URL}/img/grey.gif" data-original="{$urlImg}" alt="" title="" height="602"  style="width: 100%; max-height:602px; max-width:401px; image-rendering: optimizequality;" />
									<p style=" bottom: 25px; position: absolute; right: 50px; text-align: right; opacity:0.5; ">infos produits</p>
			</div>
		</div>
		{/foreach*}



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