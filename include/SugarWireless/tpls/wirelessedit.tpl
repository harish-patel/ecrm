
{*

*}
<hr />
<!-- Wireless Edit View -->
<div class="sectitle">{$MODULE_NAME}: {$BEAN_NAME}</div>
<div class="sec">
<form action="index.php" method="POST">
<table>
	{foreach from=$DETAILS item=DETAIL name="recordlist"}
    {if !$fields[$DETAIL.field].hidden}
	<tr>
		<td class="detail_label {if $smarty.foreach.recordlist.index % 2 == 0}odd{else}even{/if}">{$DETAIL.label|strip_semicolon}: {if $DETAIL.required}<span class="required">*</span>{/if}</td>
		<td class="{if $smarty.foreach.recordlist.index % 2 == 0}odd{else}even{/if}">
		{if $DETAIL.detail_only}
            {if !empty($DETAIL.customCode)}
				{eval var=$DETAIL.customCode}
            {else}
			    {sugar_field parentFieldArray='fields' vardef=$fields[$DETAIL.field] displayType='wirelessDetailView' displayParams='' typeOverride=$DETAIL.type}
            {/if}
		{else}
			{if !empty($DETAIL.customCode)}
				{eval var=$DETAIL.customCode}
            {else}
			    {sugar_field parentFieldArray='fields' vardef=$fields[$DETAIL.field] displayType='wirelessEditView' displayParams=$DETAIL.displayParams typeOverride=$DETAIL.type formName=$form_name}
            {/if}
        {/if}
		</td>
	</tr>
    {/if}
	{/foreach}
</table>
	<input class="button" type="submit" value="{sugar_translate label='LBL_SAVE_BUTTON_LABEL' module=''}" />
	<input type="hidden" name="record" value="{$BEAN_ID}" />
	<input type="hidden" name="module" value="{$MODULE}" />
	<input type="hidden" name="action" value="wlsave" />	
	<input type="hidden" name="return_action" value="wirelessdetail" />	
	{if $RELATE_MODULE}
    <input type="hidden" name="related_module" value="{$RELATED_MODULE}" />
	<input type="hidden" name="relate_to" value="{$RELATE_NAME}" />	
	<input type="hidden" name="relate_id" value="{$RELATE_ID}" />
	<input type="hidden" name="parent_id" value="{$RELATE_ID}" />	
	<input type="hidden" name="parent_type" value="{$RELATE_TO}" />	
    <input type="hidden" name="{$RELATE_FIELD}" value="{$RELATE_ID}" />	
	<input type="hidden" name="return_module" value="{$RETURN_MODULE}" />
	<input type="hidden" name="return_id" value="{$RETURN_ID}" />
    </form>
    <form action="index.php" method="POST">
	<input type="hidden" name="record" value="{$RETURN_ID}" />
	<input type="hidden" name="module" value="{$RETURN_MODULE}" />
	{else}	
	<input type="hidden" name="return_module" value="{$MODULE}" />
	<input type="hidden" name="return_id" value="{$BEAN_ID}" />
    </form>
	<form action="index.php" method="POST">
	<input type="hidden" name="record" value="{$BEAN_ID}" />
	<input type="hidden" name="module" value="{$MODULE}" />
	{/if}
    <input type="hidden" name="action" value="{$RETURN_ACTION}" />
    <input class="button" type="submit" value="{sugar_translate label='LBL_CANCEL_BUTTON_LABEL' module=''}" />
    </form>
</div>
