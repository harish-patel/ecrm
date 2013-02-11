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
	'LBL_MODULE_NAME'										=> 'Tâches',
	'LBL_TASK'												=> 'Tâches: ',
	'LBL_MODULE_TITLE'										=> 'Tâches',
	'LBL_SEARCH_FORM_TITLE'									=> ' Recherche de Tâche',
	'LBL_LIST_FORM_TITLE'									=> ' Liste des Tâches',
	'LBL_NEW_FORM_TITLE'									=> ' Planifier une Tâche',
	'LBL_NEW_FORM_SUBJECT'									=> 'Sujet:',
	'LBL_NEW_FORM_DUE_DATE'									=> 'Date échéance:',
	'LBL_NEW_FORM_DUE_TIME'									=> 'Heure échéance:',
	'LBL_NEW_TIME_FORMAT'									=> '(24:00)',
	'LBL_LIST_CLOSE'										=> 'Fermer',
	'LBL_LIST_SUBJECT'										=> 'Sujet',
	'LBL_LIST_CONTACT'										=> 'Contact',
	'LBL_LIST_PRIORITY'										=> 'Priorité',
	'LBL_LIST_RELATED_TO'									=> 'Relatif à',
	'LBL_LIST_DUE_DATE'										=> 'Date d&#39;échéance',
	'LBL_LIST_DUE_TIME'										=> 'Heure d&#39;échéance',
	'LBL_SUBJECT'											=> 'Sujet:',
	'LBL_STATUS'											=> 'Statut:',
	'LBL_DUE_DATE'											=> 'Date échéance:',
	'LBL_DUE_TIME'											=> 'Heure échéance:',
	'LBL_PRIORITY'											=> 'Priorité:',
	'LBL_COLON'												=> ':',
	'LBL_DUE_DATE_AND_TIME'									=> 'Date & Heure échéance:',
	'LBL_START_DATE_AND_TIME'								=> 'Date et Heure début:',
	'LBL_START_DATE'										=> 'Date de début:',
	'LBL_LIST_START_DATE'									=> 'Date de début',
	'LBL_START_TIME'										=> 'Heure de début:',
	'LBL_LIST_START_TIME'									=> 'Heure de début',
	'DATE_FORMAT'											=> '(aaaa-mm-jj)',
	'LBL_NONE'												=> 'Indéfini',
	'LBL_CONTACT'											=> 'Contact:',
	'LBL_EMAIL_ADDRESS'										=> 'Adresse Email :',
	'LBL_PHONE'												=> 'Téléphone:',
	'LBL_EMAIL'												=> 'Email:',
	'LBL_DESCRIPTION_INFORMATION'							=> 'Description',
	'LBL_DESCRIPTION'										=> 'Description:',
	'LBL_NAME'												=> 'Nom:',
	'LBL_CONTACT_NAME'										=> 'Nom Contact: ',
	'LBL_LIST_COMPLETE'										=> 'Terminé:',
	'LBL_LIST_STATUS'										=> 'Statut',
	'LBL_DATE_DUE_FLAG'										=> 'Aucune date de deadline',
	'LBL_DATE_START_FLAG'									=> 'Aucune date de début',
	'ERR_DELETE_RECORD'										=> 'Un numéro d&#39;enregistrement doit être spécifié pour toute suppression.',
	'ERR_INVALID_HOUR'										=> 'Merci de saisir une heure entre 0 et 24',
	'LBL_DEFAULT_STATUS'									=> 'Not Started',
	'LBL_DEFAULT_PRIORITY'									=> 'Medium',
	'LBL_LIST_MY_TASKS'										=> 'Mes Tâches ouvertes',
	'LNK_NEW_CALL'											=> 'Planifier Appel',
	'LNK_NEW_MEETING'										=> 'Planifier Réunion',
	'LNK_NEW_TASK'											=> 'Créer Tâche',
	'LNK_NEW_NOTE'											=> 'Créer Note',
	'LNK_NEW_EMAIL'											=> 'Archiver Email',
	'LNK_CALL_LIST'											=> 'Appels',
	'LNK_MEETING_LIST'										=> 'Réunions',
	'LNK_TASK_LIST'											=> 'Tâches',
	'LNK_NOTE_LIST'											=> 'Notes',
	'LNK_EMAIL_LIST'										=> 'Emails',
	'LNK_VIEW_CALENDAR'										=> 'Aujourd&#39;hui',
	'LNK_IMPORT_TASKS'										=> 'Import Tâche',
	'LBL_CONTACT_FIRST_NAME'								=> 'Prénom du Contact',
	'LBL_CONTACT_LAST_NAME'									=> 'Nom du Contact',
	'LBL_LIST_ASSIGNED_TO_NAME'								=> 'Assigné à',
	'LBL_ASSIGNED_TO_NAME'									=> 'Assigné à :',
	'LBL_LIST_DATE_MODIFIED'								=> 'Date de modification',
	'LBL_CONTACT_ID'										=> 'ID Contact :',
	'LBL_PARENT_ID'											=> 'ID Parent :',
	'LBL_CONTACT_PHONE'										=> 'Téléphone du Contact :',
	'LBL_PARENT_NAME'										=> 'Type de Parent :',
	'LBL_ASSIGNED_TO'										=> 'Assigné à:',
	'LBL_ACTIVITIES_REPORTS'								=> 'Rapport d&#39;activités',
	'LBL_TASK_INFORMATION'									=> 'Informations Tâches',
);

?>