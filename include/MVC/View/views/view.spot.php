<?php

if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');
/* * *******************************************************************************
 * ****************************************************************************** */


require_once('include/MVC/View/views/view.ajax.php');
require_once('modules/Home/UnifiedSearchAdvanced.php');

class ViewSpot extends ViewAjax
{

    /**
     * @see SugarView::display()
     */
    public function display()
    {
        if (!file_exists($GLOBALS['sugar_config']['cache_dir'] . 'modules/unified_search_modules.php'))
        {
            $usa = new UnifiedSearchAdvanced();
            $usa->buildCache();
        }

        //Filter out the modules that are not allowed to be searched upon
        if (!file_exists('custom/modules/unified_search_modules_display.php'))
        {
            if (!isset($usa))
            {
                $usa = new UnifiedSearchAdvanced();
            }
            $usa->createUnifiedSearchModulesDisplay();
        }
        include('custom/modules/unified_search_modules_display.php');

        // load the list of unified search enabled modules
        $modules = array();

        //check to see if the user has customized the list of modules available to search        
        $users_modules = $GLOBALS['current_user']->getPreference('globalSearch', 'search');

        if (!empty($users_modules))
        {
            // use user's previous selections
            foreach ($users_modules as $key => $value)
            {
                if (isset($unified_search_modules_display[$key]) && !empty($unified_search_modules_display[$key]['visible']))
                {
                    $modules[$key] = $key;
                }
            }
        }
        else
        {
            global $beanList;
            foreach ($unified_search_modules_display as $key => $data)
            {
                if (!empty($data['visible']))
                {
                    $modules[$key] = $key;
                }
            }
        }


        $offset = -1;

        // make sure the current module appears first in the list
        if (isset($modules[$this->module]))
        {
            unset($modules[$this->module]);
            $modules = array_merge(array($this->module => $this->module), $modules);
        }

        if (!empty($_REQUEST['zoom']) && isset($modules[$_REQUEST['zoom']]))
        {
            $modules = array($_REQUEST['zoom']);
            if (isset($_REQUEST['offset']))
            {
                $offset = $_REQUEST['offset'];
            }
        }
        require_once('include/SearchForm/SugarSpot.php');
        $sugarSpot = new SugarSpot;
        $trimmed_query = trim($_REQUEST['q']);

        echo $sugarSpot->searchAndDisplay($trimmed_query, $modules, $offset);
    }

}
