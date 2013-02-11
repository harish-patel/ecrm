<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');



$focus = new TeamNotice();

require_once('include/formbase.php');
$focus = populateFromPost('', $focus);	

$focus->save();
$return_id = $focus->id;

handleRedirect('', 'TeamNotices');
?>
