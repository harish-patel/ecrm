<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

/*********************************************************************************

 * Description:  TODO: To be written.
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 ********************************************************************************/






$focus = new Role();

$focus->retrieve($_REQUEST['record']);

$focus->set_user_relationship($focus->id, $_REQUEST['mass']);


$header_URL = $sugar_config["site_url"] . "/index.php?action=PopupUsers&form=UsersForm&module=Users&record={$_REQUEST['record']}";
$GLOBALS['log']->debug("about to post header URL of: $header_URL");

echo "<script language=javascript>\n";
echo "<!-- //\n";
echo "  window.opener.location.reload();\n";
echo "	window.location=\"{$header_URL}\";\n";
echo "// -->\n";
echo "</script>";

?>

