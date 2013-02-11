<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/

/*********************************************************************************

 * Description:  controls which link show up in the upper right hand corner of the app
 ********************************************************************************/

global $app_strings, $current_user;
global $sugar_config, $sugar_version, $sugar_flavor, $server_unique_key, $current_language, $action;

 if(!isset($global_control_links)){
 	$global_control_links = array();
	$sub_menu = array();
 }
if(isset( $sugar_config['disc_client']) && $sugar_config['disc_client']){
	require_once('modules/Sync/headermenu.php');
}
$global_control_links['employees'] = array(
'linkinfo' => array($app_strings['LBL_EMPLOYEES']=> 'index.php?module=Employees&action=index'),
'submenu' => ''
);
if (
        is_admin($current_user)
		|| is_admin_for_any_module($current_user)

        ) $global_control_links['admin'] = array(

'linkinfo' => array($app_strings['LBL_ADMIN'] => 'index.php?module=Administration&action=index'),
'submenu' => ''
);
$global_control_links['training'] = array(
'linkinfo' => array($app_strings['LBL_TRAINING'] => ' javascript:void window.open(\'http://support.sugarcrm.com\')'),
'submenu' => ''
 );
$global_control_links['help'] = array(
    'linkinfo' => array($app_strings['LNK_HELP'] => ' javascript:void window.open(\'index.php?module=Administration&action=SupportPortal&view=documentation&version='.$sugar_version.'&edition='.$sugar_flavor.'&lang='.$current_language.'&help_module='.$GLOBALS['module'].'&help_action='.$action.'&key='.$server_unique_key.'\')'),
    'submenu' => ''
 );

$global_control_links['users'] = array(
'linkinfo' => array($app_strings['LBL_LOGOUT'] => 'index.php?module=Users&action=Logout'),
'submenu' => ''
);

$global_control_links['about'] = array('linkinfo' => array($app_strings['LNK_ABOUT'] => 'index.php?module=Home&action=About'),
'submenu' => ''
);



if (sugar_is_file('custom/include/globalControlLinks.php')) {
    include('custom/include/globalControlLinks.php');
}
?>
