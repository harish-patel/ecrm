<?php
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

require_once('include/SugarFields/Parsers/MetaParser.php');

class SearchFormMetaParser extends MetaParser {

function SearchFormMetaParser() {
	$this->mView = 'Search';
}

/**
 * parse
 * @param $mixed 
 * @return $obj A MetaDataBean instance
 **/
function parse($filePath, $vardefs = array(), $moduleDir = '', $merge=false, $masterCopy=null) {

   $contents = file_get_contents($filePath);
   $contents = $this->trimHTML($contents);
   
   // Get the second table in the page and onward
   $tables = $this->getElementsByType("table", $contents);
   //basic search table
   $basicSection = $this->processSection("basic", $tables[0], $filePath, $vardefs);
   $advancedSection = $this->processSection("advanced", $tables[1], $filePath, $vardefs);
   if(file_exists($masterCopy)) {
	   require($masterCopy);
	   $layouts = $searchdefs[$moduleDir]['layout'];
	
	   if(isset($layouts['basic_search'])) {
		  $basicSection = $this->mergeSection($basicSection, $layouts['basic_search']);
	      $basicSection = $this->applyRules($moduleDir, $basicSection);
	   }
	
	   if(isset($layouts['advanced_search'])) {
		  $advancedSection = $this->mergeSection($advancedSection, $layouts['advanced_search']);
	      $advancedSection = $this->applyRules($moduleDir, $advancedSection);
	   }
   } //if

$header = "<?php\n\n";
$header .= "\$searchdefs['$moduleDir'] = array(
    'templateMeta' => array('maxColumns' => '3', 'widths' => array('label' => '10', 'field' => '30')),
    'layout' => array(  					
\n\t'basic_search' =>";   
$header .= "\t" . var_export($basicSection, true);
$header .= "\n\t,'advanced_search' =>";
$header .= "\t" . var_export($advancedSection, true);
$header .= "
     ),\n
);
?>";

$header = preg_replace('/(\d+)[\s]=>[\s]?/',"",$header);
return $header;

}

function mergeSection($section, $masterSection) {

  // Get all the names in the panel
  $existingElements = array();
  $existingLocation = array();
  
  foreach($section as $rowKey=>$row) {
  	   if(is_array($row) && !empty($row['name'])) {
  	 	   $existingElements[$row['name']] = $row['name'];
  	 	   $existingLocation[$row['name']] = array("row"=>$rowKey);	
  	   } else if(!is_array($row) && !empty($row)) {
	 	   $existingElements[$row] = $row;
	 	   $existingLocation[$row] = array("row"=>$rowKey);
  	   }
  } //foreach
  
  // Now check against the $masterCopy
  foreach($masterSection as $row) {
  	
  	 $addEntry = '';
  	 $id = is_array($row) ? $row['name'] : $row;

     /*
  	 if(!isset($existingElements[$id])) {
  	 	//$addEntry = $row;
  	 }
  	 */
  	 
  	 if(isset($existingElements[$id])) {
  	 	//Use master copy instead
  	 	$section[$existingLocation[$id]['row']] = $row;
  	 }
     
  	 // Add it to the $panels 
  	 /*
  	 if(!empty($addEntry)) {
  	 	$section[] = $addEntry;
  	 }
  	 */
  } //foreach

  return $section;
}

function processSection($section, $table, $filePath, $vardefs=array()) {
   
   $toptr = $this->getElementsByType("tr", $table);
   
   if(!is_array($toptr) || empty($toptr)) {
   	  $GLOBALS['log']->error("Could not process top row (<tr>) for $section section");
   	  $GLOBALS['log']->error($table);
   	  return array(); 
   }
   
   $tabledata = $this->getElementsByType("table", $toptr[0]);
   
   if(empty($tabledata)) {
   	  $GLOBALS['log']->error("Error: HTML format for SearchForm.html not as expected, results may not be accurate");
   	  $GLOBALS['log']->error($toptr[0]);
   	  $tabledata[0] = "<table>{$table}</table>";
   }

   if(is_array($tabledata) && !empty($tabledata[0])) {
      $rows = $this->getElementsByType("tr", $tabledata[0]);
   } else {
   	  $rows = $toptr[0];
   }

   if(!is_array($rows)) {
   	  return array();
   }
   
   $metarow = array();
   foreach($rows as $trow) {
   	   $tablecolumns = $this->getElementsByType("td", $trow);
          
       $emptyCount = 0;   
       $metacolumn = array();
       $col = null;

	   foreach($tablecolumns as $tcols) {

	   	  	 $spanValue = strtolower($this->getElementValue("span", $tcols));
             $spanValue2 = strtolower($this->getElementValue("slot", $tcols));	
             $spanValue = !empty($spanValue2) ? $spanValue2 : $spanValue;
             $spanValue3 = strtolower($this->getElementValue("td", $tcols));
             $spanValue = !empty($spanValue3) ? $spanValue3 : $spanValue; 
             
             //Get all the editable form elements' names
	   	  	 $formElementNames = $this->getFormElementsNames($spanValue);  	  	 
	   	  	 $customField = $this->getCustomField($formElementNames);
	   	  	 
	   	  	 $name = '';
             $fields = null;
             $customCode = null;
                        
             if(!empty($customField)) {           
               // If it's a custom field we just set the name
               $name = $customField;
	   	  	 } else if(is_array($formElementNames) && count($formElementNames) == 1 
	   	  	           && (isset($vardefs[$formElementNames[0]]) || $formElementNames[0] == 'current_user_only')) {
	   	  	   $name = $formElementNames[0];
	   	  	 } 

	   	  	 //Skip and continue if $name is empty
	   	  	 if(empty($name)) {
	   	  	    continue;	
	   	  	 }
	   	  	 
	   	  	 // Build the entry
	   	  	 if(preg_match("/<textarea/si", $spanValue)) {
	   	  	 	//special case for textarea form elements (add the displayParams)
	   	  	 	$displayParams = array();
	   	  	    $displayParams['rows'] = $this->getTagAttribute("rows", $spanValue);
	   	  	    $displayParams['cols'] = $this->getTagAttribute("cols", $spanValue);

	   	  	    if(!empty($displayParams['rows']) && !empty($displayParams['cols'])) {
		   	  	    $field = array();
		   	  	    $field['name'] = $name;
					$field['displayParams'] = $displayParams;
	   	  	    } else {
	   	  	        $field = $name;	
	   	  	    }
	   	  	    
	   	  	    $col = $field;
	   	  	   
	   	  	 } else {

	   	  	 	if(isset($fields)) {
	   	  	 	   $field = array();
	   	  	 	   $field['name'] = $name;
	   	  	 	   if(isset($fields)) {
	   	  	 	   	  $field['fields'] = $fields;
	   	  	 	   }
	   	  	 	   
	   	  	 	   if(!empty($customCode)) {
	   	  	 	   	  $field['customCode'] = $customCode;
	   	  	 	   }
  	 	   
	   	  	 	   $col = $field;
	   	  	 	} else {
	   	  	 	   $emptyCount = $name == '' ? $emptyCount + 1 : $emptyCount;
	   	  	 	   $col = $name;
	   	  	 	}	
	   	  	 } //if-else if-else block
             $metarow[] = $col;
	   } //foreach

	   // One last final check.  If $emptyCount does not equal Array $col count, don't add 
	   if($emptyCount != count($col)) {
   	      //$metarow[] = $col;
	   } //if

   } //foreach  
	
   return $metarow;
}

function applyRules($moduleDir, $section=array()) {
   require_once('include/SugarFields/Parsers/Rules/BaseRule.php');
   $baseRule = new BaseRule();
   if(!is_array($section)) {
   	  $GLOBALS['log']->error("Error: SearchFormMetaParser->applyRules expects Array");
   	  return $section;
   }
   
   foreach($section as $key=>$row) {
   	  //Override email1 fields
   	  if($baseRule->matches($row, '/^email1$/si')) {
   	  	 $section[$key] = array('name' => 'email', 'label' =>'LBL_ANY_EMAIL', 'type' => 'name');
   	  }
   }
   return $section;
}

}
?>

