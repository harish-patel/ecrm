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

 * Description:  TODO: To be written.
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 ********************************************************************************/




class SubPanelViewTeams {

	var $users_list = null;
	var $focus;

	function setFocus(&$value){
		$this->focus = (object) $value;
	}

	function setUsersList(&$value){
		$this->users_list = $value;
	}

	function setHideNewButton($value){
		$this->hideNewButton = $value;
	}

	function SubPanelViewTeams() 
    {
	}

	function getHeaderText($action, $currentModule){
		///////////////////////////////////////
		///
		/// SETUP PARENT POPUP
		
		$popup_request_data = array(
			'call_back_function' => 'set_return_and_save',
			'form_name' => 'DetailView',
			'field_to_name_array' => array(
				'id' => 'user_id',
				),
			);
		
		$json = getJSONobj();
		$encoded_popup_request_data = $json->encode($popup_request_data);
		
		//
		///////////////////////////////////////
			
		global $app_strings;
		$button  = "<form border='0' action='index.php' method='post' name='TeamsDetailView' id='TeamsDetailView'>\n";
		$button .= "<input type='hidden' name='record' value=''>\n";
		$button .= "<input type='hidden' name='module' value='Teams'>\n";
		$button .= "<input type='hidden' name='action' value='AddUserToTeam'>\n";
		$button .= "<input type='hidden' name='team_id' value='{$this->focus->id}'>\n";
		$button .= "<input type='hidden' name='return_module' value='Teams'>\n";
		$button .= "<input type='hidden' name='return_action' value='DetailView'>\n";
		$button .= "<input type='hidden' name='return_id' value='{$this->focus->id}'>\n";
		$button .= "<input title='".$app_strings['LBL_SELECT_BUTTON_TITLE']
			."' accessKey='".$app_strings['LBL_SELECT_BUTTON_KEY']
			."' type='button' class='button' value='  ".$app_strings['LBL_SELECT_BUTTON_LABEL']
//			."  ' name='button' onclick='window.open(\"index.php?module=Users&action=Popup&html=Popup_picker&form=TeamsDetailView&form_submit=true\",\"new\",\"width=600,height=400,resizable=1,scrollbars=1\");'>\n";
			."  ' name='button' onclick='open_popup(\"Users\", 600, 400, \"\", false, true, {$encoded_popup_request_data});'>\n";
		$button .= "</form>\n";
		return $button;
	}

	function ProcessSubPanelListView($xTemplatePath, &$mod_strings, $action, $curModule = "") {
		global $currentModule,$app_strings;

		if (empty($curModule)) {
			$curModule = $currentModule;
		}

		$ListView = new ListView();
		$ListView->initNewXTemplate($xTemplatePath, $mod_strings);
		$ListView->xTemplateAssign("RETURN_URL", "&return_module=".$curModule."&return_action=DetailView&return_id=".$this->focus->id);
		$ListView->xTemplateAssign("RECORD_ID",  $this->focus->id);
		$ListView->xTemplateAssign("EDIT_INLINE_PNG",  SugarThemeRegistry::current()->getImage('edit_inline','align="absmiddle" alt="'.$app_strings['LNK_EDIT'].'" border="0"'));
		$ListView->xTemplateAssign("DELETE_INLINE_PNG",  SugarThemeRegistry::current()->getImage('delete_inline','align="absmiddle" alt="'.$app_strings['LNK_REMOVE'].'" border="0"'));
		$ListView->setHeaderTitle($mod_strings['LBL_TEAM_MEMBERS']);
		$ListView->setHeaderText($this->getHeaderText($action, $curModule));
		$ListView->processListView($this->users_list, "users", "USER");
	}
}
?>