<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
 * The contents of this file are subject to the SugarCRM Master Subscription
 * Agreement ("License") which can be viewed at
 * http://www.sugarcrm.com/crm/en/msa/master_subscription_agreement_11_April_2011.pdf
 * By installing or using this file, You have unconditionally agreed to the
 * terms and conditions of the License, and You may not use this file except in
 * compliance with the License.  Under the terms of the license, You shall not,
 * among other things: 1) sublicense, resell, rent, lease, redistribute, assign
 * or otherwise transfer Your rights to the Software, and 2) use the Software
 * for timesharing or service bureau purposes such as hosting the Software for
 * commercial gain and/or for the benefit of a third party.  Use of the Software
 * may be subject to applicable fees and any use of the Software without first
 * paying applicable fees is strictly prohibited.  You do not have the right to
 * remove SugarCRM copyrights from the source code or user interface.
 *
 * All copies of the Covered Code must include on each user interface screen:
 *  (i) the "Powered by SugarCRM" logo and
 *  (ii) the SugarCRM copyright notice
 * in the same form as they appear in the distribution.  See full license for
 * requirements.
 *
 * Your Warranty, Limitations of liability and Indemnity are expressly stated
 * in the License.  Please refer to the License for the specific language
 * governing these rights and limitations under the License.  Portions created
 * by SugarCRM are Copyright (C) 2004-2011 SugarCRM, Inc.; All Rights Reserved.
 ********************************************************************************/



// This file will load the configuration settings from session data,
// write to the config file, and execute any necessary database steps.
$GLOBALS['installing'] = true;
if( !isset( $install_script ) || !$install_script ){
    die($mod_strings['ERR_NO_DIRECT_SCRIPT']);
}
ini_set("output_buffering","0");
set_time_limit(3600);
// flush after each output so the user can see the progress in real-time
ob_implicit_flush();





require_once('install/install_utils.php');

require_once('modules/TableDictionary.php');


$trackerManager = TrackerManager::getInstance();
$trackerManager->pause();


$cache_dir                          = 'cache/';
$line_entry_format                  = "&nbsp&nbsp&nbsp&nbsp&nbsp<b>";
$line_exit_format                   = "... &nbsp&nbsp</b>";
$rel_dictionary                 = $dictionary; // sourced by modules/TableDictionary.php
$render_table_close             = "";
$render_table_open                  = "";
$setup_db_admin_password            = $_SESSION['setup_db_admin_password'];
$setup_db_admin_user_name           = $_SESSION['setup_db_admin_user_name'];
$setup_db_create_database           = $_SESSION['setup_db_create_database'];
$setup_db_create_sugarsales_user    = $_SESSION['setup_db_create_sugarsales_user'];
$setup_db_database_name             = $_SESSION['setup_db_database_name'];
$setup_db_drop_tables               = $_SESSION['setup_db_drop_tables'];
$setup_db_host_instance             = $_SESSION['setup_db_host_instance'];
$setup_db_host_name                 = $_SESSION['setup_db_host_name'];
$demoData                           = $_SESSION['demoData'];
$setup_db_sugarsales_password       = $_SESSION['setup_db_sugarsales_password'];
$setup_db_sugarsales_user           = $_SESSION['setup_db_sugarsales_user'];
$setup_site_admin_user_name         = $_SESSION['setup_site_admin_user_name'];
$setup_site_admin_password          = $_SESSION['setup_site_admin_password'];
$setup_site_guid                    = (isset($_SESSION['setup_site_specify_guid']) && $_SESSION['setup_site_specify_guid'] != '') ? $_SESSION['setup_site_guid'] : '';
$setup_site_url                     = $_SESSION['setup_site_url'];
$parsed_url                         = parse_url($setup_site_url);
$setup_site_host_name               = $parsed_url['host'];
$setup_site_log_dir                 = isset($_SESSION['setup_site_custom_log_dir']) ? $_SESSION['setup_site_log_dir'] : '.';
$setup_site_log_file                = 'sugarcrm.log';  // may be an option later
$setup_site_session_path            = isset($_SESSION['setup_site_custom_session_path']) ? $_SESSION['setup_site_session_path'] : '';
$setup_site_log_level				='fatal';		

sugar_cache_clear('TeamSetsCache');
if ( file_exists($cache_dir .'modules/Teams/TeamSetCache.php') ) {
	unlink($cache_dir.'modules/Teams/TeamSetCache.php');
}
        
sugar_cache_clear('TeamSetsMD5Cache');
if ( file_exists($cache_dir.'modules/Teams/TeamSetMD5Cache.php') ) {
	unlink($cache_dir.'modules/Teams/TeamSetMD5Cache.php');
}

$out =<<<EOQ
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <meta http-equiv="Content-Script-Type" content="text/javascript">
   <meta http-equiv="Content-Style-Type" content="text/css">
    <title>{$mod_strings['LBL_WIZARD_TITLE']} {$mod_strings['LBL_PERFORM_TITLE']}</title>
   <link REL="SHORTCUT ICON" HREF="$icon">
   <link rel="stylesheet" href="$css" type="text/css" />
   <script type="text/javascript" src="$common"></script>
</head>
<body onload="javascript:document.getElementById('defaultFocus').focus();">
<table cellspacing="0" cellpadding="0" border="0" align="center" class="shell">
      <tr><td colspan="2" id="help"><a href="{$help_url}" target='_blank'>{$mod_strings['LBL_HELP']} </a></td></tr>
    <tr>
      <th width="500">
		<p>
		<img src="{$sugar_md}" alt="SugarCRM" border="0">
		</p>
		{$mod_strings['LBL_PERFORM_TITLE']}</th>
    <th width="200" style="text-align: right;"><a href="http://www.sugarcrm.com" target="_blank">
    <IMG src="$loginImage" width="145" height="30" alt="SugarCRM" border="0"></a></th>
</tr>
<tr>
   <td colspan="2">
EOQ;
echo $out;
installLog("calling handleSugarConfig()");
$bottle = handleSugarConfig();
installLog("calling handleLog4Php()");
handleLog4Php();

$server_software = $_SERVER["SERVER_SOFTWARE"];
if(strpos($server_software,'Microsoft-IIS') !== false)
{
    installLog("calling handleWebConfig()");
	handleWebConfig();
} else {
	installLog("calling handleHtaccess()");
    handleHtaccess();
}

///////////////////////////////////////////////////////////////////////////////
////    START TABLE STUFF
echo "<br>";
echo "<b>{$mod_strings['LBL_PERFORM_TABLES']}</b>";
echo "<br>";

// create the SugarCRM database
if($setup_db_create_database) {
installLog("calling handleDbCreateDatabase()");
    handleDbCreateDatabase();
} else {

// ensure the charset and collation are utf8
    installLog("calling handleDbCharsetCollation()");
    handleDbCharsetCollation();
}

// create the SugarCRM database user
if($setup_db_create_sugarsales_user)
    handleDbCreateSugarUser();


foreach( $beanFiles as $bean => $file ){
    require_once( $file );
}

// load up the config_override.php file.
// This is used to provide default user settings
if( is_file("config_override.php") ){
    require_once("config_override.php");
}

$db                 = &DBManagerFactory::getInstance();
$startTime          = microtime(true);
$focus              = 0;
$processed_tables   = array(); // for keeping track of the tables we have worked on
$empty              = '';
$new_tables     = 1; // is there ever a scenario where we DON'T create the admin user?
$new_config         = 1;
$new_report     = 1;

// add non-module Beans to this array to keep the installer from erroring.
$nonStandardModules = array (
    //'Tracker',
);

//if working with sql-server create a catalog for full-text indexes.
if ($GLOBALS['db']->dbType=='mssql') {
	$GLOBALS['db']->helper->create_default_full_text_catalog();
}
/**
 * loop through all the Beans and create their tables
 */
 installLog("looping through all the Beans and create their tables");
 //start by clearing out the vardefs
 VardefManager::clearVardef();
foreach( $beanFiles as $bean => $file ) {
	$doNotInit = array('Scheduler', 'SchedulersJob', 'ProjectTask');
	
	if(in_array($bean, $doNotInit)) {
		$focus = new $bean(false);
	} else {
	    $focus = new $bean();
	}
	
	if ( $bean == 'Configurator' )
	    continue;

    $table_name = $focus->table_name;
     installLog("processing table ".$focus->table_name);
    // check to see if we have already setup this table
    if(!in_array($table_name, $processed_tables)) {
        if(!file_exists("modules/".$focus->module_dir."/vardefs.php")){
            continue;
        }
        if(!in_array($bean, $nonStandardModules)) {
            require_once("modules/".$focus->module_dir."/vardefs.php"); // load up $dictionary
            if($dictionary[$focus->object_name]['table'] == 'does_not_exist') {
                continue; // support new vardef definitions
            }
        } else {
        	continue; //no further processing needed for ignored beans.
        }
        
        // table has not been setup...we will do it now and remember that
        $processed_tables[] = $table_name;
    
        $focus->db->database = $db->database; // set db connection so we do not need to reconnect
            
        if($setup_db_drop_tables) {
            drop_table_install($focus);
            installLog("dropping table ".$focus->table_name);
        }
        
        if(create_table_if_not_exist($focus)) {
            installLog("creating table ".$focus->table_name);
            if( $bean == "User" ){
                $new_tables = 1;
            }
            if($bean == "Administration")
                $new_config = 1;


            if($bean == "SavedReport")
                $new_report = 1;


        }

        installLog("creating Relationship Meta for ".$focus->getObjectName());
        SugarBean::createRelationshipMeta($focus->getObjectName(), $db, $table_name, $empty, $focus->module_dir);
		echo ".";

    } // end if()
}

echo "<br>";
////    END TABLE STUFF

///////////////////////////////////////////////////////////////////////////////
////    START RELATIONSHIP CREATION

    ksort($rel_dictionary);
    foreach( $rel_dictionary as $rel_name => $rel_data ){  
        $table = $rel_data['table'];

        if( $setup_db_drop_tables ){
            if( $db->tableExists($table) ){
                $db->dropTableName($table);
            }
        }

        if( !$db->tableExists($table) ){
            $db->createTableParams($table, $rel_data['fields'], $rel_data['indices']);
        }

        SugarBean::createRelationshipMeta($rel_name,$db,$table,$rel_dictionary,'');
    }

///////////////////////////////////////////////////////////////////////////////
////    START CREATE DEFAULTS
    echo "<br>";
    echo "<b>{$mod_strings['LBL_PERFORM_CREATE_DEFAULT']}</b><br>";
    echo "<br>";
    installLog("Begin creating Defaults");
    if ($new_config) {
        installLog("insert defaults into config table");
        insert_default_settings();
    }



    echo $line_entry_format.$mod_strings['LBL_PERFORM_LICENSE_SETTINGS'].$line_exit_format;
    installLog($mod_strings['LBL_PERFORM_LICENSE_SETTINGS']);    
    update_license_settings( $_SESSION['setup_license_key_users'], $_SESSION['setup_license_key_expire_date'], $_SESSION['setup_license_key'], $_SESSION['setup_num_lic_oc'] );
    echo $mod_strings['LBL_PERFORM_DONE'];





    if ($new_tables) {
        echo $line_entry_format.$mod_strings['LBL_PERFORM_DEFAULT_USERS'].$line_exit_format;
        installLog($mod_strings['LBL_PERFORM_DEFAULT_USERS']);
        create_default_users();
        echo $mod_strings['LBL_PERFORM_DONE'];
    } else {
        echo $line_entry_format.$mod_strings['LBL_PERFORM_ADMIN_PASSWORD'].$line_exit_format;
        installLog($mod_strings['LBL_PERFORM_ADMIN_PASSWORD']);
        $db->setUserName($setup_db_sugarsales_user);
        $db->setUserPassword($setup_db_sugarsales_password);
        set_admin_password($setup_site_admin_password);
        echo $mod_strings['LBL_PERFORM_DONE'];
    }



    if ($new_report) {
        echo $line_entry_format.$mod_strings['LBL_PERFORM_DEFAULT_REPORTS'].$line_exit_format;
        installLog($mod_strings['LBL_PERFORM_DEFAULT_REPORTS']);
        require_once('modules/Reports/SeedReports.php');
        create_default_reports();
        echo $mod_strings['LBL_PERFORM_DONE'];
    }



    // default OOB schedulers

    echo $line_entry_format.$mod_strings['LBL_PERFORM_DEFAULT_SCHEDULER'].$line_exit_format;
    installLog($mod_strings['LBL_PERFORM_DEFAULT_SCHEDULER']);
    $scheduler = new Scheduler();
    if(isset($sugar_config['demoData']) && $sugar_config['demoData'] != 'no' && $_SESSION['setup_db_type'] == 'mssql') {    
        $db->query('DELETE FROM schedulers');
        $db->query('DELETE FROM schedulers_times');
        
        $sched1 = new Scheduler();
        $sched1->name               = 'Process Workflow Tasks';
        $sched1->job                = 'function::processWorkflow';
        $sched1->date_time_start    =  create_date(2005,1,1) . ' ' . create_time(0,0,1);
        $sched1->date_time_end      =  create_date(2020,12,31) . ' ' . create_time(23,59,59);
        $sched1->job_interval       = '*::*::*::*::*';
        $sched1->status             = 'Active';
        $sched1->created_by         = '1';
        $sched1->modified_user_id   = '1';
        $sched1->catch_up           = '0';
        $sched1->save();
        $sched2 = new Scheduler();
        $sched2->name               = 'Run Report Generation Scheduled Tasks';
        $sched2->job                = 'function::processQueue';
        $sched2->date_time_start    = create_date(2005,1,1) . ' ' . create_time(0,0,1);
        $sched2->date_time_end      = create_date(2020,12,31) . ' ' . create_time(23,59,59);
        $sched2->job_interval       = '0::6::*::*::*';
        $sched2->status             = 'Inactive';
        $sched2->created_by         = '1';
        $sched2->modified_user_id   = '1';
        $sched2->catch_up           = '1';
        $sched2->save();
        
                
        $sched3 = new Scheduler();
        $sched3->name               = 'Prune the User History Table';
        $sched3->job                = 'function::trimTracker';
        $sched3->date_time_start    = create_date(2005,1,1) . ' ' . create_time(0,0,1);
        $sched3->date_time_end      = create_date(2020,12,31) . ' ' . create_time(23,59,59);
        $sched3->job_interval       = '*::*::*::*::*';
        $sched3->status             = 'Active';
        $sched3->created_by         = '1';
        $sched3->modified_user_id   = '1';
        $sched3->catch_up           = '1';
        $sched3->save();
        $sched4 = new Scheduler();
        $sched4->name               = 'Check Inbound Mailboxes';
        $sched4->job                = 'function::pollMonitoredInboxes';
        $sched4->date_time_start    = create_date(2005,1,1) . ' ' . create_time(0,0,1);
        $sched4->date_time_end      = create_date(2020,12,31) . ' ' . create_time(23,59,59);
        $sched4->job_interval       = '*::*::*::*::*';
        $sched4->status             = 'Active';
        $sched4->created_by         = '1';
        $sched4->modified_user_id   = '1';
        $sched4->catch_up           = '0';
        $sched4->save();
        $sched5 = new Scheduler();
        $sched5->name               = 'Run Nightly Process Bounced Campaign Emails';
        $sched5->job                = 'function::pollMonitoredInboxesForBouncedCampaignEmails';
        $sched5->date_time_start    = create_date(2005,1,1) . ' ' . create_time(0,0,1);
        $sched5->date_time_end      = create_date(2020,12,31) . ' ' . create_time(23,59,59);
        $sched5->job_interval       = '0::2-6::*::*::*';
        $sched5->status             = 'Active';
        $sched5->created_by         = '1';
        $sched5->modified_user_id   = '1';
        $sched5->catch_up           = '1';
        $sched5->save();

        $sched6 = new Scheduler();
        $sched6->name               = 'Run Nightly Mass Email Campaigns';
        $sched6->job                = 'function::runMassEmailCampaign';
        $sched6->date_time_start    = create_date(2005,1,1) . ' ' . create_time(0,0,1);
        $sched6->date_time_end      = create_date(2020,12,31) . ' ' . create_time(23,59,59);
        $sched6->job_interval       = '0::2-6::*::*::*';
        $sched6->status             = 'Active';
        $sched6->created_by         = '1';
        $sched6->modified_user_id   = '1';
        $sched6->catch_up           = '1';
        $sched6->save();


        $sched7 = new Scheduler();
        $sched7->name               = 'Prune Database on 1st of Month';
        $sched7->job                = 'function::pruneDatabase';
        $sched7->date_time_start    = create_date(2005,1,1) . ' ' . create_time(0,0,1);
        $sched7->date_time_end      = create_date(2020,12,31) . ' ' . create_time(23,59,59);
        $sched7->job_interval       = '0::4::1::*::*';
        $sched7->status             = 'Inactive';
        $sched7->created_by         = '1';
        $sched7->modified_user_id   = '1';
        $sched7->catch_up           = '0';
        $sched7->save();    

        $sched9 = new Scheduler();
        $sched9->name               = 'Update the tracker_sessions table';
        $sched9->job                = 'function::updateTrackerSessions';
        $sched9->date_time_start    = create_date(2005,1,1) . ' ' . create_time(0,0,1);
        $sched9->date_time_end      = create_date(2020,12,31) . ' ' . create_time(23,59,59);
        $sched9->job_interval       = '*::*::*::*::*';
        $sched9->status             = 'Active';
        $sched9->created_by         = '1';
        $sched9->modified_user_id   = '1';
        $sched9->catch_up           = '1';
        $sched9->save();


    } else {
        $scheduler->rebuildDefaultSchedulers();     
    }


    ///create kb tag data.
    installLog("create kb tag default data");
    
	KBTag::default_install_data();
    
    echo $mod_strings['LBL_PERFORM_DONE'];
    

$defaultTrackerRoles = array(
    'Tracker'=>array(
        'Trackers'=>array('admin'=>1, 'access'=>89, 'view'=>90, 'list'=>90, 'edit'=>90, 'delete'=>90, 'import'=>90, 'export'=>90),     
        'TrackerQueries'=>array('admin'=>1, 'access'=>89, 'view'=>90, 'list'=>90, 'edit'=>90, 'delete'=>90, 'import'=>90, 'export'=>90),
        'TrackerPerfs'=>array('admin'=>1, 'access'=>89, 'view'=>90, 'list'=>90, 'edit'=>90, 'delete'=>90, 'import'=>90, 'export'=>90),
        'TrackerSessions'=>array('admin'=>1, 'access'=>89, 'view'=>90, 'list'=>90, 'edit'=>90, 'delete'=>90, 'import'=>90, 'export'=>90), 
     )
);
addDefaultRoles($defaultTrackerRoles);

// Adding MLA Roles
require_once('modules/ACLRoles/SeedRoles.php');
create_default_roles();

// Hide certain subpanels by default
require_once('include/SubPanel/SubPanelDefinitions.php');
require_once('modules/MySettings/TabController.php');

$disabledTabs = array(
    "project",
    "bugs",
    "products",
    "contracts",
    );

$disabledTabsKeyArray = TabController::get_key_array($disabledTabs);
SubPanelDefinitions::set_hidden_subpanels($disabledTabsKeyArray);


// Enable Sugar Feeds and add all feeds by default
installLog("Enable SugarFeeds");
enableSugarFeeds();

///////////////////////////////////////////////////////////////////////////////
////    START DEMO DATA
    
    // populating the db with seed data
    installLog("populating the db with seed data");
    if( $_SESSION['demoData'] != 'no' ){
        set_time_limit( 301 );

      echo "<br>";
        echo "<b>{$mod_strings['LBL_PERFORM_DEMO_DATA']}</b>";
        echo "<br><br>";

        print( $render_table_close );
        print( $render_table_open );

        $current_user = new User();
        $current_user->retrieve(1);
        include("install/populateSeedData.php");
    }

    $endTime = microtime(true);
    $deltaTime = $endTime - $startTime;
    
    //////////////////////////////////////////
    /// PERFORM OFFLINE CLIENT INSTALL
    /////////////////////////////////////////
    if(isset($_SESSION['oc_install']) && $_SESSION['oc_install'] == true){
        installLog("Performing Offline Client");
        set_time_limit(3600);
        ini_set('default_socket_timeout', 360);
        echo '<b>Installing Offline Client</b>';
        require_once("include/utils/disc_client_utils.php");
        $oc_result = convert_disc_client();
	installLog($oc_result);
	echo $oc_result;
    }

                    
///////////////////////////////////////////////////////////////////////////
////    FINALIZE LANG PACK INSTALL
    if(isset($_SESSION['INSTALLED_LANG_PACKS']) && is_array($_SESSION['INSTALLED_LANG_PACKS']) && !empty($_SESSION['INSTALLED_LANG_PACKS'])) {
        updateUpgradeHistory();
    }

    ///////////////////////////////////////////////////////////////////////////
    ////    HANDLE SUGAR VERSIONS
    require_once('modules/Versions/InstallDefaultVersions.php');


    
    require_once('modules/Connectors/InstallDefaultConnectors.php');

//If this is MIcrosoft install and FTS is enabled, then fire index wake up method to prime the indexing service.
    if($_SESSION['setup_db_type']=='mssql') {

        if(isset($_SESSION['IsFulltextInstalled']) && $_SESSION['IsFulltextInstalled']){
            $db->wakeupFTS();
        }
    }

	///////////////////////////////////////////////////////////////////////////////
	////    INSTALL PASSWORD TEMPLATES
    include('install/seed_data/Advanced_Password_SeedData.php');

///////////////////////////////////////////////////////////////////////////////
////    SETUP DONE
installLog("Installation has completed *********");
$memoryUsed = '';
    if(function_exists('memory_get_usage')) {
    $memoryUsed = $mod_strings['LBL_PERFORM_OUTRO_5'].memory_get_usage().$mod_strings['LBL_PERFORM_OUTRO_6'];
    }

    if(isset($_SESSION['oc_install']) && $_SESSION['oc_install'] == true){
        removeConfig_SIFile();
    }

$errTcpip = '';
    $fp = @fsockopen("www.sugarcrm.com", 80, $errno, $errstr, 3);
    if (!$fp) {
    $errTcpip = "<p>{$mod_strings['ERR_PERFORM_NO_TCPIP']}</p>";
    }
   if ($fp && (!isset( $_SESSION['oc_install']) ||  $_SESSION['oc_install'] == false)) {
      @fclose($fp);
      if ( $next_step == 9999 )
          $next_step = 8;
    $fpResult =<<<FP
     <form action="install.php" method="post" name="form" id="form">
     <input type="hidden" name="current_step" value="{$next_step}">
     <table cellspacing="0" cellpadding="0" border="0" class="stdTable">
       <tr>
         <td>
            &nbsp;
         </td>
         <td><input class="button" type="submit" name="goto" value="{$mod_strings['LBL_NEXT']}" id="defaultFocus"/></td>
       </tr>
     </table>
     </form>
FP;
   } else {
        $fpResult =<<<FP
     <table cellspacing="0" cellpadding="0" border="0" class="stdTable">
       <tr>
         <td>&nbsp;</td>
         <td>
            <form action="index.php" method="post" name="formFinish" id="formFinish">
                <input type="hidden" name="default_user_name" value="admin" />
                <input class="button" type="submit" name="next" value="{$mod_strings['LBL_PERFORM_FINISH']}" id="defaultFocus"/>
            </form>
         </td>
       </tr>
     </table>
FP;
   }
    
    if( isset($_SESSION['setup_site_sugarbeet_automatic_checks']) && $_SESSION['setup_site_sugarbeet_automatic_checks'] == true){
        set_CheckUpdates_config_setting('automatic');
    }else{
        set_CheckUpdates_config_setting('manual');
    } 
    if(!empty($_SESSION['setup_system_name'])){
        $admin=new Administration();
        $admin->saveSetting('system','name',$_SESSION['setup_system_name']);  
    }
    
    
    // Bug 28601 - Set the default list of tabs to show
    $enabled_tabs = array();
    $enabled_tabs[] = 'Home';
    
    $enabled_tabs[] = 'Accounts';
    $enabled_tabs[] = 'Contacts';
    $enabled_tabs[] = 'Opportunities';    
    $enabled_tabs[] = 'Leads';
    $enabled_tabs[] = 'Calendar';
    $enabled_tabs[] = 'Reports';
    $enabled_tabs[] = 'Quotes';
    $enabled_tabs[] = 'Documents';
    $enabled_tabs[] = 'Emails';
    $enabled_tabs[] = 'Campaigns';
    $enabled_tabs[] = 'Calls';
    $enabled_tabs[] = 'Meetings';
    $enabled_tabs[] = 'Tasks';
    $enabled_tabs[] = 'Notes';
    $enabled_tabs[] = 'Forecasts';
    $enabled_tabs[] = 'Cases';
    $enabled_tabs[] = 'Prospects';
    $enabled_tabs[] = 'ProspectLists';
    
    
    require_once('modules/MySettings/TabController.php');
    $tabs = new TabController();
    $tabs->set_system_tabs($enabled_tabs);
    
post_install_modules();
if( count( $bottle ) > 0 ){
    foreach( $bottle as $bottle_message ){
        $bottleMsg .= "{$bottle_message}\n";
    }
} else {
    $bottleMsg = $mod_strings['LBL_PERFORM_SUCCESS'];
}



$out =<<<EOQ
<br><p><b>{$mod_strings['LBL_PERFORM_OUTRO_1']} {$setup_sugar_version} {$mod_strings['LBL_PERFORM_OUTRO_2']}</b></p>

{$mod_strings['LBL_PERFORM_OUTRO_3']} {$deltaTime} {$mod_strings['LBL_PERFORM_OUTRO_4']}<br />
{$memoryUsed}
{$errTcpip}
    </td>
</tr>
<tr>
<td align="right" colspan="2">
<hr>
<table cellspacing="0" cellpadding="0" border="0" class="stdTable">
<tr>
<td>
{$fpResult}
</td>
</tr>
</table>
</td>
</tr>
</table>
</body>
</html>
<!--
<bottle>{$bottleMsg}</bottle>
-->
EOQ;

echo $out;


?>
