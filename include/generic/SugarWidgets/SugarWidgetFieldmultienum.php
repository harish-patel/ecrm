<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/

require_once ('include/generic/SugarWidgets/SugarWidgetFieldenum.php');

class SugarWidgetFieldMultiEnum extends SugarWidgetFieldEnum {
	function queryFilternot_one_of(& $layout_def) {
		$arr = array ();
		foreach ($layout_def['input_name0'] as $value) {
			array_push($arr, "'".$GLOBALS['db']->quote($value)."'");
		}
	    $reporter = $this->layout_manager->getAttribute("reporter");

    	$col_name = $this->_get_column_select($layout_def) . " NOT LIKE " ;
    	$arr_count = count($arr);
    	$query = "";
    	foreach($arr as $key=>$val) {
    		$query .= $col_name;
			$value = preg_replace("/^'/", "'%", $val, 1);
			$value = preg_replace("/'$/", "%'", $value, 1);
			$query .= $value;
			if ($key != ($arr_count - 1))
    			$query.= " OR " ;	
    	}
		return '('.$query.')';        
	}
        
    function queryFilterone_of(& $layout_def) {
		$arr = array ();
		foreach ($layout_def['input_name0'] as $value) {
			array_push($arr, "'".$GLOBALS['db']->quote($value)."'");
		}
	    $reporter = $this->layout_manager->getAttribute("reporter");

    	$col_name = $this->_get_column_select($layout_def) . " LIKE " ;
    	$arr_count = count($arr);
    	$query = "";
    	foreach($arr as $key=>$val) {
    		$query .= $col_name;
			$value = preg_replace("/^'/", "'%", $val, 1);
			$value = preg_replace("/'$/", "%'", $value, 1);
			$query .= $value;
			if ($key != ($arr_count - 1))
    			$query.= " OR " ;	
    	}
		return '('.$query.')';        
	}
	
	function queryFilteris(& $layout_def) {
		$input_name0 = $layout_def['input_name0'];
		if (is_array($layout_def['input_name0'])) {
			$input_name0 = $layout_def['input_name0'][0];
		}
		return $this->_get_column_select($layout_def)." like '%".$GLOBALS['db']->quote($input_name0)."%'\n";
	}	
}
?>

