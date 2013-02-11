<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

$_REQUEST['edit']='true';
//include ("modules/TeamNotices/index.php");



$focus = new TeamNotice();
if(!empty($_REQUEST['record'])) $focus->retrieve($_REQUEST['record']);

$GLOBALS['log']->info("Team Notice edit view");

$params = array();
$params[] = "<a href='index.php?action=index&module=TeamNotices'>{$mod_strings['LBL_MODULE_NAME']}</a>";
if ( empty($focus->id) )
    $params[] = $GLOBALS['app_strings']['LBL_CREATE_BUTTON_LABEL'];
else {
    $params[] = $focus->name;
    $params[] = $GLOBALS['app_strings']['LBL_EDIT_BUTTON_LABEL'];
}
echo getClassicModuleTitle('TeamNotices', $params, true);

$xtpl=new XTemplate ('modules/TeamNotices/EditView.html');
$xtpl->assign("MOD", $mod_strings);
$xtpl->assign("APP", $app_strings);
if (isset($_REQUEST['return_module'])) $xtpl->assign("RETURN_MODULE", $_REQUEST['return_module']);
if (isset($_REQUEST['return_action'])) $xtpl->assign("RETURN_ACTION", $_REQUEST['return_action']);
if (isset($_REQUEST['return_id'])) $xtpl->assign("RETURN_ID", $_REQUEST['return_id']);
$xtpl->assign("THEME", SugarThemeRegistry::current()->__toString());
//$xtpl->assign("IMAGE_PATH", $image_path);
$xtpl->assign("JAVASCRIPT", get_set_focus_js());
$xtpl->assign("ID", $focus->id);
$xtpl->assign('NAME', $focus->name);
$xtpl->assign('URL', $focus->url);
$xtpl->assign('URL_TITLE', $focus->url_title);
$xtpl->assign('NAME', $focus->name);
$xtpl->assign('DESCRIPTION', $focus->description);

require_once('include/SugarFields/Fields/Teamset/SugarFieldTeamset.php');
$teamSetField = new SugarFieldTeamset('Teamset');
$code = $teamSetField->getClassicView($focus->field_defs);
$xtpl->assign("TEAM_SET_FIELD", $code);

if(!isset($focus->date_start)) {
		$xtpl->assign('DATE_START', $timedate->nowDate());
	} else $xtpl->assign('DATE_START', $focus->date_start);
if(!isset($focus->date_start)) {
		$xtpl->assign('DATE_END', $timedate->asUser($timedate->getNow()->get('+1 week')));
	} else $xtpl->assign('DATE_END', $focus->date_end);
$xtpl->assign("CALENDAR_DATEFORMAT", $timedate->get_cal_date_format());
$xtpl->assign("STATUS_OPTIONS", get_select_options_with_id($mod_strings['dom_status'], $focus->status));
$xtpl->parse("main.pro");
$xtpl->parse("main");
$xtpl->out("main");


$javascript = new javascript();
$javascript->setFormName('EditView');
$javascript->setSugarBean($focus);
$javascript->addAllFields('');
$javascript->addFieldGeneric('team_name', 'varchar', $app_strings['LBL_TEAM'] ,'true');
$javascript->addToValidateBinaryDependency('team_name', 'alpha', $app_strings['ERR_SQS_NO_MATCH_FIELD'] . $app_strings['LBL_TEAM'], 'false', '', 'team_id');
echo $javascript->getScript();
?>
