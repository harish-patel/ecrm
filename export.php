<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

//Bug 30094, If zlib is enabled, it can break the calls to header() due to output buffering. This will only work php5.2+
ini_set('zlib.output_compression', 'Off');

ob_start();
require_once('include/export_utils.php');
global $sugar_config;
global $locale;
global $current_user;

$the_module = clean_string($_REQUEST['module']);

if($sugar_config['disable_export'] 	|| (!empty($sugar_config['admin_export_only']) && !(is_admin($current_user) || (ACLController::moduleSupportsACL($the_module)  && ACLAction::getUserAccessLevel($current_user->id,$the_module, 'access') == ACL_ALLOW_ENABLED &&
    (ACLAction::getUserAccessLevel($current_user->id, $the_module, 'admin') == ACL_ALLOW_ADMIN ||
     ACLAction::getUserAccessLevel($current_user->id, $the_module, 'admin') == ACL_ALLOW_ADMIN_DEV))))){
	die($GLOBALS['app_strings']['ERR_EXPORT_DISABLED']);
}

if(!empty($_REQUEST['uid'])){
	$content = export(clean_string($_REQUEST['module']), $_REQUEST['uid'], isset($_REQUEST['members']) ? $_REQUEST['members'] : false);
}else{
	$content = export(clean_string($_REQUEST['module']));
}
$filename = $_REQUEST['module'];
if($_REQUEST['members'] == true)
	$filename .= '_'.'members';
///////////////////////////////////////////////////////////////////////////////
////	BUILD THE EXPORT FILE
ob_clean();
header("Pragma: cache");
header("Content-type: application/octet-stream; charset=".$GLOBALS['locale']->getExportCharset());
header("Content-Disposition: attachment; filename={$filename}.csv");
header("Content-transfer-encoding: binary");
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT" );
header("Last-Modified: " . TimeDate::httpTime() );
header("Cache-Control: post-check=0, pre-check=0", false );
header("Content-Length: ".strlen($content));

print $GLOBALS['locale']->translateCharset($content, 'UTF-8', $GLOBALS['locale']->getExportCharset());

sugar_cleanup(true);
?>
