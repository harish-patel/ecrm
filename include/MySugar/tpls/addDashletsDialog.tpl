{*
/*********************************************************************************
* The contents of this file are subject to the SugarCRM Master Subscription
* Agreement ("License") which can be viewed at
* http://www.sugarcrm.com/crm/en/msa/master_subscription_agreement_11_April_2011.pdf
* By installing or using this file, You have unconditionally agreed to the
* terms and conditions of the License, and You may not use this file except in
* compliance with the License.  Under the terms of the license, You shall not,
* among other things: 1) sublicense, resell, rent, lease, redistribute, assign
* or otherwise transfer Your rights to the Software, and 2) use the Software
* for timesharing or service bureau purposes such as hosting the Software for
* commercial gain and/or for the benefit of a third party.  Use of the Software
* may be subject to applicable fees and any use of the Software without first
* paying applicable fees is strictly prohibited.  You do not have the right to
* remove SugarCRM copyrights from the source code or user interface.
*
* All copies of the Covered Code must include on each user interface screen:
*  (i) the "Powered by SugarCRM" logo and
*  (ii) the SugarCRM copyright notice
* in the same form as they appear in the distribution.  See full license for
* requirements.
*
* Your Warranty, Limitations of liability and Indemnity are expressly stated
* in the License.  Please refer to the License for the specific language
* governing these rights and limitations under the License.  Portions created
* by SugarCRM are Copyright (C) 2004-2011 SugarCRM, Inc.; All Rights Reserved.
********************************************************************************/

*}
<div align="right" id="dashletSearch">
    <table>
        <tr>
            <td>{sugar_translate label='LBL_DASHLET_SEARCH' module='Home'}: <input id="search_string" type="text" length="15" onKeyPress="javascript:if(event.keyCode==13)SUGAR.mySugar.searchDashlets(this.value,document.getElementById('search_category').value);" />
                <input type="button" class="button" value="{sugar_translate label='LBL_SEARCH' module='Home'}" onClick="javascript:SUGAR.mySugar.searchDashlets(document.getElementById('search_string').value,document.getElementById('search_category').value);" />
                <input type="button" class="button" value="{sugar_translate label='LBL_CLEAR' module='Home'}" onClick="javascript:SUGAR.mySugar.clearSearch();" />			
                {if $moduleName == 'Home'}
                    <input type="hidden" id="search_category" value="module" />
                {else}
                    <input type="hidden" id="search_category" value="chart" />
                {/if}
            </td>
        </tr>
    </table>
    <br>
</div>

{if $moduleName == 'Home'}
    <ul class="subpanelTablist" id="dashletCategories">
        <li id="moduleCategory" class="active"><a href="javascript:SUGAR.mySugar.toggleDashletCategories('module');" class="current" id="moduleCategoryAnchor">{sugar_translate label='LBL_MODULES' module='Home'}</a></li>
        <li id="chartCategory" class=""><a href="javascript:SUGAR.mySugar.toggleDashletCategories('chart');" class="" id="chartCategoryAnchor">{sugar_translate label='LBL_CHARTS' module='Home'}</a></li>
        <li id="toolsCategory" class=""><a href="javascript:SUGAR.mySugar.toggleDashletCategories('tools');" class="" id="toolsCategoryAnchor">{sugar_translate label='LBL_TOOLS' module='Home'}</a></li>	
        <li id="webCategory" class=""><a href="javascript:SUGAR.mySugar.toggleDashletCategories('web');" class="" id="webCategoryAnchor">{sugar_translate label='LBL_WEB' module='Home'}</a></li>	
    </ul>
{/if}

{if $moduleName == 'Home'}
    <div id="moduleDashlets" style="height:400px;display:;">
        <h3>{sugar_translate label='LBL_MODULES' module='Home'}</h3>
        <div id="moduleDashletsList">
            <table width="95%">
                {counter assign=rowCounter start=0 print=false}
                {foreach from=$modules item=module}
                    {if $rowCounter % 2 == 0}
                        <tr>
                        {/if}
                        <td width="50%" align="left"><a href="#" onclick="{$module.onclick}">{$module.icon}</a>&nbsp;<a class="mbLBLL" href="#" onclick="{$module.onclick}">{$module.title}</a><br /></td>
                            {if $rowCounter % 2 == 1}
                        </tr>
                    {/if}
                    {counter}
                {/foreach}
            </table>
        </div>
    </div>
{/if}
<div id="chartDashlets" style="{if $moduleName == 'Home'}height:400px;display:none;{else}height:425px;display:;{/if}">
    {if $charts != false}
        <h3><span id="basicChartDashletsExpCol"><a href="#" onClick="javascript:SUGAR.mySugar.collapseList('basicChartDashlets');"><img border="0" src="{sugar_getimagepath file='basic_search.gif'}" align="absmiddle" /></span></a>&nbsp;{sugar_translate label='LBL_BASIC_CHARTS' module='Home'}</h3>
        <div id="basicChartDashletsList">
            <table width="100%">
                {foreach from=$charts item=chart}
                    <tr>
                        <td align="left"><a href="#" onclick="{$chart.onclick}">{$chart.icon}</a>&nbsp;<a class="mbLBLL" href="#" onclick="{$chart.onclick}">{$chart.title}</a><br /></td>
                    </tr>
                {/foreach}
            </table>
            <hr>
        </div>
    {/if}
    <h3><span id="reportChartDashletsExpCol"><a href="javascript:void(0)" onClick="javascript:SUGAR.mySugar.collapseList('reportChartDashlets');"><img border="0" src="{sugar_getimagepath file='basic_search.gif'}" align="absmiddle" /></span></a>&nbsp;{sugar_translate label='LBL_REPORT_CHARTS' module='Home'}</h3>
    <div id="reportChartDashletsList">
        <div id="myFavoriteReportsChartDashlets" style="display:inline;">
            <h4><span id="myFavoriteExpCol"><a href="javascript:void(0)" onClick="javascript:SUGAR.mySugar.collapseReportList('myFavorite');"><img border="0" src="{sugar_getimagepath file='ProjectMinus.gif'}" align="absmiddle" /></a></span>&nbsp;{sugar_translate label='LBL_MY_FAVORITE_REPORT_CHARTS' module='Home'}</h4>
            <div id="myFavoriteReportsChartDashletsList"><img src="{sugar_getimagepath file='img_loading.gif'}" align="absmiddle" /></div>
        </div>
        <div id="mySavedReportsChartDashlets" style="display:inline;">
            <h4><span id="mySavedExpCol"><a href="javascript:void(0)" onClick="javascript:SUGAR.mySugar.expandReportList('mySaved');"><img border="0" src="{sugar_getimagepath file='ProjectPlus.gif'}" align="absmiddle" /></a></span>&nbsp;{sugar_translate label='LBL_MY_SAVED_REPORT_CHARTS' module='Home'}</h4>
            <div id="mySavedReportsChartDashletsList" style="display:none;"><img src="{sugar_getimagepath file='img_loading.gif'}" align="absmiddle" /></div>
        </div>
        <div id="myTeamReportsChartDashlets" style="display:inline;">
            <h4><span id="myTeamExpCol"><a href="javascript:void(0)" onClick="javascript:SUGAR.mySugar.expandReportList('myTeam');"><img border="0" src="{sugar_getimagepath file='ProjectPlus.gif'}" align="absmiddle" /></a></span>&nbsp;{sugar_translate label='LBL_MY_TEAM_REPORT_CHARTS' module='Home'}</h4>
            <div id="myTeamReportsChartDashletsList" style="display:none;"><img src="{sugar_getimagepath file='img_loading.gif'}" align="absmiddle" /></div>
        </div>
        <div id="globalReportsChartDashlets" style="display:inline;">
            <h4><span id="globalExpCol"><a href="javascript:void(0)" onClick="javascript:SUGAR.mySugar.expandReportList('global');"><img border="0" src="{sugar_getimagepath file='ProjectPlus.gif'}" align="absmiddle" /></a></span>&nbsp;{sugar_translate label='LBL_GLOBAL_REPORT_CHARTS' module='Home'}</h4>
            <div id="globalReportsChartDashletsList" style="display:none;"><img src="{sugar_getimagepath file='img_loading.gif'}" align="absmiddle" /></div>
        </div>
    </div>
</div>

{if $moduleName == 'Home'}
    <div id="toolsDashlets" style="height:400px;display:none;">
        <h3>{sugar_translate label='LBL_TOOLS' module='Home'}</h3>
        <div id="toolsDashletsList">
            <table width="95%">
                {counter assign=rowCounter start=0 print=false}
                {foreach from=$tools item=tool}
                    {if $rowCounter % 2 == 0}
                        <tr>
                        {/if}
                        <td align="left"><a href="#" onclick="{$tool.onclick}">{$tool.icon}</a>&nbsp;<a class="mbLBLL" href="#" onclick="{$tool.onclick}">{$tool.title}</a><br /></td>
                            {if $rowCounter % 2 == 1}
                        </tr>
                    {/if}
                    {counter}
                {/foreach}
            </table>
        </div>
    </div>
{/if}

{if $moduleName == 'Home'}
    <div id="webDashlets" style="height:400px;display:none;">
        <h3>{sugar_translate label='LBL_WEBSITE_TITLE' module='Home'}</h3>
        <div id="webDashletsList">
            <table width="95%">
                <tr>
                    <td scope="row"></td>
                    <td><input type="text" id="web_address" value="http://" style="width: 400px" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="button" name="create" value="{$APP.LBL_ADD_BUTTON}" 
                               onclick="return SUGAR.mySugar.addDashlet('iFrameDashlet', 'web', document.getElementById('web_address').value);" />
                    </td>
                </tr>
            </table>
            <h3>{sugar_translate label='LBL_RSS_TITLE' module='Home'}</h3>
            <table width="95%">
                <tr>
                    <td scope="row"></td>
                    <td><input type="text" id="rss_address" value="http://" style="width: 400px" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="button" name="create" value="{$APP.LBL_ADD_BUTTON}" 
                               onclick="return SUGAR.mySugar.addDashlet('RSSDashlet', 'web', document.getElementById('rss_address').value);" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
{/if}

<div id="searchResults" style="display:none;{if $moduleName == 'Home'}height:400px;{else}height:425px;{/if}">
</div>