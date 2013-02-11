<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/


class SugarWidgetFieldFloat extends SugarWidgetFieldInt
{
 function displayList($layout_def)
 {
 	
    $vardef = $this->getVardef($layout_def);

    if ( isset($vardef['precision']) ) {
        $precision = $vardef['precision'];
    } else {
        $precision = null;
    }
	return format_number(parent::displayListPlain($layout_def), $precision, $precision);
 }

 function displayListPlain($layout_def)
 {
     return $this->displayList($layout_def);
 }
 function queryFilterEquals(&$layout_def)
 {	
    return $this->_get_column_select($layout_def)."= ".$GLOBALS['db']->quote(unformat_number($layout_def['input_name0']))."\n";
 }
                                                                                 
 function queryFilterNot_Equals(&$layout_def)
 {
	return $this->_get_column_select($layout_def)."!=".$GLOBALS['db']->quote(unformat_number($layout_def['input_name0']))."\n";
 }
                                                                                 
 function queryFilterGreater(&$layout_def)
 {
    return $this->_get_column_select($layout_def)." > ".$GLOBALS['db']->quote(unformat_number($layout_def['input_name0']))."\n";
 }
                                                                                 
 function queryFilterLess(&$layout_def)
 {
	return $this->_get_column_select($layout_def)." < ".$GLOBALS['db']->quote(unformat_number($layout_def['input_name0']))."\n";
 }

 function queryFilterBetween(&$layout_def)
 {
	return $this->_get_column_select($layout_def)." BETWEEN ".$GLOBALS['db']->quote(unformat_number($layout_def['input_name0'])). " AND " . $GLOBALS['db']->quote(unformat_number($layout_def['input_name1'])) . "\n";
 }


}

?>
