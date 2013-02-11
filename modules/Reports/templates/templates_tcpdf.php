<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');


require_once('include/Sugarpdf/SugarpdfFactory.php');
require_once('modules/Reports/Report.php');


function preprocess($type = NULL, $reporter){
    $pdf = SugarpdfFactory::loadSugarpdf($type, "Reports", $reporter, array());
    return $pdf;
}

function process($pdf, $reportname, $stream){
    global $current_user;
    
    $pdf->process();
    @ob_clean();
    $filenamestamp = '';
    if(isset($current_user)){
        $filenamestamp .= '_'.$current_user->user_name;
    }
    $filenamestamp .= '_'.date(translate('LBL_PDF_TIMESTAMP', 'Reports'), time());
    $cr = array(' ',"\r", "\n","/");
    $filename = str_replace($cr, '_', $reportname.$filenamestamp.'.pdf');
    if(isset($_SERVER['HTTP_USER_AGENT']) && preg_match("/MSIE/", $_SERVER['HTTP_USER_AGENT'])) {
        $filename = urlencode($filename);
    }
    if($stream){
        //Force download as a file
        $pdf->Output($filename,'D');
    }else{
        $fp = sugar_fopen('cache/pdf/'.$filename,'w');
        fwrite($fp, $pdf->Output('','S'));
        fclose($fp);

        return 'cache/pdf/'.$filename;
    }
    return $filename;
}


/**
 * @return stream or string
 */
function template_handle_pdf(&$reporter, $stream = true) {
    $reporter->enable_paging = false;
    $reporter->plain_text_output = true;

    if($reporter->report_type == 'summary' && !empty($reporter->report_def['summary_columns'])) {
        if($reporter->show_columns
            && !empty($reporter->report_def['display_columns'])
            && !empty($reporter->report_def['group_defs'])) {
            $type = "summary_combo";
        } elseif($reporter->show_columns
            && !empty($reporter->report_def['display_columns'])
            && empty($reporter->report_def['group_defs'])) {
            $type = "detail_and_total";
        } elseif(!empty($reporter->report_def['group_defs'])) {
            $type = "summary";
        } else {
            $type = "total";
        }
    } elseif(!empty($reporter->report_def['display_columns'])) {
        $type = "listview";
    }
    
    $pdf=preprocess($type, $reporter);
    return process($pdf, $reporter->name, $stream);
}
