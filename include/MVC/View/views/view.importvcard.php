<?php

if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');
/* * *******************************************************************************
 * ****************************************************************************** */

/* * *******************************************************************************

 * Description:  TODO: To be written.
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 * ****************************************************************************** */

require_once('include/vCard.php');

class ViewImportvcard extends SugarView
{

    var $type = 'detail';

    public function __construct()
    {
        parent::SugarView();
    }

    /**
     * @see SugarView::display()
     */
    public function display()
    {
        global $mod_strings, $app_strings, $app_list_strings;

        $this->ss->assign("ERROR_TEXT", $app_strings['LBL_EMPTY_VCARD']);
        $this->ss->assign("HEADER", $app_strings['LBL_IMPORT_VCARD']);
        $this->ss->assign("MODULE", $_REQUEST['module']);
        $params = array();
        $params[] = "<a href='index.php?module={$_REQUEST['module']}&action=index'>{$mod_strings['LBL_MODULE_NAME']}</a>";
        $params[] = $app_strings['LBL_IMPORT_VCARD_BUTTON_LABEL'];
        echo getClassicModuleTitle($mod_strings['LBL_MODULE_NAME'], $params, true);


        if (file_exists('custom/include/MVC/View/tpls/Importvcard.tpl'))
            $this->ss->display('custom/include/MVC/View/tpls/Importvcard.tpl');
        else
            $this->ss->display('include/MVC/View/tpls/Importvcard.tpl');
    }

}

?>
