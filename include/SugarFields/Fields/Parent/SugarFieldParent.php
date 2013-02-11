<?php
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

require_once('include/SugarFields/Fields/Relate/SugarFieldRelate.php');

class SugarFieldParent extends SugarFieldRelate {
   
	function getDetailViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex) {
		$nolink = array('Users', 'Teams');
		if(in_array($vardef['module'], $nolink)){
			$this->ss->assign('nolink', true);
		}else{
			$this->ss->assign('nolink', false);
		}
        $this->setup($parentFieldArray, $vardef, $displayParams, $tabindex);
        return $this->fetch($this->findTemplate('DetailView'));
    }
    
    function getEditViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex) {
    	$form_name = 'EditView';
    	if(isset($displayParams['formName'])) {
    		$form_name = $displayParams['formName'];
    	}

    	$popup_request_data = array(
			'call_back_function' => 'set_return',
			'form_name' => $form_name,
			'field_to_name_array' => array(
											'id' => $vardef['id_name'],
											'name' => $vardef['name'],
									 ),
		);


		global $app_list_strings;
		$parent_types = $app_list_strings['record_type_display'];
		
		$disabled_parent_types = ACLController::disabledModuleList($parent_types,false, 'list');
		foreach($disabled_parent_types as $disabled_parent_type){
			if($disabled_parent_type != $focus->parent_type){
				unset($parent_types[$disabled_parent_type]);
			}
		}
		asort($parent_types);
		$json = getJSONobj();
		$displayParams['popupData'] = '{literal}'.$json->encode($popup_request_data).'{/literal}';
    	$displayParams['disabled_parent_types'] = '<script>var disabledModules='. $json->encode($disabled_parent_types).';</script>';
    	$this->ss->assign('quickSearchCode', $this->createQuickSearchCode($form_name, $vardef));
    	$this->setup($parentFieldArray, $vardef, $displayParams, $tabindex);        
        return $this->fetch($this->findTemplate('EditView'));
    }
 	
    function getSearchViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex) {
		$form_name = 'search_form';
				
    	if(isset($displayParams['formName'])) {
    		$form_name = $displayParams['formName'];
    	}
    	
    	$this->ss->assign('form_name', $form_name);

    	$popup_request_data = array(
			'call_back_function' => 'set_return',
			'form_name' => $form_name,
			'field_to_name_array' => array(
											'id' => $vardef['id_name'],
											'name' => $vardef['name'],
									 ),
		);


		global $app_list_strings;
		$parent_types = $app_list_strings['record_type_display'];
		$disabled_parent_types = ACLController::disabledModuleList($parent_types,false, 'list');
		foreach($disabled_parent_types as $disabled_parent_type){
			if($disabled_parent_type != $focus->parent_type){
				unset($parent_types[$disabled_parent_type]);
			}
		}

		$json = getJSONobj();
		$displayParams['popupData'] = '{literal}'.$json->encode($popup_request_data).'{/literal}';
    	$displayParams['disabled_parent_types'] = '<script>var disabledModules='. $json->encode($disabled_parent_types).';</script>';
    	$this->setup($parentFieldArray, $vardef, $displayParams, $tabindex);        
        return $this->fetch($this->findTemplate('SearchView'));
    }
    
    /**
     * @see SugarFieldBase::importSanitize()
     */
    public function importSanitize(
        $value,
        $vardef,
        $focus,
        ImportFieldSanitize $settings
        )
    {
        global $beanList;
        
        if ( isset($vardef['type_name']) ) {
            $moduleName = $vardef['type_name'];
            if ( isset($focus->$moduleName) && isset($beanList[$focus->$moduleName]) ) {
                $vardef['module'] = $focus->$moduleName;
                $vardef['rname'] = 'name';
                $relatedBean = loadBean($focus->$moduleName);
                $vardef['table'] = $relatedBean->table_name;
                return parent::importSanitize($value,$vardef,$focus,$settings);
            }
        }
        
        return false;
    }
    
    function createQuickSearchCode($formName = 'EditView', $vardef){
        
        require_once('include/QuickSearchDefaults.php');
        $json = getJSONobj();
        
        $dynamicParentTypePlaceHolder = "**@**"; //Placeholder for dynamic parent so smarty tags are not escaped in json encoding.
        $dynamicParentType = '{/literal}{if !empty($fields.parent_type.value)}{$fields.parent_type.value}{else}Accounts{/if}{literal}';
        
        //Get the parent sqs definition
        $qsd = new QuickSearchDefaults();
        $qsd->setFormName($formName);
        $sqsFieldArray = $qsd->getQSParent($dynamicParentTypePlaceHolder);
        $qsFieldName = $formName . "_" . $vardef['name'];
        
        //Build the javascript
        $quicksearch_js = '<script language="javascript">';
        $quicksearch_js.= "if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}";
        $quicksearch_js .= "sqs_objects['$qsFieldName']=" . str_replace($dynamicParentTypePlaceHolder, $dynamicParentType,$json->encode($sqsFieldArray)) .';';

        return $quicksearch_js .= '</script>';
    }
}
?>