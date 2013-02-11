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
  'LBL_LOGIN' => 'Login',
  'LBL_NEW_EMPLOYEE_BUTTON_KEY' => 'N',
  'LBL_FAX' => 'Fax:',
  'LBL_CREATE_USER_BUTTON_KEY' => 'N',
  'LBL_MESSENGER_TYPE' => 'IM Type:',
  'LBL_MODULE_NAME' => 'Medewerker',
  'LBL_MODULE_TITLE' => 'Medewerkers: Start',
  'LBL_SEARCH_FORM_TITLE' => 'Medewerkers Zoeken',
  'LBL_LIST_FORM_TITLE' => 'Medewerkers',
  'LBL_NEW_FORM_TITLE' => 'Nieuwe Medewerker',
  'LBL_EMPLOYEE' => 'Aantal Medewerkers:',
  'LBL_RESET_PREFERENCES' => 'Terug naar de Standaard Instellingen',
  'LBL_TIME_FORMAT' => 'Tijdweergave:',
  'LBL_DATE_FORMAT' => 'Datumweergave:',
  'LBL_TIMEZONE' => 'Huidige Tijd:',
  'LBL_CURRENCY' => 'Valuta:',
  'LBL_LIST_NAME' => 'Naam',
  'LBL_LIST_LAST_NAME' => 'Achternaam',
  'LBL_LIST_EMPLOYEE_NAME' => 'Naam Medewerker',
  'LBL_LIST_DEPARTMENT' => 'Afdeling',
  'LBL_LIST_REPORTS_TO_NAME' => 'Rapporteert aan',
  'LBL_LIST_EMAIL' => 'E-mail',
  'LBL_LIST_PRIMARY_PHONE' => 'Telefoon',
  'LBL_LIST_USER_NAME' => 'Gebruikersnaam',
  'LBL_LIST_ADMIN' => 'Configuratie',
  'LBL_NEW_EMPLOYEE_BUTTON_TITLE' => 'Nieuwe Medewerker [ALT+N]',
  'LBL_NEW_EMPLOYEE_BUTTON_LABEL' => 'Nieuwe Medewerker',
  'LBL_ERROR' => 'Fout:',
  'LBL_PASSWORD' => 'Wachtwoord:',
  'LBL_EMPLOYEE_NAME' => 'Medewerkersnaam:',
  'LBL_USER_NAME' => 'Gebruikersnaam:',
  'LBL_FIRST_NAME' => 'Voornaam:',
  'LBL_LAST_NAME' => 'Achternaam:',
  'LBL_EMPLOYEE_SETTINGS' => 'Medewerkersinstellingen',
  'LBL_THEME' => 'Thema:',
  'LBL_LANGUAGE' => 'Taal:',
  'LBL_ADMIN' => 'Beheerder:',
  'LBL_EMPLOYEE_INFORMATION' => 'Medewerkersinformatie',
  'LBL_OFFICE_PHONE' => 'Telefoon (Werk):',
  'LBL_REPORTS_TO' => 'Rapporteert aan:',
  'LBL_REPORTS_TO_NAME' => 'Rapporteert aan',
  'LBL_OTHER_PHONE' => 'Anders:',
  'LBL_OTHER_EMAIL' => 'Alternatief E-mailadres:',
  'LBL_NOTES' => 'Notities:',
  'LBL_DEPARTMENT' => 'Afdeling:',
  'LBL_TITLE' => 'Titel:',
  'LBL_ANY_ADDRESS' => 'Elk Adres:',
  'LBL_ANY_PHONE' => '(Deel van) telefoonnummer',
  'LBL_ANY_EMAIL' => 'Willekeurige E-mail:',
  'LBL_ADDRESS' => 'Adres:',
  'LBL_CITY' => 'Plaats:',
  'LBL_STATE' => 'Provincie:',
  'LBL_POSTAL_CODE' => 'Postcode:',
  'LBL_COUNTRY' => 'Land:',
  'LBL_NAME' => 'Naam:',
  'LBL_MOBILE_PHONE' => 'Mobiel:',
  'LBL_OTHER' => 'Anders:',
  'LBL_EMAIL' => 'E-mail:',
  'LBL_HOME_PHONE' => 'Privé:',
  'LBL_WORK_PHONE' => 'Werk:',
  'LBL_ADDRESS_INFORMATION' => 'Adresgegevens',
  'LBL_EMPLOYEE_STATUS' => 'Medewerkerstatus:',
  'LBL_PRIMARY_ADDRESS' => 'Hoofdadres:',
  'LBL_SAVED_SEARCH' => 'Layout installingen',
  'LBL_CREATE_USER_BUTTON_TITLE' => 'Creeer Gebruiker [ALT+N]',
  'LBL_CREATE_USER_BUTTON_LABEL' => 'Nieuwe Gebruiker',
  'LBL_FAVORITE_COLOR' => 'Favoriete Kleur:',
  'LBL_MESSENGER_ID' => 'IM Naam:',
  'ERR_EMPLOYEE_NAME_EXISTS_1' => 'Naam van de Medewerker',
  'ERR_EMPLOYEE_NAME_EXISTS_2' => 'bestaat al. Dubbele gebruikersnamen zijn niet toegestaan. Wijzig de gebruikersnaam zodat deze uniek is.',
  'ERR_LAST_ADMIN_1' => 'De Medewerker Naam',
  'ERR_LAST_ADMIN_2' => 'is de laatste gebruiker die Admin rechten heeft. Minstens een gebruiker moet Administrator zijn.',
  'LNK_NEW_EMPLOYEE' => 'Nieuwe Medewerker',
  'LNK_EMPLOYEE_LIST' => 'Medewerkers',
  'ERR_DELETE_RECORD' => 'Er moet een recordnummer zijn gespecificeerd om dit bedrijf te verwijderen.',
  'LBL_DEFAULT_TEAM' => 'Standaard Team:',
  'LBL_DEFAULT_TEAM_TEXT' => 'Selecteer standaard team voor nieuwe records',
  'LBL_MY_TEAMS' => 'Mijn Teams',
  'LBL_LIST_DESCRIPTION' => 'Beschrijving',
  'LNK_EDIT_TABS' => 'Wijzig Tabs',
  'NTC_REMOVE_TEAM_MEMBER_CONFIRMATION' => 'Weet u zeker dat u het lidmaatschap van deze medewerker wilt verwijderen?',
  'LBL_LIST_EMPLOYEE_STATUS' => 'Status',
  'LBL_SUGAR_LOGIN' => 'Is Sugar Gebruiker',
  'LBL_RECEIVE_NOTIFICATIONS' => 'Notificatie bij Toewijzen',
  'LBL_IS_ADMIN' => 'Is Beheerder',
  'LBL_GROUP' => 'Groepsgebruiker',
  'LBL_PORTAL_ONLY' => 'Alleen Portal Gebruiker',
  'LBL_PHOTO' => 'Foto',
  'LBL_DELETE_USER_CONFIRM' => 'Deze Medewerker is ook een Gebruiker. Het verwijderen van deze Medewerker zal ook de Gebruiker verwijderen. De Gebruiker kan dan geen gebruik meer maken van de Applicatie. Weet u zeker dat u dit record wilt verwijderen?',
  'LBL_DELETE_EMPLOYEE_CONFIRM' => 'Weet u zeker dat u deze medewerker wilt verwijderen?',
);

