<?php
// created: 2013-02-05 14:58:49
$dictionary["ed_employee_ed_department"] = array (
  'true_relationship_type' => 'many-to-many',
  'relationships' => 
  array (
    'ed_employee_ed_department' => 
    array (
      'lhs_module' => 'ed_Employee',
      'lhs_table' => 'ed_employee',
      'lhs_key' => 'id',
      'rhs_module' => 'ed_Department',
      'rhs_table' => 'ed_department',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'ed_employeed_department_c',
      'join_key_lhs' => 'ed_employe5b04mployee_ida',
      'join_key_rhs' => 'ed_employebd1eartment_idb',
    ),
  ),
  'table' => 'ed_employeed_department_c',
  'fields' => 
  array (
    0 => 
    array (
      'name' => 'id',
      'type' => 'varchar',
      'len' => 36,
    ),
    1 => 
    array (
      'name' => 'date_modified',
      'type' => 'datetime',
    ),
    2 => 
    array (
      'name' => 'deleted',
      'type' => 'bool',
      'len' => '1',
      'default' => '0',
      'required' => true,
    ),
    3 => 
    array (
      'name' => 'ed_employe5b04mployee_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'ed_employebd1eartment_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'ed_employee_ed_departmentspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'ed_employee_ed_department_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'ed_employe5b04mployee_ida',
        1 => 'ed_employebd1eartment_idb',
      ),
    ),
  ),
);
?>
