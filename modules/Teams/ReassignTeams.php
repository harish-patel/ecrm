<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');


global $mod_strings;
global $app_strings;
global $current_user;

if (!is_admin($current_user)&& !is_admin_for_module($GLOBALS['current_user'],'Users')) sugar_die("Unauthorized access to administration.");

$error_message = '';

if(isset($_REQUEST['team_id']) && isset($_REQUEST['teams'])) {
	$new_team = new Team();
	$new_team->retrieve($_REQUEST['team_id']);
	
	//Grab the list of teams to reassign
	$old_teams = explode(",", $_REQUEST['teams']);
	
	if(!in_array($new_team->id, $old_teams)) {
		unset($_SESSION['REASSIGN_TEAMS']);
		
		//Call method to reassign the teams
		$new_team->reassign_team_records($old_teams);
		
		//Redirect to listview
		header("Location: index.php?module=Teams&action=index");
		sugar_die();	   
	}
	$error_message = string_format($mod_strings['ERR_INVALID_TEAM_REASSIGNMENT'], array(Team::getDisplayName($new_team->name, $new_team->name_2, false)));
}
	
$teams = array();
$focus = new Team();

if(isset($_SESSION['REASSIGN_TEAMS'])) {
  foreach($_SESSION['REASSIGN_TEAMS'] as $team_id) {
  	 $focus->retrieve($team_id);
  	 $teams[$team_id] = $focus->name;
  }
} else if(isset($_REQUEST['record'])) {
  $focus->retrieve($_REQUEST['record']);
  $teams[$focus->id] = $focus->name;	
}

if(empty($teams) && !isset($error_message)) {
  $GLOBALS['log']->fatal("No teams to reassign for operation");
  header("Location: index.php?module=Teams&action=index");
} else {	
  $ss = new Sugar_Smarty();
  $team_list = '('. implode("), (", $teams) . ')';
  $ss->assign("TITLE", string_format($mod_strings['LBL_REASSIGN_TEAM_TITLE'], array($team_list)));
  $ss->assign("ERROR_MESSAGE", $error_message);
  $ss->assign("TEAMS", implode(",", array_keys($teams)));
  $ss->assign("MOD_STRINGS", $mod_strings);
  $ss->assign("APP_STRINGS", $app_strings);
  $ss->display("modules/Teams/tpls/ReassignTeam.tpl");
}

?>
