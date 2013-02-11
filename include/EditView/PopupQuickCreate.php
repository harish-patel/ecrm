<?php

if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');
/* * *******************************************************************************
 * ****************************************************************************** */

require_once('include/EditView/SubpanelQuickCreate.php');

class PopupQuickCreate extends SubpanelQuickCreate
{

    function PopupQuickCreate($module, $view = 'QuickCreate')
    {
        $this->defaultProcess = false;
        parent::SubpanelQuickCreate($module, $view, true);
        $this->ev->defs['templateMeta']['form']['buttons'] = array('POPUPSAVE', 'POPUPCANCEL');
    }

    function process($module)
    {
        $form_name = 'form_QuickCreate_' . $module;
        $this->ev->formName = $form_name;
        $this->ev->process(true, $form_name);
        return $this->ev->display(false, true);
    }

}

?>
