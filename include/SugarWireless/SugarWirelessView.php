<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

/*********************************************************************************

 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 ********************************************************************************/

/**
 *
 * SugarWirelessView extends SugarView and is the base class for wireless views.
 *
 * The generic and reusable features of wireless views are contained in the base
 * class. This includes the module select list, the saved search options and form,
 * the search form, the subpanel data, the header, and the footer of the wireless
 * views.
 *
 */
class SugarWirelessView extends SugarView
{
	/**
	 * wl_mod_select_list includes the list of modules to be added as options to
	 * the navigation select list
	 *
	 * @var Array of module strings
	 */
    public $wl_mod_select_list;

    /**
	 * wl_mod_create_list includes the list of modules that we can add new unrelated records to
	 *
	 * @var Array of module strings
	 */
    public $wl_mod_create_list;

	/**
	 * Constructor for the view, it performs the following tasks:
	 *
	 * 1. sets the view options
	 * 2. achieves the global module select list
	 * 3. calls the SugarView constructor
	 * 4. sets a smarty variable with the global action
	 *
	 * @param none
	 * @return none
	 */
 	public function __construct(){
		$this->options['show_title'] = true;
		$this->options['show_header'] = false;
		$this->options['show_footer'] = false;
		$this->options['show_javascript'] = false;
		parent::SugarView();
 	}

    /**
     * Override the default init() method; build the module select list after calling it
     *
     * @param $bean
     * @param $view_object_map
     */
    public function init($bean = null, $view_object_map = array())
    {
        parent::init($bean, $view_object_map);
        if ( $this->action != 'Login' && $this->action != 'SetTimezone' && $this->action != 'Logout')
            $this->set_wl_module_select_list();
        $this->ss->assign('VIEW', $this->action);
    }

    protected function wl_get_metadata_location( $view ) {

    	require_once 'modules/ModuleBuilder/parsers/views/DeployedMetaDataImplementation.php' ;
 	    $filename = DeployedMetaDataImplementation::getFileName ( $view, $GLOBALS['module'] , MB_CUSTOMMETADATALOCATION ) ;

 	    if (!file_exists ( $filename ) ) {
 	    	$filename = DeployedMetaDataImplementation::getFileName ( $view, $GLOBALS['module'] , MB_BASEMETADATALOCATION ) ;
 	    	if (!file_exists($filename))
 	    	{
 	    		require_once 'modules/ModuleBuilder/Module/StudioModule.php' ;
				$module = new StudioModule ( $GLOBALS['module'] ) ;

 	    		// If we're missing a wireless view, we can create it easily from a template, sourced from SugarObjects
				$filename =  'include/SugarObjects/templates/' . $module->getType () . '/metadata/' . basename( $filename ) ;
 			}
 		}

		return $filename ;

    }

 	/**
 	 * Private function that determines the module list
 	 *
 	 * This function reads the static metadata file that contains the list
 	 * of included modules for SugarWireless. It will form a select list
 	 * that gets consumed by the views. Also, it will do a check to make sure the
 	 * user has access to the module.
 	 *
 	 * @param none
 	 * @return none
 	 */
 	private function set_wl_module_select_list(){
        $wl_module_list = array_keys($this->view_object_map['wireless_module_registry']);

		$wl_module_select_list = array();
        $wl_mod_create_list = array();
		foreach($wl_module_list as $module){
		    //Explicitly remove the Reports module if selected for other mobile devices.
		    if($module == 'Reports')
			     continue;
			// check if user has access to the listed module
			if (in_array($module, $GLOBALS['moduleList'])){
				$wl_module_select_list[$module] = $GLOBALS['app_list_strings']['moduleList'][$module];
                $module_reg = $this->view_object_map['wireless_module_registry'][$module];
                if ( isset($module_reg['disable_create']) && $module_reg['disable_create'] )
                    $wl_mod_create_list[$module] = 1;
			}
		}
		// adding Employees as one-off to select list
		$wl_module_select_list['Employees'] = $GLOBALS['app_strings']['LBL_EMPLOYEES'];
        $wl_mod_create_list['Employees'] = 1;
		asort($wl_module_select_list);

		$this->wl_mod_select_list = $wl_module_select_list;
        $this->wl_mod_create_list = $wl_mod_create_list;
 	}

 	/**
 	 * Protected function that retrieves subpanel data for a given bean
 	 *
 	 * This function will return an array with the subpanel data for a bean. The
 	 * function needs to attain the relationship and modify the query. It will
 	 * inject team security code into the query if that is needed, and construct
 	 * a final query. Finally, it will call the list_query function to attain the
 	 * subpanel data list.
 	 *
 	 * @param - $child_seed the subpanel module bean
 	 * @param - $related_field the subpanel module
 	 * @return - Array of child_seed objects
 	 */
 	protected function wl_get_subpanel_data($child_seed, $related_field){
 		// load the relationship of the subpanel module to the current loaded bean
		$this->bean->load_relationship($related_field);
		// attain the query
    	$query_array = $this->bean->$related_field->getQuery(true);
    	$where = $query_array['where'];

    	// this code is needed to plug the correct INNER JOIN from the team security
    	// where clause
    	$from = explode(' ', $query_array['from'], 3);
    	$from[1] = $from[1] . ' ';
    	$child_seed->add_team_security_where_clause($from[1]);
    	// reconstruct the FROM clause
		$query_array['from'] = implode(' ', $from);

    	$query = 'SELECT '.$child_seed->table_name.'.* ' . $query_array['from'] . ' ' . $where;

    	// return the list
    	return $child_seed->process_list_query($query, 0);
 	}

 	/**
 	 * Retrieve the meta data file and module name for a particular view
 	 *
 	 * @param string $view
 	 * @return array filename and module name information
 	 */
 	public function getMetaDataFile($view)
 	{
 	    require_once 'modules/ModuleBuilder/parsers/views/DeployedMetaDataImplementation.php' ;
 	    $filename = DeployedMetaDataImplementation::getFileName ( strtolower( $view ), $this->module, MB_CUSTOMMETADATALOCATION ) ;
		$module_name = $this->module;

		if (!file_exists($filename) && strtolower( $view ) == MB_WIRELESSDETAILVIEW )
			$filename = DeployedMetaDataImplementation::getFileName ( MB_WIRELESSEDITVIEW, $this->module, MB_CUSTOMMETADATALOCATION ) ;

 	    if (!file_exists($filename))
 	    {
 	    	$filename = DeployedMetaDataImplementation::getFileName ( strtolower( $view ), $this->module, MB_BASEMETADATALOCATION ) ;

			if (!file_exists($filename) && strtolower( $view ) == MB_WIRELESSDETAILVIEW )
				$filename = DeployedMetaDataImplementation::getFileName ( MB_WIRELESSEDITVIEW, $this->module, MB_BASEMETADATALOCATION ) ;

			if (!file_exists($filename))
 	    	{
 	    		require_once 'modules/ModuleBuilder/Module/StudioModule.php' ;
				$module = new StudioModule ( $this->module ) ;

 	    		// If we're missing a wireless view we fallback on a template, sourced from SugarObjects
				$filename =  'include/SugarObjects/templates/' . $module->getType () . '/metadata/' . basename( $filename ) ;
				$module_name = '<module_name>' ;
 	    	}
 	    }
 	    
 	    return array('filename' => $filename, 'module_name' => $module_name);
 	}
	/**
	 * Public function that attains the bean detail and sets up an array for
	 * Smarty consumption.
	 */
 	public function bean_details($view)
	{
		
 	    $metaInfo = $this->getMetaDataFile($view);
 	    $filename = $metaInfo['filename'];
 	    $module_name = $metaInfo['module_name'];
 	    
 	    $GLOBALS['log']->debug( get_class($this)."->bean_details($view): loading viewdefs from $filename, with module_name=$module_name" ) ;

 	    require_once 'modules/ModuleBuilder/parsers/views/GridLayoutMetaDataParser.php' ;
 	    require $filename ;

		if ( !isset($viewdefs[$module_name][ GridLayoutMetaDataParser::$variableMap [ strtolower( $view ) ] ])
				&& strtolower( $view ) == MB_WIRELESSDETAILVIEW )
			$panels = $viewdefs[$module_name][ GridLayoutMetaDataParser::$variableMap [ MB_WIRELESSEDITVIEW ] ]['panels'];
		else
 	    	$panels = $viewdefs[$module_name][ GridLayoutMetaDataParser::$variableMap [ strtolower( $view ) ] ]['panels'];
// 	    $GLOBALS['log']->debug( get_class($this)."->bean_details($view): loaded these panels: ".print_r( $panels, true ) ) ;

		// traverse through the wirelessviewdefs metadata to get the fields and values
		$bean_details = array();
        foreach($panels as $fields){
        	foreach($fields as $field){
	            // handle empty assigned_user_name
                if(empty($this->bean->assigned_user_name)) {
				   if(!empty($this->bean->assigned_user_id)){
				       $this->bean->assigned_user_name = get_assigned_user_name($this->bean->assigned_user_id);
				   }else{
                       $this->bean->assigned_user_name = $GLOBALS['current_user']->user_name;
				   }
				}
	            // handle empty team_name
	            if(empty($this->bean->team_name)) {
				   if(!empty($this->bean->team_id)){
				       $this->bean->team_name = Team::getTeamName($this->bean->team_id);
				   }else{
				       $this->bean->team_name = $GLOBALS['current_user']->default_team_name;
				   }
				}
				// set the correct field info based on the view
				if ($view == 'WirelessDetailView'){
					$field_info = $this->setup_detail_field($field);
				}
				else if ($view == 'WirelessEditView'){
					$field_info = $this->setup_edit_field($field);
				}

				if (is_array($field_info)){
					if (is_array($field)){
						$field = $field['name'];
					}
					$bean_details[$field] = $field_info;
				}
        	}
        }
        return $bean_details;
 	}

	private function setup_detail_field(
	    $field
	    )
	{
		$displayParams = (isset($field['displayParams'])) ? $field['displayParams'] : array();
		$customCode = null;
		$GLOBALS['log']->debug( get_class($this)."->setup_detail_field($field)" ) ;
		if (is_array($field)){
			if (isset($field['displayParams']['wireless_edit_only']) && $field['displayParams']['wireless_edit_only']){
				return;
			}
			else{
				$type = (isset($field['displayParams']['type'])) ? $field['displayParams']['type'] : $this->bean->field_name_map[$field['name']]['type'];
				$customCode = (isset($field['customCode'])) ? $field['customCode'] : null;
				$field = $field['name'];
			}
		}
        else {
            $type = $this->bean->field_name_map[$field]['type'];
		}

		if ( !isset($this->bean->field_name_map[$field]) ) {
		    return false;
		}
		
        // retrieve the field, id, and value, pass it as an array for Smarty
        return array(
				'id' => $this->bean->id,
                'label' => $GLOBALS['mod_strings'][$this->bean->field_name_map[$field]['vname']],
                'displayParams' => $displayParams,
                'field' => $field,
                'type' => $type,
                'value' => $this->bean->$field,
                'vardef' => $this->bean->field_name_map[$field],
                'customCode' => $customCode,
                );

	}

	private function setup_edit_field(
	    $field
	    )
	{
	    $displayParams = (is_array($field) && isset($field['displayParams']) && is_array($field['displayParams'])) ? $field['displayParams'] : array();
	    $required = false;
		$detail_only = false;
		$customCode = null;
		$readOnly = false;
		if (is_array($field)){
		    $required = !empty($this->bean->field_name_map[$field['name']]['required']);
		    if (!isset($field['displayParams']) || !is_array($field['displayParams']))
		        $field['displayParams'] = $displayParams;
		    if ( isset($field['displayParams']['required']) )
		        $required = $field['displayParams']['required'];
			$detail_only = (isset($field['displayParams']['wireless_detail_only'])) ? $field['displayParams']['wireless_detail_only'] : false;
			$customCode = (isset($field['customCode'])) ? $field['customCode'] : null;
			$customCode = (isset($field['customCode'])) ? $field['customCode'] : null;
			$readOnly = !empty($field['readOnly']);
			$field = $field['name'];
		}
		
		$displayParams['readOnly'] = !empty($displayParams['readOnly']) || $readOnly || !empty($this->bean->field_name_map[$field]['calculated']);

        if ( !isset($this->bean->field_name_map[$field]) ) {
		    return false;
		}
		
		return array(
				'id' => $this->bean->id,
				'field' => $field,
				'required' => $required,
				'detail_only' => $detail_only,
				'displayParams' => $displayParams,
                'label' => $GLOBALS['mod_strings'][$this->bean->field_name_map[$field]['vname']],
                'value' => isset($this->bean->$field) ? $this->bean->$field : '',
                'vardef' => $this->bean->field_name_map[$field],
                'type'  => $this->bean->field_name_map[$field]['type'],
		        'readOnly' => $displayParams['readOnly'],
                'customCode' => $customCode,
                );
	}

 	protected function get_field_defs()
    {
        global $app_list_strings;
        
 		$this->bean->fill_in_relationship_fields();

 		$is_owner = $this->bean->isOwner($GLOBALS['current_user']->id);

 		$field_defs = array();

		if($this->bean){
			global $current_user;

			if(empty($this->bean->assigned_user_id)) {
			   $this->bean->assigned_user_id = $current_user->id;
			}
			if(empty($this->bean->assigned_user_name)) {
			   if(!empty($this->bean->assigned_user_id)){
			       $this->bean->assigned_user_name = get_assigned_user_name($this->bean->assigned_user_id);
			   }else{
			       $this->bean->assigned_user_name = $current_user->user_name;
			   }
			}
			if(empty($this->bean->team_id)) {
			   $this->bean->team_id = $current_user->default_team;
			}
			if(empty($this->bean->team_name)) {
			   if(!empty($this->bean->team_id)){
			       $this->bean->team_name = Team::getTeamName($this->bean->team_id);
			   }else{
			       $this->bean->team_name = $current_user->default_team_name;
			   }
			}
	        foreach($this->bean->toArray() as $name => $value) {

                $valueFormatted = false;
	        	if($this->bean->field_defs[$name]['type']=='link')continue;

	            $field_defs[$name] = $this->bean->field_defs[$name];

                if(isset($field_defs[$name]['options']) && isset($app_list_strings[$field_defs[$name]['options']])) {
	                $field_defs[$name]['options'] = $app_list_strings[$field_defs[$name]['options']]; // fill in enums
	            } //if

                if( isset($_REQUEST['failsave']) && isset($_REQUEST[$name])) {
	               $value = $_REQUEST[$name];
	            }

	       	 	if(isset($field_defs[$name]['function'])) {
	       	 		$function = $field_defs[$name]['function'];
	       			if(is_array($function) && isset($function['name'])){
	       				$function = $field_defs[$name]['function']['name'];
	       			}else{
	       				$function = $field_defs[$name]['function'];
	       			}
					if(!empty($field_defs[$name]['function']['returns']) && $field_defs[$name]['function']['returns'] == 'html'){
						if(!empty($field_defs[$name]['function']['include'])){
								require_once($field_defs[$name]['function']['include']);
						}
						$value = $function($this->bean, $name, $value, $this->action);
						$valueFormatted = true;
					}else{
                       $field_defs[$name]['options'] = $function($this->bean, $name, $value, $this->action);
					}
	       	 	}

	       	 	if(isset($field_defs[$name]['type']) && $field_defs[$name]['type'] == 'function' && isset($field_defs[$name]['function_name'])){
	       	 		require_once('include/EditView/EditView2.php');
	       	 		$ev = new EditView;
	       	 		$ev->focus = $this->bean;
	       	 		$value = $ev->callFunction($field_defs[$name]);
	       	 		$valueFormatted = true;
	       	 	}

	       	 	if(!$valueFormatted) {
	       	 	   $this->bean->format_field($this->bean->field_defs[$name]);
                   $value = isset($this->bean->$name) ? $this->bean->$name : '';
	       	 	}

	            $field_defs[$name]['value'] = $value;
	            if($this->bean->bean_implements('ACL')){
	       			$field_defs[$name]['acl'] = ACLField::hasAccess($name, $this->bean->module_dir,$GLOBALS['current_user']->id, $is_owner);
	            }else{
	            	$field_defs[$name]['acl'] = 4;
	            }
	        } //foreach
		} //if

		return $field_defs;
 	}

 	/**
 	 * Public function to display the select list
 	 */
 	public function wl_select_list($selectListTpl='include/SugarWireless/tpls/wirelessselectlist.tpl'){
		$this->ss->assign('MODULE', $GLOBALS['module']);
		$this->ss->assign('MODULE_NAME', translate('LBL_MODULE_NAME',$GLOBALS['module']));
		$this->ss->assign('WL_MODULE_LIST', $this->wl_mod_select_list);

		$this->ss->display($selectListTpl);
 	}

 	/**
 	 * Private function to determine the saved searches for particular modules
 	 *
 	 * This function will take the current user id and the current module, and determine
 	 * if there are any saved searches available. If yes, then the function will
 	 * return a select list with the saved searches.
 	 *
 	 * @return html for select list of saved searches
 	 */
 	private function wl_saved_search_options(){
        $saved_search_mod_strings = return_module_language($GLOBALS['current_language'], 'SavedSearch');

		// create query to get saved searches
        $query = 'SELECT id, name FROM saved_search
                  WHERE
                    deleted = \'0\' AND
                    assigned_user_id = \'' . $GLOBALS['current_user']->id . '\' AND
                    search_module =  \'' . $GLOBALS['module'] . '\'
                  ORDER BY name';
        $result = $GLOBALS['db']->query($query, true, "Error filling in saved search list: ");

        // initialize savedSearchArray
        $savedSearchArray['_none'] = $GLOBALS['app_strings']['LBL_NONE'];

        // populate savedSearchArray
        while ($row = $GLOBALS['db']->fetchByAssoc($result)) {
            $savedSearchArray[$row['id']] = $row['name'];
        }

        if (count($savedSearchArray) > 1){
        	// check if a saved search has been executed
	        if(!empty($_SESSION['LastSavedView'][$GLOBALS['module']]) && $this->action == 'wirelesslist' && isset($_REQUEST['wl_saved_search_select']))
	            $selectedSearch = $_SESSION['LastSavedView'][$GLOBALS['module']];
	        else
	            $selectedSearch = '';
			// return the html
	        return get_select_options_with_id($savedSearchArray, $selectedSearch);
        }
        else{
        	return null;
        }
 	}

	/**
	 * Public function that consumes the saved search options private function and
	 * returns the saved search form.
	 */
 	public function wl_saved_search_form(){
 		$this->ss->assign('WL_SAVED_SEARCH_OPTIONS', $this->wl_saved_search_options());

 		return $this->ss->fetch('include/SugarWireless/tpls/wirelesssavedsearchform.tpl');
 	}

 	/**
 	 * Public function that reads search metadata and creates an appropriate search
 	 * form based on the metadata.
 	 */
 	public function wl_search_form($searchdefs = array()){

 		require_once 'modules/ModuleBuilder/parsers/constants.php';
		require $this->wl_get_metadata_location( MB_WIRELESSBASICSEARCH );

		// if we loaded the searchdefs from a SugarObjects template, then switch the template modulename to this module
		if ( !isset ( $searchdefs [ $GLOBALS['module'] ] ) &&  isset ( $searchdefs [ '<module_name>' ] ) )
			$searchdefs [ $GLOBALS['module'] ] = $searchdefs [ '<module_name>' ] ;

		require_once 'modules/ModuleBuilder/parsers/views/SearchViewMetaDataParser.php' ;
 		$wireless_search_defs = $searchdefs[ $GLOBALS['module'] ][ 'layout' ][ SearchViewMetaDataParser::$variableMap [ MB_WIRELESSBASICSEARCH ] ];

 		$wl_search_defs = array () ;
		// construct name, value pair of searchfield => label
		foreach($wireless_search_defs as $def ){

		    if ( is_array ( $def ) )
		    	$fieldname = $def [ 'name' ] ;
			else
                $fieldname = $def ;
			if(!empty($this->bean->field_name_map[$fieldname])){
				$wl_search_defs [ $fieldname ] = array(
												'field' => $fieldname,
												'label' => $GLOBALS['mod_strings'][$this->bean->field_name_map[$fieldname]['vname']],
												);
			}
		}

        $fields = $this->get_field_defs();
        // bug 22857: add option of 'none' to the dropdown if it doesn't already exist
        foreach ( $fields as $name => $field ) {
            if ( $field['type'] == 'enum' ) {
                if ( is_array($field['options']) ) {
                    if ( !isset($field['options']['']) ) {
                        $fields[$name]['options'] = array_merge(
                            array('' => $GLOBALS['app_strings']['LBL_NONE']),
                            $field['options']);
                    }
                }
                elseif ( isset($GLOBALS['app_list_strings'][$field['options']]) 
                        && !isset($GLOBALS['app_list_strings'][$field['options']]['']) ) {
                    $fields[$name]['options'] = array_merge(
                        array('' => $GLOBALS['app_strings']['LBL_NONE']),
                        $GLOBALS['app_list_strings'][$field['options']]);
                }
            }
            if ( !empty($_REQUEST[$name.'_advanced']) )
                $fields[$name]['value'] = $_REQUEST[$name.'_advanced'];
        }
        $this->ss->assign('fields', $fields);
		$this->ss->assign('WL_SEARCH_FIELDS', $wl_search_defs);
 		return $this->ss->fetch('include/SugarWireless/tpls/wirelesssearchform.tpl');
 	}

 	/**
 	 * Public function that displays the wireless view header.
 	 */
 	public function wl_header($welcome=false, $headerTpl='include/SugarWireless/tpls/wirelessheader.tpl'){
 		// welcome is true only on the wireless home page
 	    if ($welcome === true){
 	        $this->ss->assign('WELCOME', true);
			$this->ss->assign('user_name', $GLOBALS['current_user']->user_name);
 	    }
        $this->ss->display($headerTpl);
 	}
 	/**
 	 * Public function that displays the wireless view footer
 	 */
 	public function wl_footer($footerTpl='include/SugarWireless/tpls/wirelessfooter.tpl'){
        $this->ss->display($footerTpl);
 	}

    public function wl_required_edit_fields()
    {
        $return_array = array();

        foreach ( $this->bean_details('WirelessEditView') as $key => $values )
            if (!empty($values['required'])) {
                if (!empty ($values['vardef']['vname']))
                    $displayname = str_replace(":","",translate($values['vardef']['vname'] ,$this->bean->module_dir));
                else
                    $displayname = str_replace(":","",translate($values['vardef']['name'] ,$this->bean->module_dir));
                $return_array[$key] = $displayname;
            }

	   	return $return_array;
    }

	protected function checkEditPermissions()
    {
        if ($this->module == 'Employees')
            return is_admin($GLOBALS['current_user']) || $this->bean->id == $GLOBALS['current_user']->id;

        return $this->bean->ACLAccess('edit');
    }

    public function display(){
 	}

}
?>
