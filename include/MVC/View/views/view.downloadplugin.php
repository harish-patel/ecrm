<?php

if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');
/* * *******************************************************************************
 * ****************************************************************************** */


require_once('include/MVC/View/views/view.ajax.php');

class ViewDownloadplugin extends ViewAjax
{

    /**
     * @see SugarView::display()
     */
    public function display()
    {
        require_once('include/SugarPlugins/SugarPlugins.php');
        $sp = new SugarPlugins();
        $sp->downloadPlugin($_REQUEST['plugin']);
    }

}
