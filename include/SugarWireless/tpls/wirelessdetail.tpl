
{*

*}
<hr />
<!-- Wireless Detail View -->
<div class="sectitle">{$MODULE_NAME}: {$BEAN_NAME}</div>
<div class="sec">
<table>
	{foreach from=$DETAILS item=DETAIL name="recordlist"}
	{if !$fields[$DETAIL.field].hidden}
    <tr>
		<td class="detail_label {if $smarty.foreach.recordlist.index % 2 == 0}odd{else}even{/if}">{$DETAIL.label|strip_semicolon}:</td>
		<td class="{if $smarty.foreach.recordlist.index % 2 == 0}odd{else}even{/if}">
		{if !empty($DETAIL.customCode)}
            {eval var=$DETAIL.customCode}
        {else}
            {sugar_field parentFieldArray='fields' vardef=$fields[$DETAIL.field] displayType='wirelessDetailView' displayParams='' typeOverride=$DETAIL.type}
        {/if}
		</td>
	</tr>
    {/if}
	{/foreach}
</table>
{if $ENABLE_FORM}
<form action="index.php" method="POST">
	<input class="button" type="submit" value="{sugar_translate label='LBL_EDIT_BUTTON_LABEL' module=''}" />
	<input type="hidden" name="record" value="{$BEAN_ID}" />
	<input type="hidden" name="module" value="{$MODULE}" />
	<input type="hidden" name="action" value="wirelessedit" />
    <input type="hidden" name="return_action" value="wirelessdetail" />
</form>
{/if}
</div>
{if $AVAILABLE_SUBPANELS}
	{if $AVAILABLE_SUBPANEL_DATA}
		<hr />
		<div class="sectitle">{sugar_translate label='LBL_RELATED_INFORMATION' module=''}</div>	
		{foreach from=$SUBPANEL_DATA key=SUBPANEL item=DATA}
			{if $DATA.count > 0}
				<div class="subpanel_sec">{$MODULELIST[$SUBPANEL]}</div>
				<ul class="sec">
				{foreach from=$DATA item=NAME key=ID name="recordlist"}
				{if $ID != 'count'}
				<li class="{if $smarty.foreach.recordlist.index % 2 == 0}odd{else}even{/if}">
                    {assign var="module_image" value=$SUBPANEL}
                    {assign var="dotgif" value=".gif"}
                    <a href="index.php?module={$SUBPANEL}&record={$ID}&action=wirelessdetail">
                        <img border=0 src="{sugar_getimagepath file=$module_image$dotgif}">&nbsp;
                        {$NAME}
                    </a><br />
				</li>
				{/if}
				{/foreach}
				</ul>
				{if $DATA.count > $MAX_SUBPANEL_DATA}<a class="nav" href="index.php?module={$MODULE}&parent_id={$DETAIL.id}&action=wirelesslist&subpanel={$SUBPANEL}">({sugar_translate label='LBL_SEE_ALL' module=''} {$DATA.count} {sugar_translate label='LBL_LINK_RECORDS' module=''})</a><br />{/if}
			{/if}
			</div>
		{/foreach}
	{/if}
	<hr />
	<div class="sectitle">{sugar_translate label='LBL_ADD_BUTTON' module=''} {sugar_translate label='LBL_RELATED_INFORMATION' module=''}</div>
	<div class="sec">
	<form method="POST" action="index.php">
	<select name="module">
		{foreach from=$SUBPANEL_DATA key=SUBPANEL item=DATA}
		<option value="{$SUBPANEL}">{$MODULELIST[$SUBPANEL]}</option>
		{/foreach}
	</select>
    <input type="hidden" name="from_subpanel" value="1" />
	<input type="hidden" name="action" value="wirelessedit" />
	<input type="hidden" name="relate_id" value="{$BEAN_ID}" />
	<input type="hidden" name="related_module" value="{$MODULE}" />
    <input type="hidden" name="return_action" value="wirelessdetail" />
	<input type="submit" class="button" value="{sugar_translate label='LBL_ADD_BUTTON' module=''}" />
	</form>
	</div>
{/if}
