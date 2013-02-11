<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');


global $mod_strings;
global $current_user;


if (!is_admin($current_user)&& !is_admin_for_module($GLOBALS['current_user'],'Users')) sugar_die("Unauthorized access to administration.");

$focus = new Team();

if(!isset($_REQUEST['team_record']) || !isset($_REQUEST['record'])) {
	sugar_die($mod_strings['ERR_DELETE_RECORD']);
}
else {
	$focus->retrieve($_REQUEST['team_record']);
}

$focus->remove_user_from_team($_REQUEST['record']);

header("Location: index.php?module={$_REQUEST['return_module']}&action={$_REQUEST['return_action']}&record={$_REQUEST['return_id']}");
?>
