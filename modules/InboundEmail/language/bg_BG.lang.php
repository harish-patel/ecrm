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



















$mod_strings = array (
  'LBL_ALLOW_OUTBOUND_GROUP_USAGE' => 'Потребителите могат да изпращат електронни писма от името и през адреса на груповата пощенска кутия',
  'LBL_ALLOW_OUTBOUND_GROUP_USAGE_DESC' => 'Когато опцията е маркирана, потребителите с достъп до груповата пощенска кутия имат опцията да изберат името и адреса в нея като свои данни при изпращане на електронни писма.',
  'LBL_RE' => 'RE:',
  'LBL_AUTOREPLY_HELP' => 'Маркирайте шаблон, който да бъде автоматично изпращан като уведомление при получаване на електронно писмо.',
  'LBL_CASE_MACRO' => 'Case Macro',
  'LBL_CERT_DESC' => 'Force validation of the mail server\'s Security Certificate - do not use if self-signing.',
  'LBL_SUBSCRIBE_FOLDERS' => 'Subscribe Folders',
  'LBL_EMAIL_BOUNCE_OPTIONS' => 'Опции за обработка на грешки',
  'LBL_FIND_OPTIMUM_KEY' => 'f',
  'LBL_FORCE_DESC' => 'Some IMAP/POP3 servers require special switches. Check to force a negative switch when connecting (i.e., /notls)',
  'LBL_FORCE' => 'Force Negative',
  'LBL_GROUP_QUEUE' => 'Assign To Group',
  'LBL_DISTRIBUTION_METHOD' => 'Метод на дистрибутиране',
  'LBL_CREATE_CASE_REPLY_TEMPLATE_HELP' => 'Изберете шаблон, който да бъде изпращан в отговор на създаден казус. Отговорът съдържа номера на казуса от полето Относно, който кореспондира с Case Macro настройките. This response is only sent when the first email is received from the recipient.',
  'LBL_GET_TRASH_FOLDER' => 'Get Trash Folder',
  'LBL_GET_SENT_FOLDER' => 'Get Sent Folder',
  'LBL_PERSONAL_MODULE_NAME' => 'Персонална пощенска кутия',
  'LBL_CREATE_CASE' => 'Създаване на казус при получаване на писмо',
  'LBL_CREATE_CASE_HELP' => 'Ако опцията е маркирана, при получаване на писмо в груповата пощенска кутия, казус ще бъде автоматично създаван в SugarCRM.',
  'LBL_BOUNCE_MODULE_NAME' => 'Пощенска кутия за обработка на грешки',
  'LBL_NONE' => 'None',
  'LBL_GETTING_FOLDERS_LIST' => 'Getting Folders List',
  'LBL_SELECT_SUBSCRIBED_FOLDERS' => 'Select Subscribed Folder(s)',
  'LBL_SELECT_TRASH_FOLDERS' => 'Select Trash Folder',
  'LBL_SELECT_SENT_FOLDERS' => 'Select Sent Folder',
  'LBL_SAME_AS_ABOVE' => 'Using From Name/Address',
  'LBL_TEST_BUTTON_KEY' => 't',
  'LBL_WARN_IMAP_TITLE' => 'Inbound Email Disabled',
  'LNK_LIST_CREATE_NEW_BOUNCE' => 'Нова пощенска кутия за обработка на грешки',
  'LNK_LIST_TEST_IMPORT' => 'Test Email Import',
  'LNK_SEED_QUEUES' => 'Seed Queues From Teams',
  'LBL_ENABLE_AUTO_IMPORT' => 'Автоматично импортиране на писмата',
  'LBL_WARNING_CHANGING_AUTO_IMPORT' => 'Предупреждение: Правите изменения в настройките за автоматичен импорт, което може да довете до загуба на данни.',
  'LBL_WARNING_CHANGING_AUTO_IMPORT_WITH_CREATE_CASE' => 'Предупреждение: Автоматичният импорт трябва да бъде разрешен когато създавате казуси в следствие на получено писмо.',
  'LBL_ASSIGN_TEAM' => 'Възлагане на екип',
  'ERR_BAD_LOGIN_PASSWORD' => 'Грешно потребителско име или парола',
  'ERR_BODY_TOO_LONG' => 'rBody text too long to capture FULL email.  Trimmed.',
  'ERR_INI_ZLIB' => 'Проблем при временно изключване на Zlib компресиране.  Проверката на настройките може да се окаже неуспешна.',
  'ERR_MAILBOX_FAIL' => 'Грешка при изтегляне на информация от пощенските кутии.',
  'ERR_NO_IMAP' => 'Не са намерени IMAP библиотеки.  Моля, елиминирайте проблема преди да продължите с конфигурацията на Входяща поща',
  'ERR_NO_OPTS_SAVED' => 'Не бяха определени оптимални настройки за входяща поща.  Моля, проверете съответните настройки',
  'ERR_TEST_MAILBOX' => 'Моля, проверете настройките и опитайте отново.',
  'LBL_APPLY_OPTIMUMS' => 'Определяне на оптимални настройки',
  'LBL_ASSIGN_TO_USER' => 'Отговорник',
  'LBL_AUTOREPLY_OPTIONS' => 'Опции за автоматичен отговор',
  'LBL_AUTOREPLY' => 'Шаблон за автоматичен отговор',
  'LBL_BASIC' => 'Базови настройки',
  'LBL_CASE_MACRO_DESC' => 'Задайте macro, които ще бъдат анализирани и използвани за свързване на имейли внесени по делото',
  'LBL_CASE_MACRO_DESC2' => 'Задаване на тази стойност за всички, без <b>"%1"</b>.',
  'LBL_CERT' => 'Валидиране на сертификата',
  'LBL_CLOSE_POPUP' => 'Затвори прозореца',
  'LBL_CREATE_NEW_GROUP' => '-Създаване на групова папка при запазване--',
  'LBL_CREATE_TEMPLATE' => 'Създай',
  'LBL_DEFAULT_FROM_ADDR' => 'По подразбиране: ',
  'LBL_DEFAULT_FROM_NAME' => 'По подразбиране: ',
  'LBL_DELETE_SEEN' => 'Изтриване на прочетени писма след импортиране',
  'LBL_EDIT_TEMPLATE' => 'Редактиране',
  'LBL_EMAIL_OPTIONS' => 'Опции за обработка на електронните писма',
  'LBL_FILTER_DOMAIN_DESC' => 'Да не се изпращат автоматични отговори към този домейн.',
  'LBL_ASSIGN_TO_GROUP_FOLDER_DESC' => 'Когато опцията е маркирана, получените електронни писма в групова пощенска кутия ще бъдат автоматично импортирани в системата.',
  'LBL_POSSIBLE_ACTION_DESC' => 'За създаване на възможност, груповите папки трябва да бъдат подбрани',
  'LBL_FILTER_DOMAIN' => 'Да не се изпраща автоматичен отговор до този домейн',
  'LBL_FIND_OPTIMUM_MSG' => '<br>Определяне на оптимални настройки за свързване.',
  'LBL_FIND_OPTIMUM_TITLE' => 'Определяне на оптимална конфигурация',
  'LBL_FIND_SSL_WARN' => '<br>Тестването на SSL изисква време.  Моля, изчакайте.<br>',
  'LBL_FOUND_MAILBOXES' => 'Бяха намерени следните пощенски кутии.<br>За избор, натиснете върху кутията:',
  'LBL_FOUND_OPTIMUM_MSG' => '<br>Намерени са оптимални настройки.  За задаване на настройките за пощенската Ви кутия , натиснете бутона долу.',
  'LBL_FROM_ADDR' => 'Адрес на подателя',
  'LBL_FROM_NAME_ADDR' => 'Reply Name/Email',
  'LBL_FROM_NAME' => 'Име на подателя',
  'LBL_HOME' => 'Начало',
  'LBL_LIST_MAILBOX_TYPE' => 'Пощенска кутия за',
  'LBL_LIST_NAME' => 'Име:',
  'LBL_LIST_GLOBAL_PERSONAL' => 'Тип',
  'LBL_LIST_SERVER_URL' => 'Сървър за електронна поща:',
  'LBL_LIST_STATUS' => 'Статус',
  'LBL_LOGIN' => 'Потребител',
  'LBL_MAILBOX_DEFAULT' => 'Входящи',
  'LBL_MAILBOX_SSL_DESC' => 'Използване на SSL при свързване. If this does not work, check that your PHP installation included "--with-imap-ssl" in the configuration.',
  'LBL_MAILBOX_SSL' => 'Използване на SSL',
  'LBL_MAILBOX_TYPE' => 'Възможни действия',
  'LBL_CREATE_CASE_REPLY_TEMPLATE' => 'Шаблон за автоматичен отговор при създаване на казус',
  'LBL_MAILBOX' => 'Папка с получени съобщения',
  'LBL_TRASH_FOLDER' => 'Папка за изтрити съобщения',
  'LBL_SENT_FOLDER' => 'Папка за изпратени съобщения',
  'LBL_SELECT' => 'Избери',
  'LBL_MARK_READ_DESC' => 'Маркиране на писмата като прочетени на пощенския сървър при импортиране; не се изтриват от сървъра.',
  'LBL_MARK_READ_NO' => 'Маркиране на писмата като изтрити след импортиране',
  'LBL_MARK_READ_YES' => 'Запазване на писмата на сървъра след импортиране',
  'LBL_MARK_READ' => 'Запазване на писмата на сървъра',
  'LBL_MAX_AUTO_REPLIES' => 'Брой автоматични отговори',
  'LBL_MAX_AUTO_REPLIES_DESC' => 'Задаване на максимален брой автоматични отговори за изпращане в рамките на 24 часа.',
  'LBL_MODULE_NAME' => 'Входяща поща',
  'LBL_MODULE_TITLE' => 'Входяща поща',
  'LBL_NAME' => 'Име',
  'LBL_NO_OPTIMUMS' => 'Не са намерени оптимални настройки. Моля, проверете настройките и опитайте отново.',
  'LBL_ONLY_SINCE_DESC' => 'При използване на POP3, PHP не разполага с опция за филтриране на нови/непрочетени съобщения.  Тази функция позволява проверка само на съобщения, получени СЛЕД последната проверка на пощенската кутия.  Това ще подобри функционирането на системата, в случай че сървърът за електронна поща не поддържа IMAP.',
  'LBL_ONLY_SINCE_NO' => 'Не. Проверка за всички налични писма на пощенския сървър.',
  'LBL_ONLY_SINCE_YES' => 'Да.',
  'LBL_ONLY_SINCE' => 'Само нови съобщения:',
  'LBL_OUTBOUND_SERVER' => 'Сървър за изходяща поща',
  'LBL_PASSWORD_CHECK' => 'Проверка на паролата',
  'LBL_PASSWORD' => 'Парола',
  'LBL_POP3_SUCCESS' => 'POP3 проверка е премината успешно.',
  'LBL_POPUP_FAILURE' => 'Свързването е неуспешно. Грешката е описана долу.',
  'LBL_POPUP_SUCCESS' => 'Успешна проверка на настройките.  Настройките Ви са коректни.',
  'LBL_POPUP_TITLE' => 'Проверка на настройките',
  'LBL_DELETED_FOLDERS_LIST' => 'Следната(ите) папка(и) %s не съществуват или са били изтрити от сървъра',
  'LBL_PORT' => 'Порт на сървъра',
  'LBL_QUEUE' => 'Mailbox Queue',
  'LBL_REPLY_NAME_ADDR' => 'Име и адрес за отговор',
  'LBL_REPLY_TO_NAME' => 'Отговор до',
  'LBL_REPLY_TO_ADDR' => 'Адрес за отговор',
  'LBL_SAVE_RAW' => 'Запишете източника',
  'LBL_SAVE_RAW_DESC_1' => 'Изберете "Да" ако искате да се запазва съдържанието/raw source/ на всяко импортирано електронно писмо.',
  'LBL_SAVE_RAW_DESC_2' => 'Големи по размер прикачени файлове могат да създадат проблеми при рестриктивна или неправилна конфигурация на базата данни.',
  'LBL_SERVER_OPTIONS' => 'Допълнителни настройки',
  'LBL_SERVER_TYPE' => 'Протокол за получаване',
  'LBL_SERVER_URL' => 'Сървър за електронна поща',
  'LBL_SSL_DESC' => 'Ако сървърът за електронна поща поддържа SSL, маркирането на тази опция ще активира SSL връзка при изтегляне на електронни писма.',
  'LBL_ASSIGN_TO_TEAM_DESC' => 'Избраният екип разполага с права за достъп до профила. If a Group Folder is selected, the team assigned to the Group Folder overrides the selected team.',
  'LBL_SSL' => 'Използване на SSL',
  'LBL_STATUS' => 'Статус',
  'LBL_SYSTEM_DEFAULT' => 'По подразбиране',
  'LBL_TEST_BUTTON_TITLE' => 'Проверка [Alt+T]',
  'LBL_TEST_SETTINGS' => 'Проверка на настройките',
  'LBL_TEST_SUCCESSFUL' => 'Връзката е осъществена успешно.',
  'LBL_TEST_WAIT_MESSAGE' => 'Моля, изчакайте...',
  'LBL_TLS_DESC' => 'Използване на протокола TLS при свързване със сървъра за електронна поща - използвайте тази опция само в случй, че сървърът поддържа този протокол.',
  'LBL_TLS' => 'Използване на TLS',
  'LBL_WARN_IMAP' => 'Внимание:',
  'LBL_WARN_NO_IMAP' => 'Модулът за Входяща електронна поща <b>не може</b> да функционира без IMAP бибилиотеките да са компилирaни и разрешени в PHP дистрибуцията. Моля свържете се с администратора за разрешаване на проблема.',
  'LNK_CREATE_GROUP' => 'Създаване на нова група',
  'LNK_LIST_CREATE_NEW_GROUP' => 'Нова групова пощенска кутия',
  'LNK_LIST_MAILBOXES' => 'Всички пощенски кутии',
  'LNK_LIST_QUEUES' => 'Всички опашки за писма',
  'LNK_LIST_SCHEDULER' => 'Автоматизирани задачи',
  'LNK_NEW_QUEUES' => 'Създаване на нова опашка за писма',
  'LBL_IS_PERSONAL' => 'Персонална пощенска кутия',
  'LBL_GROUPFOLDER_ID' => 'Групова папка',
  'LBL_ASSIGN_TO_GROUP_FOLDER' => 'Прехвърли в групова папка',
  'LBL_STATUS_ACTIVE' => 'Активен',
  'LBL_STATUS_INACTIVE' => 'Неактивен',
  'LBL_IS_GROUP' => 'група',
);

