<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/


require_once('include/generic/SugarWidgets/SugarWidgetSubPanelTopButton.php');

class SugarWidgetSubPanelEditProjectTasksButton extends SugarWidgetSubPanelTopButton
{

	//widget_data is the collection of attributes assoicated with the button in the layout_defs file.
	function display(&$widget_data)
	{
		global $mod_strings;

		$title = $mod_strings['LBL_VIEW_GANTT_TITLE'];
		$value = $mod_strings['LBL_VIEW_GANTT_TITLE'];
		$module_name = 'Project';
		$id = $widget_data['focus']->id;

		return '<form action="index.php" method="Post">'
			. '<input type="hidden" name="module" value="Project"> '
			. '<input type="hidden" name="action" value="EditGridView"> '
			. '<input type="hidden" name="return_module" value="Project" /> '
			. '<input type="hidden" name="return_action" value="DetailView" /> '
			. '<input type="hidden" name="project_id" value="' .$id . '" /> '
			. '<input type="hidden" name="return_id" value="' .$id . '" /> '
			. '<input type="hidden" name="record" value="' . $id .'" /> '
			. '<input type="submit" name="EditProjectTasks" ' 
			. ' class="button"'
			. ' title="' . $title . '"'
			. ' value="' . $value . '" />'
			. '</form>';
	}
}
?>
