<?php
/*********************************************************************************
  ********************************************************************************/

class default_filter {

var $_component;
	
public function default_filter() {
	
}
	
public function setComponent($component) {
   	$this->_component = $component;
}
	
public function getList($args, $module) {
	$args = $this->_component->mapInput($args, $module);
	return $this->_component->getSource()->getList($args, $module);
}
	
}

?>
