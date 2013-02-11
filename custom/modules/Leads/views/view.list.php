<?php

require_once('modules/Leads/views/view.list.php');

class CustomLeadsViewList extends LeadsViewList
{

    /**
     * @see ViewList::preDisplay()
     */
    public function preDisplay()
    {
        parent::preDisplay();
        $this->lv->actionsMenuExtraItems[] = $this->buildMyMenuItem();
    }

    /**
     * @return string HTML
     */
    protected function buildMyMenuItem()
    {
        global $app_strings;
        return <<<EOHTML
<a class="menuItem" style="width: 150px;" href="#" onmouseover='hiliteItem(this,"yes");'
onmouseout='unhiliteItem(this);'
onclick="sugarListView.get_checks();
if(sugarListView.get_checks_count() &lt; 1) {
alert('{$app_strings['LBL_LISTVIEW_NO_SELECTED']}');
return false;
}
document.MassUpdate.action.value='calculateAgeForLeads';
document.MassUpdate.submit();">Calculate Age</a>
EOHTML;
    }

}

?>
