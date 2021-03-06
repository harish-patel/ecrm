<?php

if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');
/* * *******************************************************************************
 * ****************************************************************************** */

/* * *******************************************************************************

 * Description:  Defines the English language pack for the base application.
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 * ****************************************************************************** */

require_once('include/SugarWireless/SugarWirelessView.php');

/**
 * ViewWirelessdetail extends SugarWirelessView and is the view for wireless
 * detail views.
 */
class ViewWirelessdetail extends SugarWirelessView
{

    /**
     * Constructor for the view, it runs the constructor of SugarWirelessView
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Public function to attain the subpanel data for a record
     */
    public function bean_subpanels()
    {
        if (file_exists('custom/modules/' . $this->module . '/metadata/wireless.subpaneldefs.php'))
        {
            require_once('custom/modules/' . $this->module . '/metadata/wireless.subpaneldefs.php');
        }
        else if (file_exists('modules/' . $this->module . '/metadata/wireless.subpaneldefs.php'))
        {
            require_once('modules/' . $this->module . '/metadata/wireless.subpaneldefs.php');
        }

        $bean_subpanel_data = array();
        // make sure the layout_defs array has been initialized
        if (isset($layout_defs))
        {
            $available_subpanel_data = false;
            foreach ($layout_defs[$this->module]['subpanel_setup'] as $subpanel => $subpaneldefs)
            {
                $subpanel = $subpaneldefs['module'];
                // check if the user has access to the subpanel module
                if (in_array($subpanel, $GLOBALS['moduleList']))
                {
                    // include and instantiate child seed 	    	
                    require_once($GLOBALS['beanFiles'][$GLOBALS['beanList'][$subpanel]]);
                    $obj = new $GLOBALS['beanList'][$subpaneldefs['module']]();
                    $table = $subpaneldefs['get_subpanel_data'];

                    $subpanel_data = array();
                    if (isset($this->bean->$table))
                    {
                        // attain subpanel data
                        $subpanel_data = $this->wl_get_subpanel_data($obj, $table);
                        $bean_subpanel_data[$subpanel] = array('count' => $subpanel_data['row_count']);

                        // construct array for smarty consumption
                        $count = 0;
                        $wl_list_max_entries_per_subpanel = isset($GLOBALS['sugar_config']['wl_list_max_entries_per_subpanel']) ? $GLOBALS['sugar_config']['wl_list_max_entries_per_subpanel'] : 3;

                        foreach ($subpanel_data['list'] as $data)
                        {
                            if ($count == $wl_list_max_entries_per_subpanel)
                                continue;
                            $bean_subpanel_data[$subpanel][$data->id] = $data->name;
                            $count++;
                        }
                        // flag to set to say there is subpanel data
                        if ($available_subpanel_data == false && $count > 0)
                        {
                            $available_subpanel_data = true;
                        }
                    }
                }
            }
            // sets appropriate smarty flags
            $this->ss->assign('AVAILABLE_SUBPANELS', true);
            $this->ss->assign('AVAILABLE_SUBPANEL_DATA', $available_subpanel_data);
        }
        else
        {
            $this->ss->assign('AVAILABLE_SUBPANELS', false);
        }
        // return the subpanel data array
        return $bean_subpanel_data;
    }

    /**
     * Public function that handles the display of the wireless detail view.
     */
    public function display()
    {
        // no record, we should also provide a way out
        if (empty($this->bean->id))
        {
            sugar_die($GLOBALS['app_strings']['ERROR_NO_RECORD']);
        }

        // print the header
        $this->wl_header();
        // print the select list
        $this->wl_select_list();

        $this->ss->assign('fields', $this->get_field_defs());

        // set up Smarty variables 	    
        $this->ss->assign('BEAN_ID', $this->bean->id);
        $this->ss->assign('BEAN_NAME', $this->bean->name);
        $this->ss->assign('MODULE', $this->module);
        $this->ss->assign('MODULE_NAME', translate('LBL_MODULE_NAME', $this->module));
        $this->ss->assign('DETAILS', $this->bean_details('WirelessDetailView'));
        $this->ss->assign('SUBPANEL_DATA', $this->bean_subpanels());
        $this->ss->assign('ENABLE_FORM', $this->checkEditPermissions());
        $this->ss->assign('MODULELIST', $GLOBALS['app_list_strings']['moduleList']);
        // set the maximum entries to display on a subpanel
        if (isset($GLOBALS['sugar_config']['wl_list_max_entries_per_subpanel']))
        {
            $this->ss->assign('MAX_SUBPANEL_DATA', $GLOBALS['sugar_config']['wl_list_max_entries_per_subpanel']);
        }
        else
        {
            $this->ss->assign('MAX_SUBPANEL_DATA', 3);
        }

        // display the detail view
        $this->ss->display('include/SugarWireless/tpls/wirelessdetail.tpl');

        // print the footer
        $this->wl_footer();

        // allow Tracker to pick up this detail view hit
        $this->action = 'DetailView';
    }

}

?>
