<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
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



require_once ('modules/ModuleBuilder/parsers/views/ListLayoutMetaDataParser.php') ;
require_once 'modules/ModuleBuilder/parsers/constants.php' ;

class SubpanelMetaDataParser extends ListLayoutMetaDataParser
{

    // Columns is used by the view to construct the listview - each column is built by calling the named function
    public $columns = array ( 'LBL_DEFAULT' => 'getDefaultFields' , 'LBL_HIDDEN' => 'getAvailableFields' ) ;
    protected $labelIdentifier = 'vname' ; // labels in the subpanel defs are tagged 'vname' =>

    /*
     * Constructor
     * Must set:
     * $this->columns   Array of 'Column LBL'=>function_to_retrieve_fields_for_this_column() - expected by the view
     *
     * @param string subpanelName   The name of this subpanel
     * @param string moduleName     The name of the module to which this subpanel belongs
     * @param string packageName    If not empty, the name of the package to which this subpanel belongs
     */
    function __construct ($subpanelName , $moduleName , $packageName = '')
    {
        $GLOBALS [ 'log' ]->debug ( get_class ( $this ) . ": __construct()" ) ;

        // TODO: check the implementations
        if (empty ( $packageName ))
        {
            require_once 'modules/ModuleBuilder/parsers/views/DeployedSubpanelImplementation.php' ;
            $this->implementation = new DeployedSubpanelImplementation ( $subpanelName, $moduleName ) ;
            //$this->originalViewDef = $this->implementation->getOriginalDefs ();
        } else
        {
            require_once 'modules/ModuleBuilder/parsers/views/UndeployedSubpanelImplementation.php' ;
            $this->implementation = new UndeployedSubpanelImplementation ( $subpanelName, $moduleName, $packageName ) ;
        }

        $this->_viewdefs = array_change_key_case ( $this->implementation->getViewdefs () ) ; // force to lower case so don't have problems with case mismatches later
        $this->_fielddefs =  $this->implementation->getFielddefs ();
        $this->_standardizeFieldLabels( $this->_fielddefs );
        $GLOBALS['log']->debug ( get_class($this)."->__construct(): viewdefs = ".print_r($this->_viewdefs,true));
        $GLOBALS['log']->debug ( get_class($this)."->__construct(): viewdefs = ".print_r($this->_viewdefs,true));
        $this->_invisibleFields = $this->findInvisibleFields( $this->_viewdefs ) ;

        $GLOBALS['log']->debug ( get_class($this)."->__construct(): invisibleFields = ".print_r($this->_invisibleFields,true));
    }

    /*
     * Save the layout
     */
    function handleSave ($populate = true)
    {
        if ($populate)
        {
            $this->_populateFromRequest() ;
            if (isset ($_REQUEST['subpanel_title']) && isset($_REQUEST['subpanel_title_key'])) {
	            $selected_lang = (!empty($_REQUEST['selected_lang'])? $_REQUEST['selected_lang']:$_SESSION['authenticated_user_language']);
		        if(empty($selected_lang)){
		            $selected_lang = $GLOBALS['sugar_config']['default_language'];
		        }
		        require_once 'modules/ModuleBuilder/parsers/parser.label.php' ;
            	$labelParser = new ParserLabel ( $_REQUEST['view_module'] , isset ( $_REQUEST [ 'view_package' ] ) ? $_REQUEST [ 'view_package' ] : null ) ;
            	$labelParser->addLabels($selected_lang, array($_REQUEST['subpanel_title_key'] =>  $_REQUEST['subpanel_title']), $_REQUEST['view_module']);
            }
        }

        $this->implementation->deploy ( $this->restoreInvisibleFields ( $this->_invisibleFields , $this->_viewdefs ) ) ; // unlike our parent, do not force the field names back to upper case
    }

    /**
     * Return a list of the default fields for a subpanel
     * TODO: have this return just a list of fields, without definitions
     * @return array    List of default fields as an array, where key = value = <field name>
     */
    function getDefaultFields ()
    {
        $defaultFields = array ( ) ;
        foreach ( $this->_viewdefs as $key => $def )
        {
            if (empty ( $def [ 'usage' ] ) || strcmp ( $def [ 'usage' ], 'query_only' ) == 1)
            {
                $defaultFields [ strtolower ( $key ) ] = $this->_viewdefs [ $key ] ;
            }
        }

        return $defaultFields ;
    }

    /*
     * Find the query_only fields in the viewdefs
     * Query_only fields are used by the MVC to generate the subpanel but are not editable - they must be maintained in the layout
     * @param viewdefs The viewdefs to be searched for invisible fields
     * @return Array of invisible fields, ready to be provided to $this->restoreInvisibleFields
     */
    function findInvisibleFields( $viewdefs )
    {
        $invisibleFields = array () ;
        foreach ( $viewdefs as $name => $def )
            if ( isset($def [ 'usage' ] ) && ($def [ 'usage'] == 'query_only') )
                $invisibleFields [ $name ] = $def ;
        return $invisibleFields ;
    }

    function restoreInvisibleFields ( $invisibleFields , $viewdefs )
    {
        foreach ( $invisibleFields as $name => $def )
        {
            $viewdefs [ $name ] = $def ;
        }
        return $viewdefs ;
    }
    
    static function _trimFieldDefs ( $def )
    {
        $listDef = parent::_trimFieldDefs($def); 
        if (isset($listDef ['label']))
        {
            $listDef ['vname'] = $listDef ['label'];
            unset($listDef ['label']);
        }
        return $listDef;
    }

}
?>
