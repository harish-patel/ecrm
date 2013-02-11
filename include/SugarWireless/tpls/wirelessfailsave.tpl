
{*

*}
<p>{$MESSAGE}</p>
<form action="index.php" method="POST">
{foreach from=$REQUEST_VALS key=name item=value}
<input type='hidden' name='{$name}' value='{$value}'>
{/foreach}
<input type='hidden' name="action" value="wirelessedit">
<input type='hidden' name="failsave" value="1">
<input type="submit" value="{sugar_translate label='LBL_BACK' module=''}" />
</form>
