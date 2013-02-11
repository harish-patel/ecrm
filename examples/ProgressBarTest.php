<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
   ********************************************************************************/

ob_start();
require_once('../include/utils/progress_bar_utils.php');
display_flow_bar('myflow', 1);

display_progress_bar('myprogress',0, 10);
for($i = 0; $i <= 10; $i++){
update_progress_bar('myprogress',$i, 10);
sleep(1);
}
destroy_flow_bar('myflow');
?>
