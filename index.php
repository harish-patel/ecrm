<?php
if(!defined('sugarEntry'))define('sugarEntry', true);

$startTime = microtime(true);
require_once('include/entryPoint.php');
ob_start();
require_once('include/MVC/SugarApplication.php');
$app = new SugarApplication();
$app->startSession();
$app->execute();

?>
