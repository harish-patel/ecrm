<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

$fields_array['TeamNotices'] = array ('column_fields' =>Array("id"
		,"name"
		,"description"
		,"status"
		,"date_entered"
		,"date_modified"
		,"date_start"
		,"date_end"
		,"modified_user_id"
		, "created_by"
		, "team_id"
		,'url'
		,'url_title'
		),
        'list_fields' =>  Array('id', 'name', 'description','date_start', 'date_end', 'status', 'url', 'url_title'
	, "team_name"
	),
    'required_fields' =>   array("name"=>1, "status"=>2, "date_start"=>1, "date_end"=>2),
);
?>
