<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/




require_once('include/generic/SugarWidgets/SugarWidgetField.php');
//TODO Rename this to close button field
class SugarWidgetSubPanelCloseButton extends SugarWidgetField
{
	function displayList(&$layout_def)
	{
		global $app_strings;
		$return_module = $_REQUEST['module'];
		$return_id = $_REQUEST['record'];
		$module_name = $layout_def['module'];
		$record_id = $layout_def['fields']['ID'];

		// calls and meetings are held.
		$new_status = 'Held';
		
		switch($module_name)
		{
			case 'Tasks':
				$new_status = 'Completed';
				break;
		}
        
		$html = "<a onclick='SUGAR.util.closeActivityPanel.show(\"$module_name\",\"$record_id\",\"$new_status\",\"subpanel\",\"{$layout_def['subpanel_id']}\");' >".SugarThemeRegistry::current()->getImage("close_inline","alt=".translate('LBL_LIST_CLOSE',$module_name)." border='0'")."</a>";
		return $html;

	}
}

?>
