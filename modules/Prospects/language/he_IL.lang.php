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
  'LBL_MODULE_NAME' => 'מטרות',
  'LBL_MODULE_ID'   => 'מטרות',
  'LBL_INVITEE' => 'דוחות ישירים',
  'LBL_MODULE_TITLE' => 'מטרות: דף ראשי',
  'LBL_SEARCH_FORM_TITLE' => 'חיפוש מטרה',
  'LBL_LIST_FORM_TITLE' => 'רשימת מטרות',
  'LBL_NEW_FORM_TITLE' => 'מטרה חדשה',
  'LBL_PROSPECT' => 'מטרה:',
  'LBL_BUSINESSCARD' => 'כרטיס ביקור',
  'LBL_LIST_NAME' => 'שם',
  'LBL_LIST_LAST_NAME' => 'שם משפחה',
  'LBL_LIST_PROSPECT_NAME' => 'שם המטרה',
  'LBL_LIST_TITLE' => 'כותרת',
  'LBL_LIST_EMAIL_ADDRESS' => 'דואר אלקטרוני',
  'LBL_LIST_OTHER_EMAIL_ADDRESS' => 'דואר אלקטרוני אחר',
  'LBL_LIST_PHONE' => 'טלפון',
  'LBL_LIST_PROSPECT_ROLE' => 'תפקיד',
  'LBL_LIST_FIRST_NAME' => 'שם פרטי',
  'LBL_ASSIGNED_TO_NAME' => 'הוקצה עבור',
  'LBL_ASSIGNED_TO_ID'=>'הוקצה עבור:',
  'db_last_name' => 'LBL_LIST_LAST_NAME',
  'db_first_name' => 'LBL_LIST_FIRST_NAME',
  'db_title' => 'LBL_LIST_TITLE',
  'db_email1' => 'LBL_LIST_EMAIL_ADDRESS',
  'db_email2' => 'LBL_LIST_OTHER_EMAIL_ADDRESS',
  'LBL_CAMPAIGN_ID' => 'קמפיין זהות',
  'LBL_EXISTING_PROSPECT' => 'השתמש באיש קשר קיים',
  'LBL_CREATED_PROSPECT' => 'צור איש קשר חדש',
  'LBL_EXISTING_ACCOUNT' => 'השתמש בחשבון קיים',
  'LBL_CREATED_ACCOUNT' => 'צור חשבון חדש',
  'LBL_CREATED_CALL' => 'צור שיחת טלפון חדשה',
  'LBL_CREATED_MEETING' => 'צור פגישה חדשה',
  'LBL_ADDMORE_BUSINESSCARD' => 'הוסף כרטיס ביקור אחר',
  'LBL_ADD_BUSINESSCARD' => 'הזן כרטיס ביקור',
  'LBL_NAME' => 'שם:',
  'LBL_FULL_NAME' => 'שם',
  'LBL_PROSPECT_NAME' => 'שם המטרה:',
  'LBL_PROSPECT_INFORMATION' => 'סקירת המטרה',
  'LBL_MORE_INFORMATION' => 'מידע נוסף',
  'LBL_FIRST_NAME' => 'שם פרטי:',
  'LBL_OFFICE_PHONE' => 'טלפון במשרד:',
  'LBL_ANY_PHONE' => 'טלפון כלשהו:',
  'LBL_PHONE' => 'טלפון:',
  'LBL_LAST_NAME' => 'שם משפחה:',
  'LBL_MOBILE_PHONE' => 'נייד:',
  'LBL_HOME_PHONE' => 'דף ראשי:',
  'LBL_OTHER_PHONE' => 'טלפון אחר:',
  'LBL_FAX_PHONE' => 'פקס:',
  'LBL_PRIMARY_ADDRESS_STREET' => 'כתובת ראשית שם רחוב:',
  'LBL_PRIMARY_ADDRESS_CITY' => 'כתובת ראשית עיר:',
  'LBL_PRIMARY_ADDRESS_COUNTRY' => 'כתובת ראשית מדינה:',
  'LBL_PRIMARY_ADDRESS_STATE' => 'כתובת ראשית ארץ:',
  'LBL_PRIMARY_ADDRESS_POSTALCODE' => 'כתובת ראשית מיקוד:',
  'LBL_ALT_ADDRESS_STREET' => 'כתובת משנית שם רחוב:',
  'LBL_ALT_ADDRESS_CITY' => 'כתובת שמנית עיר:',
  'LBL_ALT_ADDRESS_COUNTRY' => 'כתובת משנית מדינה:',
  'LBL_ALT_ADDRESS_STATE' => 'כתובת משנית ארץ:',
  'LBL_ALT_ADDRESS_POSTALCODE' => 'כתובת משנית מיקוד:',
  'LBL_TITLE' => 'תואר:',
  'LBL_DEPARTMENT' => 'מחלקה:',
  'LBL_BIRTHDATE' => 'תאריך לידה:',
  'LBL_EMAIL_ADDRESS' => 'כתובת דואר אלקטרוני:',
  'LBL_OTHER_EMAIL_ADDRESS' => 'דואר אלקטרוני אחר:',
  'LBL_ANY_EMAIL' => 'דואר אלקטרוני כלשהו:',
  'LBL_ASSISTANT' => 'עוזר:',
  'LBL_ASSISTANT_PHONE' => 'טלפון של העוזר:',
  'LBL_DO_NOT_CALL' => 'Do Not Call:',
  'LBL_EMAIL_OPT_OUT' => 'Email Opt Out:',
  'LBL_PRIMARY_ADDRESS' => 'כתובת ראשית:',
  'LBL_ALTERNATE_ADDRESS' => 'כתובת נוספת:',
  'LBL_ANY_ADDRESS' => 'כתובת כלשהי:',
  'LBL_CITY' => 'עיר:',
  'LBL_STATE' => 'ארץ:',
  'LBL_POSTAL_CODE' => 'מיקוד:',
  'LBL_COUNTRY' => 'מדינה:',
  'LBL_DESCRIPTION_INFORMATION' => 'תיאור המידע',
  'LBL_ADDRESS_INFORMATION' => 'מידע אודות הכתובת',
  'LBL_DESCRIPTION' => 'תיאור:',
  'LBL_PROSPECT_ROLE' => 'תפקיד:',
  'LBL_OPP_NAME' => 'שם ההזדמנות:',
  'LBL_IMPORT_VCARD' => 'Import vCard',
  'LBL_IMPORT_VCARDTEXT' => 'Automatically create a new contact by importing a vCard from your file system.',
  'LBL_DUPLICATE' => 'ככל הנראה מטרות זהות שכבר קיימות במערכת',
  'MSG_SHOW_DUPLICATES' => 'The target record you are about to create might be a duplicate of a target record that already exists. Target records containing similar names and/or email addresses are listed below.<br>Click Save to continue creating this new target, or click Cancel to return to the module without creating the target.',
  'MSG_DUPLICATE' => 'The target record you are about to create might be a duplicate of a target record that already exists. Target records containing similar names and/or email addresses are listed below.<br>Click Save to continue creating this new target, or click Cancel to return to the module without creating the target.',
  'LNK_IMPORT_VCARD' => 'Create From vCard',
  'LNK_NEW_ACCOUNT' => 'צור חשבון',
  'LNK_NEW_OPPORTUNITY' => 'צור הזדמנות',
  'LNK_NEW_CASE' => 'צור אירוע',
  'LNK_NEW_NOTE' => 'צור פתק או צרופה',
  'LNK_NEW_CALL' => 'שיחת טלפון',
  'LNK_NEW_EMAIL' => 'ארכב דואר אלקטרוני',
  'LNK_NEW_MEETING' => 'תזמן פגישה',
  'LNK_NEW_TASK' => 'צור משימה',
  'LNK_NEW_APPOINTMENT' => 'צור פגישה',
  'LNK_IMPORT_PROSPECTS' => 'ייבא תחזיות',
  'NTC_DELETE_CONFIRMATION' => 'אתה בטוח שברצונך למחוק רשומה זו?',
  'NTC_REMOVE_CONFIRMATION' => 'אתה בטוח שברצונך להסיר איש קשר זה מהארוע?',
  'NTC_REMOVE_DIRECT_REPORT_CONFIRMATION' => 'אתה בטוח שברצונך להסיר רשומה זו כחלק מדוח?',
  'ERR_DELETE_RECORD' => 'כדי למחוק את איש הקשר יש לספק מספר רשומה.',
  'NTC_COPY_PRIMARY_ADDRESS' => 'העתק כתובת ראשית למשנית',
  'NTC_COPY_ALTERNATE_ADDRESS' => 'העתק כתובת משנית לראשית',
  'LBL_SALUTATION' => 'ברכה',
  'LBL_SAVE_PROSPECT' => 'שמור מטרה',
  'LBL_CREATED_OPPORTUNITY' =>'צור הזדמנות חדשה',
  'NTC_OPPORTUNITY_REQUIRES_ACCOUNT' => 'Creating an opportunity requires an account.\n Please either create a new account or select an existing one.',
  'LNK_SELECT_ACCOUNT' => "בחר ישבון",
  'LNK_NEW_PROSPECT' => 'צור מטרה',
  'LNK_PROSPECT_LIST' => 'צפייה במטרות',
  'LNK_NEW_CAMPAIGN' => 'צור קמפיין',
  'LNK_CAMPAIGN_LIST' => 'קמפיינים',
  'LNK_NEW_PROSPECT_LIST' => 'צור רשימת מטרות',
  'LNK_PROSPECT_LIST_LIST' => 'רשימת מטרות',
  'LNK_IMPORT_PROSPECT' => 'ייבוא מטרות',
  'LBL_SELECT_CHECKED_BUTTON_LABEL' => 'בחר מהמטרות שסומנו',
  'LBL_SELECT_CHECKED_BUTTON_TITLE' => 'בחר מהמטרות שסומנו',
  'LBL_INVALID_EMAIL'=>'Invalid Email:',
  'LBL_DEFAULT_SUBPANEL_TITLE'=>'מטרות',
  'LBL_PROSPECT_LIST' => 'רשיצת תחזיות',
  'LBL_CONVERT_BUTTON_KEY' => 'V',
  'LBL_CONVERT_BUTTON_TITLE' => 'המר מטרה',
  'LBL_CONVERT_BUTTON_LABEL' => 'המר מטרה',
  'LBL_CONVERTPROSPECT'=>'המר מטרה',
  'LNK_NEW_CONTACT'=>'איש קשר חדש',
  'LBL_CREATED_CONTACT'=>"נוצר איש קשר חדש",
  'LBL_BACKTO_PROSPECTS'=>'בחזרה למטרות',
  'LBL_CAMPAIGNS'=>'קמפיינים',
  'LBL_CAMPAIGN_LIST_SUBPANEL_TITLE'=>'יומן קמפיין',
  'LBL_TRACKER_KEY'=>'מפתח גשש',
  'LBL_LEAD_ID'=>'ליד זהות',
  'LBL_CONVERTED_LEAD'=>'לידים שהומרו',
  'LBL_ACCOUNT_NAME'=>'שם חשבון',
  'LBL_EDIT_ACCOUNT_NAME'=>'שם חשבון:',
  'LBL_CREATED_USER' => 'משתמש שנוצר',
  'LBL_MODIFIED_USER' => 'משתמש ששונה',
  'LBL_CAMPAIGNS_SUBPANEL_TITLE' => 'קמפיינים',
  'LBL_HISTORY_SUBPANEL_TITLE'=>'הסטוריה',
);
?>


