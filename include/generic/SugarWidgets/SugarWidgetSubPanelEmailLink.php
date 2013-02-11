<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/




require_once('include/generic/SugarWidgets/SugarWidgetField.php');

class SugarWidgetSubPanelEmailLink extends SugarWidgetField {

	function displayList(&$layout_def) {
		global $current_user;
		global $beanList;
		global $focus;
		global $sugar_config;
		global $locale;
		
		if(isset($layout_def['varname'])) {
			$key = strtoupper($layout_def['varname']);
		} else {
			$key = $this->_get_column_alias($layout_def);
			$key = strtoupper($key);
		}
		$value = $layout_def['fields'][$key];
		
		

			if(isset($_REQUEST['action'])) $action = $_REQUEST['action'];
			else $action = '';

			if(isset($_REQUEST['module'])) $module = $_REQUEST['module'];
			else $module = '';

			if(isset($_REQUEST['record'])) $record = $_REQUEST['record'];
			else $record = '';

			if (!empty($focus->name)) {
				$name = $focus->name;
			} else {
				if( !empty($focus->first_name) && !empty($focus->last_name)) {
					$name = $locale->getLocaleFormattedName($focus->first_name, $focus->last_name);
					}
				if(empty($name)) {
					$name = '*';
				}
			}
							
			$userPref = $current_user->getPreference('email_link_type');
			$defaultPref = $sugar_config['email_default_client'];
			if($userPref != '') {
				$client = $userPref;
			} else {
				$client = $defaultPref;
			}
			
			if($client == 'sugar')
			{				
			    $fullComposeUrl = 'load_id='.$layout_def['fields']['ID']
                                . '&load_module='. $this->layout_manager->defs['module_name']
                                . '&parent_type='.$this->layout_manager->defs['module_name']
                                . '&parent_id='.$layout_def['fields']['ID'];

                if(isset($layout_def['fields']['FULL_NAME'])){
                   $fullComposeUrl .= '&parent_name='.urlencode($layout_def['fields']['FULL_NAME']);
                }
                $fullComposeUrl .= '&return_module='.$module.'&return_action='.$action.'&return_id='.$record;
                require_once('modules/Emails/EmailUI.php');
                $eUi = new EmailUI();
                $j_quickComposeOptions = $eUi->generateComposePackageForQuickCreateFromComposeUrl($fullComposeUrl);

                $link = "<a href='javascript:void(0);' onclick='SUGAR.quickCompose.init($j_quickComposeOptions);'>";
			} else {
				$link = '<a href="mailto:' . $value .'" >';
			}

			return $link.$value.'</a>';
		
	}
} // end class def
?>




















