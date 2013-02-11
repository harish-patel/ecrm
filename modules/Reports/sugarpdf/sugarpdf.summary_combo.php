<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');


require_once('modules/Reports/sugarpdf/sugarpdf.reports.php');
require_once('modules/Reports/templates/templates_chart.php');
require_once('include/SugarCharts/SugarChartFactory.php');

			
class ReportsSugarpdfSummary_combo extends ReportsSugarpdfReports
{
    function display(){
        global $app_list_strings, $locale;
         
        //add chart
        if (isset($_REQUEST['id']) && $_REQUEST['id'] != false) {
	    	$this->bean->is_saved_report = true;
	    }
	    $xmlFile = get_cache_file_name($this->bean);
	    $sugarChart = SugarChartFactory::getInstance();
	    if($sugarChart->supports_image_export) {
		    $imageFile = $sugarChart->get_image_cache_file_name($xmlFile,".".$sugarChart->image_export_type);
		    if(file_exists($imageFile)) {
		    	$this->AddPage();
		    	list($width, $height) = getimagesize($imageFile); 
		    	$imageHeight = ($height >= $width) ? $this->getPageHeight()*.7 : "";
		    	$imageWidth = ($width >= $width) ? $this->getPageWidth()*.9 : "";
		    	$this->Image($imageFile,$this->GetX(),$this->GetY(),$imageWidth,$imageHeight,"","","N",false,300,"", false,false,0,true);
		    	
		    	if($sugarChart->print_html_legend_pdf) {
			    	$legend = $sugarChart->buildHTMLLegend($xmlFile);
	//		    	$this->Write(12,$legend);
			    	$this->writeHTML($legend,true,false,false,true,"");
		    	}
		    }
	    }
	    
        $this->AddPage();
       
        //disable paging so we get all results in one pass
        $this->bean->enable_paging = false;
        $cols = count($this->bean->report_def['display_columns']);
        $this->bean->run_summary_combo_query();
    
        $header_row = $this->bean->get_summary_header_row();
        $columns_row = $this->bean->get_header_row();
    
        while(($row = $this->bean->get_summary_next_row()) != 0) {
            $item = array();
            $count = 0;
    
            for($i=0; $i < $this->bean->current_summary_row_count; $i++) {
                if(($column_row = $this->bean->get_next_row('result', 'display_columns', false, true)) != 0) {
                    for($j=0; $j < sizeof($columns_row); $j++) {
                        $label = $columns_row[$j];
                        $item[$count][$label] = $column_row['cells'][$j];
                    }
                    $count++;
                } else {
                    break;
                }
            }
            $this->writeCellTable($item, $this->options);
            $this->Ln1();
            
            $item = array();
            $count = 0;
            for($j=0; $j < sizeof($row['cells']); $j++) {
                if($j > count($header_row) - 1)
                    $label = $header_row[count($header_row) - 1];
                else
                    $label = $header_row[$j];
                if(preg_match('/type.*=.*checkbox/Uis', $row['cells'][$j])) { // parse out checkboxes
                    if(preg_match('/checked/i', $row['cells'][$j])) $row['cells'][$j] = $app_list_strings['dom_switch_bool']['on'];
                    else $row['cells'][$j] = $app_list_strings['dom_switch_bool']['off'];
                }
                $value = $row['cells'][$j];
                $item[$count][$label] = $value;
    
            }
            $this->writeCellTable($item, $this->options);
            $this->Ln1();
        }
    
    
        $this->bean->clear_results();
        if ( $this->bean->has_summary_columns()) {
            $this->bean->run_total_query();
            $total_row = $this->bean->get_summary_total_row();
            $item = array();
            $count = 0;
            for($j=0; $j < sizeof($header_row); $j++) {
                $label = $header_row[$j];
                $value = $total_row['cells'][$j];
                $item[$count][$label] = $value;
            }
            $this->writeCellTable($item, $this->options);
        }
        
	    
    }
    
    
}

