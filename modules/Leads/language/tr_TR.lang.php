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
  'db_last_name' => 'LBL_LIST_LAST_NAME',
  'db_first_name' => 'LBL_LIST_FIRST_NAME',
  'db_title' => 'LBL_LIST_TITLE',
  'db_email1' => 'LBL_LIST_EMAIL_ADDRESS',
  'db_account_name' => 'LBL_LIST_ACCOUNT_NAME',
  'db_email2' => 'LBL_LIST_EMAIL_ADDRESS',
  'LBL_CONVERTLEAD_BUTTON_KEY' => 'V',
  'LBL_VCARD' => 'vCard',
  'LBL_TARGET_BUTTON_KEY' => 'T',
  'ERR_DELETE_RECORD' => 'Bu Potansiyeli silmek için kayıt nosu belirtilmelidir.',
  'LBL_ACCOUNT_DESCRIPTION' => 'Müşteri Tanımı',
  'LBL_ACCOUNT_ID' => 'Müşteri ID',
  'LBL_ACCOUNT_NAME' => 'Müşteri Adı:',
  'LBL_ACTIVITIES_SUBPANEL_TITLE' => 'Aktiviteler',
  'LBL_ADD_BUSINESSCARD' => 'Kartvizit Ekle',
  'LBL_ADDRESS_INFORMATION' => 'Adres Bilgisi',
  'LBL_ALT_ADDRESS_CITY' => 'Alternatif Adres Şehir',
  'LBL_ALT_ADDRESS_COUNTRY' => 'Alternatif Adres Ülke',
  'LBL_ALT_ADDRESS_POSTALCODE' => 'Alternatif Adres Posta Kodu',
  'LBL_ALT_ADDRESS_STATE' => 'Alternatif Adres Eyalet',
  'LBL_ALT_ADDRESS_STREET_2' => 'Alternatif Adres Sokak 2',
  'LBL_ALT_ADDRESS_STREET_3' => 'Alternatif Adres Sokak 3',
  'LBL_ALT_ADDRESS_STREET' => 'Alternatif Adres Sokak',
  'LBL_ALTERNATE_ADDRESS' => 'Diğer Adres:',
  'LBL_ALT_ADDRESS' => 'Diğer Adres:',
  'LBL_ANY_ADDRESS' => 'Adres:',
  'LBL_ANY_EMAIL' => 'E-Posta:',
  'LBL_ANY_PHONE' => 'Telefon:',
  'LBL_ASSIGNED_TO_NAME' => 'Atanan Kişi',
  'LBL_ASSIGNED_TO_ID' => 'Atanan Kullanıcı ID:',
  'LBL_BACKTOLEADS' => 'Potansiyellere Geri Dön',
  'LBL_BUSINESSCARD' => 'Potansiyeli Dönüştür',
  'LBL_CITY' => 'Şehir:',
  'LBL_CONTACT_ID' => 'Kontak ID',
  'LBL_CONTACT_INFORMATION' => 'Potansiyellere Genel Bakış',
  'LBL_CONTACT_NAME' => 'Potansiyel Adı:',
  'LBL_CONTACT_OPP_FORM_TITLE' => 'Potansiyel-Fırsat:',
  'LBL_CONTACT_ROLE' => 'Rol:',
  'LBL_CONTACT' => 'Potansiyel:',
  'LBL_CONVERTED_ACCOUNT' => 'Dönüştürülen Müşteri:',
  'LBL_CONVERTED_CONTACT' => 'Dönüştürülen Kontak:',
  'LBL_CONVERTED_OPP' => 'Dönüştürülen Fırsat:',
  'LBL_CONVERTED' => 'Dönüştü',
  'LBL_CONVERTLEAD_TITLE' => 'Potansiyeli Dönüştür [Alt+V]',
  'LBL_CONVERTLEAD' => 'Potansiyeli Dönüştür',
  'LBL_CONVERTLEAD_WARNING' => 'Uyarı: Değiştirmek istediğiniz Potansiyel\'in statüsü "Değiştirilmiş". Potansiyelden halihazırda Kontak Hesap kayıtları oluşturulmuş olabilir. Eğer Potansiyeli değiştirmek istiyorsanız Kaydet butonuna tıklayın. Değişiklik yapmadan geri dönmek için İptal butonuna tıklayın.',
  'LBL_CONVERTLEAD_WARNING_INTO_RECORD' => 'Olası Kontak:',
  'LBL_COUNTRY' => 'Ülke:',
  'LBL_CREATED_NEW' => 'Yeni oluşturuldu',
  'LBL_CREATED_ACCOUNT' => 'Yeni müşteri Oluşturuldu',
  'LBL_CREATED_CALL' => 'Yeni bir tel.Araması oluşturuldu',
  'LBL_CREATED_CONTACT' => 'Yeni bir kontak oluşturuldu',
  'LBL_CREATED_MEETING' => 'Yeni bir toplantı oluşturuldu',
  'LBL_CREATED_OPPORTUNITY' => 'Yeni bir fırsat oluşturuldu',
  'LBL_DEFAULT_SUBPANEL_TITLE' => 'Potansiyeller',
  'LBL_DEPARTMENT' => 'Departman:',
  'LBL_DESCRIPTION_INFORMATION' => 'Tanım Bilgisi',
  'LBL_DESCRIPTION' => 'Tanım:',
  'LBL_DO_NOT_CALL' => 'Tel. İle Aramayın:',
  'LBL_DUPLICATE' => 'Benzer Potansiyeller',
  'LBL_EMAIL_ADDRESS' => 'E-Posta Adresi:',
  'LBL_EMAIL_OPT_OUT' => 'Liste Dışı E-Posta:',
  'LBL_EXISTING_ACCOUNT' => 'Varolan müşteri kullanıldı',
  'LBL_EXISTING_CONTACT' => 'Varolan kontak kullanıldı',
  'LBL_EXISTING_OPPORTUNITY' => 'Varolan fırsat Kullanıldı',
  'LBL_FAX_PHONE' => 'Faks:',
  'LBL_FIRST_NAME' => 'Adı:',
  'LBL_FULL_NAME' => 'Tam Adı:',
  'LBL_HISTORY_SUBPANEL_TITLE' => 'Tarihçe',
  'LBL_HOME_PHONE' => 'Ev Telefonu:',
  'LBL_IMPORT_VCARD' => 'vCard Verisini Yükle',
  'LBL_IMPORT_VCARDTEXT' => 'Dosya Sisteminden vCard yüklenerek, yeni bir Potansiyel otomatik olarak yaratıldı.',
  'LBL_INVALID_EMAIL' => 'Geçersiz E-Posta:',
  'LBL_INVITEE' => 'Doğrudan Raporlar',
  'LBL_LAST_NAME' => 'Soyadı:',
  'LBL_LEAD_SOURCE_DESCRIPTION' => 'Potansiyel Kaynak Tanımı:',
  'LBL_LEAD_SOURCE' => 'Potansiyel Kaynağı:',
  'LBL_LIST_ACCEPT_STATUS' => 'Kabul Durumu',
  'LBL_LIST_ACCOUNT_NAME' => 'Müşteri Adı',
  'LBL_LIST_CONTACT_NAME' => 'Potansiyel Adı',
  'LBL_LIST_CONTACT_ROLE' => 'Rol',
  'LBL_LIST_DATE_ENTERED' => 'Oluşturulma Tarihi:',
  'LBL_LIST_EMAIL_ADDRESS' => 'E-Posta',
  'LBL_LIST_FIRST_NAME' => 'Adı',
  'LBL_VIEW_FORM_TITLE' => 'Potansiyel Görüntüsü',
  'LBL_LIST_FORM_TITLE' => 'Potansiyel Listesi',
  'LBL_LIST_LAST_NAME' => 'Soyadı',
  'LBL_LIST_LEAD_SOURCE_DESCRIPTION' => 'Potansiyel Kaynak Tanımı',
  'LBL_LIST_LEAD_SOURCE' => 'Potansiyel Kaynağı',
  'LBL_LIST_MY_LEADS' => 'Potansiyellerim',
  'LBL_LIST_NAME' => 'İsim',
  'LBL_LIST_PHONE' => 'Ofis Telefonu',
  'LBL_LIST_REFERED_BY' => 'Tavsiye Eden',
  'LBL_LIST_STATUS' => 'Durum',
  'LBL_LIST_TITLE' => 'Ünvan',
  'LBL_MOBILE_PHONE' => 'Cep Telefonu:',
  'LBL_MODULE_NAME' => 'Potansiyeller',
  'LBL_MODULE_TITLE' => 'Potansiyeller:Ana Sayfa',
  'LBL_NAME' => 'İsim:',
  'LBL_NEW_FORM_TITLE' => 'Yeni Potansiyel',
  'LBL_NEW_PORTAL_PASSWORD' => 'Yeni Portal Şifresi:',
  'LBL_OFFICE_PHONE' => 'Ofis Telefonu:',
  'LBL_OPP_NAME' => 'Fırsat Adı:',
  'LBL_OPPORTUNITY_AMOUNT' => 'Fırsat Miktarı:',
  'LBL_OPPORTUNITY_ID' => 'Fırsat ID',
  'LBL_OPPORTUNITY_NAME' => 'Fırsat Adı:',
  'LBL_OTHER_EMAIL_ADDRESS' => 'Diğer E-Posta:',
  'LBL_OTHER_PHONE' => 'Diğer Telefon:',
  'LBL_PHONE' => 'Telefon:',
  'LBL_PORTAL_ACTIVE' => 'Portal Etkinleştir:',
  'LBL_PORTAL_APP' => 'Portal Uygulaması',
  'LBL_PORTAL_INFORMATION' => 'Portal Bilgisi',
  'LBL_PORTAL_NAME' => 'Portal Adı:',
  'LBL_PORTAL_PASSWORD_ISSET' => 'Portal Şifresi Belirlendi:',
  'LBL_POSTAL_CODE' => 'Posta Kodu:',
  'LBL_STREET' => 'Sokak',
  'LBL_PRIMARY_ADDRESS_CITY' => 'Asıl Adres Şehir',
  'LBL_PRIMARY_ADDRESS_COUNTRY' => 'Asıl Adres Ülke',
  'LBL_PRIMARY_ADDRESS_POSTALCODE' => 'Asıl Adres Posta Kodu',
  'LBL_PRIMARY_ADDRESS_STATE' => 'Asıl Adres Eyalet',
  'LBL_PRIMARY_ADDRESS_STREET_2' => 'Asıl Adres Sokak 2',
  'LBL_PRIMARY_ADDRESS_STREET_3' => 'Asıl Adres Sokak 3',
  'LBL_PRIMARY_ADDRESS_STREET' => 'Asıl Adres Sokak',
  'LBL_PRIMARY_ADDRESS' => 'Asıl Adres:',
  'LBL_REFERED_BY' => 'Tavsiye Eden:',
  'LBL_REPORTS_TO_ID' => 'Rapor Edilen Kişi ID',
  'LBL_REPORTS_TO' => 'Rapor Edilen Kişi:',
  'LBL_SALUTATION' => 'Hitap',
  'LBL_MODIFIED' => 'Değiştiren',
  'LBL_MODIFIED_ID' => 'Değiştiren ID',
  'LBL_CREATED' => 'Oluşturan',
  'LBL_CREATED_ID' => 'Oluşturan ID',
  'LBL_SEARCH_FORM_TITLE' => 'Potansiyel Arama',
  'LBL_SELECT_CHECKED_BUTTON_LABEL' => 'İşaretli Potansiyelleri Seç',
  'LBL_SELECT_CHECKED_BUTTON_TITLE' => 'İşaretli Potansiyelleri Seç',
  'LBL_STATE' => 'Eyalet:',
  'LBL_STATUS_DESCRIPTION' => 'Durum Tanımı:',
  'LBL_STATUS' => 'Durum:',
  'LBL_TITLE' => 'Ünvan:',
  'LNK_IMPORT_VCARD' => 'vCard\'tan Potansiyel Oluştur',
  'LNK_LEAD_LIST' => 'Potansiyelleri Görüntüle',
  'LNK_NEW_ACCOUNT' => 'Müşteri Oluştur',
  'LNK_NEW_APPOINTMENT' => 'Randevu Oluştur',
  'LNK_NEW_CONTACT' => 'Kontak Oluştur',
  'LNK_NEW_LEAD' => 'Potansiyel Oluştur',
  'LNK_NEW_NOTE' => 'Not Oluştur',
  'LNK_NEW_TASK' => 'Görev Oluştur',
  'LNK_NEW_CASE' => 'Talep Oluştur',
  'LNK_NEW_CALL' => 'Tel. Araması Planla',
  'LNK_NEW_MEETING' => 'Toplantı Planla',
  'LNK_NEW_OPPORTUNITY' => 'Fırsat Oluştur',
  'LNK_SELECT_ACCOUNT' => 'VEYA Müşteri Seç',
  'LNK_SELECT_ACCOUNTS' => 'VEYA Hesap Seç',
  'MSG_DUPLICATE' => 'Benzer Potansiyeller bulundu. Lütfen bu dönüşümden oluşturulacak kayıtlar ile ilişkilendirilmesini istediğiniz kutuyu seçiniz. Bu işlem sonrasında, İleri tuşuna basınız.',
  'NTC_COPY_ALTERNATE_ADDRESS' => 'Alternatif Adresi Asıl Adrese Kopyala',
  'NTC_COPY_PRIMARY_ADDRESS' => 'Asıl Adresi Alternatif Adrese Kopyala',
  'NTC_DELETE_CONFIRMATION' => 'Bu kaydı silmek istediğinizden emin misiniz?',
  'NTC_OPPORTUNITY_REQUIRES_ACCOUNT' => 'Bir Fırsat yaratılabilmesi için Müşteri kaydı olması gerekir.\\n Lütfen yeni bir Müşteri yaratın veya varolan Müşteri kaydını seçin.',
  'NTC_REMOVE_CONFIRMATION' => 'Bu talepten bu potansiyeli silmek istediğinize emin misiniz?',
  'NTC_REMOVE_DIRECT_REPORT_CONFIRMATION' => 'Doğrudan raporlanan kişi olarak bu kaydı silmek istediğinizden emin misiniz?',
  'LBL_CAMPAIGN_LIST_SUBPANEL_TITLE' => 'Kampanyalar',
  'LBL_TARGET_OF_CAMPAIGNS' => 'Başarılı Kampanya:',
  'LBL_TARGET_BUTTON_LABEL' => 'Hedeflenen',
  'LBL_TARGET_BUTTON_TITLE' => 'Hedeflenen',
  'LBL_CAMPAIGN_ID' => 'Kampanya ID',
  'LBL_CAMPAIGN' => 'Kampanya:',
  'LBL_LIST_ASSIGNED_TO_NAME' => 'Atandığı Kullanıcı',
  'LBL_PROSPECT_LIST' => 'Aday Müşteri Listesi',
  'LBL_CAMPAIGN_LEAD' => 'Kampanyalar',
  'LNK_LEAD_REPORTS' => 'Potansiyel Raporlarını Görüntüle',
  'LBL_BIRTHDATE' => 'Doğum Tarihi:',
  'LBL_THANKS_FOR_SUBMITTING_LEAD' => 'Potansiyel Oluşturulması için verdiğiniz bilgiye Teşekkürler.',
  'LBL_SERVER_IS_CURRENTLY_UNAVAILABLE' => 'Üzgünüz, sunucu şu anda erişilebilir değil, daha sonra tekrar deneyin.',
  'LBL_ASSISTANT_PHONE' => 'Asistan Telefonu',
  'LBL_ASSISTANT' => 'Asistan',
  'LBL_REGISTRATION' => 'Kayıt',
  'LBL_MESSAGE' => 'Bilginizi lütfen aşağıya girin. Sizin için bilgi ve/veya bir müşteri kaydı oluşturulacak, onay beklenecek.',
  'LBL_SAVED' => 'Kayıt için teşekkürler. Müşteri kaydınız yaratılacak ve en kısa sürede size geri dönülecektir.',
  'LBL_CLICK_TO_RETURN' => 'Portala Geri Dön',
  'LBL_CREATED_USER' => 'Oluşturan Kullanıcı',
  'LBL_MODIFIED_USER' => 'Değiştiren Kullanıcı',
  'LBL_CAMPAIGNS' => 'Kampanyalar',
  'LBL_CAMPAIGNS_SUBPANEL_TITLE' => 'Kampanyalar',
  'LBL_CONVERT_MODULE_NAME' => 'Modül',
  'LBL_CONVERT_REQUIRED' => 'Gerekli',
  'LBL_CONVERT_SELECT' => 'Seçime İzin Ver',
  'LBL_CONVERT_COPY' => 'Veri Kopyala',
  'LBL_CONVERT_EDIT' => 'Düzenle',
  'LBL_CONVERT_DELETE' => 'Sil',
  'LBL_CONVERT_ADD_MODULE' => 'Modül Ekle',
  'LBL_CONVERT_EDIT_LAYOUT' => 'Dönüştürme Düzenini Değiştir',
  'LBL_CREATE' => 'Oluştur',
  'LBL_SELECT' => 'VEYA Seç',
  'LBL_WEBSITE' => 'Web Sitesi',
  'LNK_IMPORT_LEADS' => 'Sisteme Potansiyel Al',
  'LBL_NOTICE_OLD_LEAD_CONVERT_OVERRIDE' => 'Bilgi: Mevcut Potansiyel Değiştirme ekranı, özel alanlar içermekte. Potansiyel Değiştirme ekranını ilk kez özelleştirirken, plana gereken şekilde özel alanları eklemeniz gerekecektir. Daha önce olduğu gibi özel alanlar planda otomatik olarak gözükmeyecektir.',
  'LBL_MODULE_TIP' => 'Yeni bir kayıt yaratmak için modül.',
  'LBL_REQUIRED_TIP' => 'Potansiyel değiştirilmeden önce gerekli modülün yaratılmış veya seçilmiş olması gerekmekte',
  'LBL_COPY_TIP' => 'Eğer seçiliyse, Potansiyeldeki alanlar, yeni kayıtlardaki aynı adlı alanlara kopyalanacak.',
  'LBL_SELECTION_TIP' => 'Potansiyel değiştirme süreci yerine Kontaklardaki ilişki alanı bulunan modüller seçilebilir.',
  'LBL_EDIT_TIP' => 'Bu modül için olan dönüştürülen düzeni biçimlendir.',
  'LBL_DELETE_TIP' => 'Bu modülü dönüştürülen düzenden çıkar.',
);

