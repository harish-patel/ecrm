<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/



class SugarWidgetFieldDouble extends SugarWidgetFieldInt
{
	function SugarWidgetFieldDouble(&$layout_manager) {
		parent::SugarWidgetFieldInt($layout_manager);
	}	
}

?>
