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
  'LBL_COLON' => ':',
  'LBL_SAVE_AS_DRAFT_BUTTON_KEY' => 'R',
  'LBL_SEND_BUTTON_KEY' => 'S',
  'LBL_BUTTON_RAW_KEY' => 'e',
  'LBL_BUTTON_CHECK_KEY' => 'c',
  'LBL_BUTTON_FORWARD_KEY' => 'f',
  'LBL_BUTTON_REPLY_KEY' => 'r',
  'LBL_BUTTON_DISTRIBUTE_KEY' => 'a',
  'LBL_BUTTON_GRAB_KEY' => 't',
  'LBL_ADD_CC_BCC_SEP' => '|',
  'LBL_FW' => 'ILET:',
  'LBL_RE' => 'YNT:',
  'LBL_BUTTON_CREATE' => 'Oluştur',
  'LBL_BUTTON_EDIT' => 'Düzenle',
  'LBL_QS_DISABLED' => '(Bu modül için HızlıArama geçerli değil. Lütfen seçim tuşuna basın.)',
  'LBL_SIGNATURE_PREPEND' => 'İmza yanıt üzerinde mi?',
  'LBL_EMAIL_DEFAULT_DESCRIPTION' => 'Talep ettiğiniz teklif buradadır (Bu metni değiştirebilirsiniz)',
  'LBL_EMAIL_QUOTE_FOR' => 'Teklifin Hazırlandığı Kişi:',
  'LBL_QUOTE_LAYOUT_DOES_NOT_EXIST_ERROR' => 'teklif yapı dosyası bulunamadı: $layout',
  'LBL_QUOTE_LAYOUT_REGISTERED_ERROR' => 'teklif yapı dosyası modules/Quotes/Layouts.php içinde tanımlı değil',
  'LBL_CONFIRM_DELETE' => 'Bu dizini silmek istediğinizden emin misiniz?',
  'LBL_ENTER_FOLDER_NAME' => 'Lütfen bir dizin ismi giriniz',
  'LBL_QUOTES_SUBPANEL_TITLE' => 'Teklifler',
  'LBL_EMAILS_QUOTES_REL' => 'E-Postalar: Teklifler',
  'LBL_ERROR_SELECT_REPORT' => 'Lütfen bir rapor seçin',
  'LBL_ERROR_SELECT_MODULE_SELECT' => 'İlgili alanın yanındaki seç butonuna basarak bir isim seçin',
  'LBL_ERROR_SELECT_MODULE' => 'Lütfen ilişkilendirmek için bir modül seçiniz',
  'ERR_ARCHIVE_EMAIL' => 'Hata: arşivlemek için E-Posta seçiniz',
  'ERR_DATE_START' => 'Başlama Tarihi',
  'ERR_DELETE_RECORD' => 'Hata: Müşteriyi silmek için kayıt nosu belirtilmelidir.',
  'ERR_NOT_ADDRESSED' => 'Hata: E-Posta Alıcı, Bilgi veya GizliBilgi adresine sahip olmalıdır',
  'ERR_TIME_START' => 'Başlama Zamanı',
  'ERR_TIME_SENT' => 'Gönderilme Zamanı',
  'LBL_ACCOUNTS_SUBPANEL_TITLE' => 'Müşteriler',
  'LBL_ADD_ANOTHER_FILE' => 'Diğer Dosyayı Ekle',
  'LBL_ADD_DASHLETS' => 'Sugar Dashlet\'leri ekle',
  'LBL_ADD_DOCUMENT' => 'Doküman ekle',
  'LBL_ADD_ENTRIES' => 'Giriş Ekle',
  'LBL_ADD_FILE' => 'Dosya ekle',
  'LBL_ARCHIVED_EMAIL' => 'Arşivlenmiş E-Posta',
  'LBL_ARCHIVED_MODULE_NAME' => 'Arşivlenmiş E-Posta oluştur',
  'LBL_ATTACHMENTS' => 'Ekler:',
  'LBL_HAS_ATTACHMENT' => 'Ek var mı?:',
  'LBL_BCC' => 'GizliBilgi:',
  'LBL_BODY' => 'Gövde:',
  'LBL_BUGS_SUBPANEL_TITLE' => 'Hatalar',
  'LBL_CC' => 'Bilgi:',
  'LBL_COMPOSE_MODULE_NAME' => 'E-Posta Oluştur',
  'LBL_CONTACT_FIRST_NAME' => 'Kontak Adı',
  'LBL_CONTACT_LAST_NAME' => 'Kontak Soyadı',
  'LBL_CONTACT_NAME' => 'Kontak:',
  'LBL_CONTACTS_SUBPANEL_TITLE' => 'Kontaklar',
  'LBL_CREATED_BY' => 'Oluşturan:',
  'LBL_DATE_AND_TIME' => 'Gönderi Tarih & Saat:',
  'LBL_DATE_SENT' => 'Gönderi Tarihi:',
  'LBL_DATE' => 'Gönderi Tarihi:',
  'LBL_DELETE_FROM_SERVER' => 'Mesajı sunucudan sil',
  'LBL_DESCRIPTION' => 'Tanım',
  'LBL_EDIT_ALT_TEXT' => 'Düz Metin Değiştir',
  'LBL_SEND_IN_PLAIN_TEXT' => 'Düz Metin gönder',
  'LBL_EDIT_MY_SETTINGS' => 'Ayarlarımı Değiştir',
  'LBL_EMAIL_ATTACHMENT' => 'E-Posta Eki',
  'LBL_EMAIL_EDITOR_OPTION' => 'HTML E-Posta Gönder',
  'LBL_EMAIL_SELECTOR' => 'Seç',
  'LBL_EMAIL' => 'E-Posta Adresi:',
  'LBL_EMAILS_ACCOUNTS_REL' => 'E-Postalar: Müşteriler',
  'LBL_EMAILS_BUGS_REL' => 'E-Postalar: Hatalar',
  'LBL_EMAILS_CASES_REL' => 'E-Postalar:Talepler',
  'LBL_EMAILS_CONTACTS_REL' => 'E-Postalar: Kontaklar',
  'LBL_EMAILS_LEADS_REL' => 'E-Postalar: Potansiyeller',
  'LBL_EMAILS_OPPORTUNITIES_REL' => 'E-Postalar: Fırsatlar',
  'LBL_EMAILS_NOTES_REL' => 'E-Postalar: Notlar',
  'LBL_EMAILS_PROJECT_REL' => 'E-Postalar: Proje',
  'LBL_EMAILS_PROJECT_TASK_REL' => 'E-Postalar: Proje Görevleri',
  'LBL_EMAILS_PROSPECT_REL' => 'E-Postalar: Aday Müşteriler',
  'LBL_EMAILS_TASKS_REL' => 'E-Postalar: Görevler',
  'LBL_EMAILS_USERS_REL' => 'E-Postalar: Kullanıcılar',
  'LBL_EMPTY_FOLDER' => 'Gösterilebilecek herhangi bir E-Posta yok.',
  'LBL_ERROR_SENDING_EMAIL' => 'E-Posta Gönderiminde Hata',
  'LBL_ERROR_SAVING_DRAFT' => 'Taslak Kaydetme Hatası',
  'LBL_FORWARD_HEADER' => 'Yönlendirilen Mesaja Başla:',
  'LBL_FROM_NAME' => '"Kimden" İsmi',
  'LBL_FROM' => 'Kimden:',
  'LBL_REPLY_TO' => 'Yanıt Verilecek Kişi:',
  'LBL_HTML_BODY' => 'HTML İçeriği',
  'LBL_INVITEE' => 'Alıcılar',
  'LBL_LEADS_SUBPANEL_TITLE' => 'Potansiyeller',
  'LBL_MESSAGE_SENT' => 'Mesaj Gönderildi',
  'LBL_MODIFIED_BY' => 'Değiştiren:',
  'LBL_MODULE_NAME_NEW' => 'E-Posta Arşivle',
  'LBL_MODULE_NAME' => 'Tüm E-Postalar',
  'LBL_MODULE_TITLE' => 'E-Postalar:',
  'LBL_MY_EMAILS' => 'E-Postalarım',
  'LBL_NEW_FORM_TITLE' => 'E-Posta Arşivle',
  'LBL_NONE' => 'boş',
  'LBL_NOT_SENT' => 'Gönderim Hatası',
  'LBL_NOTE_SEMICOLON' => 'Not: Birden fazla alıcı adresi için virgül ya da noktalı virgülü ayraç olarak kullanın.',
  'LBL_NOTES_SUBPANEL_TITLE' => 'Ekler',
  'LBL_OPPORTUNITY_SUBPANEL_TITLE' => 'Fırsatlar',
  'LBL_PROJECT_SUBPANEL_TITLE' => 'Projeler',
  'LBL_PROJECT_TASK_SUBPANEL_TITLE' => 'Proje Adımları',
  'LBL_RAW' => 'İşlenmemiş E-Posta',
  'LBL_SAVE_AS_DRAFT_BUTTON_LABEL' => 'Taslak Olarak Kaydet',
  'LBL_SAVE_AS_DRAFT_BUTTON_TITLE' => 'Taslak Olarak Kaydet[Alt+R]',
  'LBL_SEARCH_FORM_DRAFTS_TITLE' => 'Taslaklarda Ara',
  'LBL_SEARCH_FORM_SENT_TITLE' => 'Gönderilen E-Postalarda Ara',
  'LBL_SEARCH_FORM_TITLE' => 'E-Posta Ara',
  'LBL_SEND_ANYWAYS' => 'Bu E-Postada konu yok.  Göndermek/Saklamak istiyor musunuz?',
  'LBL_SEND_BUTTON_LABEL' => 'Gönder',
  'LBL_SEND_BUTTON_TITLE' => 'Gönder [Alt+S]',
  'LBL_SEND' => 'GÖNDER',
  'LBL_SENT_MODULE_NAME' => 'Gönderilen E-Postalar',
  'LBL_SHOW_ALT_TEXT' => 'Düz Metin Göster',
  'LBL_SIGNATURE' => 'İmza',
  'LBL_SUBJECT' => 'Konu:',
  'LBL_TEXT_BODY' => 'Metin İçeriği',
  'LBL_TIME' => 'Gönderi Tarihi:',
  'LBL_TO_ADDRS' => 'Kime',
  'LBL_USE_TEMPLATE' => 'Şablon Kullan:',
  'LBL_USERS_SUBPANEL_TITLE' => 'Kullanıcılar',
  'LBL_USERS' => 'Kullanıcılar',
  'LNK_ALL_EMAIL_LIST' => 'Tüm E-Postalar',
  'LNK_ARCHIVED_EMAIL_LIST' => 'Arşivlenmiş E-Postalar',
  'LNK_CALL_LIST' => 'Tel.Aramaları',
  'LNK_DRAFTS_EMAIL_LIST' => 'Bütün Taslaklar',
  'LNK_EMAIL_LIST' => 'E-Postalar',
  'LBL_EMAIL_RELATE' => 'İlişkili Olarak',
  'LNK_EMAIL_TEMPLATE_LIST' => 'E-Posta Şablonları',
  'LNK_MEETING_LIST' => 'Toplantılar',
  'LNK_NEW_ARCHIVE_EMAIL' => 'Arşivlenmiş E-Posta Oluştur',
  'LNK_NEW_CALL' => 'Tel.Araması Planlama',
  'LNK_NEW_EMAIL_TEMPLATE' => 'E-Posta Şablonu Oluştur',
  'LNK_NEW_EMAIL' => 'E-Posta Gönder',
  'LNK_NEW_MEETING' => 'Toplantı Planla',
  'LNK_NEW_NOTE' => 'Not veya Ek oluştur',
  'LNK_NEW_SEND_EMAIL' => 'E-Posta Düzenle',
  'LNK_NEW_TASK' => 'Görev Oluştur',
  'LNK_NOTE_LIST' => 'Notlar',
  'LNK_SENT_EMAIL_LIST' => 'Gönderilen E-Postalar',
  'LNK_TASK_LIST' => 'Görevler',
  'LNK_VIEW_CALENDAR' => 'Bugün',
  'LBL_LIST_ASSIGNED' => 'Atanmış',
  'LBL_LIST_CONTACT_NAME' => 'Kontak Adı',
  'LBL_LIST_CREATED' => 'Oluşturulduğu Tarih',
  'LBL_LIST_DATE_SENT' => 'Gönderi Tarihi',
  'LBL_LIST_DATE' => 'Gönderi Tarihi',
  'LBL_LIST_FORM_DRAFTS_TITLE' => 'Taslak',
  'LBL_LIST_FORM_SENT_TITLE' => 'Gönderilen E-Postalar',
  'LBL_LIST_FORM_TITLE' => 'E-Posta Listesi',
  'LBL_LIST_FROM_ADDR' => 'Kimden',
  'LBL_LIST_RELATED_TO' => 'Alıcı Tipi',
  'LBL_LIST_SUBJECT' => 'Konu',
  'LBL_LIST_TIME' => 'Gönderi Tarihi',
  'LBL_LIST_TO_ADDR' => 'Kime',
  'LBL_LIST_TYPE' => 'Tip',
  'NTC_REMOVE_INVITEE' => 'Alıcıyı E-Postadan kaldırmak istediğinizden emin misiniz?',
  'WARNING_SETTINGS_NOT_CONF' => 'Uyarı: E-Posta ayarlarınız E-Posta gönderimi için uygun bir şekilde düzenlenmemiş.',
  'WARNING_NO_UPLOAD_DIR' => 'Ekler çalışmayabilir: "upload_tmp_dir" için bir değer yok.  Lütfen bunu php.ini dosyasında düzeltin.',
  'WARNING_UPLOAD_DIR_NOT_WRITABLE' => 'Ekler çalışmayabilir: "upload_tmp_dir" için hatalı bir değer bulundu.  Lütfen bunu php.ini dosyasında düzeltin.',
  'LBL_BUTTON_RAW_TITLE' => 'İşlenmemiş Mesajı Göster [Alt+E]',
  'LBL_BUTTON_RAW_LABEL' => 'İşlenmemiş Mesajı Göster',
  'LBL_BUTTON_RAW_LABEL_HIDE' => 'İşlenmemiş Mesajı Gizle',
  'LBL_BUTTON_CHECK' => 'Posta Kontrol Et',
  'LBL_BUTTON_CHECK_TITLE' => 'Yeni E-Posta Kontrol Et [Alt+C]',
  'LBL_BUTTON_FORWARD' => 'İlet',
  'LBL_BUTTON_FORWARD_TITLE' => 'E-Postayı İlet [Alt+F]',
  'LBL_BUTTON_REPLY_TITLE' => 'Yanıtla[Alt+R]',
  'LBL_BUTTON_REPLY' => 'Yanıtla',
  'LBL_CASES_SUBPANEL_TITLE' => 'Talepler',
  'LBL_INBOUND_TITLE' => 'Gelen E-Posta',
  'LBL_INTENT' => 'Amaç',
  'LBL_MESSAGE_ID' => 'Mesaj ID',
  'LBL_REPLY_HEADER_1' => 'Üzerinde',
  'LBL_REPLY_HEADER_2' => 'yazıldı:',
  'LBL_REPLY_TO_ADDRESS' => '"Kime" Adres',
  'LBL_REPLY_TO_NAME' => '"Kime" İsim',
  'LBL_LIST_BUG' => 'Hatalar',
  'LBL_LIST_CASE' => 'Talepler',
  'LBL_LIST_CONTACT' => 'Kontaklar',
  'LBL_LIST_LEAD' => 'Potansiyeller',
  'LBL_LIST_TASK' => 'Görevler',
  'LBL_LIST_ASSIGNED_TO_NAME' => 'Atanan Kullanıcı',
  'LBL_ALL' => 'Tümü',
  'LBL_ASSIGN_WARN' => 'Her 2 seçeneğin seçildiğinden emin olun.',
  'LBL_BACK_TO_GROUP' => 'Grup gelen kutusuna geri dönün',
  'LBL_BUTTON_DISTRIBUTE_TITLE' => 'Ata [Alt+A]',
  'LBL_BUTTON_DISTRIBUTE' => 'Ata',
  'LBL_BUTTON_GRAB_TITLE' => 'Gruptan Al [Alt+T]',
  'LBL_BUTTON_GRAB' => 'Gruptan Al',
  'LBL_CREATE_BUG' => 'Hata Yarat',
  'LBL_CREATE_CASE' => 'Talep Oluştur',
  'LBL_CREATE_CONTACT' => 'Kontak Oluştur',
  'LBL_CREATE_LEAD' => 'Potansiyel Oluştur',
  'LBL_CREATE_TASK' => 'Görev Oluştur',
  'LBL_DIST_TITLE' => 'Atama',
  'LBL_LOCK_FAIL_DESC' => 'Seçilen kalem şu anda hazır değil.',
  'LBL_LOCK_FAIL_USER' => 'sahipliğini aldı.',
  'LBL_MASS_DELETE_ERROR' => 'Kontrol edilen kalemlerin hiçbiri silinmeye uygun bulunmadı.',
  'LBL_NEW' => 'Yeni',
  'LBL_NEXT_EMAIL' => 'Bir sonraki ücretsiz kalem',
  'LBL_NO_GRAB_DESC' => 'Uygun kalem yoktu.  Bir süre sonra tekrar deneyin.',
  'LBL_QUICK_REPLY' => 'Yanıtla',
  'LBL_REPLIED' => 'Yanıtlandı',
  'LBL_SELECT_TEAM' => 'Takım Seç',
  'LBL_TAKE_ONE_TITLE' => 'Temsilci',
  'LBL_TITLE_SEARCH_RESULTS' => 'Arama Sonuçları',
  'LBL_TO' => 'Kime:',
  'LBL_TOGGLE_ALL' => 'Tümünü Değiştir',
  'LBL_UNKNOWN' => 'Bilinmeyen',
  'LBL_UNREAD_HOME' => 'Okunmamış E-Postalar',
  'LBL_UNREAD' => 'Okunmadı',
  'LBL_USE_ALL' => 'Tüm arama sonuçları',
  'LBL_USE_CHECKED' => 'Sadece işaretli olanlar',
  'LBL_USE_MAILBOX_INFO' => 'Gelen Posta Kutusu Kullan: Adres',
  'LBL_USE' => 'Ata:',
  'LBL_ASSIGN_SELECTED_RESULTS_TO' => 'Seçili Sonuçları Ata:',
  'LBL_USER_SELECT' => 'Kullanıcıları Seç',
  'LBL_USING_RULES' => 'Kuralları Kullanım:',
  'LBL_WARN_NO_DIST' => 'Dağıtım Metodu Seçilmemiş',
  'LBL_WARN_NO_USERS' => 'Seçilmiş Kullanıcı yok',
  'LBL_WARN_NO_USERS_OR_TEAM' => 'Atama için bir kullanıcı veya takım seçiniz.',
  'LBL_IMPORT_STATUS_TITLE' => 'Durum',
  'LBL_LIST_STATUS' => 'Durum',
  'LBL_LIST_TITLE_GROUP_INBOX' => 'Grup Gelen Kutusu',
  'LBL_LIST_TITLE_MY_DRAFTS' => 'Taslaklarım',
  'LBL_LIST_TITLE_MY_INBOX' => 'Gelen Kutum',
  'LBL_LIST_TITLE_MY_SENT' => 'Gönderilmiş E-Postalarım',
  'LBL_LIST_TITLE_MY_ARCHIVES' => 'Arşivlenmiş E-Postalarım',
  'LBL_ACTIVITIES_REPORTS' => 'Aktiviteler Raporu',
  'LNK_CHECK_MY_INBOX' => 'E-Postalarımı Kontrol Et',
  'LNK_DATE_SENT' => 'Gönderi Tarihi',
  'LNK_GROUP_INBOX' => 'Grup Gelen Kutusu',
  'LNK_MY_DRAFTS' => 'Taslaklarım',
  'LNK_MY_INBOX' => 'E-Postam',
  'LNK_VIEW_MY_INBOX' => 'E-Postalarımı Görüntüle',
  'LNK_QUICK_REPLY' => 'Yanıtla',
  'LNK_MY_ARCHIVED_LIST' => 'Arşivim',
  'LBL_EMAILS_NO_PRIMARY_TEAM_SPECIFIED' => 'Asıl Takım belirtilmedi',
  'LBL_ASSIGNED_TO' => 'Atanan Kişi:',
  'LBL_MEMBER_OF' => 'Ana Kayıt',
  'LBL_QUICK_CREATE' => 'Hızlı E-Posta Yarat',
  'LBL_STATUS' => 'E-Posta Durumu:',
  'LBL_EMAIL_FLAGGED' => 'İşaretlendi:',
  'LBL_EMAIL_REPLY_TO_STATUS' => 'Yanıt Durumu:',
  'LBL_TYPE' => 'Tipi:',
  'LBL_EMAILTEMPLATE_MESSAGE_SHOW_TITLE' => 'Lütfen kontrol edin!',
  'LBL_EMAILTEMPLATE_MESSAGE_SHOW_MSG' => 'Bu şablonun seçilmesi E-Posta içine yazılmış mesajların silinmesine neden olacak. Devam etmek istiyor musunuz?',
  'LBL_EMAILTEMPLATE_MESSAGE_CLEAR_MSG' => '"--Hiçbirini--" seçerseniz, E-Postaya girdiğiniz tüm bilgiler silinecektir. Devam etmek istiyor musunuz?',
  'LBL_CHECK_ATTACHMENTS' => 'Lütfen Ekleri Kontrol Ediniz!',
  'LBL_HAS_ATTACHMENTS' => 'Bu e-Posta içinde zaten ek(ler) var. Ek(leri) tutmak istiyor musunuz?',
  'ERR_MISSING_REQUIRED_FIELDS' => 'Doldurulması zorunlu alanlar eksik:',
  'ERR_INVALID_REQUIRED_FIELDS' => 'Zorunlu alanda geçersiz değer:',
  'LBL_FILTER_BY_RELATED_BEAN' => 'Sadece ilgili alıcıları göster',
  'LBL_RECIPIENTS_HAVE_BEEN_ADDED' => 'Alıcılar eklendi.',
  'LBL_ADD_INBOUND_ACCOUNT' => 'Ekle',
  'LBL_ADD_OUTBOUND_ACCOUNT' => 'Ekle',
  'LBL_EMAIL_ACCOUNTS_INBOUND' => 'Posta Hesap Özellikleri',
  'LBL_EMAIL_SETTINGS_OUTBOUND_ACCOUNT' => 'SMTP Giden Posta Sunucusu',
  'LBL_EMAIL_SETTINGS_OUTBOUND_ACCOUNTS' => 'SMTP Giden Posta Sunucusu',
  'LBL_EMAIL_SETTINGS_INBOUND_ACCOUNTS' => 'Posta Hesapları',
  'LBL_EMAIL_SETTINGS_INBOUND' => 'Gelen E-Posta',
  'LBL_EMAIL_SETTINGS_OUTBOUND' => 'Giden E-Posta',
  'LBL_ADD_CC' => 'Bilgi ekle',
  'LBL_ADD_BCC' => 'Gizli ekle',
  'LBL_ADD_TO_ADDR' => 'Kime ekle',
  'LBL_SELECTED_ADDR' => 'Seçilenler:',
  'LBL_SEND_EMAIL_FAIL_TITLE' => 'Mesaj Gönderilemiyor',
  'LBL_EMAIL_DETAIL_VIEW_SHOW' => 'göster',
  'LBL_EMAIL_DETAIL_VIEW_MORE' => 'daha fazla',
  'LBL_MORE_OPTIONS' => 'Daha fazla',
  'LBL_LESS_OPTIONS' => 'Daha Az',
  'LBL_MAILBOX_TYPE_PERSONAL' => 'Kişisel',
  'LBL_MAILBOX_TYPE_GROUP' => 'Grup',
  'LBL_MAILBOX_TYPE_GROUP_FOLDER' => 'Grup - Otomatik-İndirme',
  'LBL_SEARCH_FOR' => 'Ara',
  'LBL_EMAIL_INBOUND_TYPE_HELP' => 'Kişisel: E-Posta hesabına sadece siz ulaşabilirsiniz. Bu hesabı sadece siz yönetebilir veya E-Posta indirebilirsiniz.<br><br />Grup: E-Posta hesabına belli takım üyeleri ulaşabilir. Bu hesabı tüm takım üyeleri yönetebilir veya E-Posta indirebilir.<br><br />Grup - Otomatik-İndirme:  E-Posta hesabına belli takım üyeleri ulaşabilir. E-Postalar otomatik olarak indirilir.',
  'LBL_ADDRESS_BOOK_SEARCH_HELP' => 'Alıcıları bulmak için E-Posta adresi, Ad, Soyad veya Hesap adı girin.',
  'LBL_TEST_SETTINGS' => 'Ayarları Test Et',
  'LBL_EMPTY_EMAIL_BODY' => '<i>Bu mesajın içeriği yok</i>',
  'LBL_TEST_EMAIL_SUBJECT' => 'E-Postayı Sugar aracılığı ile test et.',
  'LBL_NO_SUBJECT' => '(konu yok)',
  'LBL_CHECKING_ACCOUNT' => 'Müşteri kontrol ediliyor.',
  'LBL_OF' => '/',
  'LBL_TEST_EMAIL_BODY' => 'Bu E-PostaSugar uygulamasında tanımlanmış giden posta sunucu bilgilerini test etmek için gönderildi. Bu E-Postayı başarılı bir şekilde aldıysanız, giden E-Posta sunucusu bilginin geçerlidir.',
  'LBL_MAIL_SMTPUSER' => 'SMTP Kullanıcı adı:',
  'LBL_MAIL_SMTPPASS' => 'SMTP Şifresi:',
  'LBL_MAIL_SMTPSERVER' => 'SMTP Sunucusu:',
  'LBL_SMTP_SERVER_HELP' => 'Bu SMTP Mail Sunucu giden E-Posta için kullanılabilir. E-Posta sunucusu kullanmak için, E-Posta hesabınızın kullanıcı adı ve şifresini girin.',
  'LBL_MISSING_DEFAULT_OUTBOUND_SMTP_SETTINGS' => 'Sistem Yöneticisinin henüz varsayılan giden hesabı yapılandırmamış. Test E-Postası gönderemezsiniz.',
  'LBL_MAIL_SMTPAUTH_REQ' => 'SMTP Kimlik Doğrulaması Kullanılsın mı?',
  'LBL_MAIL_SMTPPORT' => 'SMTP Portu',
  'LBL_MAIL_SMTPTYPE' => 'SMTP Sunucusu Tipi:',
  'LBL_MAIL_SMTP_SETTINGS' => 'SMTP Sunucu Özellikleri',
  'LBL_CHOOSE_EMAIL_PROVIDER' => 'E-Posta servis sağlayıcınızı seçiniz',
  'LBL_YAHOOMAIL_SMTPPASS' => 'Yahoo! E-Posta Şifresi:',
  'LBL_YAHOOMAIL_SMTPUSER' => 'Yahoo! E-Posta ID:',
  'LBL_GMAIL_SMTPPASS' => 'Gmail Şifresi:',
  'LBL_GMAIL_SMTPUSER' => 'Gmail E-Posta Adresi:',
  'LBL_EXCHANGE_SMTPPASS' => 'Exchange Şifresi:',
  'LBL_EXCHANGE_SMTPUSER' => 'Exchange Kullanıcı Adı:',
  'LBL_EXCHANGE_SMTPPORT' => 'Exchange Sunucu Portu:',
  'LBL_EXCHANGE_SMTPSERVER' => 'Exchange Sunucusu:',
);
