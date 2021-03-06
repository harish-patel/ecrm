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
  'LBL_NO_PRECHECK' => 'Nativní mód formátu',
  'LBL_ERROR_SELECTING_RECORD' => 'Chyba při výběru údaje',
  'LBL_ERROR_DELETING_RECORD' => 'Chyba při mazání údaje',
  'LBL_NO_RECORD' => 'Žádný údaj s tímto ID k aktualizaci',
  'LBL_ERROR_INVALID_ID' => 'ID příliš dlouhé pro dané pole (max. délka je 36 znaků)',
  'LBL_ERROR_INVALID_NAME' => 'Řetězec příliš dlouhý pro dané pole',
  'LBL_ERROR_INVALID_VARCHAR' => 'Řetězec příliš dlouhý pro dané pole',
  'LBL_ERROR_INVALID_DATETIME' => 'Chybné datum a čas',
  'LBL_ERROR_INVALID_DATETIMECOMBO' => 'Chybné datum a čas',
  'LBL_ERROR_INVALID_INT' => 'Chybný integer',
  'LBL_ERROR_INVALID_FLOAT' => 'Invalid floating point number',
  'LBL_NOT_MULTIENUM' => 'Not a MultiEnum',
  'LBL_IMPORT_MODULE_NO_TYPE' => 'Import is not set up for this module type',
  'LBL_IMPORT_MODULE_NO_USERS' => 'WARNING: You have no users defined on your system.    If you import without adding users first, all records will be owned by the Administrator.',
  'LBL_IMPORT_MODULE_MAP_ERROR' => 'Unable to publish. There is another published Import Map by the same name.',
  'LBL_IMPORT_MODULE_MAP_ERROR2' => 'Unable to un-publish a map owned by another user. You own an Import Map by the same name.',
  'LBL_MODULE_NAME' => 'Import',
  'ERR_IMPORT_SYSTEM_ADMININSTRATOR' => 'You cannot import a system administrator user',
  'ERR_MISSING_MAP_NAME' => 'Missing custom mapping name',
  'LBL_CUSTOM_DELIMITED' => 'Custom delimited file',
  'LBL_CUSTOM_DELIMITER' => 'Fields Delimited By:',
  'LBL_FILE_OPTIONS' => 'File options',
  'LBL_MICROSOFT_OUTLOOK' => 'Microsoft Outlook',
  'LBL_ACT' => 'Act!',
  'LBL_SALESFORCE' => 'Salesforce.com',
  'LBL_NUM_1' => '1.',
  'LBL_NUM_2' => '2.',
  'LBL_NUM_3' => '3.',
  'LBL_NUM_4' => '4.',
  'LBL_NUM_5' => '5.',
  'LBL_NUM_6' => '6.',
  'LBL_NUM_7' => '7.',
  'LBL_NUM_8' => '8.',
  'LBL_NUM_9' => '9.',
  'LBL_NUM_10' => '10.',
  'LBL_NUM_11' => '11.',
  'LBL_NUM_12' => '12.',
  'LBL_IMPORT_ACT_TITLE' => 'Act! can export data in the <b>Comma Separated Values</b> format, which can be used to import data into the system. To export your data from Act!, follow the steps below:',
  'LBL_ACT_NUM_1' => 'Launch <b>ACT!</b>',
  'LBL_ACT_NUM_2' => 'Select the <b>File</b> menu, the <b>Data Exchange</b> menu option, then the <b>Export...</b> menu option',
  'LBL_ACT_NUM_3' => 'Select the file type <b>Text-Delimited</b>',
  'LBL_ACT_NUM_4' => 'Choose a filename and location for the exported data and click <b>Next</b>',
  'LBL_ACT_NUM_5' => 'Select <b>Contacts records only</b>',
  'LBL_ACT_NUM_6' => 'Click the <b>Options...</b> button',
  'LBL_ACT_NUM_7' => 'Select <b>Comma</b> as the field separator character',
  'LBL_ACT_NUM_8' => 'Check the <b>Yes, export field names</b> checkbox and click <b>OK</b>',
  'LBL_ACT_NUM_10' => 'Select <b>All Records</b> and then click <b>Finish</b>',
  'LBL_SAVE_AS_CUSTOM_NAME' => 'Custom Mapping Name:',
  'LBL_' => '',
  'LBL_IMPORT_FIELDDEF_ID' => 'Unique ID number',
  'LBL_IMPORT_FIELDDEF_NAME' => 'Any Text',
  'LBL_IMPORT_FIELDDEF_VARCHAR' => 'Any Text',
  'LBL_IMPORT_FIELDDEF_TEXT' => 'Any Text',
  'LBL_IMPORT_FIELDDEF_TIME' => 'Time',
  'LBL_IMPORT_FIELDDEF_ENUM' => 'List',
  'LBL_SHOW_PREVIEW_COLUMNS' => 'Show Preview Columns',
  'LBL_HIDE_PREVIEW_COLUMNS' => 'Hide Preview Columns',
  'LBL_SAVE_MAPPING_AS' => 'Save Mapping As',
  'LBL_OPTION_ENCLOSURE_QUOTE' => 'Single Quote (\')',
  'LBL_OPTION_ENCLOSURE_DOUBLEQUOTE' => 'Double Quote (")',
  'LBL_OPTION_ENCLOSURE_NONE' => 'None',
  'LBL_OPTION_ENCLOSURE_OTHER' => 'Other:',
  'LBL_IMPORT_COMPLETE' => 'Import Complete',
  'LBL_IMPORT_RECORDS' => 'Importing Records',
  'LBL_IMPORT_RECORDS_OF' => 'of',
  'LBL_IMPORT_RECORDS_TO' => 'to',
  'LBL_CURRENCY' => 'Currency',
  'LBL_CURRENCY_SIG_DIGITS' => 'Currency Significant Digits',
  'LBL_LOCALE_EXAMPLE_NAME_FORMAT' => 'Example',
  'LBL_NUMBER_GROUPING_SEP' => '1000s separator',
  'LBL_DECIMAL_SEP' => 'Decimal symbol',
  'LBL_LOCALE_DEFAULT_NAME_FORMAT' => 'Name Display Format',
  'LBL_LOCALE_NAME_FORMAT_DESC' => '<i>"s" Salutation, "f" First Name, "l" Last Name</i>',
  'LBL_CHARSET' => 'File Encoding',
  'LBL_MY_SAVED_HELP' => 'A saved mapping specifies a previously used combination of a specific data source and a set of database fields to map to the fields in the import file.<br>Click <b>Publish</b> to make the mapping available to other users.<br>Click <b>Un-Publish</b> to make the mapping unavailable to other users.',
  'LBL_MY_PUBLISHED_HELP' => 'A published mapping specifies a previously used combination of a specific data source and a set of database fields to map to the fields in the import file.',
  'LBL_ENCLOSURE_HELP' => '<p>The <b>qualifier character</b> is used to enclose the intended field content, including any characters that are used as delimiters.<br><br>Example: If the delimiter is a comma (,) and the qualifier is a quotation mark ("),<br><b>"Cupertino, California"</b> is imported into one field in the application and appears as <b>Cupertino, California</b>.<br>If there are no qualifier characters, or if a different character is the qualifier,<br><b>"Cupertino, California"</b> is imported into two adjacent fields as <b>"Cupertino</b> and <b>"California"</b>.<br><br>Note: The import file might not contain any qualifier characters.<br>The default qualifier character for comma- and tab- delimited files created in Excel is a quotation mark.</p>',
  'LBL_DELIMITER_COMMA_HELP' => 'Select this option if the character that separates the fields in the import file is a <b>comma</b>, or if the file extension is .csv.',
  'LBL_DELIMITER_TAB_HELP' => 'Select this option if the character that separates the fields in the import file is a <b>TAB</b>, and the file extension is .txt.',
  'LBL_DELIMITER_CUSTOM_HELP' => 'Select this option if the character that separates the fields in the import file is neither a comma or a TAB, and type the character in the adjacent field.',
  'LBL_DATABASE_FIELD_HELP' => 'Select a field from list of all fields existing in the database for the module.',
  'LBL_HEADER_ROW_HELP' => 'These are the field titles in the header row of the import file.',
  'LBL_DEFAULT_VALUE_HELP' => 'Indicate a value to use for the field in the created or updated record if the field in the import file contains no data.',
  'LBL_ROW_HELP' => 'This is the data in the first non-header row of the import file.',
  'LBL_SAVE_MAPPING_HELP' => 'Enter a name for the set of database fields used above for mapping to the fields in the import file fields.<br>The set of fields, including the order of the fields and the data souce selected in Import Step 1, will be saved during the import attempt.<br>The saved mapping can then be selected in Import Step 1 to for another import.',
  'LBL_IMPORT_FILE_SETTINGS_HELP' => 'Specify the settings in the import file to ensure that the data is imported<br> correctly.  These settings will not override your preferences. The records<br> created or updated will contain the settings specified in your My Account page.',
  'LBL_IMPORT_FILE_SETTINGS' => 'Import File Settings',
  'LBL_VERIFY_DUPLCATES_HELP' => 'Select the fields in the import file to be used for the duplicate check.<br>If data in the selected fields matches data in fields in existing records, new records will not be created for the rows containing the duplicate field data.<br>The rows containing duplicate field data will be identified in the Import Results.',
  'LBL_IMPORT_STARTED' => 'Import Started:',
  'LBL_RECORD_CANNOT_BE_UPDATED' => 'The record could not be updated due to a permissions issue',
  'LBL_GOOD_FILE' => 'Import souboru proběhl úspěšně',
  'LBL_RECORDS_SKIPPED_DUE_TO_ERROR' => 'Záznamy přeskočeny kvůli chybě',
  'LBL_UPDATE_SUCCESSFULLY' => 'Záznamy úspěšně aktualizovány',
  'LBL_SUCCESSFULLY_IMPORTED' => 'Záznamy úspěšně vytvořeny',
  'LBL_STEP_4_TITLE' => 'Krok 4: Soubor s importem',
  'LBL_STEP_5_TITLE' => 'Krok 5: Výsledek',
  'LBL_CUSTOM_ENCLOSURE' => 'Kvalifikovaná pole:',
  'LBL_ERROR_UNABLE_TO_PUBLISH' => 'Nelze zveřejnit',
  'LBL_ERROR_IMPORTS_NOT_SET_UP' => 'Importy nejsou stanoveny pro tento typ modulu',
  'LBL_IMPORT_TYPE' => 'Importovat akce',
  'LBL_IMPORT_BUTTON' => 'Vytvořit záznamy',
  'LBL_UPDATE_BUTTON' => 'Vytvořit a aktualizovat záznamy',
  'LBL_ERROR_INVALID_BOOL' => 'Neplatná hodnota (musí být 1 nebo 0)',
  'LBL_NO_ID' => 'ID je povinné',
  'LBL_PRE_CHECK_SKIPPED' => 'Před-kontrola přeskočena',
  'LBL_IMPORT_ERROR' => 'Došlo k chybě při importu',
  'LBL_ERROR' => 'Chyba:',
  'LBL_FIELD_NAME' => 'Název pole',
  'LBL_VALUE' => 'Hodnota',
  'LBL_ROW_NUMBER' => 'Číslo řádku',
  'LBL_NONE' => 'Žádný',
  'LBL_REQUIRED_VALUE' => 'Požadovaná hodnota chybí',
  'LBL_ID_EXISTS_ALREADY' => 'V této tabulte ID již existuje',
  'LBL_ASSIGNED_USER' => 'Pokud uživatel neexistuje, použijte aktuálního uživatele',
  'LBL_SHOW_HIDDEN' => 'Ukázat pole která nejsou běžně importovatelná',
  'LBL_UPDATE_RECORDS' => 'Aktualizovat existující zínamy namísto importování (nelze vrátit)',
  'LBL_TEST' => 'Testovcí import (neukládat nebo měnit data)',
  'LBL_NO_WORKFLOW' => 'Nespouštějte Workflow během importu',
  'LBL_NO_EMAILS' => 'Neodesílejte zprávy během importu',
  'LBL_NOT_SET_UP' => 'Import není nastaven pro tento typ modulu',
  'LBL_ARE_YOU_SURE' => 'Jste si jisti? Tímto vymažete všechna data v modulu.',
  'LBL_NOT_SET_UP_FOR_IMPORTS' => 'Import není nastaven pro tento typ modulu',
  'LBL_DEBUG_MODE' => 'Povolit režim ladění',
  'LBL_ERROR_INVALID_PHONE' => 'Neplatné telefonní číslo',
  'LBL_ERROR_INVALID_DATE' => 'Neplatný datový řetězec',
  'LBL_ERROR_INVALID_TIME' => 'Neplatný čas',
  'LBL_ERROR_INVALID_NUM' => 'Neplatná číselná hodnota',
  'LBL_ERROR_INVALID_EMAIL' => 'Neplatná emailová adresa',
  'LBL_ERROR_INVALID_USER' => 'Neplatné uživatelské jméno nebo ID',
  'LBL_ERROR_INVALID_TEAM' => 'Špatné jméno či ID týmu',
  'LBL_ERROR_INVALID_ACCOUNT' => 'Špatné jméno či ID společnosti',
  'LBL_ERROR_INVALID_RELATE' => 'Špatné relační pole',
  'LBL_ERROR_INVALID_CURRENCY' => 'Špatná hodnota měny',
  'LBL_ERROR_NOT_IN_ENUM' => 'Value not in dropDown list. Allowed values are:',
  'LBL_IMPORT_MODULE_NO_DIRECTORY' => 'Adresář',
  'LBL_IMPORT_MODULE_NO_DIRECTORY_END' => 'neexistuje nebo není zapisovatelný',
  'LBL_IMPORT_MODULE_ERROR_NO_UPLOAD' => 'Soubor nebyl úspěšně nahrán. Může to být způsobeno nastavením nízkého čísla pro direktivu [upload_max_filesize] ve vašem php.ini souboru',
  'LBL_IMPORT_MODULE_ERROR_LARGE_FILE' => 'Soubor je příliš velký. Maximálně',
  'LBL_IMPORT_MODULE_ERROR_LARGE_FILE_END' => 'Bytů. Změnte nastavení $sugar_config[upload_maxsize] v konfiguračním souboru config.php',
  'LBL_TRY_AGAIN' => 'Zkusit znovu',
  'ERR_MULTIPLE' => 'Několik sloupců bylo definováno se stejným názvem pole.',
  'ERR_MISSING_REQUIRED_FIELDS' => 'Chybějící požadovaná pole:',
  'ERR_SELECT_FULL_NAME' => 'Nemůžete zvolit Plné jméno pokud křestní jméno a příjmení jsou označeny.',
  'ERR_SELECT_FILE' => 'Zvolte soubor pro nahrání.',
  'LBL_SELECT_FILE' => 'Vyberte soubor:',
  'LBL_CUSTOM' => 'Uživatelský',
  'LBL_CUSTOM_CSV' => 'Uživatelský soubor s oddělovačem čárka',
  'LBL_CSV' => 'Soubor - hodnoty oddělené čárkami',
  'LBL_TAB' => 'Soubor - hodnoty oddělené TABulátorem',
  'LBL_CUSTOM_TAB' => 'Uživatelský soubor s oddělovačem tabulátor',
  'LBL_DONT_MAP' => '-- Nemapovat toto pole --',
  'LBL_STEP_1_TITLE' => 'Krok 1: Volba zdroje dat',
  'LBL_WHAT_IS' => 'Jaký je zdroj dat?',
  'LBL_MY_SAVED' => 'Moje uložené zdroje:',
  'LBL_PUBLISH' => 'Publikovat',
  'LBL_DELETE' => 'Odstranit',
  'LBL_PUBLISHED_SOURCES' => 'Publikované zdroje:',
  'LBL_UNPUBLISH' => 'Zrušit publikaci',
  'LBL_NEXT' => 'Pokračovat >',
  'LBL_BACK' => '< Zpět',
  'LBL_STEP_2_TITLE' => 'Krok 2: Nahrát exportní soubor',
  'LBL_HAS_HEADER' => 'Má záhlaví:',
  'LBL_NOTES' => 'Poznámky:',
  'LBL_NOW_CHOOSE' => 'Nyní zvolte typ souboru pro import:',
  'LBL_IMPORT_OUTLOOK_TITLE' => 'Microsoft Outlook 98 a 2000 umí exportovat data ve formátu <b>oddělovač středník</b> format který může být používán k importu dat do systému. Export vašich dat z Outlooku, následující kroky pod:',
  'LBL_OUTLOOK_NUM_1' => 'Spusťte <b>Outlook</b>',
  'LBL_OUTLOOK_NUM_2' => 'Zvolte menu <b>soubor</b>, potom <b>import a export ...</b>',
  'LBL_OUTLOOK_NUM_3' => 'Zvolte <b>export do souboru</b> a klikněte na <b>Pokračovat</b>',
  'LBL_OUTLOOK_NUM_4' => 'Zvolte <b>hodnoty oddělené středníkem (Windows)</b> a klikněte na <b>Pokračovat</b>.<br>  Poznámka: Můžete být vyzváni k instalaci exportu komponentů',
  'LBL_OUTLOOK_NUM_5' => 'Označte soubor <b>Kontakty</b> a klikněte na <b>Pokračovat</b>. Můžete vybrat různé kontaktní soubory pokud vaše kontakty jsou uloženy ve složených souborech',
  'LBL_OUTLOOK_NUM_6' => 'Vybrat jméno souboru a kliknout <b>Následující</b>',
  'LBL_OUTLOOK_NUM_7' => 'Kliknout <b>Ukončit</b>',
  'LBL_IMPORT_SF_TITLE' => 'Salesforce.com mohu exportovat data do <b> hodnoty oddělené středníkem </ b> ve formátu, který lze použít pro import dat do systému. Chcete-li exportovat data z Salesforce.com, postupujte podle následujících kroků:',
  'LBL_SF_NUM_1' => 'Otevřete svůj prohlížeč, přejděte na http://www.salesforce.com a přihlášte se e-mailovou adreseu a heslem',
  'LBL_SF_NUM_2' => 'Klikněte na <b>Reporty</b> v horním menu',
  'LBL_SF_NUM_3' => '<b>Export spoečností:</b> Klikněte na odkaz <b>Aktivní společnosti</b> <br><b>Export kontaktů:</b> Klikněte na odkaz <b>Mailing List</b>',
  'LBL_SF_NUM_4' => '<b>Krok 1: vyberte typ reportu</b>, vyberte <b>Tabular Report</b> klikněte na <b>Next</b>',
  'LBL_SF_NUM_5' => '<b>Krok 2: vyberte sloupce reportu</b>, vyberte sloupce, které chcete exportovat a klikněte na <b>Next</b>',
  'LBL_SF_NUM_6' => '<b>Krok 3: Zkontrolujte informace o exportu</b>, a klikněte na <b>Next</b>',
  'LBL_SF_NUM_7' => '<b>Krok 4: Pořadí sloupců</b>, klikněte na <b>Next</b>',
  'LBL_SF_NUM_8' => '<b>Krok 5: vyberte podmínky reportu</b>, u <b>Start Date</b>, zvolte datum zpět do minulosti, aby zahrnovalo všechny vaše účty. Můžete exportovat také jen část pomocí nastavení pokročilých kritérií. Klikněte na <b>Run Report</b>',
  'LBL_SF_NUM_9' => 'Repor bude vygenerován a mělo by se zobrazit <b>Status generovaného reportu: Hotovo.</b> nyní klikněte na <b>Export to Excel</b>',
  'LBL_SF_NUM_10' => '<b>Export Report:</b>, pro <b>Export File Format:</b>, vyberte <b>Comma Delimited .csv</b>. Click <b>Export</b>.',
  'LBL_SF_NUM_11' => 'Objeví se dialogové okno pro uložení souboru do počítače.',
  'LBL_ACT_NUM_9' => 'Klikněte Další',
  'LBL_IMPORT_CUSTOM_TITLE' => 'Mnoho aplikací dovoluje exportovat data v <b>textovém souboru odděleným středníkem (.csv)</b>. Zpravidla ve všech aplikacích následujte tyto kroky:',
  'LBL_CUSTOM_NUM_1' => 'Pusťte aplikaci a Otevřete datový soubor',
  'LBL_CUSTOM_NUM_2' => 'Z menu vyberte <b>Uložit jako...</b> nebo <b>Export...</b>',
  'LBL_CUSTOM_NUM_3' => 'Uložte soubor <b>CSV</b> nebo <b>Hodnoty oddělené středníkem</b> formát',
  'LBL_IMPORT_TAB_TITLE' => 'Mnoho aplikací dovoluje exportovat data v <b>textovém souboru odděleným tabulátorm (.tsv or .tab)</b>. Zpravidla ve všech aplikacích následujte tyto kroky:',
  'LBL_TAB_NUM_1' => 'Pusťte aplikaci a Otevřete datový soubor',
  'LBL_TAB_NUM_2' => 'Z menu vyberte <b>Uložit jako...</b> nebo <b>Export...</b>',
  'LBL_TAB_NUM_3' => 'Uložte soubor <b>TSV</b> nebo <b>Hodnoty oddělené tabulátorem</b> formát',
  'LBL_STEP_3_TITLE' => 'Krok 3: Potvrdit pole a importovat',
  'LBL_SELECT_FIELDS_TO_MAP' => 'V niže uvedeném seznamu, přiřaďte sloupec ze souboru pro import. Až budte hotovi, klikněte na Importovat nyní:',
  'LBL_DATABASE_FIELD' => 'Pole v databázi',
  'LBL_HEADER_ROW' => 'Řádek záhlaví',
  'LBL_ROW' => 'Řádek',
  'LBL_SAVE_AS_CUSTOM' => 'Uložit jako vlastní mapování:',
  'LBL_CONTACTS_NOTE_1' => 'Buď příjmení nebo plné jméno musí být přiřazeno.',
  'LBL_CONTACTS_NOTE_2' => 'Pokud je přiřazeno plné jméno, tak jméno a příjmení jsou ignorovány.',
  'LBL_CONTACTS_NOTE_3' => 'Pokud je přiřazeno plné jméno, tak celé jméno bude rozděleno při importování na jméno a příjmení.',
  'LBL_CONTACTS_NOTE_4' => 'Pole Address Street 2 a Address Street 3 jsou sloučeny a přiřazeny k základnímu poli Address Street při importování.',
  'LBL_ACCOUNTS_NOTE_1' => 'Název společnosti musí být přiřazen.',
  'LBL_REQUIRED_NOTE' => 'Required Field(s):',
  'LBL_IMPORT_NOW' => 'Importovat nyní',
  'LBL_CANNOT_OPEN' => 'Nelze otevřít soubor s importovanými záznamy',
  'LBL_NOT_SAME_NUMBER' => 'V souboru je různý počet polí na řádku.',
  'LBL_NO_LINES' => 'Nebyly nalezeny žádné řádky v souboru.',
  'LBL_FILE_ALREADY_BEEN_OR' => 'Importovací soubor byl již zpracován nenbo neexistuje.',
  'LBL_SUCCESS' => 'Dokončeno:',
  'LBL_FAILURE' => 'Import selhal:',
  'LBL_SUCCESSFULLY' => 'Úspěšně naimportováno',
  'LBL_LAST_IMPORT_UNDONE' => 'Váš poslední import se nezdařil',
  'LBL_NO_IMPORT_TO_UNDO' => 'Import nelze vrátit zpět.',
  'LBL_FAIL' => 'Selhání:',
  'LBL_RECORDS_SKIPPED' => 'záznamy vynechány, jelikož chyběli data v povinných polích',
  'LBL_IDS_EXISTED_OR_LONGER' => 'Záznamy preskočeny, protože ID už existují, nebo jsou delší než 36 znaků',
  'LBL_RESULTS' => 'výsledky',
  'LBL_IMPORT_MORE' => 'Importovat více',
  'LBL_FINISHED' => 'Ukončit',
  'LBL_UNDO_LAST_IMPORT' => 'Vrátit zpět poslední import',
  'LBL_LAST_IMPORTED' => 'Poslední import',
  'ERR_MULTIPLE_PARENTS' => 'Pouze jedno ID rodiče může být definováno',
  'LBL_DUPLICATES' => 'Nalezeny duplikáty',
  'LNK_DUPLICATE_LIST' => 'Download List of Duplicates',
  'LNK_ERROR_LIST' => 'Download List of Errors',
  'LNK_RECORDS_SKIPPED_DUE_TO_ERROR' => 'Download records that could not be imported.',
  'LBL_UNIQUE_INDEX' => 'Vyberte index pro porování duplíkátů',
  'LBL_VERIFY_DUPS' => 'Ověřte duplikáty proti zvolenému indexu',
  'LBL_INDEX_USED' => 'Použité index/y',
  'LBL_INDEX_NOT_USED' => 'Nepoužité index/y',
  'LBL_IMPORT_MODULE_ERROR_NO_MOVE' => 'Soubor nebyl nahrán na server. Zkontrolujte prosím oprávnění ve cache adresáři Vaší instalace Sugaru.',
  'LBL_IMPORT_FIELDDEF_RELATE' => 'Name nebo ID',
  'LBL_IMPORT_FIELDDEF_PHONE' => 'Telefonní číslo',
  'LBL_IMPORT_FIELDDEF_TEAM_LIST' => 'Jméno nebo ID týmu',
  'LBL_IMPORT_FIELDDEF_DATE' => 'Datum',
  'LBL_IMPORT_FIELDDEF_DATETIME' => 'Datum a čas',
  'LBL_IMPORT_FIELDDEF_ASSIGNED_USER_NAME' => 'Uživatelské jméno či ID',
  'LBL_IMPORT_FIELDDEF_BOOL' => '\'0\' nebo \'1\'',
  'LBL_IMPORT_FIELDDEF_EMAIL' => 'Mail Adresa',
  'LBL_IMPORT_FIELDDEF_INT' => 'Číslo (bez desetinného místa)',
  'LBL_IMPORT_FIELDDEF_DOUBLE' => 'Číslo (bez desetinného místa)',
  'LBL_IMPORT_FIELDDEF_NUM' => 'Číslo (bez desetinného místa)',
  'LBL_IMPORT_FIELDDEF_CURRENCY' => 'Číslo (desetinné místo povoleno)',
  'LBL_IMPORT_FIELDDEF_FLOAT' => 'Číslo (desetinné místo povoleno)',
  'LBL_DATE_FORMAT' => 'Formát datumu:',
  'LBL_TIME_FORMAT' => 'Formát času:',
  'LBL_TIMEZONE' => 'Časová Zona:',
  'LBL_ADD_ROW' => 'Přidej pole',
  'LBL_REMOVE_ROW' => 'Odeber pole',
  'LBL_DEFAULT_VALUE' => 'Výchozí hodnota',
  'LBL_SHOW_ADVANCED_OPTIONS' => 'Ukázat pokročilé možnosti',
  'LBL_HIDE_ADVANCED_OPTIONS' => 'Skrýt pokročilé možnosti',
  'LBL_DELETE_MAP_CONFIRMATION' => 'Jste si jist, že chcete smazat toto mapování?',
);

