<?php
// created: 2013-02-05 15:28:31
$dictionary["ed_department_ed_employee"] = array (
  'true_relationship_type' => 'many-to-many',
  'relationships' => 
  array (
    'ed_department_ed_employee' => 
    array (
      'lhs_module' => 'ed_Department',
      'lhs_table' => 'ed_department',
      'lhs_key' => 'id',
      'rhs_module' => 'ed_Employee',
      'rhs_table' => 'ed_employee',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'ed_departme_ed_employee_c',
      'join_key_lhs' => 'ed_departmcdfcartment_ida',
      'join_key_rhs' => 'ed_departm2457mployee_idb',
    ),
  ),
  'table' => 'ed_departme_ed_employee_c',
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
      'name' => 'ed_departmcdfcartment_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'ed_departm2457mployee_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'ed_department_ed_employeespk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'ed_department_ed_employee_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'ed_departmcdfcartment_ida',
        1 => 'ed_departm2457mployee_idb',
      ),
    ),
  ),
);
?>
