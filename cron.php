<?php

if (!defined('sugarEntry'))
    define('sugarEntry', true);
//change directories to where this file is located.
//this is to make sure it can find dce_config.php
chdir(realpath(dirname(__FILE__)));

require_once('include/entryPoint.php');

//Bug 27991 . Redirect to index.php if the request is not come from CLI. 
$sapi_type = php_sapi_name();
if (substr($sapi_type, 0, 3) != 'cgi')
{
    global $sugar_config;
    if (!empty($sugar_config['site_url']))
    {
        header("Location: " . $sugar_config['site_url'] . "/index.php");
    }
    else
    {
        sugar_die("Didn't find site url in your sugarcrm config file");
    }
}
//End of #27991

if (empty($current_language))
{
    $current_language = $sugar_config['default_language'];
}

$app_list_strings = return_app_list_strings_language($current_language);
$app_strings = return_application_language($current_language);

global $current_user;
$current_user = new User();
$current_user->getSystemUser();

///////////////////////////////////////////////////////////////////////////////
////	PREP FOR SCHEDULER PID
$GLOBALS['log']->debug('--------------------------------------------> at cron.php <--------------------------------------------');

$cachePath = $GLOBALS['sugar_config']['cache_dir'] . 'modules/Schedulers';
$pid = 'pid.php';
if (!is_dir($cachePath))
{
    mkdir_recursive($cachePath);
}
if (!is_file($cachePath . '/' . $pid))
{
    if (is_writable($cachePath))
    { // the "file" does not yet exist
        write_array_to_file('timestamp', array(strtotime(date('H:i'))), $cachePath . '/' . $pid);
        require_once($cachePath . '/' . $pid);
    }
    else
    {
        $GLOBALS['log']->fatal('Scheduler cannot write PID file.  Please check permissions on ' . $cachePath);
    }
}
else
{
    if (is_writable($cachePath . '/' . $pid))
    {
        require_once($cachePath . '/' . $pid);
    }
    else
    {
        $GLOBALS['log']->fatal('Scheduler cannot read the PID file.  Please check permissions on ' . $cachePath);
    }
}
////	END PREP FOR SCHEDULER PID
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
////	EXECUTE IF VALID TIME (NOT DDOS)

if ($timestamp[0] < strtotime(date('H:i')))
{
    if (is_writable($cachePath . '/' . $pid))
    {
        write_array_to_file('timestamp', array(strtotime(date('H:i'))), $cachePath . '/' . $pid);
        require('modules/Schedulers/Scheduler.php');
        $s = new Scheduler();
        $s->flushDeadJobs();
        $s->checkPendingJobs();
    }
    else
    {
        $GLOBALS['log']->fatal('Scheduler cannot write PID file.  Please check permissions on ' . $cachePath);
    }
}
else
{
    $GLOBALS['log']->fatal('If you see a whole string of these, there is a chance someone is attacking your system.');
}
$exit_on_cleanup = true;

sugar_cleanup($exit_on_cleanup);
?>
