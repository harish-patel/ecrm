<?php
// created: 2013-02-05 14:58:48
$layout_defs["ed_Department"]["subpanel_setup"]["ed_department_ed_employee"] = array (
  'order' => 100,
  'module' => 'ed_Employee',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_ED_DEPARTMENT_ED_EMPLOYEE_FROM_ED_EMPLOYEE_TITLE',
  'get_subpanel_data' => 'ed_department_ed_employee',
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
