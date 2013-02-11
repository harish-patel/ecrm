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
  'LBL_STATUS' => 'Status',
  'LNK_LIST_TEAM' => 'Teams',
  'LBL_MODULE_NAME' => 'Team Berichten',
  'LBL_MODULE_TITLE' => 'Teamberichten: Start',
  'LBL_SEARCH_FORM_TITLE' => 'Teamberichten Zoeken',
  'LBL_LIST_FORM_TITLE' => 'Teamberichten Lijst',
  'LBL_PRODUCTTYPE' => 'Teambericht',
  'LBL_NOTICES' => 'Team Berichten',
  'LBL_LIST_NAME' => 'Titel',
  'LBL_URL' => 'URL:',
  'LBL_URL_TITLE' => 'URL Titel',
  'LBL_LIST_DESCRIPTION' => 'Beschrijving',
  'LBL_NAME' => 'Titel',
  'LBL_DESCRIPTION' => 'Beschrijving',
  'LBL_LIST_LIST_ORDER' => 'Volgorde',
  'LBL_LIST_ORDER' => 'Volgorde',
  'LBL_DATE_START' => 'Begindatum',
  'LBL_DATE_END' => 'Einddatum',
  'LNK_NEW_TEAM' => 'Nieuw Team',
  'LNK_NEW_TEAM_NOTICE' => 'Nieuw Teambericht',
  'LNK_LIST_TEAMNOTICE' => 'Team Berichten',
  'LNK_PRODUCT_LIST' => 'Prijslijst Producten',
  'LNK_NEW_PRODUCT' => 'Nieuw Product',
  'LNK_NEW_MANUFACTURER' => 'Fabrikanten',
  'LNK_NEW_SHIPPER' => 'Vervoerders',
  'LNK_NEW_PRODUCT_CATEGORY' => 'Productcategorieën',
  'LNK_NEW_PRODUCT_TYPE' => 'Producttype Lijst',
  'NTC_DELETE_CONFIRMATION' => 'Weet u zeker dat u dit record wilt verwijderen?',
  'ERR_DELETE_RECORD' => 'U dient een recordnummer aan te geven om dit producttype te kunnen verwijderen.',
  'NTC_LIST_ORDER' => 'Bepaal de weergave volgorde van dit type in de dropdown.',
  'LBL_TEAM_NOTICE_FEATURES' => 'Kenmerken:<br />* Met de verbeterde User Interface in combinatie met de nieuwe Wizard kan de gebruiker stap voor stap een rapport maken.<br />* Complexe rapportage stelt gebruikers in staat om rapporten over meerdere modules met behulp van complexe logica te maken.<br />* Matrix rapporten bieden de mogelijkheid om meerdere attributen te groeperen in een flexibele grid-layout. Complexe Pivot-tabellen met de mogelijkheid om items zoals Som, Gemiddelde, Aantal en Percentages weer te geven.<br />* Run-time filters geven de mogelijkheid om tijdens de uitvoer van het rapport nog attributen te wijzigen.',
  'LBL_TEAM_NOTICE_WIRELESS' => 'De nieuwe mobiele weergave voor SugarCRM rekent af met de afweging tussen gebruiksvriendelijkheid en mobiliteit.<br />Kenmerken:<br />* De verbeterde User Interface geeft de gebruikers meer inzicht in edit-, detail- en listviews en gerelateerde records. Tevens heeft het nu toegang tot de werknemers-module, de mogelijkheid voorkeuren op te slaan en recente items te bekijken.<br />* Omdat het Apparaatonafhankelijk is, staat het gebruikers toe om gegevens van SugarCRM op elke willekeurige PDA of smart-phone, met inbegrip van Blackberry en iPhone, te bekijken.<br />* Rich HTML Client levert een heldere presentatie van SugarCRM gegevens via een standaard web browser.<br />* Met nieuwe zoekmogelijkheden kunnen gebruikers snel informatie te vinden.',
  'LBL_TEAM_NOTICE_DATA_IMPORT' => 'Data Import Verbeteringen maken het nog gemakkelijker om gegevens te verplaatsen uit applicaties zoals Excel, Act!, Microsoft Outlook en Salesforce.com naar SugarCRM.<br />Verbeteringen:<br />* Verbeterde User Interface voor mapping biedt meer opties om zo te waarborgen dat de dataoverdracht gemakkelijk en accuraat gaat.<br />* Data Quality Controls stelt beheerders in staat om aan te geven of gegevens nieuwe records moeten aanmaken of  bestaande records bijwerken, om zo duplicaten te voorkomen.<br />* Importeren in alle modules biedt de mogelijkheid om informatie binnen te halen van andere CRM applicaties, en te voorkomen dat data dubbel ingevoerd moet worden.',
  'LBL_TEAM_NOTICE_MODULE_BUILDER' => 'Met Module Builder stelt u in staat Sugarcrm op een innovatieve nieuwe manier uit te breiden.<br />Verbeteringen:<br />* Met nieuwe relaties kunnen bestaande en nieuwe modules met elkaar gerelateerd worden.<br />* Met Auditing  houdt u een complete historie bij van module-creatie en wijzigingen.<br />* Dashlet Support maakt het mogelijk om aangepaste objecten en module-functionaliteit weer te geven in AJAX containers op de homepage.<br />* Nieuwe sjablonen bieden een manier om gemakkelijk bestanden te vinden en opportunity informatie.',
  'LBL_TEAM_NOTICE_TRACKER' => 'Tracker biedt nu een uitgebreid inzicht in het gebruik en de prestaties van SugarCRM<br />Kenmerken:<br />* Tracker Rapporten geven een momentopname van het systeemgebruik t.b.v. inzicht in gebruikersacceptatie en CRM-gebruik. Er zijn rapporten voor het wekelijks meten van CRM activiteiten, records en modules bekeken, cumulatieve inlogtijd en de online status van andere teamgenoten.<br />* Systeem Monitoring biedt beheerders informatie over hoe het systeem wordt gebruikt en potentiële stress-punten voor de toepassing.',
  'dom_status' => 
  array (
    'Visible' => 'Zichtbaar',
    'Hidden' => 'Verborgen',
  ),
);

