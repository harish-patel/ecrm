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

/**
 * SugarFieldBase translates and displays fields from a vardef definition into different formats
 * including DetailView, ListView, EditView. It also provides Search Inputs and database queries
 * to handle searching
 *
 */
class SugarFieldBase {
    var $ss; // Sugar Smarty Object
    var $hasButton = false;
    function SugarFieldBase($type) {
    	$this->type = $type;
        $this->ss = new Sugar_Smarty();
    }
    function fetch($path){
    	$additional = '';
    	if(!$this->hasButton && !empty($this->button)){
    		$additional .= '<input type="button" class="button" ' . $this->button . '>';
    	}
        if(!empty($this->buttons)){
            foreach($this->buttons as $v){
                $additional .= ' <input type="button" class="button" ' . $v . '>';
            }

        }
        if(!empty($this->image)){
            $additional .= ' <img ' . $this->image . '>';
        }
    	return $this->ss->fetch($path) . $additional;
    }

    function findTemplate($view){
        static $tplCache = array();

        if ( isset($tplCache[$this->type][$view]) ) {
            return $tplCache[$this->type][$view];
        }

        $lastClass = get_class($this);
        $classList = array($this->type,str_replace('SugarField','',$lastClass));
        while ( $lastClass = get_parent_class($lastClass) ) {
            $classList[] = str_replace('SugarField','',$lastClass);
        }

        $tplName = '';
        foreach ( $classList as $className ) {
            global $current_language;
            if(isset($current_language)) {
                $tplName = 'include/SugarFields/Fields/'. $className .'/'. $current_language . '.' . $view .'.tpl';
                if ( file_exists('custom/'.$tplName) ) {
                    $tplName = 'custom/'.$tplName;
                    break;
                }
                if ( file_exists($tplName) ) {
                    break;
                }
            }
            $tplName = 'include/SugarFields/Fields/'. $className .'/'. $view .'.tpl';
            if ( file_exists('custom/'.$tplName) ) {
                $tplName = 'custom/'.$tplName;
                break;
            }
            if ( file_exists($tplName) ) {
                break;
            }
        }

        $tplCache[$this->type][$view] = $tplName;

        return $tplName;
    }

    public function formatField($rawField, $vardef){
        // The base field doesn't do any formatting, so override it in subclasses for more specific actions
        return $rawField;
    }

    function getWirelessSmartyView($parentFieldArray, $vardef, $displayParams, $tabindex = -1, $view){
    	$this->setup($parentFieldArray, $vardef, $displayParams, $tabindex, false);
        return $this->fetch($this->findTemplate($view));
    }


    public function unformatField($formattedField, $vardef){
        // The base field doesn't do any formatting, so override it in subclasses for more specific actions
        return $formattedField;
    }

    function getSmartyView($parentFieldArray, $vardef, $displayParams, $tabindex = -1, $view){
    	$this->setup($parentFieldArray, $vardef, $displayParams, $tabindex);


    	return $this->fetch($this->findTemplate($view));
    }

    function getListViewSmarty($parentFieldArray, $vardef, $displayParams, $col) {
        // FIXME: Rework the listview to use two-pass rendering like the DetailView

        $tabindex = 1;
        $isArray = is_array($parentFieldArray);
        $fieldName = $vardef['name'];

        if ( $isArray ) {
        	$fieldNameUpper = strtoupper($fieldName);
            if ( isset($parentFieldArray[$fieldNameUpper])) {
                $parentFieldArray[$fieldName] = $this->formatField($parentFieldArray[$fieldNameUpper],$vardef);
            } else {
                $parentFieldArray[$fieldName] = '';
            }
        } else {
            if ( isset($parentFieldArray->$fieldName) ) {
                $parentFieldArray->$fieldName = $this->formatField($parentFieldArray->$fieldName,$vardef);
            } else {
                $parentFieldArray->$fieldName = '';
            }
        }
    	$this->setup($parentFieldArray, $vardef, $displayParams, $tabindex, false);

        $this->ss->left_delimiter = '{';
        $this->ss->right_delimiter = '}';
        $this->ss->assign('col',$vardef['name']);

        return $this->fetch($this->findTemplate('ListView'));
    }

    /**
     * Returns a smarty template for the DetailViews
     *
     * @param parentFieldArray string name of the variable in the parent template for the bean's data
     * @param vardef vardef field defintion
     * @param displayParam parameters for display
     *      available paramters are:
     *      * labelSpan - column span for the label
     *      * fieldSpan - column span for the field
     */
    function getDetailViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex) {
        return $this->getSmartyView($parentFieldArray, $vardef, $displayParams, $tabindex, 'DetailView');
    }

 	// 99% of all fields will just format like a listview, but just in case, it's here to override
    function getChangeLogSmarty($parentFieldArray, $vardef, $displayParams, $tabindex) {
        return $this->formatField($parentFieldArray[$vardef['name']],$vardef);
    }

    function getWirelessDetailViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex) {
        return $this->getWirelessSmartyView($parentFieldArray, $vardef, $displayParams, $tabindex, 'WirelessDetailView');
    }

    function getEditViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex) {
    	if(!empty($vardef['function']['returns']) && $vardef['function']['returns'] == 'html'){
    		$type = $this->type;
    		$this->type = 'Base';
    		$result= $this->getDetailViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex);
    		$this->type = $type;
    		return $result;
    	}
       return $this->getSmartyView($parentFieldArray, $vardef, $displayParams, $tabindex, 'EditView');
    }

    function getImportViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex)
    {
        return $this->getEditViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex);
    }

    function getWirelessEditViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex) {
    	if(!empty($vardef['function']['returns']) && $vardef['function']['returns'] == 'html'){
    		$type = $this->type;
    		$this->type = 'Base';
    		$result= $this->getWirelessDetailViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex);
    		$this->type = $type;
    		return $result;
    	}

       	return $this->getWirelessSmartyView($parentFieldArray, $vardef, $displayParams, $tabindex, 'WirelessEditView');
    }

    function getWirelessListViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex) {
        $vardef['name'] = $vardef['name'].'_advanced';
        return $this->getWirelessEditViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex);
    }


    function getSearchViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex) {
		if(!empty($vardef['auto_increment']))$vardef['len']=255;
    	return $this->getSmartyView($parentFieldArray, $vardef, $displayParams, $tabindex, 'EditView');
    }

    function getPopupViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex){
    	 if (is_array($displayParams) && !isset($displayParams['formName']))
		     $displayParams['formName'] = 'popup_query_form';
	     else if (empty($displayParams))
		     $displayParams = array('formName' => 'popup_query_form');
		 return $this->getSearchViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex);
    }

    public function getEmailTemplateValue($inputField, $vardef, $context = null){
        // This does not return a smarty section, instead it returns a direct value
        return $this->formatField($inputField,$vardef);
    }

    function displayFromFunc( $displayType, $parentFieldArray, $vardef, $displayParams, $tabindex = 0 ) {

        if ( ! is_array($vardef['function']) ) {
            $funcName = $vardef['function'];
            $includeFile = '';
            $onListView = false;
            $returnsHtml = false;
        } else {
            $funcName = $vardef['function']['name'];
            $includeFile = '';
            if ( isset($vardef['function']['include']) ) {
                $includeFile = $vardef['function']['include'];
            }
            if ( isset($vardef['function']['onListView']) && $vardef['function']['onListView'] == true ) {
                $onListView = true;
            } else {
                $onListView = false;
            }
            if ( isset($vardef['function']['returns']) && $vardef['function']['returns'] == 'html' ) {
                $returnsHtml = true;
            } else {
                $returnsHtml = false;
            }
        }

        if ( $displayType == 'ListView'
                || $displayType == 'popupView'
                || $displayType == 'searchView'
                || $displayType == 'wirelessEditView'
                || $displayType == 'wirelessDetailView'
                || $displayType == 'wirelessListView'
                ) {
            // Traditionally, before 6.0, additional functions were never called, so this code doesn't get called unless the vardef forces it
            if ( $onListView ) {
                if ( !empty($includeFile) ) {
                    require_once($includeFile);
                }

                return $funcName($parentFieldArray, $vardef['name'], $parentFieldArray[$vardef['name']], $displayType);
            } else {
                $displayTypeFunc = 'get'.$displayType.'Smarty';
                return $this->$displayTypeFunc($parentFieldArray, $vardef, $displayParams, $tabindex);
            }
        } else {
            if ( !empty($displayParams['idName']) ) {
                $fieldName = $displayParams['idName'];
            } else {
                $fieldName = $vardef['name'];
            }
            if ( $returnsHtml ) {
                $this->setup($parentFieldArray, $vardef, $displayParams, $tabindex);
                $tpl = $this->findTemplate($displayType.'Function');
                if ( $tpl == '' ) {
                    // Didn't find the wireless version, try the non-wireless version.
                    $tpl = $this->findTemplate(str_replace('wireless','',$displayType));
                }
                if ( $tpl == '' ) {
                    // Can't find a function template, just use the base
                    $tpl = $this->findTemplate('DetailViewFunction');
                }
                return "<span id='{$vardef['name']}'>" . $this->fetch($tpl) . '</span>';
            } else {
                return '{sugar_run_helper include="'.$includeFile.'" func="'.$funcName.'" bean=$bean field="'.$fieldName.'" value=$fields.'.$fieldName.'.value displayType="'.$displayType.'"}';
            }
        }
    }

    function getEditView() {
    }

    function getSearchInput() {
    }

    function getQueryLike() {
    }

    function getQueryIn() {
    }

    /**
     * Setup function to assign values to the smarty template, should be called before every display function
     */
    function setup($parentFieldArray, $vardef, $displayParams, $tabindex, $twopass=true) {
    	$this->button = '';
    	$this->buttons = '';
    	$this->image = '';
    	if ($twopass){
	        $this->ss->left_delimiter = '{{';
	        $this->ss->right_delimiter = '}}';
    	}
        $this->ss->assign('parentFieldArray', $parentFieldArray);
        $this->ss->assign('vardef', $vardef);
        $this->ss->assign('tabindex', $tabindex);

        //for adding attributes to the field

        if(!empty($displayParams['field'])){
        	$plusField = '';
        	foreach($displayParams['field'] as $key=>$value){
        		$plusField .= ' ' . $key . '="' . $value . '"';//bug 27381
        	}
        	$displayParams['field'] = $plusField;
        }
        //for adding attributes to the button
    	if(!empty($displayParams['button'])){
        	$plusField = '';
        	foreach($displayParams['button'] as $key=>$value){
        		$plusField .= ' ' . $key . '="' . $value . '"';
        	}
        	$displayParams['button'] = $plusField;
        	$this->button = $displayParams['button'];
        }
        if(!empty($displayParams['buttons'])){
            $plusField = '';
            foreach($displayParams['buttons'] as $keys=>$values){
                foreach($values as $key=>$value){
                    $plusField[$keys] .= ' ' . $key . '="' . $value . '"';
                }
            }
            $displayParams['buttons'] = $plusField;
            $this->buttons = $displayParams['buttons'];
        }
        if(!empty($displayParams['image'])){
            $plusField = '';
            foreach($displayParams['image'] as $key=>$value){
                $plusField .= ' ' . $key . '="' . $value . '"';
            }
            $displayParams['image'] = $plusField;
            $this->image = $displayParams['image'];
        }
        $this->ss->assign('displayParams', $displayParams);


    }

	     /**
     * This should be called when the bean is saved. The bean itself will be passed by reference
     * @param SugarBean bean - the bean performing the save
     * @param array params - an array of paramester relevant to the save, most likely will be $_REQUEST
     */
	public function save($bean, $params, $field, $properties, $prefix = ''){
         if ( isset($params[$prefix.$field]) ) {
             if(isset($properties['len']) && isset($properties['type']) && 'varchar' == $properties['type']){
             	 $bean->$field = trim($this->unformatField($params[$prefix.$field],$properties));
             }
         	 else {
                 $bean->$field = $this->unformatField($params[$prefix.$field],$properties);
         	 }
         }
     }

    /**
     * Handles import field sanitizing for an field type
     *
     * @param  $value    string value to be sanitized
     * @param  $vardefs  array
     * @param  $focus    SugarBean object
     * @param  $settings ImportFieldSanitize object
     * @return string sanitized value or boolean false if there's a problem with the value
     */
    public function importSanitize(
        $value,
        $vardef,
        $focus,
        ImportFieldSanitize $settings
        )
    {
        if( isset($vardef['len']) ) {
            // check for field length
            $value = sugar_substr($value, $vardef['len']);
        }

        return $value;
    }

    /**
     * isRangeSearchView
     * This method helps determine whether or not to display the range search view code for the sugar field
     * @param array $vardef entry representing the sugar field's definition
     * @return boolean true if range search view should be displayed, false otherwise
     */
    protected function isRangeSearchView($vardef)
    {
     	return !empty($vardef['enable_range_search']) && !empty($_REQUEST['action']) && $_REQUEST['action']!='Popup';
    }
}
