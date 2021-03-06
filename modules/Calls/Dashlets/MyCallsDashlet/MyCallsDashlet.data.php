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




global $current_user;

$dashletData['MyCallsDashlet']['searchFields'] = array(
													   
                                                       'name'        => array('default' => ''),
                                                       'status'           => array('default' => array('Planned')),
                                                       'date_entered'       => array('default' => ''),
                                                       'date_start'             => array('default' => ''),
                                                       
                                                       'team_id'          => array('default' => '', 'label'=>'LBL_TEAMS'),
                                                       'assigned_user_id' => array('type'    => 'assigned_user_name',
                   																   'label'   => 'LBL_ASSIGNED_TO', 
                                                                                   'default' => $current_user->name));
$dashletData['MyCallsDashlet']['columns'] = array('set_complete' => array('width' => '5', 
                                                                          'label' => 'LBL_LIST_CLOSE',
                                                                          'default' => true,
                                                                          'sortable' => false,
                                                                          'related_fields' => array('status')),
                                                  'name' => array('width'   => '40', 
                                                                  'label'   => 'LBL_SUBJECT',
                                                                  'link'    => true,
                                                                  'default' => true),
                                                  'parent_name' => array('width' => '29', 
                                                                         'label' => 'LBL_LIST_RELATED_TO',
                                                                         'sortable' => false,
                                                                         'dynamic_module' => 'PARENT_TYPE',
                                                                         'link' => true,
                                                                         'id' => 'PARENT_ID',
                                                                         'ACLTag' => 'PARENT',
                                                                         'related_fields' => array('parent_id', 'parent_type'),
																		 'default' => true,
																		),
                                                  
                                                  'duration' => array('width'    => '10', 
                                                                      'label'    => 'LBL_DURATION',
                                                                      'sortable' => false,
                                                                      'related_fields' => array('duration_hours', 'duration_minutes')),
                                                  'direction' => array('width'   => '10', 
                                                                       'label'   => 'LBL_DIRECTION'),  
                                                  'date_start' => array('width'   => '15', 
                                                                        'label'   => 'LBL_DATE',
                                                                        'default' => true,
                                                                        'related_fields' => array('time_start')),                               
                                                  'status' => array('width'   => '8', 
                                                                    'label'   => 'LBL_STATUS',
																	'default'  => true),
                                                  'date_entered' => array('width'   => '15', 
                                                                          'label'   => 'LBL_DATE_ENTERED'),
                                                  'date_modified' => array('width'   => '15', 
                                                                          'label'   => 'LBL_DATE_MODIFIED'),    
                                                  'created_by' => array('width'   => '8', 
                                                                        'label'   => 'LBL_CREATED'),
                                                  'assigned_user_name' => array('width'   => '8', 
                                                                                'label'   => 'LBL_LIST_ASSIGNED_USER'),
                                                  'team_name' => array('width'   => '15', 
                                                                       'label'   => 'LBL_LIST_TEAM'),
                                                  );
?>
