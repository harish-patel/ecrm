<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/




require_once('include/generic/SugarWidgets/SugarWidgetField.php');

class SugarWidgetSubPanelRemoveButton extends SugarWidgetField
{
	function displayHeaderCell(&$layout_def)
	{
		return '&nbsp;';
	}

	function displayList(&$layout_def)
	{
		
		global $app_strings;
		
		
		$parent_record_id = $_REQUEST['record'];
		$parent_module = $_REQUEST['module'];

		$action = 'DeleteRelationship';
		$record = $layout_def['fields']['ID'];
		$current_module=$layout_def['module'];
		//in document revisions subpanel ,users are now allowed to 
		//delete the latest revsion of a document. this will be tested here
		//and if the condition is met delete button will be removed.
		$hideremove=false;
		if ($current_module=='DocumentRevisions') {
			if ($layout_def['fields']['ID']==$layout_def['fields']['LATEST_REVISION_ID']) {
				$hideremove=true;
			}
		}
		// Implicit Team-memberships are not "removeable" 
		elseif ($_REQUEST['module'] == 'Teams' && $current_module == 'Users') {
			if($layout_def['fields']['UPLINE'] != translate('LBL_TEAM_UPLINE_EXPLICIT', 'Users')) {
				$hideremove = true;
			}	
			
			//We also cannot remove the user whose private team is set to the parent_record_id value
			$user = new User();
			$user->retrieve($layout_def['fields']['ID']);
			if($parent_record_id == $user->getPrivateTeamID())
			{
			    $hideremove = true;
			}
		}
		
		
		$return_module = $_REQUEST['module'];
		$return_action = 'SubPanelViewer';
		$subpanel = $layout_def['subpanel_id'];
		$return_id = $_REQUEST['record'];
		if (isset($layout_def['linked_field_set']) && !empty($layout_def['linked_field_set'])) {
			$linked_field= $layout_def['linked_field_set'] ;
		} else {
			$linked_field = $layout_def['linked_field'];
		}
		$refresh_page = 0;
		if(!empty($layout_def['refresh_page'])){
			$refresh_page = 1;
		}
		$return_url = "index.php?module=$return_module&action=$return_action&subpanel=$subpanel&record=$return_id&sugar_body_only=1&inline=1";

		$icon_remove_text = $app_strings['LNK_REMOVE'];
		$icon_remove_html = SugarThemeRegistry::current()->getImage( 'delete_inline',
			'align="absmiddle" alt="' . $icon_remove_text . '" border="0"');
		if($linked_field == 'get_products_query')
			$linked_field = 'products';
		//based on listview since that lets you select records
		if($layout_def['ListView'] && !$hideremove) {
            $retStr = "<a href=\"javascript:sub_p_rem('$subpanel', '$linked_field'" 
                    .", '$record', $refresh_page);\"" 
			. ' class="listViewTdToolsS1"'
			. " onclick=\"return sp_rem_conf();\""
			. ">$icon_remove_html&nbsp;$icon_remove_text</a>";
        return $retStr;
            
		}else{
			return '';
		}
	}
}
?>
