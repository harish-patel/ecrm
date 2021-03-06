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
<div class="ydlg-bd">
	<form name="editContactForm" id="editContactForm">
		<input type="hidden" id="contact_id" name="contact_id" value="{$contact.id}">
	<table>
		<tr>
			<td colspan="4">
				<input type="button" class="button" id="contact_save" 
					value="   {$app_strings.LBL_SAVE_BUTTON_LABEL}   "
					onclick="javascript:SUGAR.email2.addressBook.saveContact();"
				>&nbsp;
				<input type="button" class="button" id="contact_full_form" 
					value="   {$app_strings.LBL_FULL_FORM_BUTTON_LABEL}   "
					onclick="javascript:SUGAR.email2.addressBook.fullForm('{$contact.id}', '{$contact.module}');"
				>&nbsp;
				<input type="button" class="button" id="contact_cancel" 
					value="   {$app_strings.LBL_CANCEL_BUTTON_LABEL}   "
					onclick="javascript:SUGAR.email2.addressBook.cancelEdit();"
				>
				<br>&nbsp;
			</td>
		</tr>
		<tr>
			<td scope="row">
				<b>{$contact_strings.LBL_FIRST_NAME}</b>
			</td>
			<td >
				<input class="input" name="contact_first_name" id="contact_first_name" value="{$contact.first_name}">
			</td>
			<td scope="row">
				<b>{$contact_strings.LBL_LAST_NAME}</b> <span class="error">*</span>
			</td>
			<td >
				<input class="input" name="contact_last_name" id="contact_last_name" value="{$contact.last_name}">
			</td>
		</tr>
		<tr>
			<td scope="row" colspan="4">
				<b>{$contact_strings.LBL_EMAIL_ADDRESSES}</b>
			</td>
		</tr>
		<tr>
			<td  colspan="4">
				{$emailWidget}
			</td>
		</tr>
		<tr>
			<td scope="row" colspan="4">
				<i>{$app_strings.LBL_EMAIL_EDIT_CONTACT_WARN}</i>
			</td>
		</tr>
	</table>
	</form>
</div>