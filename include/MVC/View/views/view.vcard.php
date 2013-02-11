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

class ViewVcard extends SugarView
{

    public $type = 'detail';

    /**
     * @see SugarView::display()
     */
    public function display()
    {
        $vcard = new vCard();
        $vcard->loadContact($this->bean->id, $this->module);
        $vcard->saveVCard();
    }

}

?>
