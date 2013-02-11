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
  'LBL_CONNECTOR' => 'Connector',
  'LBL_DATA' => 'Data',
  'LBL_DUNS' => 'DUNS',
  'LBL_FINSALES' => 'Finsales',
  'LBL_MARKET_CAP' => 'Market Cap',
  'LBL_PARENT_DUNS' => 'Parent DUNS',
  'LBL_QUOTE' => 'Offerte',
  'LBL_RESET_BUTTON_TITLE' => 'Reset [Alt+R]',
  'LBL_TEST_SOURCE' => 'Test Connector',
  'LBL_ULTIMATE_PARENT_DUNS' => 'Ultimate Parent DUNS',
  'ERROR_NO_SEARCHDEFS_MAPPED' => 'Fout: Er zijn geen connectors met gedefinieerde zoekvelden ingesteld.',
  'LBL_ADD_MODULE' => 'Toevoegen',
  'LBL_ADDRCITY' => 'Plaats',
  'LBL_ADDRCOUNTRY' => 'Land',
  'LBL_ADDRCOUNTRY_ID' => 'Land ID',
  'LBL_ADDRSTATEPROV' => 'Provincie',
  'LBL_ADMINISTRATION' => 'Connector Beheer',
  'LBL_ADMINISTRATION_MAIN' => 'Connector Instellingen',
  'LBL_AVAILABLE' => 'Beschikbaar',
  'LBL_BACK' => '< Terug',
  'LBL_COMPANY_ID' => 'Bedrijf ID',
  'LBL_CONFIRM_CONTINUE_SAVE' => 'Enkele vereiste velden zijn nog leeg. Wijzigingen toch opslaan?',
  'LBL_CONNECTOR_FIELDS' => 'Connector Velden',
  'LBL_DEFAULT' => 'Standaard',
  'LBL_DELETE_MAPPING_ENTRY' => 'Wilt u deze input echt verwijderen?',
  'LBL_DISABLED' => 'Uitgeschakeld',
  'LBL_EMPTY_BEANS' => 'Geen resultaten met de huidige zoekcriteria',
  'LBL_ENABLED' => 'Ingeschakeld',
  'LBL_EXTERNAL' => 'Stel gebruikers in staat externe accounts aan te maken in deze connector. De eigenschappen moeten ook worden ingesteld in de "Connector Eigenschappen Instellen" pagina.',
  'LBL_MERGE' => 'Samenvoegen',
  'LBL_MODIFY_DISPLAY_TITLE' => 'Connectoren inschakelen',
  'LBL_MODIFY_DISPLAY_DESC' => 'Bepaal welke modules ingeschakeld zijn per Connector.',
  'LBL_MODIFY_DISPLAY_PAGE_TITLE' => 'Connector instellingen: Inschakelen Connectoren',
  'LBL_MODULE_FIELDS' => 'Module Velden',
  'LBL_MODIFY_MAPPING_TITLE' => 'In kaart brengen van Connector Velden',
  'LBL_MODIFY_MAPPING_DESC' => 'In kaart brengen welke connect velden gekoppeld zijn aan welke module velden om te bepalen welke connector data kan worden bekeken en samengevoegd in de module records.',
  'LBL_MODIFY_MAPPING_PAGE_TITLE' => 'Connector instellingen: Connector Velden in kaart brengen',
  'LBL_MODIFY_PROPERTIES_TITLE' => 'Connector eigenschappen instellen',
  'LBL_MODIFY_PROPERTIES_DESC' => 'Configureer de eigenschappen per connector, inclusief URLs en API keys.',
  'LBL_MODIFY_PROPERTIES_PAGE_TITLE' => 'Connector instellingen: Connector eigenschappen instellen',
  'LBL_MODIFY_SEARCH_TITLE' => 'Beheer Connector Zoekfunctie',
  'LBL_MODIFY_SEARCH' => 'Zoeken',
  'LBL_MODIFY_SEARCH_DESC' => 'Selecteer welke connector velden gebruikt worden bij zoekopdrachten per module.',
  'LBL_MODIFY_SEARCH_PAGE_TITLE' => 'Connector instellingen: Beheer Connector Zoekfunctie',
  'LBL_MODULE_NAME' => 'Connectoren',
  'LBL_NO_PROPERTIES' => 'Er zijn geen configureerbare eigenschappen bij deze connector.',
  'LBL_PREVIOUS' => '< Terug',
  'LBL_RECNAME' => 'Bedrijfsnaam',
  'LBL_RESET_TO_DEFAULT' => 'Reset naar standaardwaarde',
  'LBL_RESET_TO_DEFAULT_CONFIRM' => 'Weet u zeker dat u terug wilt gaan naar de standaard configuratie?',
  'LBL_RESULT_LIST' => 'Data Lijst',
  'LBL_RUN_WIZARD' => 'Start Wizard',
  'LBL_SAVE' => 'Opslaan',
  'LBL_SEARCHING_BUTTON_LABEL' => 'Zoeken...',
  'LBL_SHOW_IN_LISTVIEW' => 'Toon Samenvoegen Lijstweergave',
  'LBL_SMART_COPY' => 'Slimme kopie',
  'LBL_SUMMARY' => 'Samenvatting',
  'LBL_STEP1' => 'Doorzoek en Bekijk Data',
  'LBL_STEP2' => 'Voeg Records samen met',
  'LBL_TEST_SOURCE_FAILED' => 'Test mislukt',
  'LBL_TEST_SOURCE_RUNNING' => 'Test uitvoeren...',
  'LBL_TEST_SOURCE_SUCCESS' => 'Test was succesvol',
  'LBL_TITLE' => 'Data Samenvoegen',
  'ERROR_RECORD_NOT_SELECTED' => 'Fout: Selecteer een record in de lijst.',
  'ERROR_EMPTY_WRAPPER' => 'Fout: Onmogelijk inpakker te achterhalen uit bron [{$source_id}]',
  'ERROR_EMPTY_SOURCE_ID' => 'Fout: Bron ID niet gespecificeerd of leeg.',
  'ERROR_EMPTY_RECORD_ID' => 'Fout: Record ID niet gespecificeerd of leeg.',
  'ERROR_NO_ADDITIONAL_DETAIL' => 'Fout: Geen aanvullende gegevens gevonden bij record.',
  'ERROR_NO_SEARCHDEFS_DEFINED' => 'Er zijn geen modules actief voor deze connector. Selecteer een module voor deze connector op de pagina \'Connectoren inschakelen\'.',
  'ERROR_NO_SOURCEDEFS_FILE' => 'Fout: Bestand niet gevonden: \'sourcedefs.php\'.',
  'ERROR_NO_SOURCEDEFS_SPECIFIED' => 'Fout: Er zijn geen bronnen opgegeven om data uit op te halen.',
  'ERROR_NO_CONNECTOR_DISPLAY_CONFIG_FILE' => 'Fout: Er zijn connectors gekoppeld aan deze module.',
  'ERROR_NO_SEARCHDEFS_MAPPING' => 'Fout: Er zijn zoekvelden gedefinieerd voor deze module en connector. Neem contact op met uw systeembeheerder.',
  'ERROR_NO_FIELDS_MAPPED' => 'Fout: Er moet ten minste een Connector veld gekoppeld worden aan een Module veld.',
  'ERROR_NO_DISPLAYABLE_MAPPED_FIELDS' => 'Fout: Er zijn geen Module velden opgegeven om weer te geven in de resultaten. Neem contact op met uw systeembeheerder.',
);

