
{*

*}
{if $WL_SAVED_SEARCH_OPTIONS != null}
<div class="sec">
<div class="search_sec">{sugar_translate label='LBL_SAVED_SEARCH_SHORTCUT' module=''}</div><br />
<form method="post" action="index.php">
<select name="wl_saved_search_select">
	{$WL_SAVED_SEARCH_OPTIONS}
</select>
<input class="button" type="submit" value="{sugar_translate label='LBL_SEARCH' module=''}" />
<input type="hidden" name="module" value="{$MODULE}" />
<input type="hidden" name="action" value="wirelesslist" />
<input type="hidden" name="query" value="true" />
<input type="hidden" name="searchFormTab" value="advanced_search" />
</form>
</div>
{/if}
