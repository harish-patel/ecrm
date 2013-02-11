<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/




require_once('include/generic/SugarWidgets/SugarWidgetField.php');

class SugarWidgetSubPanelEditRoleButton extends SugarWidgetField
{
	function displayHeaderCell(&$layout_def)
	{
		return '&nbsp;';
	}

	function displayList(&$layout_def)
	{
		global $app_strings;
	
		$href = 'index.php?module=' . $layout_def['module']
			. '&action=' . 'ContactOpportunityRelationshipEdit'
			. '&record=' . $layout_def['fields']['OPPORTUNITY_ROLE_ID']
			. '&return_module=' . $_REQUEST['module']
			. '&return_action=' . 'DetailView'
			. '&return_id=' . $_REQUEST['record'];

		$edit_icon_html = SugarThemeRegistry::current()->getImage( 'edit_inline',
			'align="absmiddle" alt="' . $app_strings['LNK_EDIT'] . '" border="0"');
	//based on listview since that lets you select records
	if($layout_def['ListView']){
		return '<a href="' . $href . '"'
			. 'class="listViewTdToolsS1">' . $edit_icon_html . '&nbsp;' . $app_strings['LNK_EDIT'] .'</a>&nbsp;';
	}else{
		return '';
	}
	}
}

?>
