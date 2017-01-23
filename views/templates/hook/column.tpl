<h2>{$message_txt|escape:'htmlall':'UTF-8'}</h2>


<!-- Block Viewed products also stolen/adapted from Prestashop's module "blockviewed" -->
<div id="viewed-products_block_left" class="block products_block">
    <h4 class="title_block">{l s='Viewed products' mod='captureleadsxavier'}</h4>
    <div class="block_content">
        <ul class="products clearfix">
            {foreach from=$productsViewedObj item=viewedProduct name=myLoop}
                <li class="clearfix{if $smarty.foreach.myLoop.last} last_item{elseif $smarty.foreach.myLoop.first} first_item{else} item{/if}">
                   <div class="text_desc">
                        <h5 class="s_title_block"><a href="{$viewedProduct->product_link|escape:'html'}" title="{l s='About' mod='captureleadsxavier'} {$viewedProduct->name|escape:html:'UTF-8'}">{$viewedProduct->name|truncate:25:'...'|escape:html:'UTF-8'}</a></h5>
                        <p><a href="{$viewedProduct->product_link|escape:'html'}" title="{l s='About' mod='captureleadsxavier'} {$viewedProduct->name|escape:html:'UTF-8'}">{$viewedProduct->description_short|strip_tags:'UTF-8'|truncate:55}</a></p>
                        <p><a href="{$viewedProduct->product_link|escape:'html'}" title="{l s='About' mod='captureleadsxavier'} {$viewedProduct->name|escape:html:'UTF-8'}">{$viewedProduct->price|strip_tags:'UTF-8'}</a></p>
                    </div>
                </li>
            {/foreach}
        </ul>
    </div>
</div>
<div>
    <h4 class="title_block">{l s='Want to receive the latest offers?' mod='captureleadsxavier'}</h4>
    {*toDO: Autoclose fancybox at submit*}
    <a class="fancynews" data-fancybox-type="iframe" href="{$postURL|escape:'htmlall':'UTF-8'}"><button type="button">{l s='Register to newsletter' mod='captureleadsxavier'}</button></a>
</div>
