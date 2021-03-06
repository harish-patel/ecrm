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


if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');



$mod_strings = array (
   'LBL_MODULE_NAME' => 'Целеви клиенти' ,
   'LBL_MODULE_ID' => 'Целеви клиенти' ,
   'LBL_INVITEE' => 'Докладва на' ,
   'LBL_MODULE_TITLE' => 'Целеви клиенти: ' ,
   'LBL_SEARCH_FORM_TITLE' => 'Търсене в модул "Целеви клиенти"' ,
   'LBL_LIST_FORM_TITLE' => 'Целева група' ,
   'LBL_NEW_FORM_TITLE' => 'Въвеждане на целеви клиент' ,
   'LBL_PROSPECT' => 'Target:' ,
   'LBL_BUSINESSCARD' => 'Визитка' ,
   'LBL_LIST_NAME' => 'Име' ,
   'LBL_LIST_LAST_NAME' => 'Фамилия' ,
   'LBL_LIST_PROSPECT_NAME' => 'Име' ,
   'LBL_LIST_TITLE' => 'Заглавие' ,
   'LBL_LIST_EMAIL_ADDRESS' => 'Електронна поща' ,
   'LBL_LIST_OTHER_EMAIL_ADDRESS' => 'Алтернативна електронна поща' ,
   'LBL_LIST_PHONE' => 'Телефон' ,
   'LBL_LIST_PROSPECT_ROLE' => 'Роля' ,
   'LBL_LIST_FIRST_NAME' => 'Име' ,
   'LBL_ASSIGNED_TO_NAME' => 'Отговорник' ,
   'LBL_ASSIGNED_TO_ID' => 'Отговорник:' ,
   'db_last_name' => 'LBL_LIST_LAST_NAME' ,
   'db_first_name' => 'LBL_LIST_FIRST_NAME' ,
   'db_title' => 'LBL_LIST_TITLE' ,
   'db_email1' => 'LBL_LIST_EMAIL_ADDRESS' ,
   'db_email2' => 'LBL_LIST_OTHER_EMAIL_ADDRESS' ,
   'LBL_CAMPAIGN_ID' => 'Кампания' ,
   'LBL_EXISTING_PROSPECT' => 'Използван е вече съществуващ контакт' ,
   'LBL_CREATED_PROSPECT' => 'Въведен е нов контакт' ,
   'LBL_EXISTING_ACCOUNT' => 'Използвана е вече съществуваща организация' ,
   'LBL_CREATED_ACCOUNT' => 'Въведена е нова организация' ,
   'LBL_CREATED_CALL' => 'Планирано е ново обаждане' ,
   'LBL_CREATED_MEETING' => 'Насрочена е нова среща' ,
   'LBL_ADDMORE_BUSINESSCARD' => 'Добави визитка' ,
   'LBL_ADD_BUSINESSCARD' => 'Въвеждане на електронна визитка' ,
   'LBL_NAME' => 'Име:' ,
   'LBL_FULL_NAME' => 'Име' ,
   'LBL_PROSPECT_NAME' => 'Име на целевия клиент:' ,
   'LBL_PROSPECT_INFORMATION' => 'Данни за целевия клиент:' ,
   'LBL_MORE_INFORMATION' => 'Допълнителна информация' ,
   'LBL_FIRST_NAME' => 'Име:' ,
   'LBL_OFFICE_PHONE' => 'Служебен телефон:' ,
   'LBL_ANY_PHONE' => 'Телефон:' ,
   'LBL_PHONE' => 'Телефон:' ,
   'LBL_LAST_NAME' => 'Фамилия:' ,
   'LBL_MOBILE_PHONE' => 'Мобилен номер:' ,
   'LBL_HOME_PHONE' => 'Домашен телефон:' ,
   'LBL_OTHER_PHONE' => 'Алтернативен телефонен номер:' ,
   'LBL_FAX_PHONE' => 'Факс:' ,
   'LBL_PRIMARY_ADDRESS_STREET' => 'Основен адрес: улица' ,
   'LBL_PRIMARY_ADDRESS_CITY' => 'Основен адрес: град' ,
   'LBL_PRIMARY_ADDRESS_COUNTRY' => 'Основен адрес: държава' ,
   'LBL_PRIMARY_ADDRESS_STATE' => 'Основен адрес: област' ,
   'LBL_PRIMARY_ADDRESS_POSTALCODE' => 'Основен адрес: пощенски код' ,
   'LBL_ALT_ADDRESS_STREET' => 'Алтернативен адрес: улица' ,
   'LBL_ALT_ADDRESS_CITY' => 'Алтернативен адрес: град' ,
   'LBL_ALT_ADDRESS_COUNTRY' => 'Алтернативен адрес: държава' ,
   'LBL_ALT_ADDRESS_STATE' => 'Алтернативен адрес: област' ,
   'LBL_ALT_ADDRESS_POSTALCODE' => 'Алтернативен адрес: пощенски код:' ,
   'LBL_TITLE' => 'Длъжност:' ,
   'LBL_DEPARTMENT' => 'Отдел:' ,
   'LBL_BIRTHDATE' => 'Дата на раждане:' ,
   'LBL_EMAIL_ADDRESS' => 'Електронна поща:' ,
   'LBL_OTHER_EMAIL_ADDRESS' => 'Алтернативна електронна поща:' ,
   'LBL_ANY_EMAIL' => 'Електронна поща:' ,
   'LBL_ASSISTANT' => 'Асистент:' ,
   'LBL_ASSISTANT_PHONE' => 'Телефон на асистента:' ,
   'LBL_DO_NOT_CALL' => 'Да не бъде търсен по телефон:' ,
   'LBL_EMAIL_OPT_OUT' => 'Да не се изпраща електронна поща:' ,
   'LBL_PRIMARY_ADDRESS' => 'Основен адрес:' ,
   'LBL_ALTERNATE_ADDRESS' => 'Алтернативен адрес:' ,
   'LBL_ANY_ADDRESS' => 'Адрес:' ,
   'LBL_CITY' => 'Град:' ,
   'LBL_STATE' => 'Област:' ,
   'LBL_POSTAL_CODE' => 'Пощенски код:' ,
   'LBL_COUNTRY' => 'Държава:' ,
   'LBL_DESCRIPTION_INFORMATION' => 'Допълнителна информация' ,
   'LBL_ADDRESS_INFORMATION' => 'Адресна информация' ,
   'LBL_DESCRIPTION' => 'Описание:' ,
   'LBL_PROSPECT_ROLE' => 'Роля:' ,
   'LBL_OPP_NAME' => 'Възможност:' ,
   'LBL_IMPORT_VCARD' => 'Импортиране на електронна визитка' ,
   'LBL_IMPORT_VCARDTEXT' => 'Автоматично създаване на контакт чрез импортиране на електронна визитка от системата.' ,
   'LBL_DUPLICATE' => 'Възможно дублиране на целеви клиенти' ,
   'MSG_SHOW_DUPLICATES' => 'Създаването на този контакт може да доведе до създаване на дублиращ контакт. Можете или да съхраните записа с вече въведените данни, или да изберете Отмени.' ,
   'MSG_DUPLICATE' => 'Създаването на този контакт може да доведе до създаване на дублиращ контакт. Можете или да съхраните записа с вече въведените данни, или да изберете Отмени.' ,
   'LNK_IMPORT_VCARD' => 'Създаване от електронна визитка' ,
   'LNK_NEW_ACCOUNT' => 'Въвеждане на организация' ,
   'LNK_NEW_OPPORTUNITY' => 'Създаване на възможност' ,
   'LNK_NEW_CASE' => 'Въвеждане на казус' ,
   'LNK_NEW_NOTE' => 'Добавяне на бележка или приложение' ,
   'LNK_NEW_CALL' => 'Планиране на обаждане' ,
   'LNK_NEW_EMAIL' => 'Създаване на запис за изпратена поща' ,
   'LNK_NEW_MEETING' => 'Насрочване на среща' ,
   'LNK_NEW_TASK' => 'Добавяне на задача' ,
   'LNK_NEW_APPOINTMENT' => 'Създаване на ангажимент' ,
   'LNK_IMPORT_PROSPECTS' => 'Import Prospects' ,
   'NTC_DELETE_CONFIRMATION' => 'Сигурни ли сте, че желаете да изтриете този запис?' ,
   'NTC_REMOVE_CONFIRMATION' => 'Сигурни ли сте, че желаете да изтриете този контакт от казусa?' ,
   'NTC_REMOVE_DIRECT_REPORT_CONFIRMATION' => 'Сигурни ли сте, че искате да изтриете този запис като direct report?' ,
   'ERR_DELETE_RECORD' => 'Трябва да въведете номер на записа, за да изтриете този контакт.' ,
   'NTC_COPY_PRIMARY_ADDRESS' => 'Копиране данните от основния адрес върху алтернативния адрес' ,
   'NTC_COPY_ALTERNATE_ADDRESS' => 'Копиране данните от алтернативния адрес върху основния адрес' ,
   'LBL_SALUTATION' => 'Поздрав' ,
   'LBL_SAVE_PROSPECT' => 'Запазване на целеви клиент' ,
   'LBL_CREATED_OPPORTUNITY' => 'Въведена е нова възможност' ,
   'NTC_OPPORTUNITY_REQUIRES_ACCOUNT' => 'За да запазите тази възможност е необходимо да посочите организация.n Моля, въведете нова или изберете от вече съществуващи.' ,
   'LNK_SELECT_ACCOUNT' => 'Избери организация' ,
   'LNK_NEW_PROSPECT' => 'Въвеждане на целеви клиент' ,
   'LNK_PROSPECT_LIST' => 'Списък с целеви клиенти' ,
   'LNK_NEW_CAMPAIGN' => 'Създаване на кампания' ,
   'LNK_CAMPAIGN_LIST' => 'Кампании' ,
   'LNK_NEW_PROSPECT_LIST' => 'Създаване на целева група' ,
   'LNK_PROSPECT_LIST_LIST' => 'Целеви групи' ,
   'LNK_IMPORT_PROSPECT' => 'Импортиране на целеви клиенти' ,
   'LBL_SELECT_CHECKED_BUTTON_LABEL' => 'Избери маркираните клиенти' ,
   'LBL_SELECT_CHECKED_BUTTON_TITLE' => 'Избери маркираните клиенти' ,
   'LBL_INVALID_EMAIL' => 'Неработеща електронна поща:' ,
   'LBL_DEFAULT_SUBPANEL_TITLE' => 'Целеви клиенти' ,
   'LBL_PROSPECT_LIST' => 'Целева група' ,
   'LBL_CONVERT_BUTTON_KEY' => 'V' ,
   'LBL_CONVERT_BUTTON_TITLE' => 'Превръщане в потенциален клиент' ,
   'LBL_CONVERT_BUTTON_LABEL' => 'Превръщане в потенциален клиент' ,
   'LBL_CONVERTPROSPECT' => 'Превръщане в потенциален клиент' ,
   'LNK_NEW_CONTACT' => 'Нов контакт' ,
   'LBL_CREATED_CONTACT' => 'Въведен е нов контакт' ,
   'LBL_BACKTO_PROSPECTS' => 'Връщане в модул целеви клиенти' ,
   'LBL_CAMPAIGNS' => 'Кампании' ,
   'LBL_CAMPAIGN_LIST_SUBPANEL_TITLE' => 'Дневник на събития на кампанията' ,
   'LBL_TRACKER_KEY' => 'Код' ,
   'LBL_LEAD_ID' => 'Възможности' ,
   'LBL_CONVERTED_LEAD' => 'Превърнат в потенциален контакт' ,
   'LBL_ACCOUNT_NAME' => 'Oрганизация' ,
   'LBL_EDIT_ACCOUNT_NAME' => 'Организация:' ,
   'LBL_CREATED_USER' => 'Създаден потребител' ,
   'LBL_MODIFIED_USER' => 'Модифициран потребител' ,
   'LBL_CAMPAIGNS_SUBPANEL_TITLE' => 'Кампании' ,
   'LBL_HISTORY_SUBPANEL_TITLE' => 'История',
   );
?>