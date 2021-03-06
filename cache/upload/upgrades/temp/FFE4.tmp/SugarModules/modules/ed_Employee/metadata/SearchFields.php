<?php

if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');
/* * *******************************************************************************
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
 * ****************************************************************************** */

$module_name = 'ed_Employee';
$searchFields[$module_name] =
        array(
            'first_name' => array('query_type' => 'default'),
            'last_name' => array('query_type' => 'default'),
            'search_name' => array('query_type' => 'default', 'db_field' => array('first_name', 'last_name'), 'force_unifiedsearch' => true),
            'do_not_call' => array('query_type' => 'default', 'input_type' => 'checkbox', 'operator' => '='),
            'phone' => array('query_type' => 'default', 'db_field' => array('phone_mobile', 'phone_work', 'phone_other', 'phone_fax', 'assistant_phone')),
            'email' => array(
                'query_type' => 'default',
                'operator' => 'subquery',
                'subquery' => 'SELECT eabr.bean_id FROM email_addr_bean_rel eabr JOIN email_addresses ea ON (ea.id = eabr.email_address_id) WHERE eabr.deleted=0 AND ea.email_address LIKE',
                'db_field' => array(
                    'id',
                ),
                'vname' => 'LBL_ANY_EMAIL',
            ),
            'address_street' => array('query_type' => 'default', 'db_field' => array('primary_address_street', 'alt_address_street')),
            'address_city' => array('query_type' => 'default', 'db_field' => array('primary_address_city', 'alt_address_city')),
            'address_state' => array('query_type' => 'default', 'db_field' => array('primary_address_state', 'alt_address_state')),
            'address_postalcode' => array('query_type' => 'default', 'db_field' => array('primary_address_postalcode', 'alt_address_postalcode')),
            'address_country' => array('query_type' => 'default', 'db_field' => array('primary_address_country', 'alt_address_country')),
            'current_user_only' => array('query_type' => 'default', 'db_field' => array('assigned_user_id'), 'my_items' => true, 'vname' => 'LBL_CURRENT_USER_FILTER', 'type' => 'bool'),
            'favorites_only' => array(
                'query_type' => 'format',
                'operator' => 'subquery',
                'subquery' => 'SELECT sugarfavorites.record_id FROM sugarfavorites 
			                    WHERE sugarfavorites.deleted=0 
			                        and sugarfavorites.module = \'' . $module_name . '\' 
			                        and sugarfavorites.assigned_user_id = \'{0}\'',
                'db_field' => array('id')),
            //Range Search Support 
            'range_date_entered' => array('query_type' => 'default', 'enable_range_search' => true, 'is_date_field' => true),
            'start_range_date_entered' => array('query_type' => 'default', 'enable_range_search' => true, 'is_date_field' => true),
            'end_range_date_entered' => array('query_type' => 'default', 'enable_range_search' => true, 'is_date_field' => true),
            'range_date_modified' => array('query_type' => 'default', 'enable_range_search' => true, 'is_date_field' => true),
            'start_range_date_modified' => array('query_type' => 'default', 'enable_range_search' => true, 'is_date_field' => true),
            'end_range_date_modified' => array('query_type' => 'default', 'enable_range_search' => true, 'is_date_field' => true),
        //Range Search Support 		
);
?>
