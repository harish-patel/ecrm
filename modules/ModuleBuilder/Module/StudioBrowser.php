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

require_once 'modules/ModuleBuilder/Module/StudioModuleFactory.php' ;

function cmp($a,$b)
{
	return strcasecmp($a,$b);
}

class StudioBrowser{
	var $modules = array();
	
	function loadModules(){
	    global $current_user;
		$access = get_admin_modules_for_user($current_user);
	    $d = dir('modules');
		while($e = $d->read()){
			if(substr($e, 0, 1) == '.' || !is_dir('modules/' . $e))continue;
			if(file_exists('modules/' . $e . '/metadata/studio.php') && isset($GLOBALS [ 'beanList' ][$e]) && (in_array($e, $access) || is_admin($current_user))) // installed modules must also exist in the beanList
			{
				$this->modules[$e] =  StudioModuleFactory::getStudioModule( $e ) ;
			}
		}
	}
	
    function loadRelatableModules(){
        $d = dir('modules');
        while($e = $d->read()){
            if(substr($e, 0, 1) == '.' || !is_dir('modules/' . $e))continue;
            if(file_exists('modules/' . $e . '/metadata/studio.php') && isset($GLOBALS [ 'beanList' ][$e])) // installed modules must also exist in the beanList
            {
                $this->modules[$e] = StudioModuleFactory::getStudioModule( $e ) ;
            }
        }
    }
		
	function getNodes(){
		$this->loadModules();
	    $nodes = array();
		foreach($this->modules as $module){
			$nodes[$module->name] = $module->getNodes();
		}
		uksort($nodes,'cmp'); // bug 15103 - order is important - this array is later looped over by foreach to generate the module list
		return $nodes;
	}

	
	
	
	
}
?>