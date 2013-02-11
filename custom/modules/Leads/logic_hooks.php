<?php
// Do not store anything in this file that is not part of the array or the hook version.  This file will	
// be automatically rebuilt in the future. 
$hook_version = 1; 
$hook_array = Array();

// position, file, function 
$hook_array['before_save'] = Array(); 
$hook_array['before_save'][] = Array(1, 'Leads push feed', 'modules/Leads/SugarFeeds/LeadFeed.php','LeadFeed', 'pushFeed'); 

// This is useful when we need to manipulate the data being rendered on the list view. 
$hook_array['process_record'] = Array(); 
$hook_array['process_record'][] = Array(1, 'Days since lead created.', 'custom/modules/Leads/LeadAgeCalculator.php','LeadAgeCalculator', 'calculateAge'); 

// The after_retrieve hook is called after a single record is queried from the DB. 
// This is useful to manipulate the data / UI on the detail view. 
$hook_array['after_retrieve'][] = Array(); 
$hook_array['after_retrieve'][] = Array(1, 'Days since lead created.', 'custom/modules/Leads/LeadAgeCalculator.php','LeadAgeCalculator', 'calculateAge'); 
?>
