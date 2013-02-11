<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

/*********************************************************************************

 * Description:  Contains field arrays that are used for caching
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 ********************************************************************************/
$fields_array['Role'] = array ('column_fields' => array (
		'id', 'date_entered', 'date_modified',
		'modified_user_id', 'created_by', 'name',
		'description',
	),
        'list_fields' =>  array (
		'id','name','description',
	),
    'required_fields' =>   array (
		'name'=>1,
	),
);
?>
