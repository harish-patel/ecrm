<?php


require_once('include/MVC/Controller/SugarController.php');
class TeamsController extends SugarController {

	function TeamsController(){
		parent::SugarController();
	}
	
	
	public function action_DisplayInlineTeams(){
		$this->view = 'ajax';
		$body = '';
		$primary_team_id = isset($_REQUEST['team_id']) ? $_REQUEST['team_id'] : '';
		$caption = '';
		if(!empty($_REQUEST['team_set_id'])){
			require_once('modules/Teams/TeamSetManager.php');
			$teams = TeamSetManager::getTeamsFromSet($_REQUEST['team_set_id']);
			
			foreach($teams as $row){
				if($row['id'] == $primary_team_id) {
				   $body = $row['display_name'] . '*<br/>' . $body;	
				} else {
				   $body .= $row['display_name'].'<br/>';
				}
			}
		}
		global $theme;
		$json = getJSONobj();
		$retArray = array();
		
		$retArray['body'] = $body;
		$retArray['caption'] = $caption;
	    $retArray['width'] = '100';             
	    $retArray['theme'] = $theme;
	    echo 'result = ' . $json->encode($retArray);
	}
}
?>
