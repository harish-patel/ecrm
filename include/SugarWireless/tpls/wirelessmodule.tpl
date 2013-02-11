
{*

*}
<hr />
<div class="sectitle">{sugar_translate label='LBL_SEARCH' module=''} {$MODULE_NAME} {sugar_translate label='LBL_MODULE' module=''}</div>
<!--  Saved Searches -->
{$WL_SAVED_SEARCH_FORM}
<!--  Search Def Searches -->
{$WL_SEARCH_FORM}
{if $DISPLAY_CREATE}
<!--  Create New Record -->
<div class="sec">
<form action="index.php" method="POST">
	<input class="button" type="submit" value="{sugar_translate label='LBL_CREATE_BUTTON_LABEL' module=''}" />
	<input type="hidden" name="module" value="{$MODULE}" />
	<input type="hidden" name="action" value="wirelessedit" />
    <input type="hidden" name="return_module" value="{$MODULE}" />
    <input type="hidden" name="return_action" value="wirelessmodule" />
</form>
</div>
{/if}
