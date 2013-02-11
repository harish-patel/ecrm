
{*

*}
<hr />
<!-- Activities for the day -->
{if $todays_activities}
<div class="sectitle">{sugar_translate label='LBL_TODAYS_ACTIVITIES' module=''}</div>
{foreach from=$activities_today item=data key=module}
	<div class="subpanel_sec">{$module}:</div>
	<ul class="sec">
	{foreach from=$data item=activity name="activitylist"}
	{assign var="activity_image" value=$module}
	{assign var="dotgif" value=".gif"}	
	<li class="{if $smarty.foreach.activitylist.index % 2 == 0}odd{else}even{/if}">
        <a href=index.php?module={$module}&action=wirelessdetail&record={$activity.ID}><img border=0 src="{sugar_getimagepath file=$activity_image$dotgif}">&nbsp;
        {$activity.NAME}</a>
    </li>
	{/foreach}
	</ul>
{/foreach}
{/if}
<!-- Last Viewed -->
{if $last_viewed}
<div class="sectitle">{$LBL_LAST_VIEWED}</div>
<ul class="sec">
	{foreach from=$LAST_VIEWED_LIST item=LAST_VIEWED key=ID name="recordlist"}
	{assign var="module_image" value=$LAST_VIEWED.module}
	{assign var="dotgif" value=".gif"}
	<li class="{if $smarty.foreach.recordlist.index % 2 == 0}odd{else}even{/if}">
        <a href=index.php?module={$LAST_VIEWED.module}&action=wirelessdetail&record={$ID}><img border=0 src="{sugar_getimagepath file=$module_image$dotgif}">&nbsp;
        {$LAST_VIEWED.summary}</a>
    </li>
	{/foreach}
</ul>
{/if}
