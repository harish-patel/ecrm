<?php

require_once('include/MVC/View/views/view.classic.php');

class ReportsViewClassic extends ViewClassic
{
 	/**
	 * @see SugarView::preDisplay()
	 */
	public function preDisplay()
 	{
 		if(!empty($this->view_object_map['action']))
 			$this->action = $this->view_object_map['action'];
 	}
 	
 	/**
	 * @see SugarView::display()
	 */
	public function display()
 	{
 		parent::display();
 		$this->action = $GLOBALS['action'];	
 	}	
}
