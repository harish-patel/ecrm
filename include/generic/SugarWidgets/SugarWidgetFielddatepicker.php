<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/


require_once('include/generic/SugarWidgets/SugarWidgetFielddatetime.php');

class SugarWidgetFieldDatePicker extends SugarWidgetFieldDateTime 
{
	function displayInput(&$layout_def) 
    {
        global $timedate;
        
        $cal_dateformat = $timedate->get_cal_date_format();
        $LBL_ENTER_DATE = translate('LBL_ENTER_DATE', 'Charts');
        $jscalendarImage = SugarThemeRegistry::current()->getImageURL('jscalendar.gif');
        $value = $timedate->swap_formats($layout_def['input_name0'], $timedate->dbDayFormat, $timedate->get_date_format());
        $str = <<<EOHTML
<input onblur="parseDate(this, '{$cal_dateformat}');" class="text" name="{$layout_def['name']}" size='12' maxlength='10' id='{$layout_def['name']}' value='{$value}'>
<img src="$jscalendarImage" alt="{$LBL_ENTER_DATE}" id="{$layout_def['name']}_trigger" align="absmiddle">
<script type="text/javascript">
Calendar.setup ({
    inputField : "{$layout_def['name']}", ifFormat : "{$cal_dateformat}", showsTime : false, button : "{$layout_def['name']}_trigger", singleClick : true, step : 1, weekNumbers:false
});
</script>
EOHTML;
        
        return $str;
    }
}
?>

