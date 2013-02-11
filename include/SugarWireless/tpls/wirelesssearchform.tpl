
{*

*}
<div class="sec">
<div class="search_sec">{sugar_translate label='LBL_SEARCHFORM' module=''}</div>
<form method="post" action="index.php">
	<input type="hidden" name="module" value="{$MODULE}" />
	<input type="hidden" value="wirelesslist" name="action" />
	<input type="hidden" name="query" value="true" />
	<input type="hidden" name="searchFormTab" value="advanced_search" />
	{foreach from=$WL_SEARCH_FIELDS item=DEFS key=FIELD}
		<small>{$DEFS.label|strip_semicolon}:</small><br />
		{sugar_field parentFieldArray='fields' vardef=$fields[$DEFS.field] displayType='wirelessListView' displayParams='' typeOverride=$DEFS.type formName=$form_name}<br />
	{/foreach}
	{if $MODULE != 'Employees'}
	<small>{sugar_translate label='LBL_CURRENT_USER_FILTER' module=''}</small> <input type="checkbox" name="my_items" {$myitems}><br />
	{/if}
	<input class="button" type="submit" value="{sugar_translate label='LBL_SEARCH' module=''}" />
</form>
</div>
