<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

require_once('modules/Teams/Forms.php');

global $app_strings;
global $app_list_strings;
global $mod_strings;
global $current_user;

$GLOBALS['log']->info("Team edit view");

if (!is_admin($current_user)&& !is_admin_for_module($GLOBALS['current_user'],'Users')) sugar_die("Unauthorized access to administration.");

$focus = new Team();

if (isset($_REQUEST['record']) && isset($_REQUEST['record'])) {
    $focus->retrieve($_REQUEST['record']);
}


echo getClassicModuleTitle($mod_strings['LBL_MODULE_NAME'], array($mod_strings['LBL_MODULE_NAME'],$focus->get_summary_text()), true);

$xtpl = new XTemplate("modules/Teams/EditView.html");
$xtpl->assign("MOD", $mod_strings);
$xtpl->assign("APP", $app_strings);

if (isset($_REQUEST['error_string'])) $xtpl->assign("ERROR_STRING", "<span class='error'>Error: ".$_REQUEST['error_string']."</span>");
if (isset($_REQUEST['return_module'])) $xtpl->assign("RETURN_MODULE", $_REQUEST['return_module']);
if (isset($_REQUEST['return_action'])) $xtpl->assign("RETURN_ACTION", $_REQUEST['return_action']);
if (isset($_REQUEST['return_id'])) $xtpl->assign("RETURN_ID", $_REQUEST['return_id']);
// handle Create $module then Cancel
if (empty($_REQUEST['return_id'])) {
	$xtpl->assign("RETURN_ACTION", 'index');
}if (isset($_REQUEST['isDuplicate'])) $xtpl->assign("IS_DUPLICATE", $_REQUEST['isDuplicate']);
$xtpl->assign("PRINT_URL", "index.php?".$GLOBALS['request_string']);
$xtpl->assign("ID", $focus->id);
$xtpl->assign("NAME", Team::getDisplayName($focus->name, $focus->name_2));
$xtpl->assign("DESCRIPTION", $focus->description);


global $current_user;
if((is_admin($current_user) || is_admin_for_module($current_user,'Users')) && $_REQUEST['module'] != 'DynamicLayout' && !empty($_SESSION['editinplace'])){	
	$record = '';
	if(!empty($_REQUEST['record'])){
		$record = 	$_REQUEST['record'];
	}
	$xtpl->assign("ADMIN_EDIT","<a href='index.php?action=index&module=DynamicLayout&from_action=".$_REQUEST['action'] ."&from_module=".$_REQUEST['module'] ."&record=".$record. "'>".SugarThemeRegistry::current()->getImage("EditLayout","border='0' alt='Edit Layout' align='bottom'")."</a>");	
}


$javascript = new javascript();
$javascript->setFormName("EditView");

$javascript->addFieldGeneric("name", "varchar", $mod_strings['LBL_NAME'], TRUE, "");


$xtpl->parse("main");
$xtpl->out("main");



echo $javascript->getScript();
?>
