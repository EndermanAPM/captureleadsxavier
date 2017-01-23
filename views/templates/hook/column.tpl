<h2>{$message_txt}</h2>


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
<button class="fancybox" value="Open Fancybox">Open Fancybox</button>
<div class="hidden" id="fancybox-popup-form">
    (your Fancybox content goes in here)
</div>

<!-- Code from Block Newsletter module-->

<div id="newsletter_block_left" class="block">
    <h4 class="title_block">{l s='Newsletter' mod='captureleadsxavier'}</h4>
    <div class="block_content">


        {if isset($msg) && $msg}
            <p class="{if $nw_error}warning_inline{else}success_inline{/if}">{$msg}</p>
        {/if}
        <form action="{$link->getPageLink('index', true)|escape:'html'}" method="post">
            <p>
                <input class="inputNew" id="newsletter-input" type="text" name="email" size="18" value="{if isset($value) && $value}{$value}{else}{l s='your e-mail' mod='captureleadsxavier'}{/if}" />
                <input type="submit" value="ok" class="button_mini" name="submitCaptureleadsNewsletter" />
                <input type="hidden" name="action" value="0" />
            </p>
        </form>
    </div>
</div>

<script type="text/javascript">
    var placeholder = "{l s='your e-mail' mod='captureleadsxavier' js=1}";
    {literal}
    $(document).ready(function() {
        $('#newsletter-input').on({
            focus: function() {
                if ($(this).val() == placeholder) {
                    $(this).val('');
                }
            },
            blur: function() {
                if ($(this).val() == '') {
                    $(this).val(placeholder);
                }
            }
        });
    });
    {/literal}
</script>