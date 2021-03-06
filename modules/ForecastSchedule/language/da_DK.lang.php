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
  'LBL_OW_TYPE' => 'Type',
  'LBL_SVFS_STATUS' => 'Status',
  'LBL_SVFS_USER' => 'For',
  'LBL_FS_STATUS' => 'Status',
  'LBL_MODULE_NAME' => 'Prognoser',
  'LNK_NEW_OPPORTUNITY' => 'Opret salgsmulighed',
  'LBL_MODULE_TITLE' => 'Prognoser',
  'LBL_LIST_FORM_TITLE' => 'Forpligtede prognoser',
  'LNK_UPD_FORECAST' => 'Foreløbigt regneark',
  'LNK_QUOTA' => 'Kvoter',
  'LNK_FORECAST_LIST' => 'Foreløbig historik',
  'LBL_FORECAST_HISTORY' => 'Prognoser: Historik',
  'LBL_FORECAST_HISTORY_TITLE' => 'Prognoser: Historik',
  'LBL_TIMEPERIOD_NAME' => 'Tidsperiode',
  'LBL_USER_NAME' => 'Brugernavn',
  'LBL_REPORTS_TO_USER_NAME' => 'Rapporterer til',
  'LBL_FORECAST_ID' => 'Id',
  'LBL_FORECAST_TIME_ID' => 'Tidsperiode-id',
  'LBL_FORECAST_TYPE' => 'Foreløbig type',
  'LBL_FORECAST_OPP_COUNT' => 'Salgsmuligheder',
  'LBL_FORECAST_OPP_WEIGH' => 'Vægtet beløb',
  'LBL_FORECAST_OPP_COMMIT' => 'Sandsynlig',
  'LBL_FORECAST_OPP_BEST_CASE' => 'Bedst',
  'LBL_FORECAST_OPP_WORST' => 'Dårligst',
  'LBL_FORECAST_USER' => 'Bruger',
  'LBL_DATE_COMMITTED' => 'Forpligtet den',
  'LBL_DATE_ENTERED' => 'Oprettet den',
  'LBL_DATE_MODIFIED' => 'Ændret den',
  'LBL_CREATED_BY' => 'Oprettet af',
  'LBL_DELETED' => 'Slettet',
  'LBL_QC_TIME_PERIOD' => 'Tidsperiode:',
  'LBL_QC_OPPORTUNITY_COUNT' => 'Antal salgsmuligheder:',
  'LBL_QC_WEIGHT_VALUE' => 'Vægtet beløb:',
  'LBL_QC_COMMIT_VALUE' => 'Forpligt beløb:',
  'LBL_QC_COMMIT_BUTTON' => 'Forpligt',
  'LBL_QC_WORKSHEET_BUTTON' => 'Regneark',
  'LBL_QC_ROLL_COMMIT_VALUE' => 'Opløft Forpligt beløb:',
  'LBL_QC_DIRECT_FORECAST' => 'Min direkte prognose:',
  'LBL_QC_ROLLUP_FORECAST' => 'Min gruppeprognose:',
  'LBL_QC_UPCOMING_FORECASTS' => 'Mine prognoser',
  'LBL_QC_LAST_DATE_COMMITTED' => 'Seneste Forpligt dato:',
  'LBL_QC_LAST_COMMIT_VALUE' => 'Seneste Forpligt beløb:',
  'LBL_QC_HEADER_DELIM' => 'Til',
  'LBL_OW_OPPORTUNITIES' => 'Salgsmulighed',
  'LBL_OW_ACCOUNTNAME' => 'Virksomhed',
  'LBL_OW_REVENUE' => 'Beløb',
  'LBL_OW_WEIGHTED' => 'Vægtet beløb',
  'LBL_OW_MODULE_TITLE' => 'Salgsmulighedsregneark',
  'LBL_OW_PROBABILITY' => 'Sandsynlighed',
  'LBL_OW_NEXT_STEP' => 'Næste trin',
  'LBL_OW_DESCRIPTION' => 'Beskrivelse',
  'LNK_NEW_TIMEPERIOD' => 'Opret tidsperiode',
  'LNK_TIMEPERIOD_LIST' => 'Tidsperioder',
  'LBL_SVFS_FORECASTDATE' => 'Planlæg startdato',
  'LBL_SVFS_CASCADE' => 'Vil du udbrede oplysningerne til rapporter?',
  'LBL_SVFS_HEADER' => 'Foreløbig tidsplan:',
  'LB_FS_KEY' => 'Id',
  'LBL_FS_TIMEPERIOD_ID' => 'Tidsperiode-id',
  'LBL_FS_USER_ID' => 'Bruger-id',
  'LBL_FS_TIMEPERIOD' => 'Tidsperiode',
  'LBL_FS_START_DATE' => 'Startdato',
  'LBL_FS_END_DATE' => 'Slutdato',
  'LBL_FS_FORECAST_START_DATE' => 'Foreløbig startdato',
  'LBL_FS_FORECAST_FOR' => 'Tidsplan for:',
  'LBL_FS_CASCADE' => 'Overlappet?',
  'LBL_FS_MODULE_NAME' => 'Foreløbig tidsplan',
  'LBL_FS_CREATED_BY' => 'Oprettet af',
  'LBL_FS_DATE_ENTERED' => 'Oprettet den',
  'LBL_FS_DATE_MODIFIED' => 'Ændret den',
  'LBL_FS_DELETED' => 'Slettet',
  'LBL_FDR_USER_NAME' => 'Direkte rapport',
  'LBL_FDR_OPPORTUNITIES' => 'Salgsmuligheder i prognose:',
  'LBL_FDR_WEIGH' => 'Vægtet beløb af salgsmuligheder:',
  'LBL_FDR_COMMIT' => 'Forpligtet beløb',
  'LBL_FDR_DATE_COMMIT' => 'Forpligt dato',
  'LBL_DV_HEADER' => 'Prognose: Regneark',
  'LBL_DV_MY_FORECASTS' => 'Mine prognoser',
  'LBL_DV_MY_TEAM' => 'Mit teams prognoser',
  'LBL_DV_TIMEPERIODS' => 'Tidsperioder:',
  'LBL_DV_FORECAST_PERIOD' => 'Foreløbig tidsperiode',
  'LBL_DV_FORECAST_OPPORTUNITY' => 'Foreløbige salgsmuligheder',
  'LBL_SEARCH' => 'Vælg',
  'LBL_SEARCH_LABEL' => 'Vælg',
  'LBL_COMMIT_HEADER' => 'Foreløbig Forpligt',
  'LBL_DV_LAST_COMMIT_DATE' => 'Seneste Forpligt dato:',
  'LBL_DV_LAST_COMMIT_AMOUNT' => 'Seneste Forpligt beløb:',
  'LBL_DV_FORECAST_ROLLUP' => 'Foreløbig Opløft',
  'LBL_DV_TIMEPERIOD' => 'Tidsperiode:',
  'LBL_DV_TIMPERIOD_DATES' => 'Datointerval:',
  'LBL_LV_TIMPERIOD' => 'Tidsperiode',
  'LBL_LV_TIMPERIOD_START_DATE' => 'Startdato',
  'LBL_LV_TIMPERIOD_END_DATE' => 'Slutdato',
  'LBL_LV_TYPE' => 'Foreløbig type',
  'LBL_LV_COMMIT_DATE' => 'Forpligtet den',
  'LBL_LV_OPPORTUNITIES' => 'Salgsmuligheder',
  'LBL_LV_WEIGH' => 'Vægtet beløb',
  'LBL_LV_COMMIT' => 'Forpligtet beløb',
  'LBL_COMMIT_NOTE' => 'Indtast beløb, som du vil forpligte i den valgte periode:',
  'LBL_COMMIT_MESSAGE' => 'Vil du forpligte disse beløb?',
  'ERR_FORECAST_AMOUNT' => 'Forpligt beløb er obligatorisk og skal være et tal.',
  'LBL_FC_START_DATE' => 'Startdato',
  'LBL_FC_USER' => 'Tidsplan for',
  'LBL_NO_ACTIVE_TIMEPERIOD' => 'Ingen aktive perioder til prognoser.',
  'LBL_FDR_ADJ_AMOUNT' => 'Justeret beløb',
  'LBL_SAVE_WOKSHEET' => 'Gem regneark',
  'LBL_RESET_WOKSHEET' => 'Nulstil regneark',
  'LBL_RESET_CHECK' => 'Alle regnearksdata for den valgte periode og den bruger, der er logget på, fjernes. Vil du fortsætte?',
  'LB_FS_LIKELY_CASE' => 'Sandsynlig',
  'LB_FS_WORST_CASE' => 'Dårligst',
  'LB_FS_BEST_CASE' => 'Bedst',
  'LBL_FDR_WK_LIKELY_CASE' => 'Ansl. sandsynlig',
  'LBL_FDR_WK_BEST_CASE' => 'Ansl. bedst',
  'LBL_FDR_WK_WORST_CASE' => 'Ansl. dårligst',
  'LBL_BEST_CASE' => 'Bedst:',
  'LBL_LIKELY_CASE' => 'Sandsynlig:',
  'LBL_WORST_CASE' => 'Dårligst:',
  'LBL_FDR_C_BEST_CASE' => 'Bedst',
  'LBL_FDR_C_WORST_CASE' => 'Dårligst',
  'LBL_FDR_C_LIKELY_CASE' => 'Sandsynlig',
  'LBL_QC_LAST_BEST_CASE' => 'Seneste Forpligt beløb "bedst":',
  'LBL_QC_LAST_LIKELY_CASE' => 'Seneste Forpligt beløb "sandsynlig":',
  'LBL_QC_LAST_WORST_CASE' => 'Seneste Forpligt beløb "dårligst":',
  'LBL_QC_ROLL_BEST_VALUE' => 'Opløft Forpligt beløb "bedst":',
  'LBL_QC_ROLL_LIKELY_VALUE' => 'Opløft Forpligt beløb "sandsynlig":',
  'LBL_QC_ROLL_WORST_VALUE' => 'Opløft Forpligt beløb "dårligst":',
  'LBL_QC_COMMIT_BEST_CASE' => 'Forpligt beløb "bedst":',
  'LBL_QC_COMMIT_LIKELY_CASE' => 'Forpligt beløb "sandsynlig":',
  'LBL_QC_COMMIT_WORST_CASE' => 'Forpligt beløb "dårligst":',
);

