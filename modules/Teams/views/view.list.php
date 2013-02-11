<?php

require_once('include/MVC/View/views/view.list.php');

class TeamsViewList extends ViewList
{
 	public function preDisplay()
 	{
 	    if ( !is_admin($GLOBALS['current_user']) && !is_admin_for_module($GLOBALS['current_user'],'Users') )
 	        sugar_die("Unauthorized access to administration.");
 	    
 	    parent::preDisplay();
 	}
}
