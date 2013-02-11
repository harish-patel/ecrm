<?php
 if(!defined('sugarEntry'))define('sugarEntry', true);

$_SESSION['isMobile'] = true;
header('Location:index.php?module=Users&action=Login&mobile=1');
?>
