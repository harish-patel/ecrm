<?php

if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');

/* * *******************************************************************************

 * Description:  Defines the English language pack for the base application.
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 * ****************************************************************************** */

class SugarConfig
{

    var $_cached_values = array();

    function getInstance()
    {
        static $instance = null;
        if (is_null($instance))
        {
            $instance = new SugarConfig();
        }
        return $instance;
    }

    function get($key, $default = null)
    {
        if (!isset($this->_cached_values[$key]))
        {
            if (!class_exists('SugarArray', true))
            {
                require 'include/utils/array_utils.php';
            }
            $this->_cached_values[$key] = isset($GLOBALS['sugar_config']) ?
                    SugarArray::staticGet($GLOBALS['sugar_config'], $key, $default) :
                    $default;
        }
        return $this->_cached_values[$key];
    }

    function clearCache($key = null)
    {
        if (is_null($key))
        {
            $this->_cached_values = array();
        }
        else
        {
            unset($this->_cached_values[$key]);
        }
    }

}

