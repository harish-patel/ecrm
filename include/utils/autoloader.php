<?php
/*********************************************************************************
   ********************************************************************************/

class SugarAutoLoader{

	public static $map = array(
		'XTemplate'=>'XTemplate/xtpl.php',
		'ListView'=>'include/ListView/ListView.php',
		'Sugar_Smarty'=>'include/Sugar_Smarty.php',
		'Javascript'=>'include/javascript/javascript.php',

	);

	public static $noAutoLoad = array(
		'Tracker'=>true,
	);

	public static $moduleMap = array();

    public static function autoload($class)
	{
		$uclass = ucfirst($class);
		if(!empty(SugarAutoLoader::$noAutoLoad[$class])){
			return false;
		}
		if(!empty(SugarAutoLoader::$map[$uclass])){
			require_once(SugarAutoLoader::$map[$uclass]);
			return true;
		}

		if(empty(SugarAutoLoader::$moduleMap)){
			if(isset($GLOBALS['beanFiles'])){
				SugarAutoLoader::$moduleMap = $GLOBALS['beanFiles'];
			}else{
				include('include/modules.php');
				SugarAutoLoader::$moduleMap = $beanFiles;
			}
		}
		if(!empty(SugarAutoLoader::$moduleMap[$class])){
			require_once(SugarAutoLoader::$moduleMap[$class]);
			return true;
		}

  		return false;
	}

	public static function loadAll(){
		foreach(SugarAutoLoader::$map as $class=>$file){
			require_once($file);
		}

		if(isset($GLOBALS['beanFiles'])){
			$files = $GLOBALS['beanFiles'];
		}else{
			include('include/modules.php');
			$files = $beanList;
		}
		foreach(SugarAutoLoader::$map as $class=>$file){
			require_once($file);
		}

	}
}
?>
