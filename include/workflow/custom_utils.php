<?php
/*********************************************************************************
  ********************************************************************************/


if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');


//Custom plugins
//Search through the plugins to include any custom_utils.php files
	$dir_path = "./custom/workflow/plugins";	

	if(is_dir($dir_path)){
		if ($dir = opendir($dir_path)) {
			while (($file = readdir($dir)) !== false) {

			   if($file != "." && $file != ".." ) {
     				if(is_dir($dir_path."/".$file) == true) {
			   			
     					
     					if(file_exists($dir_path."/".$file."/custom_utils.php")){
     					
     						include_once($dir_path."/".$file."/custom_utils.php");
     						
     					//end if custom_utils file exists	
     					}
				   	
     				//end if is dir
     				}
				//confirm not . or ..
			   }	   	
			//end while
			}
		//end if can open dir
		}
	//end if is dir
	}
?>
