<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
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

/*********************************************************************************

 * Description:  Contains a variety of utility functions used to display UI
 * components such as form headers and footers.  Intended to be modified on a per
 * theme basis.
 ********************************************************************************/





/**
 * Create javascript to validate the data entered into a record.
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 */
function get_validate_record_js () {
global $mod_strings;
global $app_strings;

$err_missing_required_fields = $app_strings['ERR_MISSING_REQUIRED_FIELDS'];

$the_script  = <<<EOQ

<script type="text/javascript" language="Javascript">

function verify_data(form) {
	var isError = false;
	var errorMessage = "";

	if (isError == true) {
		alert("$err_missing_required_fields" + errorMessage);
		return false;
	}
	return true;
}
</script>

EOQ;

return $the_script;



}

/**
 * Create HTML form to enter a new record with the minimum necessary fields.
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 */
function get_new_record_form () {
	global $app_strings;
	global $app_list_strings;
	global $mod_strings;
	global $currentModule;
	global $current_user;
	global $timedate;
	
	$the_form = get_left_form_header($mod_strings['LBL_NEW_FORM_TITLE']);
	$form = new XTemplate ('modules/Campaigns/Forms.html');

	$module_select = empty($_REQUEST['module_select']) ? ''
		: $_REQUEST['module_select'];
	$form->assign('MOD', $mod_strings);
	$form->assign('APP', $app_strings);
	$form->assign('THEME', SugarThemeRegistry::current()->__toString());
	$form->assign("JAVASCRIPT", get_set_focus_js().get_validate_record_js());
	$form->assign("STATUS_OPTIONS", get_select_options_with_id($app_list_strings['campaign_status_dom'], "Planning"));
	$form->assign("TYPE_OPTIONS", get_select_options_with_id($app_list_strings['campaign_type_dom'], ""));

	$form->assign("USER_ID", $current_user->id);
	$form->assign("TEAM_ID", sprintf('<input type="hidden" name="team_id" value="%s">', $current_user->default_team));


	$form->assign("CALENDAR_LANG", "en");
	$form->assign("USER_DATEFORMAT", '('. $timedate->get_user_date_format().')');
	$form->assign("CALENDAR_DATEFORMAT", $timedate->get_cal_date_format());

	$form->parse('main');
	$the_form .= $form->text('main');

	
	$focus = new Campaign();
	
	
	$javascript = new javascript();
	$javascript->setFormName('quick_save');
	$javascript->setSugarBean($focus);
	$javascript->addRequiredFields('');
	$jscript = $javascript->getScript();

	$the_form .= $jscript . get_left_form_footer();
	return $the_form;


}

?>