<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/


require_once('include/generic/SugarWidgets/SugarWidgetFieldenum.php');
class SugarWidgetFieldparent_type extends SugarWidgetFieldEnum
{
    function SugarWidgetFieldparent_type(&$layout_manager) {
        parent::SugarWidgetFieldEnum($layout_manager);
        $this->reporter = $this->layout_manager->getAttribute('reporter');  
    }
   
    function displayListPlain($layout_def) {
        $value= $this->_get_list_value($layout_def);
        if (isset($layout_def['widget_type']) && $layout_def['widget_type'] =='checkbox') {
            if ($value != '' &&  ($value == 'on' || intval($value) == 1 || $value == 'yes'))  
            {
                return "<input name='checkbox_display' class='checkbox' type='checkbox' disabled='true' checked>";
            }
            return "<input name='checkbox_display' class='checkbox' type='checkbox' disabled='true'>";
        }
        return $value;
    }    
}

?>
