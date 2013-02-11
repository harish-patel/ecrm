<?php
// created: 2013-02-05 14:58:49
$layout_defs["ed_Employee"]["subpanel_setup"]["ed_employee_ed_department"] = array (
  'order' => 100,
  'module' => 'ed_Department',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_ED_EMPLOYEE_ED_DEPARTMENT_FROM_ED_DEPARTMENT_TITLE',
  'get_subpanel_data' => 'ed_employee_ed_department',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);
?>
