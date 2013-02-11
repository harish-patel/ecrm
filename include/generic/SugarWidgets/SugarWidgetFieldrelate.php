<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/


class SugarWidgetFieldRelate extends SugarWidgetReportField
{
	//for to_pdf/to_csv
	function displayListPlain($layout_def) {
	    $reporter = $this->layout_manager->getAttribute("reporter");
		$field_def = $reporter->all_fields[$layout_def['column_key']];
		$display = strtoupper($field_def['secondary_table'].'_name');
		//#31797  , we should get the table alias in a global registed array:selected_loaded_custom_links
		if(!empty($reporter->selected_loaded_custom_links) && !empty($reporter->selected_loaded_custom_links[$field_def['secondary_table']])){
			$display = strtoupper($reporter->selected_loaded_custom_links[$field_def['secondary_table']]['join_table_alias'].'_name');
		}
		elseif(!empty($reporter->selected_loaded_custom_links) && !empty($reporter->selected_loaded_custom_links[$field_def['secondary_table'].'_'.$field_def['name']])){
			$display = strtoupper($reporter->selected_loaded_custom_links[$field_def['secondary_table'].'_'.$field_def['name']]['join_table_alias'].'_name');
		}		
		$cell = $layout_def['fields'][$display];
		return $cell;
	}
	
    function displayList($layout_def) {
        $reporter = $this->layout_manager->getAttribute("reporter");
        $field_def = $reporter->all_fields[$layout_def['column_key']];
        $display = strtoupper($field_def['secondary_table'].'_name');
		//#31797  , we should get the table alias in a global registed array:selected_loaded_custom_links
		if(!empty($reporter->selected_loaded_custom_links) && !empty($reporter->selected_loaded_custom_links[$field_def['secondary_table']])){
			$display = strtoupper($reporter->selected_loaded_custom_links[$field_def['secondary_table']]['join_table_alias'].'_name');
		}
    	elseif(!empty($reporter->selected_loaded_custom_links) && !empty($reporter->selected_loaded_custom_links[$field_def['secondary_table'].'_'.$field_def['name']])){
			$display = strtoupper($reporter->selected_loaded_custom_links[$field_def['secondary_table'].'_'.$field_def['name']]['join_table_alias'].'_name');
		}		
        $recordField = substr(strtoupper($layout_def['table_alias']).'_'.strtoupper($layout_def['name']),0,28);

        $record = $layout_def['fields'][$recordField];
        $cell = "<a target='_blank' class=\"listViewTdLinkS1\" href=\"index.php?action=DetailView&module=".$field_def['ext2']."&record=$record\">";
        $cell .= $layout_def['fields'][$display];
        $cell .= "</a>";    
        return $cell;
    }
}

?>
