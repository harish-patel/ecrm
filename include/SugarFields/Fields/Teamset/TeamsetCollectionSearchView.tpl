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
<link rel="stylesheet" type="text/css" href="include/javascript/yui/build/container/assets/container.css" />
<script type="text/javascript" src='{sugar_getjspath file="include/SugarFields/Fields/Collection/SugarFieldCollection.js"}'></script>
<script type="text/javascript" src='{sugar_getjspath file="include/SugarFields/Fields/Teamset/Teamset.js"}'></script>
<script type="text/javascript" src='{sugar_getjspath file="include/JSON.js"}'></script>
<script type="text/javascript">
    var collection = (typeof collection == 'undefined') ? new Array() : collection;
    collection["{$displayParams.formName}_{$vardef.name}"] = new SUGAR.collection('{$displayParams.formName}', '{$vardef.name}', '{$module}', '{$displayParams.popupData}');
	collection["{$displayParams.formName}_{$vardef.name}"].show_more_image = false;
</script>
<input type="hidden" id="update_fields_{$vardef.name}_collection" name="update_fields_{$vardef.name}_collection" value="">
<input type="hidden" id="{$vardef.name}_new_on_update" name="{$vardef.name}_new_on_update" value="{$displayParams.new_on_update}">
<input type="hidden" id="{$vardef.name}_allow_update" name="{$vardef.name}_allow_update" value="{$displayParams.allow_update}">
<input type="hidden" id="{$vardef.name}_allowed_to_check" name="{$vardef.name}_allowed_to_check" value="false">

{if !empty($vardef.required)}
<input type="hidden" id="{$vardef.name}_field" name="{$vardef.name}_field" value="{$vardef.name}_table" style="border-spacing: 0pt;">
{/if}

<table name='{$displayParams.formName}_{$vardef.name}_table' id='{$displayParams.formName}_{$vardef.name}_table' style="border-spacing: 0pt;">
    <tr>
    	<td colspan="2" NOWRAP>
            {if empty($displayParams.clearOnly) }<button type="button" class="button firstChild" value="{sugar_translate label='LBL_SELECT_BUTTON_LABEL'}" onclick='javascript:open_popup("Teams", 600, 400, "", true, false, {literal}{"call_back_function":"set_return_teams_for_editview","form_name": {/literal} "{$displayParams.formName}" {literal},"field_name":"team_name_advanced","field_to_name_array":{"id":"team_id","name":"team_name_advanced"}}{/literal}, "MULTISELECT", true);' name="teamSelect"><img src="{sugar_getimagepath file="id-ff-select.png"}"></button>{/if}<button type="button" class="button lastChild" value="{sugar_translate label='LBL_ADD_BUTTON'}" onclick="javascript:collection['{$displayParams.formName}_{$vardef.name}'].add();" name="teamAdd"><img src="{sugar_getimagepath file="id-ff-add.png"}"></button>
			</span>
        </td>
        <td id="lineLabel_{$vardef.name}_primary">
            &nbsp;&nbsp;{sugar_translate label='LBL_COLLECTION_PRIMARY'}
        </td>
        <td>
        	<a class="utilsLink" href="javascript:collection['{$displayParams.formName}_{$vardef.name}'].js_more();" id='more_{$displayParams.formName}_{$vardef.name}' {if empty($values.secondaries)}style="display:none"{/if}></a>
        </td>
    </tr>
    <tr id="lineFields_{$displayParams.formName}_{$vardef.name}_0" class="lineFields_{$displayParams.formName}_{$vardef.name}">
        <td valign='top'>
            <span id='{$displayParams.formName}_{$vardef.name}_input_div_0' name="teamset_div">          
            <input type="text" name="{$vardef.name}_collection_0" id="{$vardef.name}_collection_0" class="sqsEnabled" tabindex="{$tabindex}" size="{$displayParams.size}" value="" title='{$vardef.help}' autocomplete="off" {$displayParams.readOnly} {$displayParams.field}>
            <input type="hidden" name="id_{$vardef.name}_collection_0" id="id_{$vardef.name}_collection_0" value="">
            </span>
        </td>
<!-- BEGIN Remove and Radio -->
        <td valign='top'>
            &nbsp;
            <img id="remove_{$vardef.name}_collection_0" name="remove_{$vardef.name}_collection_0" src="{sugar_getimagepath file='id-ff-remove.png'}" onclick="collection['{$displayParams.formName}_{$vardef.name}'].remove(0);"  class="id-ff-remove"/>
            {if !empty($displayParams.allowNewValue) }
            <input type="hidden" name="allow_new_value_{$vardef.name}_collection_0" id="allow_new_value_{$vardef.name}_collection_0" value="true">
            {/if}
        </td>
        <td valign='top' align="center">
            <span id='{$displayParams.formName}_{$vardef.name}_radio_div_0'>
            <input id="primary_{$vardef.name}_collection_0" name="primary_{$vardef.name}_collection" type="radio" class="radio" value="0" onclick="collection['{$displayParams.formName}_{$vardef.name}'].changePrimary(true);" />
            </span>
        </td>
<!-- END Remove and Radio -->
    </tr>
</table>
<table style="border-spacing: 0pt;">
    <tr>
    	<td NOWRAP>
            <input type="radio" name="{$vardef.name}_type" id="{$vardef.name}_type" value="any" checked> {$APP.LBL_ROUTING_ANY}
			<input type="radio" name="{$vardef.name}_type" id="{$vardef.name}_type" value="all"> {$APP.LBL_ROUTING_ALL}
			<input type="radio" name="{$vardef.name}_type" id="{$vardef.name}_type" value="exact"> {$APP.LBL_COLLECTION_EXACT}
        </td>    
    </tr>
</table>
{if !empty($values.secondaries)}
            {foreach item=secondary_field from=$values.secondaries key=key}
                <script type="text/javascript">
                    var temp_array = new Array();
                    temp_array['name'] = '{$secondary_field.name}';
                    temp_array['id'] = '{$secondary_field.id}';
                    collection["{$displayParams.formName}_{$vardef.name}"].secondaries_values.push(temp_array);
                </script>
            {/foreach}
{/if}
<!--
Put this button in here since we have moved the Add and Select buttons above the text fields, the accesskey will skip these. So create this button
and push it outside the screen.
-->
 <input style='position:absolute; left:-9999px; width: 0px; height: 0px;' accesskey='T' halign='left' type="button" class="button" value="{sugar_translate label='LBL_SELECT_BUTTON_LABEL'}" onclick='javascript:open_popup("Teams", 600, 400, "", true, false, {literal}{"call_back_function":"set_return_teams_for_editview","form_name": {/literal} "{$displayParams.formName}" {literal},"field_name":"team_name_advanced","field_to_name_array":{"id":"team_id","name":"team_name_advanced"}}{/literal}, "MULTISELECT", true);'>

<script type="text/javascript">
collection["{$displayParams.formName}_{$vardef.name}"].add_secondaries(collection["{$displayParams.formName}_{$vardef.name}"].secondaries_values);

//If the searchType (any, all, exact) is specified, select it 
{if !empty($displayParams.searchType)}
{literal}
YAHOO.util.Event.onDOMReady(function() {
{/literal}
    radio_el = document.forms.{$displayParams.formName}.{$vardef.name}_type;
{literal}
    for (var i=0; i< radio_el.length; i++)  {
        if(typeof radio_el[i] != 'undefined' && radio_el[i].value == {/literal}'{$displayParams.searchType}'{literal}) {
           radio_el[i].checked = true;
        }
    }
});
{/literal}
{/if}

//If there was a primary team chosen, select it
{if $hasPrimaryTeam}
{literal}
YAHOO.util.Event.onDOMReady(function() {
{/literal}
    set_primary_team('{$displayParams.formName}', 'primary_{$vardef.name}_collection', '{$values.primary.id}');
{literal}
});
{/literal}
{/if}
</script>
{if !empty($values.primary.id) && !empty($values.primary.name)}
<script type="text/javascript">
 	document.forms["{$displayParams.formName}"].elements["id_{$vardef.name}_collection_0"].value = "{$values.primary.id}";
 	document.forms["{$displayParams.formName}"].elements["{$vardef.name}_collection_0"].value = "{$values.primary.name}";
</script>
{/if}
{$quickSearchCode}