
{*As I don't expect that this CSS will be used anywhere else I'll leave it embebed in the file*}
<style>
.header-container {
    display: none;
}
.footer-container {
    display: none;
}
.breadcrumb.clearfix{
    display: none;
}
</style>

<!-- Code from Block Newsletter module-->
</head>
<body>

<div id="newsletter_block_left" class="block">
    <h4 class="title_block">{l s='Newsletter' mod='captureleadsxavier'}</h4>
    <div class="block_content">
        {if isset($msg) && $msg}
            <p class="{if $nw_error}warning_inline{else}success_inline{/if}">{$msg}</p>
        {/if}
        <form action="{$postURL|escape:'html'}" method="post" id="newForm">
            <p>
                <input class="inputNew" id="capture-newsletter-input" type="text" name="email" size="18" value="{l s='your e-mail' mod='captureleadsxavier'}" />
                <input type="submit" value="ok" class="button_mini" name="submitCaptureleadsNewsletter" />
                <input type="hidden" name="action" value="0" />
            </p>
        </form>
    </div>
</div>
{*Text clear working again*}
<script type="text/javascript">
    var placeholder = "{l s='your e-mail' mod='captureleadsxavier' js=1}";

    $(document).ready(function() {
        $("#capture-newsletter-input").on({
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
</script>
