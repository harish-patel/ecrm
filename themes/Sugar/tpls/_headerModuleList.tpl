{*

*}
{assign var='underscore' value='_'}
<div class="yuimenubar yuimenubarnav" id="moduleList">
{foreach from=$groupTabs item=tabGroup key=tabGroupName name=tabGroups}
  {* This is a little hack for Smarty, to make the ID's match up for compatibility *}
  {if $tabGroupName == 'All'}
  {assign var='groupTabId' value=''}
  {else}
  {assign var='groupTabId' value=$tabGroupName$underscore}
  {/if}
  
  
	<div id="themeTabGroupMenu_{$tabGroupName}" class="themeTabGroupMenu yuimenubar yuimenubarnav"><div class="bd" id="themeTabGroup_{$tabGroupName}"  style="border: 0px !important; margin: 0px !important;{if $tabGroupName != $currentGroupTab}display:none;{/if}">
      <ul class="first-of-type">
      {if $USE_GROUP_TABS}
        <script type="text/javascript">
        sugar_theme_gm_current = '{$currentGroupTab}';
        Set_Cookie('sugar_theme_gm_current','{$currentGroupTab}',30,'/','','');
        </script>
        {* Tab group selection *}
        <li class="yuimenubaritem moduleTabGroupMenu">
        <a href="#" class="yuimenuitemlabel more group" title="{$tabGroupName}">{$tabGroupName}<img src="{sugar_getimagepath file="grouped-menu-arrow.png"}" class="arrow"></a>
        <div id="TabGroupMenu_{$tabGroupName}" class="yuimenu dashletPanelMenu"><div class="bd">
			<ul>
          {foreach from=$groupTabs item=module key=group name=groupList}
          <li><a href="javascript:(sugar_theme_gm_switch('{$group}') && false)" class="yuimenuitemlabel">{$group}</a></li>
          {/foreach}
		  </ul>
        </div><div class="clear"></div></div> 
        </li>
      {/if}

		{foreach from=$tabGroup.modules item=module key=name name=moduleList}
			{if $name == $MODULE_TAB}
			<li class="yuimenubaritem {if $smarty.foreach.moduleList.index == 0}first-of-type{/if} current">{sugar_link id="moduleTab_$groupTabId$name" module=$name data=$module class="yuimenuitemlabel"}
			{else}
			<li class="yuimenubaritem {if $smarty.foreach.moduleList.index == 0}first-of-type{/if}">{sugar_link id="moduleTab_$groupTabId$name" module=$name data=$module class="yuimenuitemlabel"}
			{/if}
			{if $shortcutTopMenu.$name}
				<div id="{$groupTabId}{$name}" class="yuimenu dashletPanelMenu"><div class="bd">
				
										<ul class="shortCutsUl">
										<li class="yuimenuitem">{$APP.LBL_LINK_ACTIONS}</li>
										{foreach from=$shortcutTopMenu.$name item=shortcut_item}
										
											<li class="yuimenuitem"><a href="{$shortcut_item.URL}" class="yuimenuitemlabel">{$shortcut_item.LABEL}</a></li>
										
										{/foreach}
										</ul>
										{if $groupTabId}
										<ul id="lastViewedContainer{$tabGroupName}_{$name}" class="lastViewedUl"><li class="yuimenuitem">{$APP.LBL_LAST_VIEWED}</li><li class="yuimenuitem" id="shortCutsLoading{$tabGroupName}_{$name}"><a href="#" class="yuimenuitemlabel">&nbsp;</a></li></ul>
										{else}
										<ul id="lastViewedContainer{$name}" class="lastViewedUl"><li class="yuimenuitem">{$APP.LBL_LAST_VIEWED}</li><li class="yuimenuitem" id="shortCutsLoading{$tabGroupName}_{$name}"><a href="#" class="yuimenuitemlabel">&nbsp;</a></li></ul>
										{/if}
								
				
				</div>
				<div class="clear"></div>
				</div>      
			{/if}
			</li>
			{if $name == $MODULE_TAB}
			<li class="yuimenubaritem currentTabRight">{sugar_link id="moduleTab_$groupTabId$name_right" module=$name data=$module class="yuimenuitemlabel"}</li>
			{/if}
		{/foreach}
			{if count($tabGroup.extra) > 0}
			<li class="yuimenubaritem moduleTabExtraMenu more" id="moduleTabExtraMenu{$tabGroupName}">
				<a href="#" class="yuimenuitemlabel more"><em>&gt;&gt;</em></a>
				<div id="More{$tabGroupName}" class="yuimenu dashletPanelMenu"><div class="bd">
				<ul>
					{foreach from=$tabGroup.extra item=name key=module name=moduleList}
                  
					<li>{sugar_link id="moduleTab_$groupTabId$module" class="yuimenuitemlabel" module="$module" data="$name"}
					{/foreach}
				</ul>
				</div>
				<div class="clear"></div>
				</div> 
			</li>
			{/if}
			
		</ul>            
	</div></div>
{/foreach}
</div>
