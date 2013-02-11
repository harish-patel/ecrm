<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/




require_once('include/generic/SugarWidgets/SugarWidgetSubPanelTopButton.php');

class SugarWidgetSubPanelTopComposeEmailButton extends SugarWidgetSubPanelTopButton
{
	function display($defines)
	{
		global $app_strings,$current_user,$sugar_config,$beanList,$beanFiles;
		$title = $app_strings['LBL_COMPOSE_EMAIL_BUTTON_TITLE'];
		$accesskey = $app_strings['LBL_COMPOSE_EMAIL_BUTTON_KEY'];
		$value = $app_strings['LBL_COMPOSE_EMAIL_BUTTON_LABEL'];
		$parent_type = $defines['focus']->module_dir;
		$parent_id = $defines['focus']->id;
		
		//martin Bug 19660
		$userPref = $current_user->getPreference('email_link_type');
		$defaultPref = $sugar_config['email_default_client'];
		if($userPref != '') {
			$client = $userPref;
		} else {
			$client = $defaultPref;
		}		
		if($client != 'sugar') {
			$class = $beanList[$parent_type];
			require_once($beanFiles[$class]);
			$bean = new $class();
			$bean->retrieve($parent_id);
			// awu: Not all beans have emailAddress property, we must account for this
			if (isset($bean->emailAddress)){
				$to_addrs = $bean->emailAddress->getPrimaryAddress($bean);
				$button = "<input class='button' type='button'  value='$value'  id='".preg_replace('[ ]', '', strtolower($value))."_button'  name='".preg_replace('[ ]', '', $value)."_button'  accesskey='$accesskey' title='$title' onclick=\"location.href='mailto:$to_addrs';return false;\" />";
			}
			else{
				$button = "<input class='button' type='button'  value='$value'  id='".preg_replace('[ ]', '', strtolower($value))."_button'  name='".preg_replace('[ ]', '', $value)."_button'  accesskey='$accesskey' title='$title' onclick=\"location.href='mailto:';return false;\" />";
			}
		}else 
		{
			//Generate the compose package for the quick create options.
    		$composeData = "parent_id=$parent_id&parent_type=$parent_type";
            require_once('modules/Emails/EmailUI.php');
            $eUi = new EmailUI();
            $j_quickComposeOptions = $eUi->generateComposePackageForQuickCreateFromComposeUrl($composeData);
                    
            $button = "<input title='$title'  id='".preg_replace('[ ]', '', strtolower($value))."_button' accesskey='$accesskey' onclick='SUGAR.quickCompose.init($j_quickComposeOptions);' class='button' type='submit' name='".preg_replace('[ ]', '', $value)."_button' value='$value'";
		}
		return $button;	 
	}
}
?>
