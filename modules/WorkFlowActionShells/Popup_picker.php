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

global $theme;










class Popup_Picker
{
	/*
	 * 
	 */
	function Popup_Picker()
	{}
	
	function process_page()
	{
		global $theme;
		global $mod_strings;
		global $app_strings;
		global $currentModule;
		global $current_language;
		global $current_module_strings;
		if(!is_file($GLOBALS['sugar_config']['cache_dir'] . 'jsLanguage/WorkFLow/' . $GLOBALS['current_language'] . '.js')) {
            require_once('include/language/jsLanguage.php');
            jsLanguage::createModuleStringsCache('WorkFlow', $GLOBALS['current_language']);
        }
        $javascript_language_files = '<script type="text/javascript" src="' . $GLOBALS['sugar_config']['cache_dir'] . 'jsLanguage/WorkFlow/' . $GLOBALS['current_language'] . '.js?s=' . $GLOBALS['sugar_version'] . '&c=' . $GLOBALS['sugar_config']['js_custom_version'] . '&j=' . $GLOBALS['sugar_config']['js_lang_version'] . '"></script>';
		$current_module_strings = return_module_language($current_language, 'WorkFlowActionShells');
		
		
		$ListView = new ListView();
		$header_text = '';

		if(isset($_REQUEST['workflow_id']))
		{
			$workflow = new WorkFlow();
			$workflow->retrieve($_REQUEST['workflow_id']);
			//TODO GET ALL ALERTS HERE
			//$focus_alerts_list = $workflow->get_linked_beans('wf_alerts','WorkFlowAlertShell');
			$actions = new WorkFlowActionShell();
			
			$current_module_strings = return_module_language($current_language, $actions->module_dir);
			insert_popup_header($theme);
			$ListView->initNewXTemplate('modules/WorkFlowActionShells/Popup_picker.html', $current_module_strings);
			$ListView->xTemplateAssign("WORKFLOW_ID", $workflow->id);
			$ListView->xTemplateAssign("JAVASCRIPT_LANGUAGE_FILES", $javascript_language_files);
			$ListView->xTemplateAssign("RETURN_URL", "&return_module=".$currentModule."&return_action=DetailView&return_id={$workflow->id}");
			$ListView->xTemplateAssign("EDIT_INLINE_PNG",  SugarThemeRegistry::current()->getImage('edit_inline','align="absmiddle" alt="'.$app_strings['LNK_EDIT'].'" border="0"'));
			$ListView->xTemplateAssign("DELETE_INLINE_PNG",  SugarThemeRegistry::current()->getImage('delete_inline','align="absmiddle" alt="'.$app_strings['LNK_REMOVE'].'" border="0"'));
			$ListView->setHeaderTitle($current_module_strings['LBL_MODULE_NAME'] . $header_text);
			
			//$ListView->setQuery("workflow_actionshells.alert_type = 'Email'","","", "ALERT");
			$list = $actions->get_list("", ""); 
			$display_list = $this->cullFromList($list['list'], $workflow->base_module, $workflow->type);
			$ListView->processListViewTwo($display_list, "main", "ACTION");
			
		//	$ListView->processListView($actions, "main", "ACTION");
			insert_popup_footer();
		}
	}
	
	function cullFromList($list, $base_module, $type)
	{
		$return_list = array();
		foreach($list as $action)
		{
			if($action->parent_base_module == $base_module && $action->parent_type == $type)
			{
				$return_list[] = $action;
			}
		}
		return $return_list;
	}
}

?>