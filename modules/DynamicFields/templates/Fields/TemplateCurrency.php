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


require_once('modules/DynamicFields/templates/Fields/TemplateCurrencyId.php');
require_once('modules/DynamicFields/templates/Fields/TemplateRange.php');

class TemplateCurrency extends TemplateRange 
{
    var $max_size = 25;
    var $len = 26 ;
    var $type='currency';

    function __construct()
    {
    	parent::__construct();
    }
    
    function delete($df){
    	parent::delete($df);
    	//currency id
    	$currency_id = new TemplateCurrencyId();
    	$currency_id->name = 'currency_id';
    	$currency_id->delete($df);
    }

    function save($df){
    	//the currency field
		$this->default = unformat_number($this->default);
		$this->default_value = $this->default;
    	parent::save($df);

    	//currency id
    	$currency_id = new TemplateCurrencyId();
    	$currency_id->name = 'currency_id';
    	$currency_id->vname = 'LBL_CURRENCY';
    	$currency_id->label = $currency_id->vname;
    	$currency_id->save($df);
    	//$df->addLabel($currency_id->vname);
    }

	function get_db_type(){
		$precision = (!empty($this->precision)) ? $this->precision : 6; 	
		switch($GLOBALS['db']->dbType){
			case 'oci8': 
				if(!empty($this->len))
	        	{
	        		return " number( {$this->len} , $precision )";
	    		}else{
					return " number(26,$precision)";
				}
			case 'mssql': 
				if(!empty($this->len))
	        	{
	        		return " decimal( {$this->len} , $precision )";
	    		}else{
					return " decimal(26,$precision)";
				}
			default: 
				if(!empty($this->len))
	        	{
	        		return " decimal( {$this->len} , $precision )";
	    		}else{
					return " decimal(26,$precision)";	
				}
		}
	}
}


?>
