<?php
$module_name='ed_Employee';
$subpanel_layout = array (
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopCreateButton',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'popup_module' => 'People',
    ),
  ),
  'where' => '',
  'list_fields' => 
  array (
    'date_entered' => 
    array (
      'type' => 'datetime',
      'vname' => 'LBL_DATE_ENTERED',
      'width' => '10%',
      'default' => true,
    ),
    'created_by_name' => 
    array (
      'type' => 'relate',
      'link' => 'created_by_link',
      'vname' => 'LBL_CREATED',
      'width' => '10%',
      'default' => true,
    ),
    'modified_by_name' => 
    array (
      'type' => 'relate',
      'link' => 'modified_user_link',
      'vname' => 'LBL_MODIFIED_NAME',
      'width' => '10%',
      'default' => true,
    ),
    'date_modified' => 
    array (
      'type' => 'datetime',
      'vname' => 'LBL_DATE_MODIFIED',
      'width' => '10%',
      'default' => true,
    ),
    'name' => 
    array (
      'name' => 'name',
      'vname' => 'LBL_LIST_NAME',
      'sort_by' => 'last_name',
      'sort_order' => 'asc',
      'widget_class' => 'SubPanelDetailViewLink',
      'module' => 'Contacts',
      'width' => '40%',
      'default' => true,
    ),
    'email1' => 
    array (
      'name' => 'email1',
      'vname' => 'LBL_LIST_EMAIL',
      'widget_class' => 'SubPanelEmailLink',
      'width' => '35%',
      'default' => true,
    ),
    'phone_work' => 
    array (
      'name' => 'phone_work',
      'vname' => 'LBL_LIST_PHONE',
      'width' => '15%',
      'default' => true,
    ),
    'edit_button' => 
    array (
      'widget_class' => 'SubPanelEditButton',
      'module' => 'Contacts',
      'width' => '5%',
      'default' => true,
    ),
    'remove_button' => 
    array (
      'widget_class' => 'SubPanelRemoveButton',
      'module' => 'Contacts',
      'width' => '5%',
      'default' => true,
    ),
    'first_name' => 
    array (
      'name' => 'first_name',
      'usage' => 'query_only',
    ),
    'last_name' => 
    array (
      'name' => 'last_name',
      'usage' => 'query_only',
    ),
    'salutation' => 
    array (
      'name' => 'salutation',
      'usage' => 'query_only',
    ),
  ),
);