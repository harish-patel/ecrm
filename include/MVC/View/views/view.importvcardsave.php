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

class ViewImportvcardsave extends SugarView
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
        if (isset($_FILES['vcard']['tmp_name']) && isset($_FILES['vcard']['size']) > 0)
        {
            $vcard = new vCard();
            $record = $vcard->importVCard($_FILES['vcard']['tmp_name'], $_REQUEST['module']);
            SugarApplication::redirect("index.php?action=DetailView&module={$_REQUEST['module']}&record=$record");
        }
        else
            SugarApplication::redirect("index.php?action=Importvcard&module={$_REQUEST['module']}");
    }

}

?>
