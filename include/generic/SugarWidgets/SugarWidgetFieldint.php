<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/



class SugarWidgetFieldInt extends SugarWidgetReportField
{
 function displayList($layout_def)
 {

 	return $this->displayListPlain($layout_def);
 }

 function queryFilterEquals(&$layout_def)
 {
                return $this->_get_column_select($layout_def)."= '".$GLOBALS['db']->quote($layout_def['input_name0'])."'\n";
 }

 function queryFilterNot_Equals(&$layout_def)
 {
                return $this->_get_column_select($layout_def)."!='".$GLOBALS['db']->quote($layout_def['input_name0'])."'\n";
 }

 function queryFilterGreater(&$layout_def)
 {
                return $this->_get_column_select($layout_def)." > '".$GLOBALS['db']->quote($layout_def['input_name0'])."'\n";
 }

 function queryFilterLess(&$layout_def)
 {
                return $this->_get_column_select($layout_def)." < '".$GLOBALS['db']->quote($layout_def['input_name0'])."'\n";
 }

 function queryFilterBetween(&$layout_def)
 {
 	             return $this->_get_column_select($layout_def)." BETWEEN '".$GLOBALS['db']->quote($layout_def['input_name0']). "' AND '" . $GLOBALS['db']->quote($layout_def['input_name1']) . "'\n";
 }

 function queryFilterStarts_With(&$layout_def)
 {
 	return $this->queryFilterEquals($layout_def);
 }

 function displayInput(&$layout_def)
 {
 	 return '<input type="text" size="20" value="' . $layout_def['input_name0'] . '" name="' . $layout_def['name'] . '">';

 }

}

?>
