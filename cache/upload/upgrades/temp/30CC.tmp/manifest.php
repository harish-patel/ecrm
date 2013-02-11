    <?php
/*********************************************************************************
 * The contents of this file are subject to the SugarCRM Master Subscription
 * Agreement ("License") which can be viewed at
 * http://www.sugarcrm.com/crm/en/msa/master_subscription_agreement_11_April_2011.pdf
 * By installing or using this file, You have unconditionally agreed to the
 * terms and conditions of the License, and You may not use this file except in
 * compliance with the License.  Under the terms of the license, You shall not,
 * among other things: 1) sublicense, resell, rent, lease, redistribute, assign
 * or otherwise transfer Your rights to the Software, and 2) use the Software
 * for timesharing or service bureau purposes such as hosting the Software for
 * commercial gain and/or for the benefit of a third party.  Use of the Software
 * may be subject to applicable fees and any use of the Software without first
 * paying applicable fees is strictly prohibited.  You do not have the right to
 * remove SugarCRM copyrights from the source code or user interface.
 *
 * All copies of the Covered Code must include on each user interface screen:
 *  (i) the "Powered by SugarCRM" logo and
 *  (ii) the SugarCRM copyright notice
 * in the same form as they appear in the distribution.  See full license for
 * requirements.
 *
 * Your Warranty, Limitations of liability and Indemnity are expressly stated
 * in the License.  Please refer to the License for the specific language
 * governing these rights and limitations under the License.  Portions created
 * by SugarCRM are Copyright (C) 2004-2011 SugarCRM, Inc.; All Rights Reserved.
 ********************************************************************************/


    $manifest = array (
         'acceptable_sugar_versions' => 
          array (
            
          ),
          'acceptable_sugar_flavors' =>
          array(
            'CE', 'PRO','ENT'
          ),
          'readme'=>'',
          'key'=>'ed',
          'author' => 'Vitruvian Technologies Pvt. Ltd.',
          'description' => 'Test module representing the relation ship between employees and the departments to which they belong. ',
          'icon' => '',
          'is_uninstallable' => true,
          'name' => 'empdept',
          'published_date' => '2013-02-05 09:58:29',
          'type' => 'module',
          'version' => '1360058310',
          'remove_tables' => 'prompt',
          );
$installdefs = array (
  'id' => 'empdept',
  'beans' => 
  array (
    0 => 
    array (
      'module' => 'ed_Department',
      'class' => 'ed_Department',
      'path' => 'modules/ed_Department/ed_Department.php',
      'tab' => true,
    ),
    1 => 
    array (
      'module' => 'ed_Employee',
      'class' => 'ed_Employee',
      'path' => 'modules/ed_Employee/ed_Employee.php',
      'tab' => true,
    ),
  ),
  'layoutdefs' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/ed_department_ed_employee_ed_Employee.php',
      'to_module' => 'ed_Employee',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/ed_department_ed_employee_ed_Department.php',
      'to_module' => 'ed_Department',
    ),
  ),
  'relationships' => 
  array (
    0 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/ed_department_ed_employeeMetaData.php',
    ),
  ),
  'image_dir' => '<basepath>/icons',
  'copy' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/modules/ed_Department',
      'to' => 'modules/ed_Department',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/modules/ed_Employee',
      'to' => 'modules/ed_Employee',
    ),
  ),
  'language' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'en_us',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'bg_BG',
    ),
    2 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'cs_CZ',
    ),
    3 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'da_DK',
    ),
    4 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'de_DE',
    ),
    5 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'es_ES',
    ),
    6 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'et_EE',
    ),
    7 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'fr_FR',
    ),
    8 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'he_IL',
    ),
    9 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'hu_HU',
    ),
    10 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'it_it',
    ),
    11 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'lt_LT',
    ),
    12 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'ja_JP',
    ),
    13 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'nb_NO',
    ),
    14 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'nl_NL',
    ),
    15 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'pl_PL',
    ),
    16 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'pt_PT',
    ),
    17 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'ro_RO',
    ),
    18 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'ru_RU',
    ),
    19 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'sv_SE',
    ),
    20 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'tr_TR',
    ),
    21 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Employee.php',
      'to_module' => 'ed_Employee',
      'language' => 'zh_CN',
    ),
    22 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'en_us',
    ),
    23 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'bg_BG',
    ),
    24 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'cs_CZ',
    ),
    25 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'da_DK',
    ),
    26 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'de_DE',
    ),
    27 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'es_ES',
    ),
    28 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'et_EE',
    ),
    29 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'fr_FR',
    ),
    30 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'he_IL',
    ),
    31 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'hu_HU',
    ),
    32 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'it_it',
    ),
    33 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'lt_LT',
    ),
    34 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'ja_JP',
    ),
    35 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'nb_NO',
    ),
    36 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'nl_NL',
    ),
    37 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'pl_PL',
    ),
    38 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'pt_PT',
    ),
    39 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'ro_RO',
    ),
    40 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'ru_RU',
    ),
    41 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'sv_SE',
    ),
    42 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'tr_TR',
    ),
    43 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/ed_Department.php',
      'to_module' => 'ed_Department',
      'language' => 'zh_CN',
    ),
    44 => 
    array (
      'from' => '<basepath>/SugarModules/language/application/en_us.lang.php',
      'to_module' => 'application',
      'language' => 'en_us',
    ),
  ),
  'vardefs' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/ed_department_ed_employee_ed_Employee.php',
      'to_module' => 'ed_Employee',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/ed_department_ed_employee_ed_Department.php',
      'to_module' => 'ed_Department',
    ),
  ),
);