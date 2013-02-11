<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');


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

	

$mod_strings = array (
  'LBL_DEPENDENT' => 'Dependent',
  'LBL_VISIBLE_IF' => 'Visible If',
  'LBL_ENFORCED' => 'Enforced',
  'COLUMN_TITLE_EXT1' => 'Extra Meta Field 1',
  'COLUMN_TITLE_EXT2' => 'Extra Meta Field 2',
  'COLUMN_TITLE_EXT3' => 'Extra Meta Field 3',
  'COLUMN_TITLE_HTML_CONTENT' => 'HTML',
  'COLUMN_TITLE_ENABLE_RANGE_SEARCH' => 'Enable Range Search',
  'LNK_NEW_CALL' => 'Планиране на обаждане',
  'LNK_NEW_MEETING' => 'Насрочване на среща',
  'LNK_NEW_TASK' => 'Добавяне на задача',
  'LNK_NEW_NOTE' => 'Добавяне на бележка или приложение',
  'LNK_NEW_EMAIL' => 'Създаване на запис за изпратена поща',
  'LNK_CALL_LIST' => 'Обаждания',
  'LNK_MEETING_LIST' => 'Срещи',
  'LNK_TASK_LIST' => 'Задачи',
  'LNK_NOTE_LIST' => 'Бележки',
  'LNK_EMAIL_LIST' => 'Електронна поща',
  'LBL_ADD_FIELD' => 'Добави поле',
  'LBL_MODULE_SELECT' => 'Редактиране на модули',
  'LBL_SEARCH_FORM_TITLE' => 'Търсене в модули',
  'COLUMN_TITLE_NAME' => 'Име на полето',
  'COLUMN_TITLE_DISPLAY_LABEL' => 'Етикет',
  'COLUMN_TITLE_LABEL_VALUE' => 'Стойност на етикета',
  'COLUMN_TITLE_LABEL' => 'Системен етикет',
  'COLUMN_TITLE_DATA_TYPE' => 'Тип данни',
  'COLUMN_TITLE_MAX_SIZE' => 'Максимален размер',
  'COLUMN_TITLE_HELP_TEXT' => 'Помощен текст',
  'COLUMN_TITLE_COMMENT_TEXT' => 'Текст',
  'COLUMN_TITLE_REQUIRED_OPTION' => 'Задължително поле',
  'COLUMN_TITLE_DEFAULT_VALUE' => 'Стойност по подразбиране',
  'COLUMN_TITLE_DEFAULT_EMAIL' => 'Стойност по подразбиране',
  'COLUMN_TITLE_FRAME_HEIGHT' => 'Моят портал',
  'COLUMN_TITLE_URL' => 'URL',
  'COLUMN_TITLE_AUDIT' => 'Запис в базата при промяна на стойностите?',
  'COLUMN_TITLE_REPORTABLE' => 'С възможност за справка:',
  'COLUMN_TITLE_MIN_VALUE' => 'Минимален размер',
  'COLUMN_TITLE_MAX_VALUE' => 'Максимален размер',
  'COLUMN_TITLE_LABEL_ROWS' => 'Редове',
  'COLUMN_TITLE_LABEL_COLS' => 'Колони',
  'COLUMN_TITLE_DISPLAYED_ITEM_COUNT' => 'none',
  'COLUMN_TITLE_AUTOINC_NEXT' => 'Автоматично нарастване на следващата стойност',
  'COLUMN_DISABLE_NUMBER_FORMAT' => 'Забранен формат',
  'LBL_DROP_DOWN_LIST' => 'Списък с падащи менюта',
  'LBL_RADIO_FIELDS' => 'Radio бутон',
  'LBL_MULTI_SELECT_LIST' => 'MultiSelect',
  'COLUMN_TITLE_PRECISION' => 'Точност',
  'MSG_DELETE_CONFIRM' => 'Сигурни ли сте че искате да изтриете иззбраните записи?',
  'POPUP_INSERT_HEADER_TITLE' => 'Добавяне на поле',
  'POPUP_EDIT_HEADER_TITLE' => 'Редактиране',
  'LNK_SELECT_CUSTOM_FIELD' => 'Избор на полета',
  'LNK_REPAIR_CUSTOM_FIELD' => 'Редакция на полета',
  'LBL_MODULE' => 'Модул',
  'COLUMN_TITLE_MASS_UPDATE' => 'Масова актуализация',
  'COLUMN_TITLE_IMPORTABLE' => 'С възможност за импортиране:',
  'COLUMN_TITLE_DUPLICATE_MERGE' => 'Дублирай',
  'LBL_LABEL' => 'Етикет',
  'LBL_DATA_TYPE' => 'Тип данни',
  'LBL_DEFAULT_VALUE' => 'Стойност по подразбиране:',
  'LBL_AUDITED' => 'Запис в базата при промяна на стойностите?',
  'LBL_REPORTABLE' => 'С възможност за импортиране:',
  'ERR_RESERVED_FIELD_NAME' => 'Запази',
  'ERR_SELECT_FIELD_TYPE' => 'Моля, изберете типа на полето',
  'ERR_FIELD_NAME_ALREADY_EXISTS' => 'Вече съществува поле с такова име',
  'LBL_BTN_ADD' => 'Добави',
  'LBL_BTN_EDIT' => 'Редактирай',
  'LBL_GENERATE_URL' => 'URL',
  'LBL_DEPENDENT_CHECKBOX' => 'Зависимост',
  'LBL_DEPENDENT_TRIGGER' => 'Тригер:',
  'LBL_CALCULATED' => 'Изчислено',
  'LBL_FORMULA' => 'Формула',
  'LBL_DYNAMIC_VALUES_CHECKBOX' => 'Зависимост',
  'LBL_BTN_EDIT_VISIBILITY' => 'Редактирай',
  'LBL_LINK_TARGET' => 'Отваряне на връзката в',
  'LBL_IMAGE_WIDTH' => 'Ширина',
  'LBL_IMAGE_HEIGHT' => 'Височина',
  'LBL_IMAGE_BORDER' => 'Граница',
  'COLUMN_TITLE_VALIDATE_US_FORMAT' => 'U.S. формат',
);

