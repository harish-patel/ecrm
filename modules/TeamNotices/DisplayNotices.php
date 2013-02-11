<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');


	





global $mod_strings;
global $app_list_strings;
global $app_strings;
global $current_user;

$focus = new TeamNotice();

$is_edit = true;
if(!empty($_REQUEST['record'])) {
    $result = $focus->retrieve($_REQUEST['record']);
 
}
$GLOBALS['log']->info("TeamNotice list view");
global $theme;

$xtpl=new XTemplate ('modules/TeamNotices/DisplayNotices.html');
$ListView = new ListView();
$ListView->initNewXTemplate( 'modules/TeamNotices/DisplayNotices.html',$mod_strings);
$today = db_convert("'".$timedate->nowDbDate()."'", 'date');

$ListView->setHeaderTitle(translate('LBL_NOTICES', 'TeamNotices'));
$ListView->setQuery($focus->table_name.".date_start <= $today and ".$focus->table_name.".date_end >= $today and ".$focus->table_name.'.status=\'Visible\'', "", "date_start", "TEAMNOTICE");
$ListView->processListView($focus, "main", "TEAMNOTICE");




?>
