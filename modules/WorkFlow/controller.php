<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');


require_once('include/MVC/Controller/SugarController.php');

class WorkflowController extends SugarController
{
    public function preProcess()
    {
        global $current_user;
        
        $workflow_modules = get_workflow_admin_modules_for_user($current_user);
        if (!is_admin($current_user) && empty($workflow_modules))
            sugar_die("Unauthorized access to WorkFlow.");
    }
}
