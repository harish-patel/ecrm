<?php

/* * *******************************************************************************
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
 * ****************************************************************************** */

function proper_case($module)
{
    return $module;
}

require_once('include/MVC/Controller/SugarController.php');

class ControllerFactory
{

    /**
     * Obtain an instance of the correct controller.
     * 
     * @return an instance of SugarController
     */
    function getController($module)
    {
        $class = ucfirst($module) . 'Controller';
        $customClass = 'Custom' . $class;
        if (file_exists('custom/modules/' . $module . '/controller.php'))
        {
            $customClass = 'Custom' . $class;
            require_once('custom/modules/' . $module . '/controller.php');
            if (class_exists($customClass))
            {
                $controller = new $customClass();
            }
            else if (class_exists($class))
            {
                $controller = new $class();
            }
        }
        elseif (file_exists('modules/' . $module . '/controller.php'))
        {
            require_once('modules/' . $module . '/controller.php');
            if (class_exists($customClass))
            {
                $controller = new $customClass();
            }
            else if (class_exists($class))
            {
                $controller = new $class();
            }
        }
        else
        {
            if (file_exists('custom/include/MVC/Controller/SugarController.php'))
            {
                require_once('custom/include/MVC/Controller/SugarController.php');
            }
            if (class_exists('CustomSugarController'))
            {
                $controller = new CustomSugarController();
            }
            else
            {
                $controller = new SugarController();
            }
        }
        //setup the controller
        $controller->setup($module);
        return $controller;
    }

}

?>