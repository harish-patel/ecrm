<?php

if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');
/* * *******************************************************************************
 * ****************************************************************************** */

require_once('include/EditView/EditView2.php');

class SubpanelQuickCreate
{

    var $defaultProcess = true;

    function SubpanelQuickCreate($module, $view = 'QuickCreate', $proccessOverride = false)
    {


        // locate the best viewdefs to use: 1. custom/module/quickcreatedefs.php 2. module/quickcreatedefs.php 3. custom/module/editviewdefs.php 4. module/editviewdefs.php
        $base = 'modules/' . $module . '/metadata/';
        $source = 'custom/' . $base . strtolower($view) . 'defs.php';
        if (!file_exists($source))
        {
            $source = $base . strtolower($view) . 'defs.php';
            if (!file_exists($source))
            {
                //if our view does not exist default to EditView
                $view = 'EditView';
                $source = 'custom/' . $base . 'editviewdefs.php';
                if (!file_exists($source))
                {
                    $source = $base . 'editviewdefs.php';
                }
            }
        }

        $this->ev = new EditView();
        $this->ev->view = $view;
        $this->ev->ss = new Sugar_Smarty();
        //$_REQUEST['return_action'] = 'SubPanelViewer';
        $this->ev->setup($module, null, $source);

        $this->ev->defs['templateMeta']['form']['headerTpl'] = 'include/EditView/header.tpl';
        $this->ev->defs['templateMeta']['form']['footerTpl'] = 'include/EditView/footer.tpl';
        $this->ev->defs['templateMeta']['form']['buttons'] = array('SUBPANELSAVE', 'SUBPANELCANCEL', 'SUBPANELFULLFORM');



        $viewEditSource = 'modules/' . $module . '/views/view.edit.php';
        if (file_exists('custom/' . $viewEditSource))
        {
            $viewEditSource = 'custom/' . $viewEditSource;
        }

        if (file_exists($viewEditSource) && !$proccessOverride)
        {
            include($viewEditSource);
            $c = $module . 'ViewEdit';

            if (class_exists($c))
            {
                $view = new $c;
                if ($view->useForSubpanel)
                {
                    $this->defaultProcess = false;

                    //Check if we shold use the module's QuickCreate.tpl file
                    if ($view->useModuleQuickCreateTemplate && file_exists('modules/' . $module . '/tpls/QuickCreate.tpl'))
                    {
                        $this->ev->defs['templateMeta']['form']['headerTpl'] = 'modules/' . $module . '/tpls/QuickCreate.tpl';
                    }

                    $view->ev = & $this->ev;
                    $view->ss = & $this->ev->ss;
                    $class = $GLOBALS['beanList'][$module];
                    if (!empty($GLOBALS['beanFiles'][$class]))
                    {
                        require_once($GLOBALS['beanFiles'][$class]);
                        $bean = new $class();
                        $view->bean = $bean;
                    }
                    $this->ev->formName = 'form_Subpanel' . $this->ev->view . '_' . $module;
                    $view->showTitle = false; // Do not show title since this is for subpanel
                    $view->display();
                }
            }
        } //if

        if ($this->defaultProcess && !$proccessOverride)
        {
            $this->process($module);
        }
    }

    function process($module)
    {
        $form_name = 'form_Subpanel' . $this->ev->view . '_' . $module;
        $this->ev->formName = $form_name;
        $this->ev->process(true, $form_name);
        echo $this->ev->display(false, true);
    }

}

?>
