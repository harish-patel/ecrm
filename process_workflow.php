<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');


require_once('modules/WorkFlow/WorkFlowSchedule.php');

global $app_list_strings, $app_strings, $current_language;

$mod_strings = return_module_language('en_us', 'WorkFlow');


//run as admin
$user = new User();
$user->retrieve("1");
global $current_user;
$current_user = $user;

$process_object = new WorkFlowSchedule();
$process_object->process_scheduled();
unset($process_object);


//sugar_cleanup(); // moved to cron.php
?>
