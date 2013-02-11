<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

	//returns a list of components that are not of expected version
	function get_invalid_versions(){
		$invalid = array();
		
		require_once('modules/Versions/ExpectedVersions.php');
		
		foreach($expect_versions as $expect){
			$version = new Version();
			$result = $version->db->query("Select * from  $version->table_name  where  name='". $expect['name'] . "'");
			$valid = $version->db->fetchByAssoc($result);
			if($valid == null || ( !$version->is_expected_version($expect) && !empty($version->name) )){
		
				$invalid[$expect['name']] = $expect;
			}
		}
		return $invalid;
	}

?>
