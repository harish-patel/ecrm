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




















$defaultText = 
<<<EOQ
<div style="padding-left:5px;">
Bienvenue dans <a href="http://www.sugarcrm.com">Sugar</a> 

Nouvelles fonctionnalités:<br /><br />
* Equipes dynamiques / Multi-équipes (PRO et ENT)<br />
* Amélioration de la gestion des mots de passe<br />
* Ajout de l'éditeur de Vue Mobile (PRO et ENT)<br />
* Amélioration de la gestion des emails<br />

Pour plus d'informations rendez vous sur <a href="http://www.sugarcrm.com/crm/university">Sugar University</a> (en anglais) <br />
</div>
EOQ
;


$dashletStrings['JotPadDashlet'] = array('LBL_TITLE'            => 'Bloc Note',
                                         'LBL_DESCRIPTION'      => 'Un dashlet pour conserver vos notes',
                                         'LBL_SAVING'           => 'Sauvegarde du Bloc Note ...',
                                         'LBL_SAVED'            => 'Sauvegarder',
                                         'LBL_CONFIGURE_TITLE'  => 'Titre',
                                         'LBL_CONFIGURE_HEIGHT' => 'Auteur (1 - 300)',
                                         'LBL_DBLCLICK_HELP'    => 'Double cliquez pour éditer.',
                                         'LBL_DEFAULT_TEXT'     => $defaultText,
);
?>
