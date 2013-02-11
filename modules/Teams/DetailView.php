<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

require_once('modules/Teams/Forms.php');
require_once('include/DetailView/DetailView.php');

global $mod_strings;
global $app_strings;
global $app_list_strings;
global $current_user;

if (!is_admin($current_user)&& !is_admin_for_module($GLOBALS['current_user'],'Users')) sugar_die("Unauthorized access to administration.");

$focus = new Team();

$detailView = new DetailView();
$offset=0;
if (isset($_REQUEST['offset']) or isset($_REQUEST['record'])) {
	$result = $detailView->processSugarBean("TEAM", $focus, $offset);
	if($result == null) {
	    sugar_die($app_strings['ERROR_NO_RECORD']);
	}
	$focus=$result;
} else {
	header("Location: index.php?module=Accounts&action=index");
}

echo getClassicModuleTitle($mod_strings['LBL_MODULE_NAME'], array($mod_strings['LBL_MODULE_NAME']. ": " . $focus->get_summary_text()), true);

$GLOBALS['log']->info("Team detail view");

$xtpl=new XTemplate ('modules/Teams/DetailView.html');
$xtpl->assign("MOD", $mod_strings);
$xtpl->assign("APP", $app_strings);
$xtpl->assign("GRIDLINE", $gridline);
$xtpl->assign("PRINT_URL", "index.php?".$GLOBALS['request_string']);
$xtpl->assign("ID", $focus->id);
$xtpl->assign("RETURN_MODULE", "Teams");
$xtpl->assign("RETURN_ACTION", "DetailView");
$xtpl->assign("ACTION", "EditView");
$xtpl->assign("NAME", Team::getDisplayName($focus->name, $focus->name_2));
$xtpl->assign("DESCRIPTION", nl2br(url2html($focus->description)));

global $current_user;
if((is_admin($current_user) || is_admin_for_module($current_user,'Users')) && $_REQUEST['module'] != 'DynamicLayout' && !empty($_SESSION['editinplace'])){	
	
	$xtpl->assign("ADMIN_EDIT","<a href='index.php?action=index&module=DynamicLayout&from_action=".$_REQUEST['action'] ."&from_module=".$_REQUEST['module'] ."&record=".$_REQUEST['record']. "&mod_lang=Teams'>".SugarThemeRegistry::current()->getImage("EditLayout","border='0' alt='Edit Layout' align='bottom'")."</a>");	
}

$detailView->processListNavigation($xtpl, "TEAM", $offset);
$xtpl->parse("main");
$xtpl->out("main");

$sub_xtpl = $xtpl;
$old_contents = ob_get_contents();
ob_end_clean();
ob_start();
echo $old_contents;

require_once('include/SubPanel/SubPanelTiles.php');
$subpanel = new SubPanelTiles($focus, 'Teams');
echo $subpanel->display();

$error_message = isset($_REQUEST['message']) ? $_REQUEST['message'] : '';
if(!empty($error_message))
{
   if($error_message == 'LBL_MASSUPDATE_DELETE_GLOBAL_TEAM')
   {
   	  $error_message = $app_strings['LBL_MASSUPDATE_DELETE_GLOBAL_TEAM'];
   } else if($error_message == 'LBL_MASSUPDATE_DELETE_USER_EXISTS') {
   	  $user = new User();
	  $user->retrieve($focus->associated_user_id);
	  $error_message = string_format($app_strings['LBL_MASSUPDATE_DELETE_USER_EXISTS'], array(Team::getDisplayName($focus->name, $focus->name_2), $user->full_name));
   }
   
echo <<<EOQ
<script type="text/javascript">
	popup_window = new YAHOO.widget.SimpleDialog("emptyLayout", {
		width: "300px",
		draggable: true,
		constraintoviewport: true,
		modal: true,
		fixedcenter: true,
		text: "{$error_message}",
		bodyStyle: "padding:5px",
		buttons: [{
			text: SUGAR.language.get('app_strings', 'LBL_EMAIL_OK'),
			isDefault:true,
			handler: function(){
				popup_window.hide()
			}
		}]
	});
	popup_window.render(document.body);
	popup_window.show();   
</script>
EOQ;

}

?>
