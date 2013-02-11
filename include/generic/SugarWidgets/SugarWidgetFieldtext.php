<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/


class SugarWidgetFieldText extends SugarWidgetFieldVarchar
{
    function SugarWidgetFieldText(&$layout_manager) {
        parent::SugarWidgetFieldVarchar($layout_manager);
        $this->reporter = $this->layout_manager->getAttribute('reporter');  
    }

    function queryFilterEquals(&$layout_def) {
        if( $this->reporter->db->dbType == 'mysql') {
            return parent::queryFilterEquals($layout_def);
        } 
        elseif( $this->reporter->db->dbType == 'mssql') {
            //return parent::queryFilterEquals($layout_def);
			return $this->_get_column_select($layout_def)." like '".$GLOBALS['db']->quote($layout_def['input_name0'])."'\n";
            
        }
    }

    function queryFilterNot_Equals_Str(&$layout_def) {
        if( $this->reporter->db->dbType == 'mysql') {
            return parent::queryFilterNot_Equals_Str($layout_def);
        } 
        elseif( $this->reporter->db->dbType == 'mssql') {
            return parent::queryFilterNot_Equals_Str($layout_def);
        }
    }
    
    function queryFilterNot_Empty(&$layout_def) {
        if( $this->reporter->db->dbType == 'mysql') {
            return parent::queryFilterNot_Empty($layout_def);
        } 
        elseif( $this->reporter->db->dbType == 'mssql') {
            return '( '.$this->_get_column_select($layout_def).' IS NOT NULL OR DATALENGTH('.$this->_get_column_select($layout_def).") > 0)\n";
        }
    }
    
    function queryFilterEmpty(&$layout_def) {
        if( $this->reporter->db->dbType == 'mysql') {
            return parent::queryFilterEmpty($layout_def);
        } 
        elseif( $this->reporter->db->dbType == 'mssql') {
            return '( '.$this->_get_column_select($layout_def).' IS NULL OR DATALENGTH('.$this->_get_column_select($layout_def).") = 0)\n";
        }

    }
}

?>
