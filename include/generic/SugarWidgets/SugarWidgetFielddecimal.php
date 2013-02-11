<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   * by SugarCRM are Copyright (C) 2004-2011 SugarCRM, Inc.; All Rights Reserved.
 ********************************************************************************/

require_once('include/generic/SugarWidgets/SugarWidgetFieldint.php');

class SugarWidgetFieldDecimal extends SugarWidgetFieldInt
{
 function displayListPlain($layout_def)
 {
 	
     return format_number(parent::displayListPlain($layout_def), 2, 2);	
 }
}

?>
