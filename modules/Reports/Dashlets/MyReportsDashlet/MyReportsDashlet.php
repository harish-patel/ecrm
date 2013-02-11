<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');



require_once('include/Dashlets/DashletGeneric.php');


class MyReportsDashlet extends DashletGeneric { 
    
    function MyReportsDashlet($id, $def = null) {
        global $current_user, $app_strings, $dashletData;
		require('modules/Reports/Dashlets/MyReportsDashlet/MyReportsDashlet.data.php');
        
        parent::DashletGeneric($id, $def);

        if(empty($def['title'])) $this->title = translate('LBL_FAVORITE_REPORTS_TITLE', 'Reports');
        $this->isConfigurable = false;
        $this->searchFields = $dashletData['MyReportsDashlet']['searchFields'];
        $this->columns = $dashletData['MyReportsDashlet']['columns'];
        $this->seedBean = new SavedReport();        
    }
    
    function process() {
        $this->lvs->quickViewLinks = false;
        parent::process();
    }
    
    function buildWhere() {
        global $current_user;
        $where_clauses = array();
        
        $sugaFav = new SugarFavorites();
        $current_favorites_beans = $sugaFav->getUserFavoritesByModule('Reports', $current_user);
        $current_favorites = array();
        foreach ($current_favorites_beans as $key=>$val) {
        	array_push($current_favorites,$val->record_id);
        }
        if(is_array($current_favorites) && !empty($current_favorites))
            array_push($where_clauses, 'saved_reports.id IN (\'' . implode("','", array_values($current_favorites)) . '\')');
        else {
            array_push($where_clauses, 'saved_reports.id IN (\'-1\')');
        }
        return $where_clauses; 
    }
    
}

?>
