<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/



//this widget is used only by the contracts module..

require_once('include/generic/SugarWidgets/SugarWidgetField.php');
class SugarWidgetSubPanelGetLatestButton extends SugarWidgetField
{
	function displayHeaderCell(&$layout_def)
	{
		return '&nbsp;';
	}

	function displayList(&$layout_def)
	{
		//if the contract has been executed or selected_revision is same as latest revision
		//then hide the latest button. 		
		//if the contract state is executed or document is not a template hide this action.
		if ((!empty($layout_def['fields']['CONTRACT_STATUS']) && $layout_def['fields']['CONTRACT_STATUS']=='executed') or
			$layout_def['fields']['SELECTED_REVISION_ID']== $layout_def['fields']['LATEST_REVISION_ID']) {
			return "";
		}
		
		global $app_strings;
		

		$href = 'index.php?module=' . $layout_def['module']
			. '&action=' . 'GetLatestRevision'
			. '&record=' . $layout_def['fields']['ID']
			. '&return_module=' . $_REQUEST['module']
			. '&return_action=' . 'DetailView'
			. '&return_id=' . $_REQUEST['record']
			. '&get_latest_for_id=' . $layout_def['fields']['LINKED_ID'];

		$edit_icon_html = SugarThemeRegistry::current()->getImage( 'getLatestDocument',
			'align="absmiddle" alt="' . $app_strings['LNK_GET_LATEST'] . '" border="0"');
		if($layout_def['EditView']){
			return '<a href="' . $href . '"' . "title ='". $app_strings['LNK_GET_LATEST_TOOLTIP']  ."'"
			. 'class="listViewTdToolsS1">' . $edit_icon_html . '&nbsp;' . $app_strings['LNK_GET_LATEST'] .'</a>&nbsp;';
		}else{
			return '';
		}
	}
		
}

?>
