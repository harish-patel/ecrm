<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/




require_once('include/generic/SugarWidgets/SugarWidgetField.php');
//TODO Rename this to edit link
class SugarWidgetSubPanelEditButton extends SugarWidgetField
{
	function displayHeaderCell(&$layout_def)
	{
		return '&nbsp;';
	}

	function displayList(&$layout_def)
	{
		global $app_strings;

		$edit_icon_html = SugarThemeRegistry::current()->getImage( 'edit_inline',
			'align="absmiddle" alt="' . $app_strings['LNK_EDIT'] . '" border="0"');
		if($layout_def['EditView']){
                return "<a href='#' onMouseOver=\"javascript:subp_nav('".$layout_def['module']."', '".$layout_def['fields']['ID']."', 'e', this"
                . (empty($layout_def['linked_field']) ? "" : ", '{$layout_def['linked_field']}'") . ");\""
                . " onFocus=\"javascript:subp_nav('".$layout_def['module']."', '".$layout_def['fields']['ID']."', 'e', this"
                . (empty($layout_def['linked_field']) ? "" : ", '{$layout_def['linked_field']}'") . ");\"" 
                . ' class="listViewTdToolsS1">' . $edit_icon_html . '&nbsp;' . $app_strings['LNK_EDIT'] .'</a>&nbsp;';
		}else{
			return '';
		}
	}
		
}

?>
