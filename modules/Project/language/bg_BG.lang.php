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
   'LBL_MODULE_NAME' => 'Проекти' ,
   'LBL_MODULE_TITLE' => 'Проекти' ,
   'LBL_SEARCH_FORM_TITLE' => 'Търсене в модул "Проекти"' ,
   'LBL_LIST_FORM_TITLE' => 'Списък с проекти' ,
   'LBL_HISTORY_TITLE' => 'История' ,
   'LBL_ID' => 'Id:' ,
   'LBL_DATE_ENTERED' => 'Създадено на:' ,
   'LBL_DATE_MODIFIED' => 'Последно модифицирано:' ,
   'LBL_ASSIGNED_USER_ID' => 'Отговорник:' ,
   'LBL_ASSIGNED_USER_NAME' => 'Отговорник:' ,
   'LBL_MODIFIED_USER_ID' => 'Модифицирано от:' ,
   'LBL_CREATED_BY' => 'Създадено от:' ,
   'LBL_TEAM_ID' => 'Екип:' ,
   'LBL_NAME' => 'Име:' ,
   'LBL_PDF_PROJECT_NAME' => 'Име на проекта:' ,
   'LBL_DESCRIPTION' => 'Описание:' ,
   'LBL_DELETED' => 'Изтрити:' ,
   'LBL_DATE' => 'Дата' ,
   'LBL_DATE_START' => 'Начална дата:' ,
   'LBL_DATE_END' => 'Крайна дата:' ,
   'LBL_PRIORITY' => 'Степен на важност:' ,
   'LBL_STATUS' => 'Статус:' ,
   'LBL_MY_PROJECTS' => 'Моите проекти' ,
   'LBL_MY_PROJECT_TASKS' => 'Моите текущи задачи по проекти' ,
   'LBL_TOTAL_ESTIMATED_EFFORT' => 'Планирани часове(ч.):' ,
   'LBL_TOTAL_ACTUAL_EFFORT' => 'Действителни часове (ч.):' ,
   'LBL_LIST_NAME' => 'Име' ,
   'LBL_LIST_DAYS' => 'дни' ,
   'LBL_LIST_ASSIGNED_USER_ID' => 'Отговорник:' ,
   'LBL_LIST_TOTAL_ESTIMATED_EFFORT' => 'Планирани часове (ч.)' ,
   'LBL_LIST_TOTAL_ACTUAL_EFFORT' => 'Действителни часове (ч.)' ,
   'LBL_LIST_UPCOMING_TASKS' => 'Предстоящи задачи (1 седмица)' ,
   'LBL_LIST_OVERDUE_TASKS' => 'Просрочени задачи' ,
   'LBL_LIST_OPEN_CASES' => 'Актуални казуси' ,
   'LBL_LIST_END_DATE' => 'Крайна дата' ,
   'LBL_LIST_TEAM_ID' => 'Екип' ,
   'LBL_PROJECT_SUBPANEL_TITLE' => 'Проекти' ,
   'LBL_PROJECT_TASK_SUBPANEL_TITLE' => 'Задачи по проекта' ,
   'LBL_CONTACT_SUBPANEL_TITLE' => 'Контакти' ,
   'LBL_ACCOUNT_SUBPANEL_TITLE' => 'Организации' ,
   'LBL_OPPORTUNITY_SUBPANEL_TITLE' => 'Възможности' ,
   'LBL_QUOTE_SUBPANEL_TITLE' => 'Оферти' ,
   'LBL_NEW_FORM_TITLE' => 'Нов проект' ,
   'CONTACT_REMOVE_PROJECT_CONFIRM' => 'Сигурни ли сте, че искате да премахнете този контакт от проекта?' ,
   'LNK_NEW_PROJECT' => 'Въвеждане на проект' ,
   'LNK_PROJECT_LIST' => 'Списък с проекти:' ,
   'LNK_NEW_PROJECT_TASK' => 'Въвеждане на задача по проекта' ,
   'LNK_PROJECT_TASK_LIST' => 'Задачи по проекта' ,
   'LNK_PROJECT_DASHBOARD' => 'Статистика на моите проекти' ,
   'LNK_PROJECT_TASKS_DASHBOARD' => 'Статистика на моите задачи по проекти' ,
   'LNK_NEW_PROJECT_TEMPLATES' => 'Създаване на шаблон' ,
   'LNK_PROJECT_TEMPLATES_LIST' => 'Списък с шаблони' ,
   'LNK_PROJECT_RESOURCE_REPORT' => 'Отчет за изпълнение' ,
   'LBL_DEFAULT_SUBPANEL_TITLE' => 'Проекти' ,
   'LBL_ACTIVITIES_TITLE' => 'Дейности' ,
   'LBL_ACTIVITIES_SUBPANEL_TITLE' => 'Дейности' ,
   'LBL_HISTORY_SUBPANEL_TITLE' => 'История' ,
   'LBL_QUICK_NEW_PROJECT' => 'Нов проект' ,
   'LBL_PROJECT_TASKS_SUBPANEL_TITLE' => 'Задачи по проекта' ,
   'LBL_CONTACTS_SUBPANEL_TITLE' => 'Контакти' ,
   'LBL_ACCOUNTS_SUBPANEL_TITLE' => 'Организации' ,
   'LBL_OPPORTUNITIES_SUBPANEL_TITLE' => 'Възможности' ,
   'LBL_CASES_SUBPANEL_TITLE' => 'Казуси' ,
   'LBL_BUGS_SUBPANEL_TITLE' => 'Проблеми' ,
   'LBL_PRODUCTS_SUBPANEL_TITLE' => 'Продукти' ,
   'LBL_QUOTES_SUBPANEL_TITLE' => 'Оферти' ,
   'LBL_RESOURCES_SUBPANEL_TITLE' => 'Изпълнители' ,
   'LBL_RESOURCE_NAME' => 'Име' ,
   'LBL_RESOURCE_TYPE' => 'Тип' ,
   'LBL_TASK_ID' => 'ID' ,
   'LBL_TASK_NAME' => 'Задача' ,
   'LBL_DURATION' => 'Продължителност' ,
   'LBL_ACTUAL_DURATION' => 'Отчетено време за изпълнение' ,
   'LBL_START' => 'Начало' ,
   'LBL_FINISH' => 'Край' ,
   'LBL_PREDECESSORS' => 'Свързани задачи' ,
   'LBL_PERCENT_COMPLETE' => '% завършеност' ,
   'LBL_RESOURCE_NAMES' => 'Изпълнител' ,
   'LBL_MORE' => 'More...' ,
   'LBL_PERCENT_BUSY' => '% натовареност' ,
   'LBL_USER_RESOURCE' => 'Изпълнител: потребител' ,
   'LBL_CONTACTS_RESOURCE' => 'Изпълнител: контакт' ,
   'LBL_PROJECT_HOLIDAYS' => 'Почивен ден' ,
   'LBL_LIST_RESOURCE' => 'Изпълнител:' ,
   'LBL_TASK_ID_WIDGET' => 'id' ,
   'LBL_TASK_NAME_WIDGET' => 'описание' ,
   'LBL_DURATION_WIDGET' => 'време за изпълнение' ,
   'LBL_START_WIDGET' => 'date_start' ,
   'LBL_FINISH_WIDGET' => 'date_finish' ,
   'LBL_PREDECESSORS_WIDGET' => 'predecessors_' ,
   'LBL_PERCENT_COMPLETE_WIDGET' => 'percent_complete' ,
   'LBL_RESOURCE_NAMES_WIDGET' => 'resource' ,
   'LBL_EDIT_PROJECT_TASKS_TITLE' => 'Редактиране на задача' ,
   'LBL_VIEW_GANTT_TITLE' => 'Диаграма на Гант' ,
   'LBL_INSERT_BUTTON' => 'Вмъкни ред' ,
   'LBL_INDENT_BUTTON' => 'Indent' ,
   'LBL_OUTDENT_BUTTON' => 'Outdent' ,
   'LBL_SAVE_BUTTON' => 'Съхрани' ,
   'LBL_COPY_BUTTON' => 'Копирай' ,
   'LBL_PASTE_BUTTON' => 'Върни' ,
   'LBL_DELETE_BUTTON' => 'Изтриване' ,
   'LBL_EXPAND_ALL_BUTTON' => 'Expand All' ,
   'LBL_COLLAPSE_ALL_BUTTON' => 'Collapse All' ,
   'LBL_MARK_AS_MILESTONE_BUTTON' => 'Маркирай като критична точка' ,
   'LBL_UNMARK_AS_MILESTONE_BUTTON' => 'Демаркирай като критична точка' ,
   'LBL_HIDE_OPTIONAL_COLUMNS_BUTTON' => 'Hide Optional Columns' ,
   'LBL_SHOW_OPTIONAL_COLUMNS_BUTTON' => 'Show Optional Columns' ,
   'LBL_VIEW_TASK_DETAILS_BUTTON' => 'View Task Details' ,
   'LBL_RECALCULATE_DATES_BUTTON' => 'Преизчисляване на дни' ,
   'LBL_EXPORT_TO_PDF' => 'Експортирай в PDF' ,
   'LBL_FILTER_ALL_TASKS' => 'Всички задачи' ,
   'LBL_FILTER_COMPLETED_TASKS' => 'Приключени задачи' ,
   'LBL_FILTER_INCOMPLETE_TASKS' => 'Неприключени задачи' ,
   'LBL_FILTER_MILESTONES' => 'Критични точки' ,
   'LBL_FILTER_RESOURCE' => 'Задачи с изпълнител' ,
   'LBL_FILTER_DATE_RANGE' => 'Задачи във времеви период' ,
   'LBL_FILTER_VIEW' => 'Разгледай' ,
   'LBL_LIST_FILTER_VIEW' => 'Преглед на:' ,
   'LBL_FILTER_DATE_RANGE_START' => 'Задачи, с крайна или начална дата след' ,
   'LBL_FILTER_DATE_RANGE_FINISH' => 'или преди' ,
   'LBL_FILTER_MY_TASKS' => 'Моите задачи' ,
   'LBL_FILTER_MY_OVERDUE_TASKS' => 'Моите просрочени задачи' ,
   'LBL_FILTER_MY_UPCOMING_TASKS' => 'Моите предстоящи задачи (1 седмица)' ,
   'LBL_CUT_BUTTON' => 'Cut' ,
   'LBL_WEEK_BUTTON' => 'Седмица' ,
   'LBL_BIWEEK_BUTTON' => '2 седмици' ,
   'LBL_MONTH_BUTTON' => 'Месец' ,
   'ERR_TASK_NAME_FOR_ROW' => 'Име на задачата за ред ' ,
   'ERR_IS_EMPTY' => ' не може да остава непопълнена.' ,
   'ERR_PERCENT_COMPLETE' => '% завършеност трябва да е със стойност от 0 до 100.' ,
   'ERR_DURATION' => 'Времето за изпълнение трябва да е цяло число.' ,
   'ERR_DATE' => 'Избраната дата се пада в неработен ден.' ,
   'ERR_FINISH_DATE' => 'Крайна дата трябва да е по-късна от начална дата.' ,
   'ERR_PREDECESSORS_INPUT' => 'Въвежданите стойности в полето "Свързани задачи" следва да се взимат от формата "1" или "1,2"' ,
   'ERR_PREDECESSORS_OUT_OF_RANGE' => 'Стойността, дефинирана в полето "Свързани задачи" е по-голяма от броя на редовете.' ,
   'ERR_PREDECESSOR_CYCLE_FAIL' => 'The specified predecessor causes a dependency cycle.' ,
   'ERR_PREDECESSOR_IS_PARENT_OR_CHILD_FAIL' => 'The specified predecessor is either a parent task or a subtask.' ,
   'NTC_DELETE_TASK_AND_SUBTASKS' => 'Сигурни ли сте, че искате да изтриете тези задачи, включително подзадачи към тях?' ,
   'NTC_NO_ACTIVE_PROJECTS' => 'Не сте включени към активни проекти или задачи към проекти.' ,
   'NTC_ASSIGN_RIGHT_TEAM' => 'Убедете се, че всички изпълнители по проекта са включени към този екип.' ,
   'LBL_GRID_ONLY' => 'Списък задачи' ,
   'LBL_GANTT_ONLY' => 'Диаграма на Гант' ,
   'LBL_GRID_GANTT' => 'Комбиниран изглед' ,
   'LBL_REPORT' => 'Изпълни справката' ,
   'LBL_DAILY_REPORT' => 'Натовареност по дни' ,
   'LBL_PROJECT_HOLIDAYS_TITLE' => 'Почивни дни' ,
   'LBL_HOLIDAYS_TITLE' => 'Почивни дни' ,
   'LBL_HOLIDAY' => 'Почивен ден' ,
   'LBL_PROJECT_TEMPLATE' => 'Шаблон на проект' ,
   'LBL_PROJECT_TEMPLATES_LIST' => 'Списък с шаблони' ,
   'LBL_PROJECT_TEMPLATES_TITLE' => 'Шаблони' ,
   'LBL_IS_TEMPLATE' => 'Е шаблон' ,
   'LBL_SAVE_TEMPLATE_BUTTON_TITLE' => 'Запази като шаблон' ,
   'LBL_SAVE_TEMPLATE_BUTTON_LABEL' => 'Запази като шаблон' ,
   'LBL_SAVE_AS_PROJECT' => 'Запази като проект' ,
   'LBL_SAVE_AS_TEMPLATE' => 'Запази като шаблон' ,
   'LBL_SAVE_AS_NEW_PROJECT_BUTTON' => 'Запази като нов проект' ,
   'LBL_SAVE_AS_NEW_TEMPLATE_BUTTON' => 'Запази като нов шаблон' ,
   'LBL_TEMPLATE_NAME' => 'Шаблон: ' ,
   'LBL_PROJECT_NAME' => 'Име на проекта: ' ,
   'LBL_PROJECT_TEMPLATE_NAME' => 'Шаблон: ' ,
   'LBL_EXPORT_TO_MS_PROJECT' => 'Експортирай в MS Project' ,
   'LBL_POPUP_DATE_START' => 'Начална дата: ' ,
   'LBL_POPUP_DATE_FINISH' => 'Крайна дата: ' ,
   'LBL_POPUP_PERCENT_COMPLETE' => '% завършеност: ' ,
   'LBL_POPUP_RESOURCE_NAME' => 'Изпълнител: ' ,
   'LBL_MY_PROJECTS_DASHBOARD' => 'Статистика на моите проекти' ,
   'LBL_RESOURCE_REPORT' => 'Отчет за изпълнение' ,
   'LBL_PERSONAL_HOLIDAY' => '-- Почивен ден на изпълнителя --' ,
   'LBL_OPPORTUNITIES' => 'Възможности' ,
   'LBL_LAST_WEEK' => 'Предишна' ,
   'LBL_NEXT_WEEK' => 'Следваща' ,
   'LBL_PROJECTRESOURCES_SUBPANEL_TITLE' => 'Project Resources' ,
   'LBL_PROJECTTASK_SUBPANEL_TITLE' => 'Задача по проект' ,
   'LBL_HOLIDAYS_SUBPANEL_TITLE' => 'Почивни дни' ,
   'LBL_PROJECT_INFORMATION' => 'Проект',
    );

?>