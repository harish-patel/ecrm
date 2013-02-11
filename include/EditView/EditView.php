<?php

if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');
/* * *******************************************************************************
 * ****************************************************************************** */

class EditView
{

    /**
     * smarty object
     * @var object
     */
    var $ss;

    /**
     * location of template to use
     * @var string 
     */
    var $template;

    /**
     * Module to use
     * @var string 
     */
    var $module;

    /**
     * 
     * @param string $module module to use
     * @param string $template template of the form to retreive
     */
    function EditView($module, $template)
    {
        $this->module = $module;
        $this->template = $template;
        $this->ss = new Sugar_Smarty();
    }

    /**
     * Processes / setups the template
     * assigns all things to the template like mod_srings and app_strings
     * 
     */
    function process()
    {
        global $current_language, $app_strings, $sugar_version, $sugar_config, $timedate, $theme;
        ;
        $module_strings = return_module_language($current_language, $this->module);

        $this->ss->assign('SUGAR_VERSION', $sugar_version);
        $this->ss->assign('JS_CUSTOM_VERSION', $sugar_config['js_custom_version']);
        $this->ss->assign('THEME', $theme);
        $this->ss->assign('APP', $app_strings);
        $this->ss->assign('MOD', $module_strings);
    }

    /**
     * Displays the template
     * 
     * @return string HTML of parsed template
     */
    function display()
    {
        return $this->ss->fetch($this->template);
    }

}

?>
