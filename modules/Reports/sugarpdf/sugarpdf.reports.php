<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');



require_once('include/Sugarpdf/Sugarpdf.php');

class ReportsSugarpdfReports extends Sugarpdf
{
    /**
     * Options array for the writeCellTable method of reports.
     * @var Array
     */
    protected $options = array(
        "evencolor"=>"#DCDCDC",
        "header"=>array("fill"=>"#4B4B4B", "fontStyle"=>"B", "textColor"=>"#FFFFFF"),
    );
    
    function preDisplay(){
        global $app_list_strings, $locale;
        
        parent::preDisplay();
        
        //Set landscape orientation
        $this->setPageFormat(PDF_PAGE_FORMAT, "L");
        
        $this->SetFont(PDF_FONT_NAME_MAIN,'',PDF_FONT_SIZE_MAIN);
        
        //Set PDF document properties
        if($this->bean->name == "untitled") {
            $this->SetHeaderData(PDF_SMALL_HEADER_LOGO, PDF_SMALL_HEADER_LOGO_WIDTH, $app_list_strings['moduleList'][$this->bean->module], date("Y-m-d H:i:s"));
        } else {
            $this->SetHeaderData(PDF_SMALL_HEADER_LOGO, PDF_SMALL_HEADER_LOGO_WIDTH, $this->bean->name, date("Y-m-d H:i:s"));
        }
        $cols = count($this->bean->report_def['display_columns']);
    }
}


