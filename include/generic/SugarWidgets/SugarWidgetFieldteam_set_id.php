<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/


class SugarWidgetFieldteam_set_id extends SugarWidgetReportField{
	
/**
 * Format the display to be similiar to what we do in a listview
 * Difference is since we already have the team_set_id we will grab all of the teams and not do an ajax request like
 * we do in a list view.
 * @param string $cell
 */
function & displayListPlain($layout_def){
		$value = $this->_get_list_value($layout_def);
		if(!empty($value)){
			$teams = TeamSetManager::getTeamsFromSet($value);
			if(!empty($teams)){
				if(!empty($teams[0]['display_name'])){
					$result = $teams[0]['display_name'];
					if(count($teams) > 1){
						$body = '';
						foreach($teams as $row){
							$body .= $row['display_name'].'<br/>';
						}
						$result .= "&nbsp;<a href=\"#\" style='text-decoration:none;' id='more_feather' onmouseout=\"return nd();\" onmouseover=\"return overlib('".$body."', CAPTION, '', STICKY, MOUSEOFF, 1000, WIDTH, 100, CLOSETEXT, ('<img border=0 style=\'margin-left:2px; margin-right: 2px;\' src=index.php?entryPoint=getImage&themeName='+SUGAR.themes.theme_name+'&imageName=close.gif>'), CLOSETITLE, SUGAR.language.get('app_strings','LBL_ADDITIONAL_DETAILS_CLOSE_TITLE'), CLOSECLICK, FGCLASS, 'olFgClass', CGCLASS, 'olCgClass', BGCLASS, 'olBgClass', TEXTFONTCLASS, 'olFontClass', CAPTIONFONTCLASS, 'olCapFontClass', CLOSEFONTCLASS, 'olCloseFontClass');\">+</a>";
					}
					return $result;
				}else{
					return '';
				}
			}else{
				return '';
			}
		}else{
			return '';
		}
}

/**
 * Perform the Any type query
 *
 * @param array $layout_def
 * @return string the subquery to be run
 */
 function queryFilterany(&$layout_def){
		require_once('include/SugarFields/SugarFieldHandler.php');
		$sfh = new SugarFieldHandler();
        $sf = $sfh->getSugarField('teamset');
        $teams = array();
        $field_value = '';
        if(!empty($layout_def['input_name0'])) {
           foreach($layout_def['input_name0'] as $team) {
           	   $teams[$team] = $team;
           	   if (!empty($field_value)) {
	           	$field_value .= ',';
	           }
	           $field_value .= "'" . $GLOBALS['db']->quote($team) . "'";
           }
        }
        
        $searchParams = $sf->getTeamSetIdSearchField('team_set_id', 'any', $teams);
        $query = string_format($searchParams['subquery'], array($field_value));
		return $this->_get_column_select($layout_def)." IN ({$query}) " . $this->queryPrimaryTeam($layout_def) . "\n";
 }
 
 /**
  * Perform the All type query
  *
  * @param array $layout_def
  * @return string the subquery to be run
  */
 function queryFilterall(&$layout_def){
		require_once('include/SugarFields/SugarFieldHandler.php');
		$sfh = new SugarFieldHandler();
        $sf = $sfh->getSugarField('teamset');
        $teams = array();
        $field_value = '';
        if(!empty($layout_def['input_name0'])) {
           foreach($layout_def['input_name0'] as $team) {
           	   $teams[$team] = $team;
           	   if (!empty($field_value)) {
	           	$field_value .= ',';
	           }
	           $field_value .= "'" . $GLOBALS['db']->quote($team) . "'";
           }
        }
        
        $searchParams = $sf->getTeamSetIdSearchField('team_set_id', 'all', $teams);
        $query = string_format($searchParams['subquery'], array($field_value));
        return $this->_get_column_select($layout_def)." IN ({$query}) " . $this->queryPrimaryTeam($layout_def) . "\n";
 }

 /**
  * Perform the Exact type query
  *
  * @param array $layout_def
  * @return string the subquery to be run
  */
 function queryFilterexact(&$layout_def){
 	require_once('include/SugarFields/SugarFieldHandler.php');
	$sfh = new SugarFieldHandler();
    $sf = $sfh->getSugarField('teamset');
    $teams = array();
    if(!empty($layout_def['input_name0'])) {
    	foreach($layout_def['input_name0'] as $team) {
        	$teams[$team] = $team;
        }
    }

    $searchParams = $sf->getTeamSetIdSearchField('team_set_id', 'exact', $teams);
    $query = string_format($searchParams['subquery'], array($searchParams['value']));
	return $this->_get_column_select($layout_def)."= ({$query}) " . $this->queryPrimaryTeam($layout_def) . "\n";
 }
 
 
 /**
  * This method creates the additional SQL to query for the primary team value
  * 
  * @param array $layout_def
  * @return String SQL to be appended blank String if no primary team specified
  */
 private function queryPrimaryTeam(&$layout_def) {
 	if(isset($layout_def['input_name2']) && isset($layout_def['input_name0'][$layout_def['input_name2']])) {
 	   return "AND {$layout_def['table_alias']}.team_id = '{$layout_def['input_name0'][$layout_def['input_name2']]}'";
 	}
 	return '';
 }
 
}

?>
