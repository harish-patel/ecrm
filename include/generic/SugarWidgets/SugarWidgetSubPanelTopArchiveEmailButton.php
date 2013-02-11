<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
  ********************************************************************************/




require_once('include/generic/SugarWidgets/SugarWidgetSubPanelTopButton.php');

class SugarWidgetSubPanelTopArchiveEmailButton extends SugarWidgetSubPanelTopButton
{
	function display($defines)
	{
		if(ACLController::moduleSupportsACL($defines['module'])  && !ACLController::checkAccess($defines['module'], 'edit', true)){
			$temp = '';
			return $temp;
		}
		global $app_strings;
		global $mod_strings;
		global $currentModule;

		$title = $app_strings['LBL_TRACK_EMAIL_BUTTON_TITLE'];
		$accesskey = $app_strings['LBL_TRACK_EMAIL_BUTTON_KEY'];
		$value = $app_strings['LBL_TRACK_EMAIL_BUTTON_LABEL'];
		$this->module = 'Emails';

		$additionalFormFields = array();
		$additionalFormFields['type'] = 'archived';
		// cn: bug 5727 - must override the parents' parent for contacts (which could be an Account)
		$additionalFormFields['parent_type'] = $defines['focus']->module_dir; 
		$additionalFormFields['parent_id'] = $defines['focus']->id;
		$additionalFormFields['parent_name'] = $defines['focus']->name;

		if(isset($defines['focus']->email1))
		{
			$additionalFormFields['to_email_addrs'] = $defines['focus']->email1;
		}
		if(ACLController::moduleSupportsACL($defines['module'])  && !ACLController::checkAccess($defines['module'], 'edit', true)){
			$button = "<input id='".preg_replace('[ ]', '', $value)."_button'  title='$title' class='button' type='button' name='".preg_replace('[ ]', '', strtolower($value))."_button' value='  $value  ' disabled/>\n";
			return $button;
		}
		$button = $this->_get_form($defines, $additionalFormFields);
		$button .= "<input id='".preg_replace('[ ]', '', $value)."_button' title='$title' accesskey='$accesskey' class='button' type='submit' name='".preg_replace('[ ]', '', strtolower($value))."_button' value='  $value  '/>\n";
		$button .= "</form>";
		return $button;
	}
}
?>
