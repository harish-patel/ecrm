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




$listViewDefs['Quotes'] = array(
	'QUOTE_NUM' => array(
		'width' => '10',  
		'label' => 'LBL_LIST_QUOTE_NUM', 
		'link' => false,
        'default' => true),
	'NAME' => array(
		'width' => '25', 
		'label' => 'LBL_LIST_QUOTE_NAME', 
		'link' => true,
        'default' => true),
	'BILLING_ACCOUNT_NAME' => array(
		'width' => '20',  
		'label' => 'LBL_LIST_ACCOUNT_NAME',
        'id' => 'ACCOUNT_ID',
        'module'  => 'Accounts',        
        'link' => true,
        'default' => true), 
	'QUOTE_STAGE' => array(
		'width' => '10', 
		'label' => 'LBL_LIST_QUOTE_STAGE', 
        'link' => false,
        'default' => true        
	),
	'TOTAL_USDOLLAR' => array(
		'width' => '10', 
		'label' => 'LBL_LIST_AMOUNT_USDOLLAR',
        'link' => false,
        'default' => true,
        'currency_format' => true,
        'align' => 'right'
    ),
	'DATE_QUOTE_EXPECTED_CLOSED' => array(
		'width' => '15', 
		'label' => 'LBL_LIST_DATE_QUOTE_EXPECTED_CLOSED',
        'link' => false,
        'default' => true        
        ),
	'TEAM_NAME' => array(
		'width' => '10', 
		'label' => 'LBL_LIST_TEAM',
        'link' => false,
        'default' => false,
        'related_fields' => array('team_id'),        
        ),
	'ASSIGNED_USER_NAME' => array(
		'width' => '10', 
		'label' => 'LBL_LIST_ASSIGNED_USER',
		'module' => 'Employees',
        'id' => 'ASSIGNED_USER_ID',
        'default' => true        
        ),
	'DATE_ENTERED' => array (
	    'width' => '10',
	    'label' => 'LBL_DATE_ENTERED',
	    'default' => true,
	  )        
);

?>
