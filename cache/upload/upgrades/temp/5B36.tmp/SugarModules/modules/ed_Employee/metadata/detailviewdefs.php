<?php

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
$viewdefs[$module_name]['DetailView'] = array(
    'templateMeta' => array('form' => array('buttons' => array('EDIT', 'DUPLICATE', 'DELETE', 'FIND_DUPLICATES',
            ),
        ),
        'useTabs' => true,
        'maxColumns' => '2',
        'widths' => array(
            array('label' => '10', 'field' => '30'),
            array('label' => '10', 'field' => '30')
        ),
    ),
    'panels' => array(
        array(
            array(
                'name' => 'full_name',
                'label' => 'LBL_NAME',
            ),
            //'full_name',
            array(
                'name' => 'phone_work',
            ),
        ),
        array(
            'title',
            array(
                'name' => 'phone_mobile',
            ),
        ),
        array(
            'department',
            array(
                'name' => 'phone_home',
                'label' => 'LBL_HOME_PHONE',
            ),
        ),
        array(
            NULL,
            array(
                'name' => 'phone_other',
                'label' => 'LBL_OTHER_PHONE',
            ),
        ),
        array(
            array(
                'name' => 'date_entered',
                'customCode' => '{$fields.date_entered.value} {$APP.LBL_BY} {$fields.created_by_name.value}',
                'label' => 'LBL_DATE_ENTERED',
            ),
            array(
                'name' => 'phone_fax',
                'label' => 'LBL_FAX_PHONE',
            ),
        ),
        array(
            array(
                'name' => 'date_modified',
                'customCode' => '{$fields.date_modified.value} {$APP.LBL_BY} {$fields.modified_by_name.value}',
                'label' => 'LBL_DATE_MODIFIED',
            ),
            'do_not_call',
        ),
        array('assigned_user_name', ''),
        array(
            'team_name',
            'email1'),
        array(
            array(
                'name' => 'primary_address_street',
                'label' => 'LBL_PRIMARY_ADDRESS',
                'type' => 'address',
                'displayParams' => array('key' => 'primary'),
            ),
            array(
                'name' => 'alt_address_street',
                'label' => 'LBL_ALT_ADDRESS',
                'type' => 'address',
                'displayParams' => array('key' => 'alt'),
            ),
        ),
        array(
            'description',
        ),
    )
);
?>