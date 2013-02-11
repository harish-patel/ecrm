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
  'LBL_DOCUMENTS_SUBPANEL_TITLE' => 'Documents',
  'LBL_INVITEE' => 'Contacts',
  'LBL_TYPE' => 'Type:',
  'LBL_DESCRIPTION' => 'Description:',
  'LBL_LEADS_SUBPANEL_TITLE' => 'Leads',
  'LBL_CONTACTS_SUBPANEL_TITLE' => 'Contacts',
  'LBL_MODULE_NAME' => 'Affaires',
  'LBL_MODULE_TITLE' => 'Affaires',
  'LBL_SEARCH_FORM_TITLE' => 'Rechercher une Affaire',
  'LBL_VIEW_FORM_TITLE' => 'Vue Affaire',
  'LBL_LIST_FORM_TITLE' => 'Liste des Affaires',
  'LBL_OPPORTUNITY_NAME' => 'Nom Affaire:',
  'LBL_OPPORTUNITY' => 'Affaire:',
  'LBL_NAME' => 'Nom Affaire',
  'LBL_CURRENCIES' => 'Devises',
  'LBL_LIST_OPPORTUNITY_NAME' => 'Affaires',
  'LBL_LIST_ACCOUNT_NAME' => 'Compte',
  'LBL_LIST_AMOUNT' => 'Montant Affaire',
  'LBL_LIST_AMOUNT_USDOLLAR' => 'Montant',
  'LBL_LIST_DATE_CLOSED' => 'Clôture',
  'LBL_LIST_SALES_STAGE' => 'Phase de vente',
  'LBL_ACCOUNT_ID' => 'Compte (ID)',
  'LBL_CURRENCY_ID' => 'Devise (ID)',
  'LBL_CURRENCY_NAME' => 'Devise',
  'LBL_CURRENCY_SYMBOL' => 'Symbole de la devise',
  'LBL_TEAM_ID' => 'Equipe (ID)',
  'UPDATE' => 'Affaire - Devise mise à jour',
  'UPDATE_DOLLARAMOUNTS' => 'Mise à jour des montants en devise par défaut',
  'UPDATE_VERIFY' => 'Vérifier les montants',
  'UPDATE_VERIFY_TXT' => 'Vérifie que les montants des Affaires contiennent des valeurs numériques correctes (valeures numériques (0-9) et décimale (.)',
  'UPDATE_FIX' => 'Réparer les montants',
  'UPDATE_FIX_TXT' => 'Tentative de correction des montants invalides. Les anciens montants seront sauvegardés en base.',
  'UPDATE_DOLLARAMOUNTS_TXT' => 'Mise à jour des montants des Affaires basés sur le cours actuel des devises.',
  'UPDATE_CREATE_CURRENCY' => 'Créer une devise:',
  'UPDATE_VERIFY_FAIL' => 'Echec de Verification de l&#39;enregistrement:',
  'UPDATE_VERIFY_CURAMOUNT' => 'Montant actuel:',
  'UPDATE_VERIFY_FIX' => 'Lancer la réparation',
  'UPDATE_INCLUDE_CLOSE' => 'Inclure enregistrements clos',
  'UPDATE_VERIFY_NEWAMOUNT' => 'Nouveau Montant:',
  'UPDATE_VERIFY_NEWCURRENCY' => 'Nouvelle devise:',
  'UPDATE_DONE' => 'Terminé',
  'UPDATE_BUG_COUNT' => 'Bugs trouvés, tentative de correction:',
  'UPDATE_BUGFOUND_COUNT' => 'Bugs trouvés:',
  'UPDATE_COUNT' => 'Enregistrement mis à jour:',
  'UPDATE_RESTORE_COUNT' => 'Montants enregistrés restaurés:',
  'UPDATE_RESTORE' => 'Restaurer les montants',
  'UPDATE_RESTORE_TXT' => 'Restaurer les montants depuis le backup créé lors de la réparation.',
  'UPDATE_FAIL' => 'Impossible de mettre à jour -',
  'UPDATE_NULL_VALUE' => 'Le montant est NULL à remplacer par 0 -',
  'UPDATE_MERGE' => 'Fusionner les devises',
  'UPDATE_MERGE_TXT' => 'Fusionner les devises. Si vous notez qu&#39;il y a plusieurs devises enregistrées pour la même devise, vous pouvez choisir de les fusionner. Cela va également fusionner les devises pour tous les autres modules.',
  'LBL_ACCOUNT_NAME' => 'Compte:',
  'LBL_AMOUNT' => 'Montant:',
  'LBL_AMOUNT_USDOLLAR' => 'Montant (devise par défaut):',
  'LBL_CURRENCY' => 'Devise:',
  'LBL_DATE_CLOSED' => 'Date de Clôture:',
  'LBL_CAMPAIGN' => 'Campagne:',
  'LBL_NEXT_STEP' => 'Prochaine étape:',
  'LBL_LEAD_SOURCE' => 'Origine Principale:',
  'LBL_SALES_STAGE' => 'Phase de vente:',
  'LBL_PROBABILITY' => 'Probabilité (%):',
  'LBL_DUPLICATE' => 'Possibilité de duplication des Affaires',
  'MSG_DUPLICATE' => 'Possibilité de doublon des Affaires. Vous pouvez soit selectionner une Affaire dans la liste ci dessous ou cliquer sur "Sauvegarder" pour poursuivre la création.',
  'LBL_NEW_FORM_TITLE' => 'Créer une Affaire',
  'LNK_NEW_OPPORTUNITY' => 'Créer une Affaire',
  'LNK_OPPORTUNITY_REPORTS' => 'Rapports sur les Affaires',
  'LNK_OPPORTUNITY_LIST' => 'Affaires',
  'ERR_DELETE_RECORD' => 'Un numéro d&#39;enregistrement doit être spécifié pour toute suppression.',
  'LBL_TOP_OPPORTUNITIES' => 'Top des Affaires',
  'NTC_REMOVE_OPP_CONFIRMATION' => 'Etes-vous sûr(e) de vouloir supprimer ce contact pour cette Affaire ?',
  'OPPORTUNITY_REMOVE_PROJECT_CONFIRM' => 'Etes vous sûr de vouloir supprimer cette Affaire de ce Projet ?',
  'LBL_DEFAULT_SUBPANEL_TITLE' => 'Affaires',
  'LBL_ACTIVITIES_SUBPANEL_TITLE' => 'Activités à Réaliser',
  'LBL_HISTORY_SUBPANEL_TITLE' => 'Historique et Activités terminées',
  'LBL_RAW_AMOUNT' => 'Montant Brut',
  'LBL_QUOTES_SUBPANEL_TITLE' => 'Devis',
  'LBL_PROJECTS_SUBPANEL_TITLE' => 'Projets',
  'LBL_ASSIGNED_TO_NAME' => 'Assigné à',
  'LBL_LIST_ASSIGNED_TO_NAME' => 'Assigné à',
  'LBL_CONTRACTS' => 'Contrats',
  'LBL_CONTRACTS_SUBPANEL_TITLE' => 'Contrats',
  'LBL_MY_CLOSED_OPPORTUNITIES' => 'Mes affaires clôturées',
  'LBL_TOTAL_OPPORTUNITIES' => 'Total des affaires',
  'LBL_CLOSED_WON_OPPORTUNITIES' => 'Affaires cloturées et gagnées',
  'LBL_ASSIGNED_TO_ID' => 'Assigné à (ID)',
  'LBL_CREATED_ID' => 'Créé par (ID)',
  'LBL_MODIFIED_ID' => 'Modifié par (ID)',
  'LBL_MODIFIED_NAME' => 'Modifié par',
  'LBL_CREATED_USER' => 'Créé par',
  'LBL_MODIFIED_USER' => 'Modifié par',
  'LBL_CAMPAIGN_OPPORTUNITY' => 'Campagnes',
  'LBL_PROJECT_SUBPANEL_TITLE' => 'Projets',
  'LABEL_PANEL_ASSIGNMENT' => 'Assignation',
  'LNK_IMPORT_OPPORTUNITIES' => 'Import Affaires',
);

