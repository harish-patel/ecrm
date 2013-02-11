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

$focus->clear_user_relationship($focus->id, $_REQUEST['user_id']);

$header_URL = "Location: index.php?action={$_REQUEST['return_action']}&module={$_REQUEST['return_module']}&record={$_REQUEST['return_id']}";
$GLOBALS['log']->debug("about to post header URL of: $header_URL");

header($header_URL);
?>

