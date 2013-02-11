<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

/*********************************************************************************

 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 ********************************************************************************/
 
header('HTTP/1.1 301 Moved Permanently');
header('Location: index.php?entryPoint=removeme&'.$_SERVER["QUERY_STRING"]);
?>
