
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
label {
    display: inline-block;
}
</style>

<!-- Code adapted from Block Newsletter module-->
</head>
<body>

<div id="newsletter_block_left" class="block">
    <h4 class="title_block">{l s='Newsletter' mod='captureleadsxavier'}</h4>
    <div class="block_content">
        <form action="{$postURL|escape:'html'}" method="post" id="newForm">
            <p>

                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="capture-newsletter-input" placeholder="{l s='Your e-mail' mod='captureleadsxavier'}" name="email">

                    <td><input type="submit" value="ok" class="button_mini" name="submitCaptureleadsNewsletter" /></td>
                </div>

                <td><div class="checkbox"><label><input type="checkbox" name="action" value="0" />{l s='I agree to the Terms' mod='captureleadsxavier'}</label></div></td>

            </p>
        </form>
    </div>
</div>
{*Text clear working again*}
<script type="text/javascript">
    var placeholder = "{l s='Your e-mail' mod='captureleadsxavier' js=1}";

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
