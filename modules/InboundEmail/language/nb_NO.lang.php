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
  'LBL_AUTOREPLY_HELP' => 'Velg et automatisk svar for å varsle e-post avsendere at deres svar er mottatt.',
  'LBL_EMAIL_BOUNCE_OPTIONS' => 'Bounce håndtering alternativer',
  'LBL_CREATE_CASE_REPLY_TEMPLATE_HELP' => 'Velg et automatisk svar for å varsle e-post avsendere at en sak har blitt opprettet. E-posten inneholder saksnummer i emnelinjen i henhold til Case Macro innstillingen. Dette svaret sendes bare når den første e-posten er mottatt.',
  'LBL_PERSONAL_MODULE_NAME' => 'Personlig e-postkonto',
  'LBL_CREATE_CASE' => 'Opprett sak fra e-post',
  'LBL_CREATE_CASE_HELP' => 'Velg automatisk å opprette en sak i Sugar fra innkommende e-post.',
  'LBL_BOUNCE_MODULE_NAME' => 'Postkasse for handtering av Bounce',
  'LNK_LIST_CREATE_NEW_GROUP' => 'Ny gruppe postkasse',
  'LNK_LIST_CREATE_NEW_BOUNCE' => 'Ny postkasse for handtering av Bounce',
  'LBL_ALLOW_OUTBOUND_GROUP_USAGE' => 'Tillat brukere å sende e-postmeldinger med "Fra" navn og adresse som svaradresse.',
  'LBL_ALLOW_OUTBOUND_GROUP_USAGE_DESC' => 'Velges dette alternativet vil Fra Navn og Fra E-postadressen tilknyttet denne gruppens mail konto vises som et alternativ i Fra-feltet når brukere som har tilgang til denne e-postkontoen skriver e-postmeldinger.',
  'LBL_ENABLE_AUTO_IMPORT' => 'Importer e-post automatisk',
  'LBL_WARNING_CHANGING_AUTO_IMPORT' => 'Advarsel: Du endrer automatisk import innstilling som kan resultere i tap av data.',
  'LBL_WARNING_CHANGING_AUTO_IMPORT_WITH_CREATE_CASE' => 'Advarsel: Auto import må være aktivert ved automatisk oppretting av saker.',
  'LBL_FIND_OPTIMUM_KEY' => 'f',
  'LBL_MAILBOX_SSL_DESC' => 'Use SSL when connecting. If this does not work, check that your PHP installation included "--with-imap-ssl" in the configuration.',
  'LBL_STATUS' => 'Status',
  'LBL_TEST_BUTTON_KEY' => 't',
  'LBL_TEST_BUTTON_TITLE' => 'Test [Alt+T]',
  'LBL_ASSIGN_TEAM' => 'Tildel til gruppe',
  'LBL_RE' => 'Vedr.:',
  'ERR_BAD_LOGIN_PASSWORD' => 'Ugyldig brukernavn eller passord.',
  'ERR_BODY_TOO_LONG' => '\\rBrødteksten er for lang for FULLSTENDIG e-post. Ble trimmet.',
  'ERR_INI_ZLIB' => 'Kan ikke slå av Zlib-komprimering midlertidig. "Test-innstillinger" kan feile.',
  'ERR_MAILBOX_FAIL' => 'Klarte ikke hente noen av e-postkontoene.',
  'ERR_NO_IMAP' => 'Fant ingen IMAP-biblioteker. Løs dette problemet før du fortsetter med Innkommet e-post.',
  'ERR_NO_OPTS_SAVED' => 'Ingen optimums ble lagret med din Innkommet e-post-konto. Kontrollér innstillingene.',
  'ERR_TEST_MAILBOX' => 'Kontrollér innstillingene og prøv igjen.',
  'LBL_APPLY_OPTIMUMS' => 'Bruk optimumer',
  'LBL_ASSIGN_TO_USER' => 'Tildel bruker',
  'LBL_AUTOREPLY_OPTIONS' => 'Valg for automatisk svar',
  'LBL_AUTOREPLY' => 'Mal for automatisk svar',
  'LBL_BASIC' => 'Grunnoppsett',
  'LBL_CASE_MACRO' => 'Saksmakro',
  'LBL_CASE_MACRO_DESC' => 'Sett makroen slik at den analyserer syntaktisk og kan brukes til å lenke importere e-postmeldinger til en Sak.',
  'LBL_CASE_MACRO_DESC2' => 'Sett denne til en hvilken som helst verdi, men behold <b>"%1"</b>. ',
  'LBL_CERT_DESC' => 'Tving frem validering av e-postserverens Sikkerhetssertifikat - ikke bruk egensignering hvis det er slått på.',
  'LBL_CERT' => 'Gjør sertifikat gyldig',
  'LBL_CLOSE_POPUP' => 'Lukk vindu',
  'LBL_CREATE_NEW_GROUP' => '--Opprett gruppe ved lagring--',
  'LBL_CREATE_TEMPLATE' => 'Opprett',
  'LBL_SUBSCRIBE_FOLDERS' => 'Abonnementmapper',
  'LBL_DEFAULT_FROM_ADDR' => 'Forhåndsinnstilt:',
  'LBL_DEFAULT_FROM_NAME' => 'Forhåndsinnstilt:',
  'LBL_DELETE_SEEN' => 'Slett leste e-postmeldinger etter import',
  'LBL_EDIT_TEMPLATE' => 'Endre',
  'LBL_EMAIL_OPTIONS' => 'Innstillinger for e-post-håndtering',
  'LBL_FILTER_DOMAIN_DESC' => 'Ikke send auto-svar til dette domenet.',
  'LBL_ASSIGN_TO_GROUP_FOLDER_DESC' => 'Å tilordne en e-postkonto til en gruppemappe, gjør automatisk importering av e-post mulig.',
  'LBL_POSSIBLE_ACTION_DESC' => 'For valget opprett sak, må en gruppemappe velges.',
  'LBL_FILTER_DOMAIN' => 'Intet auto-svar til domene',
  'LBL_FIND_OPTIMUM_MSG' => '<br>Finner optimale tilkoblingsverdier.',
  'LBL_FIND_OPTIMUM_TITLE' => 'Finn optimal innstilling',
  'LBL_FIND_SSL_WARN' => '<br>Test av SSL kan ta lang tid. Vennligst vær tålmodig.<br>',
  'LBL_FORCE_DESC' => 'Noen IMAP/POP3-servere krever spesielle brytere. Du kan prøve å tvinge en negativ bryter når du kobler til (f.eks. /notls)',
  'LBL_FORCE' => 'Tving negativ',
  'LBL_FOUND_MAILBOXES' => 'Har funnet følgende brukbare mapper.<br>Klikk på en for å velge den:',
  'LBL_FOUND_OPTIMUM_MSG' => '<br>Fant optimale innstillinger. Trykk på knappen herunder for å knytte dem til din e-postkonto.',
  'LBL_FROM_ADDR' => '"Fra"-adresse',
  'LBL_FROM_NAME_ADDR' => 'Fra navn/e-post',
  'LBL_FROM_NAME' => '"Fra"-navn',
  'LBL_GROUP_QUEUE' => 'Tildel til gruppe',
  'LBL_HOME' => 'Hjem',
  'LBL_LIST_MAILBOX_TYPE' => 'Bruk av e-postkonto',
  'LBL_LIST_NAME' => 'Navn:',
  'LBL_LIST_GLOBAL_PERSONAL' => 'Gruppe/personale:',
  'LBL_LIST_SERVER_URL' => 'E-postserver:',
  'LBL_LIST_STATUS' => 'Status:',
  'LBL_LOGIN' => 'Brukernavn',
  'LBL_MAILBOX_DEFAULT' => 'INNBOKS',
  'LBL_MAILBOX_SSL' => 'Bruk SSL',
  'LBL_MAILBOX_TYPE' => 'Mulige handlinger',
  'LBL_DISTRIBUTION_METHOD' => 'Distribusjonsmetode',
  'LBL_CREATE_CASE_REPLY_TEMPLATE' => 'Opprett svar-mal til saker',
  'LBL_MAILBOX' => 'Overvåket mappe',
  'LBL_TRASH_FOLDER' => 'Søppelkasse',
  'LBL_GET_TRASH_FOLDER' => 'Hent søppelkassen',
  'LBL_SENT_FOLDER' => 'Sendte mapper',
  'LBL_GET_SENT_FOLDER' => 'Hent sendte mapper',
  'LBL_SELECT' => 'Velg',
  'LBL_MARK_READ_DESC' => 'Marker leste meldinger ved import; ikke slett.',
  'LBL_MARK_READ_NO' => 'E-postmeldinger som ble markert etter import',
  'LBL_MARK_READ_YES' => 'E-postmeldinger som ble igjen på serveren etter import',
  'LBL_MARK_READ' => 'Forlat meldinger på serveren',
  'LBL_MAX_AUTO_REPLIES' => 'Antall auto-svar',
  'LBL_MAX_AUTO_REPLIES_DESC' => 'Bestem høyeste antall auto-svar som kan sendes til en enkelt e-postadresse i løpet av et døgn.',
  'LBL_MODULE_NAME' => 'Innstillinger for innkommende e-post',
  'LBL_MODULE_TITLE' => 'Innkommende e-post',
  'LBL_NAME' => 'Navn',
  'LBL_NONE' => 'Ingen',
  'LBL_NO_OPTIMUMS' => 'Kunne ikke finne optimum. Vennligst sjekk innstillingene din og prøv igjen.',
  'LBL_ONLY_SINCE_DESC' => 'Når du bruker POP3, kan ikke PHP filtrere Nye/Uleste meldinger. Dette flagget tillater sjekk av e-post fra og med forrige gang som e-postkontoen ble avstemt. Dette betydelig forbedre prestasjonen hvis din e-postserver ikke støtter IMAP.',
  'LBL_ONLY_SINCE_NO' => 'Nei. Kan ikke sjekke henimot alle e-postmeldinger på serveren.',
  'LBL_ONLY_SINCE_YES' => 'Ja.',
  'LBL_ONLY_SINCE' => 'Importer kun siden forrige sjekk:',
  'LBL_OUTBOUND_SERVER' => 'Server for utgående e-post',
  'LBL_PASSWORD_CHECK' => 'Sjekk passord',
  'LBL_PASSWORD' => 'Passord',
  'LBL_POP3_SUCCESS' => 'Testtilkoblingen til POP3 var vellykket.',
  'LBL_POPUP_FAILURE' => 'Testtilkoblingen mislyktes. Feilen vises nedenfor.',
  'LBL_POPUP_SUCCESS' => 'Testtilkoblingen var vellykket. Dine innstillinger virker.',
  'LBL_POPUP_TITLE' => 'Testinnstillinger',
  'LBL_GETTING_FOLDERS_LIST' => 'Henter liste over mappene',
  'LBL_SELECT_SUBSCRIBED_FOLDERS' => 'Velg Subscribed mappe(r)',
  'LBL_SELECT_TRASH_FOLDERS' => 'Velg søppelkassen',
  'LBL_SELECT_SENT_FOLDERS' => 'Velg sendt mappe',
  'LBL_DELETED_FOLDERS_LIST' => 'Den følgende mappen(e) eksisterer ikke, eller har blitt slettet fra serveren.',
  'LBL_PORT' => 'Serverport for e-post',
  'LBL_QUEUE' => 'Kø for e-postkonto',
  'LBL_REPLY_NAME_ADDR' => 'Svarsnavn/e-post',
  'LBL_REPLY_TO_NAME' => '"Svar til" navn',
  'LBL_REPLY_TO_ADDR' => '"Svar til" adresse',
  'LBL_SAME_AS_ABOVE' => 'Bruker fra navn/adresse',
  'LBL_SAVE_RAW' => 'Lagre råkilde',
  'LBL_SAVE_RAW_DESC_1' => 'Velg "ja" hvis du vil bevare råkilden for alle importerte e-postmeldinger.',
  'LBL_SAVE_RAW_DESC_2' => 'Store vedlegg kan gi problemer med mangelfulle databaser.',
  'LBL_SERVER_OPTIONS' => 'Avanserte innstillinger',
  'LBL_SERVER_TYPE' => 'Protokoll for e-postserver',
  'LBL_SERVER_URL' => 'Adresse til e-postserver',
  'LBL_SSL_DESC' => 'Hvis din e-postserver støtter sikre holdertilkoblinger, vil denne muliggjøringen av dette tvinge frem SSL-tilkoblinger ved import av e-post.',
  'LBL_ASSIGN_TO_TEAM_DESC' => 'Den valgte gruppa har tilgang til e-postkontoen. Hvis en gruppemappe er valgt, vil gruppen knytta til gruppemappen overstyre den valgte gruppa.',
  'LBL_SSL' => 'Bruk SSL',
  'LBL_SYSTEM_DEFAULT' => 'Forhåndsinnstillinger for system',
  'LBL_TEST_SETTINGS' => 'Testinnstillinger',
  'LBL_TEST_SUCCESSFUL' => 'Tilkoblingen ble opprettet med godt resultat.',
  'LBL_TEST_WAIT_MESSAGE' => 'Et øyeblikk...',
  'LBL_TLS_DESC' => 'Bruk transportlager-sikkerhet når du kobler til e-postserveren - bruk dette kun hvis din e-postserver støtter denne protokollen.',
  'LBL_TLS' => 'Bruk TLS',
  'LBL_WARN_IMAP_TITLE' => 'Innkommende e-post er koblet ut',
  'LBL_WARN_IMAP' => 'Advarsler:',
  'LBL_WARN_NO_IMAP' => 'Inkommende e-post <b>kan ikke</b> fungere uten at IMAP c-klient-biblioteketet er satt i stand og kompilert med PHP-modulen. Vennligst kontakt din administrator for å løse dette problemet.',
  'LNK_CREATE_GROUP' => 'Opprett ny gruppe',
  'LNK_LIST_MAILBOXES' => 'Alle e-postkontoer',
  'LNK_LIST_QUEUES' => 'Alle køer',
  'LNK_LIST_SCHEDULER' => 'Planleggere',
  'LNK_LIST_TEST_IMPORT' => 'Test importering av e-post',
  'LNK_NEW_QUEUES' => 'Opprett ny kø',
  'LNK_SEED_QUEUES' => 'Ta køer fra gruppene',
  'LBL_IS_PERSONAL' => 'Personlig e-postkonto',
  'LBL_GROUPFOLDER_ID' => 'Gruppemappe-ID',
  'LBL_ASSIGN_TO_GROUP_FOLDER' => 'Tildel til gruppemappe',
  'LBL_STATUS_ACTIVE' => 'Aktiv',
  'LBL_STATUS_INACTIVE' => 'Inaktive',
  'LBL_IS_GROUP' => 'Gruppe',
);

