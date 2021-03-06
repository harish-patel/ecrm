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
{$MODULE_TITLE}
<form enctype="multipart/form-data" name="importstep2" method="POST" action="index.php" id="importstep2">
<input type="hidden" name="module" value="Import">
<input type="hidden" name="custom_delimiter" value="{$CUSTOM_DELIMITER}">
<input type="hidden" name="custom_enclosure" value="{$CUSTOM_ENCLOSURE}">
<input type="hidden" name="type" value="{$TYPE}">
<input type="hidden" name="source" value="{$SOURCE}">
<input type="hidden" name="source_id" value="{$SOURCE_ID}">
<input type="hidden" name="action" value="Step3">
<input type="hidden" name="import_module" value="{$IMPORT_MODULE}">
{foreach from=$instructions key=key item=item name=instructions}
{if $smarty.foreach.instructions.first}          
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
	<td align="left"><p>{$INSTRUCTIONS_TITLE}</p></td>
</tr>
<tr>
	<td>
	<table width="50%">
{/if}
	<tr>
		<td valign="top"><b>{$item.STEP_NUM}</b></td>
		<td>{$item.INSTRUCTION_STEP}</td>
	</tr>
{if $smarty.foreach.instructions.last}
    </table>
	</td>
</tr>
</table>
{/if}
{/foreach}

<br>

<table width="100%" border="0" cellspacing="0" cellpadding="0" class="edit view">
<tr>
<td>
	<table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr>
	<td align="left" scope="row" colspan="4">{$MOD.LBL_SELECT_FILE}</td>
	</tr>
	<tr>
	<td scope="row">
	<input type="hidden" />
	<input size="60" name="userfile" type="file"/>
	</td>
	</tr>
	<tr>
	<td scope="row">
	{$MOD.LBL_HAS_HEADER}&nbsp;<input class="checkBox" value='on' type="checkbox" name="has_header"{$HAS_HEADER_CHECKED}>
	</td>
	</tr>
	</table>


</td>
</tr>
</table>

<br>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
	<td align="left">
        <input title="{$MOD.LBL_BACK}" accessKey="" class="button" type="submit" name="button" value="  {$MOD.LBL_BACK}  " id="goback">&nbsp;
	    <input title="{$MOD.LBL_NEXT}" accessKey="" class="button" type="submit" name="button" value="  {$MOD.LBL_NEXT}  " id="gonext">
    </td>
</tr>
</table>

</form>
{$JAVASCRIPT}
