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
  'LBL_EMAILTEMPLATE_MESSAGE_WARNING_TITLE' => 'Advarsel',
  'LBL_EMAILTEMPLATE_MESSAGE_MULTIPLE_RECIPIENTS' => 'Bruk av e-post mal som inneholder kontakt-variabler, som kontaktnavnet, for å sende e-post til flere mottakere kan gi uventede resultater. Det anbefales at du bruker en e-postkampanje for masseutsendelser.',
  'LBL_EMPTY_EMAIL_BODY' => 'Denne meldingen har ingen innhold',
  'LBL_GMAIL_SMTPPASS' => 'Gmail passord:',
  'LBL_BUGS_SUBPANEL_TITLE' => 'Bugs',
  'LBL_COLON' => ':',
  'LBL_HTML_BODY' => 'HTML Body',
  'LBL_LEADS_SUBPANEL_TITLE' => 'Leads',
  'LBL_SAVE_AS_DRAFT_BUTTON_KEY' => 'R',
  'LBL_SEND_BUTTON_KEY' => 'S',
  'LBL_SEND_BUTTON_LABEL' => 'Send',
  'LBL_SEND_BUTTON_TITLE' => 'Send [Alt+S]',
  'LBL_SEND' => 'SEND',
  'LBL_LIST_TYPE' => 'Type',
  'LBL_BUTTON_RAW_KEY' => 'e',
  'LBL_BUTTON_CHECK_KEY' => 'c',
  'LBL_BUTTON_FORWARD_KEY' => 'f',
  'LBL_BUTTON_REPLY_KEY' => 'r',
  'LBL_LIST_LEAD' => 'Leads',
  'LBL_BUTTON_DISTRIBUTE_KEY' => 'a',
  'LBL_BUTTON_GRAB_KEY' => 't',
  'LBL_IMPORT_STATUS_TITLE' => 'Status',
  'LBL_LIST_STATUS' => 'Status',
  'LBL_EMAIL_FLAGGED' => 'Flagged:',
  'LBL_TYPE' => 'Type:',
  'LBL_ADD_CC_BCC_SEP' => '|',
  'LBL_MAIL_SMTPPORT' => 'SMTP Port:',
  'LBL_MAIL_SMTPTYPE' => 'SMTP Server Type:',
  'LBL_EXCHANGE_SMTPSERVER' => 'Exchange Server:',
  'LBL_FW' => 'VS:',
  'LBL_RE' => 'Vedr.:',
  'LBL_BUTTON_CREATE' => 'Opprett',
  'LBL_BUTTON_EDIT' => 'Redigér',
  'LBL_QS_DISABLED' => '(QuickSearch er ikke tilgjengelig for denne modulen. Vennligst bruk valgknappen.)',
  'LBL_SIGNATURE_PREPEND' => 'Signatur under svar?',
  'LBL_EMAIL_DEFAULT_DESCRIPTION' => 'Her er tilbudet du etterspurte (Du kan endre denne teksten)',
  'LBL_EMAIL_QUOTE_FOR' => 'Tilbud til:',
  'LBL_QUOTE_LAYOUT_DOES_NOT_EXIST_ERROR' => 'tilbudsoppsettfilen finnes ikke: $layout',
  'LBL_QUOTE_LAYOUT_REGISTERED_ERROR' => 'tilbudsoppsettet er ikke registrert i moduler/Tilbud/Oppsett.php',
  'LBL_CONFIRM_DELETE' => 'Vil du slette denne mappen?',
  'LBL_ENTER_FOLDER_NAME' => 'Angi et mappenavn',
  'LBL_QUOTES_SUBPANEL_TITLE' => 'Tilbud',
  'LBL_EMAILS_QUOTES_REL' => 'E-post: Tilbud',
  'LBL_ERROR_SELECT_REPORT' => 'Vennligst velg en rapport',
  'LBL_ERROR_SELECT_MODULE_SELECT' => 'Vennligst velg et navn ved å klikke på valgknappen ved siden av Beslektet med felt',
  'LBL_ERROR_SELECT_MODULE' => 'Vennligst velg en modul for Beslektet med felt',
  'ERR_ARCHIVE_EMAIL' => 'Feil: Velg e-post som skal arkiveres.',
  'ERR_DATE_START' => 'Startdato',
  'ERR_DELETE_RECORD' => 'Feil: Et registreringsnummer må oppgis for å slette denne kontoen.',
  'ERR_NOT_ADDRESSED' => 'Feil: E-postmeldinger må ha Til-, Kopi-, og Blindkopiadresser',
  'ERR_TIME_START' => 'Starttid',
  'ERR_TIME_SENT' => 'Tidspunkt sendt:',
  'LBL_ACCOUNTS_SUBPANEL_TITLE' => 'Bedrifter',
  'LBL_ADD_ANOTHER_FILE' => 'Legg til en fil',
  'LBL_ADD_DASHLETS' => 'Legg til dashlets',
  'LBL_ADD_DOCUMENT' => 'Legg til Sugar-dokument',
  'LBL_ADD_ENTRIES' => 'Legg til nye',
  'LBL_ADD_FILE' => 'Legg til fil fra filsystemet',
  'LBL_ARCHIVED_EMAIL' => 'Arkivert e-post',
  'LBL_ARCHIVED_MODULE_NAME' => 'Opprett arkivert e-post',
  'LBL_ATTACHMENTS' => 'Vedlegg:',
  'LBL_HAS_ATTACHMENT' => 'Har vedlegg?',
  'LBL_BCC' => 'Blindkopi:',
  'LBL_BODY' => 'Tekst:',
  'LBL_CC' => 'Kopi:',
  'LBL_COMPOSE_MODULE_NAME' => 'Opprett e-post',
  'LBL_CONTACT_FIRST_NAME' => 'Kontaktens fornavn',
  'LBL_CONTACT_LAST_NAME' => 'Kontaktens etternavn',
  'LBL_CONTACT_NAME' => 'Kontakt:',
  'LBL_CONTACTS_SUBPANEL_TITLE' => 'Kontakter',
  'LBL_CREATED_BY' => 'Opprettet av',
  'LBL_DATE_AND_TIME' => 'Sendt, dato & kl.',
  'LBL_DATE_SENT' => 'Sendt-dato:',
  'LBL_DATE' => 'Sendt-dato:',
  'LBL_DELETE_FROM_SERVER' => 'Slett melding fra server',
  'LBL_DESCRIPTION' => 'Beskrivelse',
  'LBL_EDIT_ALT_TEXT' => 'Redigér vanlig tekst',
  'LBL_SEND_IN_PLAIN_TEXT' => 'Send som ren tekst',
  'LBL_EDIT_MY_SETTINGS' => 'Redigér mine innstillinger',
  'LBL_EMAIL_ATTACHMENT' => 'E-postvedlegg',
  'LBL_EMAIL_EDITOR_OPTION' => 'Send e-post i HTML-format',
  'LBL_EMAIL_SELECTOR' => 'Velg',
  'LBL_EMAIL' => 'E-post:',
  'LBL_EMAILS_ACCOUNTS_REL' => 'E-post: Bedrifter',
  'LBL_EMAILS_BUGS_REL' => 'E-post: Feil',
  'LBL_EMAILS_CASES_REL' => 'E-post: Saker',
  'LBL_EMAILS_CONTACTS_REL' => 'E-post: Kontakter',
  'LBL_EMAILS_LEADS_REL' => 'E-post: Leads',
  'LBL_EMAILS_OPPORTUNITIES_REL' => 'E-post: Muligheter',
  'LBL_EMAILS_NOTES_REL' => 'E-post: Notater',
  'LBL_EMAILS_PROJECT_REL' => 'E-post: Prosjekt',
  'LBL_EMAILS_PROJECT_TASK_REL' => 'E-post: Prosjektoppgave',
  'LBL_EMAILS_PROSPECT_REL' => 'E-post: Prospekter',
  'LBL_EMAILS_TASKS_REL' => 'E-post: Oppgaver',
  'LBL_EMAILS_USERS_REL' => 'E-post: Brukere',
  'LBL_EMPTY_FOLDER' => 'Ingen e-poster for visning',
  'LBL_ERROR_SENDING_EMAIL' => 'Feil ved sending av e-post',
  'LBL_ERROR_SAVING_DRAFT' => 'Feil ved lagring utkast',
  'LBL_FORWARD_HEADER' => 'Start videresendt melding:',
  'LBL_FROM_NAME' => 'Fra-navn',
  'LBL_FROM' => 'Fra:',
  'LBL_REPLY_TO' => 'Svar til:',
  'LBL_INVITEE' => 'Mottagere',
  'LBL_MESSAGE_SENT' => 'Melding sendt',
  'LBL_MODIFIED_BY' => 'Endret av',
  'LBL_MODULE_NAME_NEW' => 'Arkivér e-post',
  'LBL_MODULE_NAME' => 'All e-post',
  'LBL_MODULE_TITLE' => 'E-post:',
  'LBL_MY_EMAILS' => 'Mine e-poster',
  'LBL_NEW_FORM_TITLE' => 'Arkivér e-post',
  'LBL_NONE' => 'Ingen',
  'LBL_NOT_SENT' => 'Mislykket sending',
  'LBL_NOTE_SEMICOLON' => 'Merk: Bruk komma eller semikolon for å skille mellom flere e-postadresser.',
  'LBL_NOTES_SUBPANEL_TITLE' => 'Vedlegg',
  'LBL_OPPORTUNITY_SUBPANEL_TITLE' => 'Muligheter',
  'LBL_PROJECT_SUBPANEL_TITLE' => 'Prosjekter',
  'LBL_PROJECT_TASK_SUBPANEL_TITLE' => 'Prosjektoppgaver',
  'LBL_RAW' => 'Utkast til e-post',
  'LBL_SAVE_AS_DRAFT_BUTTON_LABEL' => 'Lagre utkast',
  'LBL_SAVE_AS_DRAFT_BUTTON_TITLE' => 'Lagre utkast [Alt+R]',
  'LBL_SEARCH_FORM_DRAFTS_TITLE' => 'Søk i utkast',
  'LBL_SEARCH_FORM_SENT_TITLE' => 'Søk i sendt e-post',
  'LBL_SEARCH_FORM_TITLE' => 'E-postsøk',
  'LBL_SEND_ANYWAYS' => 'Denne e-postmeldingen har intet emne. Vil du sende/lagre likevel?',
  'LBL_SENT_MODULE_NAME' => 'Sendt e-post',
  'LBL_SHOW_ALT_TEXT' => 'Vis vanlig tekst',
  'LBL_SIGNATURE' => 'Signatur',
  'LBL_SUBJECT' => 'Emne:',
  'LBL_TEXT_BODY' => 'Brødtekst',
  'LBL_TIME' => 'Sendt:',
  'LBL_TO_ADDRS' => 'Til',
  'LBL_USE_TEMPLATE' => 'Bruk mal:',
  'LBL_USERS_SUBPANEL_TITLE' => 'Brukere',
  'LBL_USERS' => 'Brukere',
  'LNK_ALL_EMAIL_LIST' => 'All e-post',
  'LNK_ARCHIVED_EMAIL_LIST' => 'Arkivert e-post',
  'LNK_CALL_LIST' => 'Oppringninger',
  'LNK_DRAFTS_EMAIL_LIST' => 'Alle utkast',
  'LNK_EMAIL_LIST' => 'E-post',
  'LBL_EMAIL_RELATE' => 'Knytt til',
  'LNK_EMAIL_TEMPLATE_LIST' => 'E-postmaler',
  'LNK_MEETING_LIST' => 'Møter',
  'LNK_NEW_ARCHIVE_EMAIL' => 'Opprett arkivert e-post',
  'LNK_NEW_CALL' => 'Opprett oppringning',
  'LNK_NEW_EMAIL_TEMPLATE' => 'Opprett e-postmal',
  'LNK_NEW_EMAIL' => 'Arkivér e-post',
  'LNK_NEW_MEETING' => 'Opprett møte',
  'LNK_NEW_NOTE' => 'Opprett notat eller vedlegg',
  'LNK_NEW_SEND_EMAIL' => 'Opprett e-post',
  'LNK_NEW_TASK' => 'Opprett oppgave',
  'LNK_NOTE_LIST' => 'Notater',
  'LNK_SENT_EMAIL_LIST' => 'Sendt e-post',
  'LNK_TASK_LIST' => 'Oppgaver',
  'LNK_VIEW_CALENDAR' => 'I dag',
  'LBL_LIST_ASSIGNED' => 'Tildelt',
  'LBL_LIST_CONTACT_NAME' => 'Kontaktens navn',
  'LBL_LIST_CREATED' => 'Opprettet',
  'LBL_LIST_DATE_SENT' => 'Sendt-dato',
  'LBL_LIST_DATE' => 'Sendt-dato',
  'LBL_LIST_FORM_DRAFTS_TITLE' => 'Utkast',
  'LBL_LIST_FORM_SENT_TITLE' => 'Sendt e-post',
  'LBL_LIST_FORM_TITLE' => 'E-postliste',
  'LBL_LIST_FROM_ADDR' => 'Fra',
  'LBL_LIST_RELATED_TO' => 'Beslektet med',
  'LBL_LIST_SUBJECT' => 'Emne',
  'LBL_LIST_TIME' => 'Sendt-tidspunkt',
  'LBL_LIST_TO_ADDR' => 'Til',
  'NTC_REMOVE_INVITEE' => 'Er du sikker på at du vil fjerne denne mottakeren fra e-postmeldingen?',
  'WARNING_SETTINGS_NOT_CONF' => 'Advarsel: Dine e-postinnstillinger er ikke konfigurert for å sende e-post.',
  'WARNING_NO_UPLOAD_DIR' => 'Vedlegg kan mislykkes: Ingen verdi for "upload_tmp_dir" ble funnet. Vennligst rett opp dette i din php.ini-fil.',
  'WARNING_UPLOAD_DIR_NOT_WRITABLE' => 'Vedlegg kan mislykkes: En ugyldig eller ubrukelig verdi for "upload_tmp_dir" ble oppdaget. Vennligst rett opp dette i din php.ini-fil.',
  'LBL_BUTTON_RAW_TITLE' => 'Vis rå melding [Alt+E]',
  'LBL_BUTTON_RAW_LABEL' => 'Vis rå',
  'LBL_BUTTON_RAW_LABEL_HIDE' => 'Skjul rå',
  'LBL_BUTTON_CHECK' => 'Sjekk e-post',
  'LBL_BUTTON_CHECK_TITLE' => 'Sjekk ny e-post [Alt+C]',
  'LBL_BUTTON_FORWARD' => 'Videresend',
  'LBL_BUTTON_FORWARD_TITLE' => 'Videresend denne meldingen [Alt+F]',
  'LBL_BUTTON_REPLY_TITLE' => 'Svar [Alt+R]',
  'LBL_BUTTON_REPLY' => 'Svar',
  'LBL_CASES_SUBPANEL_TITLE' => 'Saker',
  'LBL_INBOUND_TITLE' => 'Innkommet e-post',
  'LBL_INTENT' => 'Hensikt',
  'LBL_MESSAGE_ID' => 'Meldings-ID',
  'LBL_REPLY_HEADER_1' => 'På',
  'LBL_REPLY_HEADER_2' => 'skrev:',
  'LBL_REPLY_TO_ADDRESS' => 'Svar-til-adresse',
  'LBL_REPLY_TO_NAME' => 'Svar-til-navn',
  'LBL_LIST_BUG' => 'Feil',
  'LBL_LIST_CASE' => 'Saker',
  'LBL_LIST_CONTACT' => 'Kontakter',
  'LBL_LIST_TASK' => 'Oppgaver',
  'LBL_LIST_ASSIGNED_TO_NAME' => 'Tildelt bruker',
  'LBL_ALL' => 'Alle',
  'LBL_ASSIGN_WARN' => 'Begge må være valgt.',
  'LBL_BACK_TO_GROUP' => 'Tilbake til gruppens innkurv',
  'LBL_BUTTON_DISTRIBUTE_TITLE' => 'Tildel [Alt+A]',
  'LBL_BUTTON_DISTRIBUTE' => 'Tildel',
  'LBL_BUTTON_GRAB_TITLE' => 'Ta fra gruppe [Alt+T]',
  'LBL_BUTTON_GRAB' => 'Ta fra gruppe',
  'LBL_CREATE_BUG' => 'Opprett feil',
  'LBL_CREATE_CASE' => 'Opprett sak',
  'LBL_CREATE_CONTACT' => 'Opprett kontakt',
  'LBL_CREATE_LEAD' => 'Opprett lead',
  'LBL_CREATE_TASK' => 'Opprett oppgave',
  'LBL_DIST_TITLE' => 'Tildeling',
  'LBL_LOCK_FAIL_DESC' => 'Det du valgte er ikke tilgjengelig.',
  'LBL_LOCK_FAIL_USER' => 'har eierskap.',
  'LBL_MASS_DELETE_ERROR' => 'Ingen av de valgte ble slettet.',
  'LBL_NEW' => 'Ny',
  'LBL_NEXT_EMAIL' => 'Neste ledige objekt',
  'LBL_NO_GRAB_DESC' => 'Ingen tilgjengelig. Prøv igjen senere.',
  'LBL_QUICK_REPLY' => 'Svar',
  'LBL_REPLIED' => 'Svart',
  'LBL_SELECT_TEAM' => 'Velg team',
  'LBL_TAKE_ONE_TITLE' => 'Representanter',
  'LBL_TITLE_SEARCH_RESULTS' => 'Søkeresultat',
  'LBL_TO' => 'Til:',
  'LBL_TOGGLE_ALL' => 'Toggle alle',
  'LBL_UNKNOWN' => 'Ukjent',
  'LBL_UNREAD_HOME' => 'Ulest e-post',
  'LBL_UNREAD' => 'Ulest',
  'LBL_USE_ALL' => 'Alle søkeresultater',
  'LBL_USE_CHECKED' => 'Bare valgte',
  'LBL_USE_MAILBOX_INFO' => 'Bruk innkurven fra: Adresse',
  'LBL_USE' => 'Tildel:',
  'LBL_ASSIGN_SELECTED_RESULTS_TO' => 'Tildel valgte resultater til:',
  'LBL_USER_SELECT' => 'Velg brukere',
  'LBL_USING_RULES' => 'Bruker regler:',
  'LBL_WARN_NO_DIST' => 'Ingen distribusjonsmåte er valgt.',
  'LBL_WARN_NO_USERS' => 'Ingen brukere er valgt.',
  'LBL_WARN_NO_USERS_OR_TEAM' => 'Velg enten en bruker eller team for tildeling',
  'LBL_LIST_TITLE_GROUP_INBOX' => 'Gruppeinnkurv',
  'LBL_LIST_TITLE_MY_DRAFTS' => 'Mine utkast',
  'LBL_LIST_TITLE_MY_INBOX' => 'Min innkurv',
  'LBL_LIST_TITLE_MY_SENT' => 'Min sendte e-post',
  'LBL_LIST_TITLE_MY_ARCHIVES' => 'Min arkiverte e-post',
  'LBL_ACTIVITIES_REPORTS' => 'Aktivitets Rapport',
  'LNK_CHECK_MY_INBOX' => 'Sjekk e-posten min',
  'LNK_DATE_SENT' => 'Sendt-dato',
  'LNK_GROUP_INBOX' => 'Gruppeinnkurv',
  'LNK_MY_DRAFTS' => 'Mine utkast',
  'LNK_MY_INBOX' => 'Min e-post',
  'LNK_VIEW_MY_INBOX' => 'Se min e-post',
  'LNK_QUICK_REPLY' => 'Svar',
  'LNK_MY_ARCHIVED_LIST' => 'Mine arkiver',
  'LBL_EMAILS_NO_PRIMARY_TEAM_SPECIFIED' => 'Primært team ikke spesifisert',
  'LBL_ASSIGNED_TO' => 'Tildelt:',
  'LBL_MEMBER_OF' => 'Overordnet',
  'LBL_QUICK_CREATE' => 'Rask oppretting',
  'LBL_STATUS' => 'E-poststatus:',
  'LBL_EMAIL_REPLY_TO_STATUS' => 'Svar til status:',
  'LBL_EMAILTEMPLATE_MESSAGE_SHOW_TITLE' => 'Vennligst, sjekk!',
  'LBL_EMAILTEMPLATE_MESSAGE_SHOW_MSG' => 'Er du sikker på at du vil erstatte malen? Dette vil føre til tap av data du har lagt inn!',
  'LBL_EMAILTEMPLATE_MESSAGE_CLEAR_MSG' => 'Valg av "- Ingen -" sletter data som allerede er skrevet i e-post innholdet. Ønsker du å fortsette?',
  'LBL_CHECK_ATTACHMENTS' => 'Sjekk vedlegg!',
  'LBL_HAS_ATTACHMENTS' => 'Denne e-posten har allerede vedlegg. Ønsker du å beholde vedlegg(ene)?',
  'ERR_MISSING_REQUIRED_FIELDS' => 'Du må fylle ut felt',
  'ERR_INVALID_REQUIRED_FIELDS' => 'Ugyldig påkrevet felt',
  'LBL_FILTER_BY_RELATED_BEAN' => 'Bare vis mottakere knyttet til',
  'LBL_RECIPIENTS_HAVE_BEEN_ADDED' => 'Mottakerne har blitt lagt til',
  'LBL_ADD_INBOUND_ACCOUNT' => 'Legg til',
  'LBL_ADD_OUTBOUND_ACCOUNT' => 'Legg til',
  'LBL_EMAIL_ACCOUNTS_INBOUND' => 'E-postkonto egenskaper',
  'LBL_EMAIL_SETTINGS_OUTBOUND_ACCOUNT' => 'Utgående SMTP e-post server',
  'LBL_EMAIL_SETTINGS_OUTBOUND_ACCOUNTS' => 'Utgående SMTP e-post servere',
  'LBL_EMAIL_SETTINGS_INBOUND_ACCOUNTS' => 'E-postkonto',
  'LBL_EMAIL_SETTINGS_INBOUND' => 'Innkommende e-post',
  'LBL_EMAIL_SETTINGS_OUTBOUND' => 'Utgående e-post',
  'LBL_ADD_CC' => 'Legg til Cc',
  'LBL_ADD_BCC' => 'Legg til Bcc',
  'LBL_ADD_TO_ADDR' => 'Legg til',
  'LBL_SELECTED_ADDR' => 'Valgt',
  'LBL_SEND_EMAIL_FAIL_TITLE' => 'Feil ved sending av e-post',
  'LBL_EMAIL_DETAIL_VIEW_SHOW' => 'vis',
  'LBL_EMAIL_DETAIL_VIEW_MORE' => 'mer',
  'LBL_MORE_OPTIONS' => 'Mer',
  'LBL_LESS_OPTIONS' => 'Mindre',
  'LBL_MAILBOX_TYPE_PERSONAL' => 'Personlig',
  'LBL_MAILBOX_TYPE_GROUP' => 'Gruppe',
  'LBL_MAILBOX_TYPE_GROUP_FOLDER' => 'Gruppe - Auto-Import',
  'LBL_SEARCH_FOR' => 'Søk etter',
  'LBL_EMAIL_INBOUND_TYPE_HELP' => 'Personlig: E-post konto tilgjengelig for deg. Bare du kan håndtere og importere e-post fra denne kontoen.<br />Gruppe: E-post konto tilgjengelig for medlemmer av angitt team. Team medlemmer kan administrere og importere e-post fra denne kontoen.<br />Group - auto-import: E-post konto tilgjengelig for medlemmer av angitt team. E-poster blir automatisk importert som poster.',
  'LBL_ADDRESS_BOOK_SEARCH_HELP' => 'Skriv en e-postadresse, fornavn, etternavn eller Bedrifsnavn for å finne mottakere.',
  'LBL_TEST_SETTINGS' => 'Testinnstillinger',
  'LBL_TEST_EMAIL_SUBJECT' => 'Test e-post fra Sugar',
  'LBL_NO_SUBJECT' => '(intet emne)',
  'LBL_CHECKING_ACCOUNT' => 'Brukskonto',
  'LBL_OF' => 'av',
  'LBL_TEST_EMAIL_BODY' => 'Denne e-posten ble sendt for å teste informasjonen om den utgående e-postserver gitt i Sugar. Et vellykket mottak av denne e-posten tyder på at informasjonen til utgående e-postserver er gyldig.',
  'LBL_MAIL_SMTPUSER' => 'SMTP Brukernavn',
  'LBL_MAIL_SMTPPASS' => 'SMTP Passord:',
  'LBL_MAIL_SMTPSERVER' => 'SMTP Server',
  'LBL_SMTP_SERVER_HELP' => 'SMTP e-post serveren kan brukes for utgående e-post. Legg inn et brukernavn og passord for e-postkontoen for å bruke e-postserveren.',
  'LBL_MISSING_DEFAULT_OUTBOUND_SMTP_SETTINGS' => 'Administrator har ennå ikke konfigurert standard utgående konto. Kan ikke sende test e-post.',
  'LBL_MAIL_SMTPAUTH_REQ' => 'Bruke SMTP godkjenning?',
  'LBL_MAIL_SMTP_SETTINGS' => 'SMTP server spesifikasjon',
  'LBL_CHOOSE_EMAIL_PROVIDER' => 'Velg din e-postleverandør',
  'LBL_YAHOOMAIL_SMTPPASS' => 'Yahoo! e-post passord',
  'LBL_YAHOOMAIL_SMTPUSER' => 'Yahoo! e-post ID',
  'LBL_GMAIL_SMTPUSER' => 'Gmail e-postadresse:',
  'LBL_EXCHANGE_SMTPPASS' => 'Exchange passord:',
  'LBL_EXCHANGE_SMTPUSER' => 'Exchange brukernavn:',
  'LBL_EXCHANGE_SMTPPORT' => 'Exchange Serverport:',
);
