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

 //Request object must have these property values:
 //		Module: module name, this module should have a file called TreeData.php
 //		Function: name of the function to be called in TreeData.php, the function will be called statically.
 //		PARAM prefixed properties: array of these property/values will be passed to the function as parameter.


require_once('include/JSON.php');
require_once('include/upload_file.php');

//process request parameters. consider following parameters.
//function, and all parameters prefixed with PARAM.
//PARAMT_ are tree level parameters.
//PARAMN_ are node level parameters.
//module  name and function name parameters are the only ones consumed
//by this file..
//foreach ($_FILES['uploadfile'] as $key=>$value) {

//$GLOBALS['log']->fatal("AttachFiles: KEY ".$key);
//$GLOBALS['log']->fatal("AttachFiles: Value".$value);
        
$json = getJSONobj();
$docRev = $json->decode(html_entity_decode($_REQUEST['removeSaveAtt']));
if(isset($docRev['jsonObject']) && $docRev['jsonObject'] != null){
	$docRev = $docRev['jsonObject'];
 }	
if( $docRev[0] !=null) $docRevOrTagId= $docRev[0];
if( $docRev[1] !=null) $deleted= $docRev[1];
if( $docRev[2] !=null) $tagOrAtt= $docRev[2];


    $KBTag = new KBTag();
    if($tagOrAtt==1){
	  $q = 'UPDATE document_revisions SET deleted = '.$deleted.' WHERE id = \''.$docRevOrTagId.'\'';
    }
    else{
        if(isset($_REQUEST['kb_id'])  && !empty($_REQUEST['kb_id'])){
          $q = 'UPDATE kbdocuments_kbtags SET deleted = '.$deleted.' WHERE kbtag_id = \''.$docRevOrTagId.'\' and kbdocument_id = \''.$_REQUEST['kb_id'].'\'';
        }	
    }
	$KBTag->db->query($q);
$GLOBALS['log']->fatal($q);	
$response = $deleted; 
if (!empty($response)) {	
	$json = getJSONobj();
	print $json->encode($response);	
	//return the parameters
}
sugar_cleanup();
exit();
?>
