
{*

*}
<br />
{sugar_translate label='LBL_SELECT_MODULE' module=''}<br />
<form method="post" action="index.php">
	<select name="module">
		{foreach from=$WL_MODULE_LIST item=VALUE key=KEY}
		<option value="{$KEY}" {if $MODULE == $KEY}selected{/if}>{$VALUE}</option>
		{/foreach}
	</select>
	<input type="submit" class="button" value="{sugar_translate label='LBL_GO_BUTTON_LABEL' module=''}" />
	<input type="hidden" value="wirelessmodule" name="action" />	
</form>
