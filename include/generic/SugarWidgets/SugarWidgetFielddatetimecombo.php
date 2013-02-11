<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
  ********************************************************************************/

require_once('include/generic/SugarWidgets/SugarWidgetFielddatetime.php');


class SugarWidgetFieldDateTimecombo extends SugarWidgetFieldDateTime {
	var $reporter;
	var $assigned_user=null;

    function SugarWidgetFieldDateTimecombo(&$layout_manager) {
        parent::SugarWidgetFieldDateTime($layout_manager);
        $this->reporter = $this->layout_manager->getAttribute('reporter');
    }

	function queryFilterOn(& $layout_def) {
		global $timedate;
		if($this->getAssignedUser()) {
			$ontime = $timedate->handle_offset($layout_def['input_name0'], $timedate->get_db_date_time_format(), false, $this->assigned_user);
		}
		else {
			$ontime = $layout_def['input_name0'];
		}

			return $this->_get_column_select($layout_def)."='".$this->reporter->db->quote($ontime)."' \n";
	}
    function queryFilterBefore(& $layout_def) {
        global $timedate;

        if($this->getAssignedUser()) {
            $begin = $timedate->handle_offset($layout_def['input_name0'], $timedate->get_db_date_time_format(), false, $this->assigned_user);
        }
        else {
            $begin = $layout_def['input_name0'];
        }

            return $this->_get_column_select($layout_def)."<'".$this->reporter->db->quote($begin)."'\n";

    }

    function queryFilterAfter(& $layout_def) {
        global $timedate;

        if($this->getAssignedUser()) {
            $begin = $timedate->handle_offset($layout_def['input_name0'] , $timedate->get_db_date_time_format(), false, $this->assigned_user);
        }
        else {
            $begin = $layout_def['input_name0'];
        }

            return $this->_get_column_select($layout_def).">'".$this->reporter->db->quote($begin)."'\n";
    }
	//TODO:now for date time field , we just search from date start to date end. The time is from 00:00:00 to 23:59:59
	//If there is requirement, we can modify report.js::addFilterInputDatetimesBetween and this function
	function queryFilterBetween_Datetimes(& $layout_def) {
		global $timedate;
		if($this->getAssignedUser()) {
			$begin = $timedate->handle_offset($layout_def['input_name0'], $timedate->get_db_date_time_format(), false, $this->assigned_user);
			$end = $timedate->handle_offset($layout_def['input_name2'], $timedate->get_db_date_time_format(), false, $this->assigned_user);
		}
		else {
			$begin = $layout_def['input_name0'];
			$end = $layout_def['input_name1'];
		}
			return "(".$this->_get_column_select($layout_def).">='".$this->reporter->db->quote($begin)."' AND \n".$this->_get_column_select($layout_def)."<='".$this->reporter->db->quote($end)."')\n";
	}
	
    function queryFilterNot_Equals_str(& $layout_def) {
        global $timedate;

        if($this->getAssignedUser()) {
            $begin = $timedate->handle_offset($layout_def['input_name0'], $timedate->get_db_date_time_format(), false, $this->assigned_user);
            $end = $timedate->handle_offset($layout_def['input_name0'], $timedate->get_db_date_time_format(), false, $this->assigned_user);
        }
        else {
            $begin = $layout_def['input_name0'];
            $end = $layout_def['input_name0'];
        }

        if ($this->reporter->db->dbType == 'oci8') {

        } elseif ($this->reporter->db->dbType == 'mssql'){
            return "(".$this->_get_column_select($layout_def)."<'".$this->reporter->db->quote($begin)."' OR ".$this->_get_column_select($layout_def).">'".$this->reporter->db->quote($end)."')\n";

        }else{
            return "ISNULL(".$this->_get_column_select($layout_def).") OR \n(".$this->_get_column_select($layout_def)."<'".$this->reporter->db->quote($begin)."' OR ".$this->_get_column_select($layout_def).">'".$this->reporter->db->quote($end)."')\n";
        }
    }	
}
