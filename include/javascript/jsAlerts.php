<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/


require_once("include/utils/db_utils.php");

class jsAlerts{
	var $script;

	function jsAlerts(){
		global $app_strings;
		$this->script .= <<<EOQ
		if(window.addEventListener){
			window.addEventListener("load", checkAlerts, false);
		}else{
			window.attachEvent("onload", checkAlerts);
		}

EOQ;
		$this->addActivities();
		if(!empty($GLOBALS['sugar_config']['enable_timeout_alerts'])){
			$this->addAlert($app_strings['ERROR_JS_ALERT_SYSTEM_CLASS'], $app_strings['ERROR_JS_ALERT_TIMEOUT_TITLE'],'', $app_strings['ERROR_JS_ALERT_TIMEOUT_MSG_1'], (session_cache_expire() - 2) * 60 );
			$this->addAlert($app_strings['ERROR_JS_ALERT_SYSTEM_CLASS'], $app_strings['ERROR_JS_ALERT_TIMEOUT_TITLE'],'', $app_strings['ERROR_JS_ALERT_TIMEOUT_MSG_2'], (session_cache_expire()) * 60 , 'index.php');
		}
	}
	function addAlert($type, $name, $subtitle, $description, $countdown, $redirect=''){
		$this->script .= 'addAlert("' . addslashes($type) .'", "' . addslashes($name). '","' . addslashes($subtitle). '", "'. addslashes(str_replace(array("\r", "\n"), array('','<br>'),$description)) . '",' . $countdown . ',"'.addslashes($redirect).'")' . "\n";
	}

	function getScript(){
		return "<script>" . $this->script . "</script>";
	}

	function addActivities(){
		global $app_list_strings, $timedate, $current_user, $app_strings;
		global $sugar_config;

		if (empty($current_user->id)) {
            return;
		}

		// cn: get a boundary limiter
		$dateTimeMax = $timedate->getNow()->modify("+{$app_list_strings['reminder_max_time']} seconds")->asDb();
		$dateTimeNow = $timedate->nowDb();

		global $db;
		// Prep Meetings Query
		if ($db->dbType == 'mysql') {
			$selectMeetings = "
				SELECT meetings.id, name,reminder_time, description,location, date_start, assigned_user_id
				FROM meetings LEFT JOIN meetings_users ON meetings.id = meetings_users.meeting_id
				WHERE meetings_users.user_id ='".$current_user->id."'
					AND meetings_users.accept_status != 'decline'
					AND meetings.reminder_time != -1
					AND meetings_users.deleted != 1
					AND meetings.status != 'Held'
				    AND date_start >= '$dateTimeNow'
				    AND date_start <= '$dateTimeMax'";
		}
		elseif ($db->dbType == 'oci8')
		{
		}elseif($db->dbType == 'mssql') {
			$selectMeetings = "
				SELECT meetings.id, name,reminder_time, CAST(description AS varchar(8000)),location, date_start, assigned_user_id
				FROM meetings LEFT JOIN meetings_users ON meetings.id = meetings_users.meeting_id
				WHERE meetings_users.user_id ='".$current_user->id."'
					AND meetings_users.accept_status != 'decline'
					AND meetings.reminder_time != -1
					AND meetings_users.deleted != 1
					AND meetings.status != 'Held'
				    AND date_start >= '$dateTimeNow'
				    AND date_start <= '$dateTimeMax'";
		}

		$result = $db->query($selectMeetings);

		///////////////////////////////////////////////////////////////////////
		////	MEETING INTEGRATION
		$meetingIntegration = null;
		if(isset($sugar_config['meeting_integration']) && !empty($sugar_config['meeting_integration'])) {
			if(!class_exists($sugar_config['meeting_integration'])) {
				require_once("modules/{$sugar_config['meeting_integration']}/{$sugar_config['meeting_integration']}.php");
			}
			$meetingIntegration = new $sugar_config['meeting_integration']();
		}
		////	END MEETING INTEGRATION
		///////////////////////////////////////////////////////////////////////

		while($row = $db->fetchByAssoc($result)) {
			// need to concatenate since GMT times can bridge two local days
			$timeStart = strtotime($row['date_start']);
			$timeRemind = $row['reminder_time'];
			$timeStart -= $timeRemind;

			$url = 'index.php?action=DetailView&module=Meetings&record=' . $row['id'];
			$instructions = $app_strings['MSG_JS_ALERT_MTG_REMINDER_MEETING_MSG'];

			///////////////////////////////////////////////////////////////////
			////	MEETING INTEGRATION
			if(!empty($meetingIntegration) && $meetingIntegration->isIntegratedMeeting($row['id'])) {
				$url = $meetingIntegration->miUrlGetJsAlert($row);
				$instructions = $meetingIntegration->miGetJsAlertInstructions();
			}
			////	END MEETING INTEGRATION
			///////////////////////////////////////////////////////////////////

			// sanitize topic
			$meetingName = '';
			if(!empty($row['name'])) {
				$meetingName = from_html($row['name']);
				// addAlert() uses double-quotes to pass to popup - escape double-quotes
				//$meetingName = str_replace('"', '\"', $meetingName);
			}

			// sanitize agenda
			$desc = '';
			if(!empty($row['description'])) {
				$desc = from_html($row['description']);
				// addAlert() uses double-quotes to pass to popup - escape double-quotes
				//$desc = str_replace('"', '\"', $desc);
			}

			$description = empty($desc) ? '' : $app_strings['MSG_JS_ALERT_MTG_REMINDER_AGENDA'].$desc."\n";


			// standard functionality
			$this->addAlert($app_strings['MSG_JS_ALERT_MTG_REMINDER_MEETING'], $meetingName,
				$app_strings['MSG_JS_ALERT_MTG_REMINDER_TIME'].$timedate->to_display_date_time($row['date_start']),
				$app_strings['MSG_JS_ALERT_MTG_REMINDER_LOC'].$row['location'].
				$description.
				$instructions,
				$timeStart - strtotime($dateTimeNow),
				$url
			);
		}

		// Prep Calls Query
		if ($db->dbType == 'mysql') {

			$selectCalls = "
				SELECT calls.id, name, reminder_time, description, date_start
				FROM calls LEFT JOIN calls_users ON calls.id = calls_users.call_id
				WHERE calls_users.user_id ='".$current_user->id."'
				    AND calls_users.accept_status != 'decline'
				    AND calls.reminder_time != -1
					AND calls_users.deleted != 1
					AND calls.status != 'Held'
				    AND date_start >= '$dateTimeNow'
				    AND date_start <= '$dateTimeMax'";
		}elseif ($db->dbType == 'oci8')
		{
		}elseif ($db->dbType == 'mssql') {

			$selectCalls = "
				SELECT calls.id, name, reminder_time, CAST(description AS varchar(8000)), date_start
				FROM calls LEFT JOIN calls_users ON calls.id = calls_users.call_id
				WHERE calls_users.user_id ='".$current_user->id."'
                    AND calls_users.accept_status != 'decline'
				    AND calls.reminder_time != -1
					AND calls_users.deleted != 1
					AND calls.status != 'Held'
				    AND date_start >= '$dateTimeNow'
				    AND date_start <= '$dateTimeMax'";
		}

		global $db;
		$result = $db->query($selectCalls);

		while($row = $db->fetchByAssoc($result)){
			// need to concatenate since GMT times can bridge two local days
			$timeStart = strtotime($row['date_start']);
			$timeRemind = $row['reminder_time'];
			$timeStart -= $timeRemind;
			$row['description'] = (isset($row['description'])) ? $row['description'] : '';


			$this->addAlert($app_strings['MSG_JS_ALERT_MTG_REMINDER_CALL'], $row['name'], $app_strings['MSG_JS_ALERT_MTG_REMINDER_TIME'].$timedate->to_display_date_time($row['date_start']) , $app_strings['MSG_JS_ALERT_MTG_REMINDER_DESC'].$row['description']. $app_strings['MSG_JS_ALERT_MTG_REMINDER_CALL_MSG'] , $timeStart - strtotime($dateTimeNow), 'index.php?action=DetailView&module=Calls&record=' . $row['id']);
		}
	}


}

?>
