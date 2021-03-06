<?php

if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');
/* * *******************************************************************************
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
 * ****************************************************************************** */


require_once('include/Sugarpdf/Sugarpdf.php');

class QuotesSugarpdfQuotes extends Sugarpdf
{

    var $aclAction = "detail";

    /**
     * Override
     */
    function process()
    {
        $this->preDisplay();
        $this->display();
        $this->buildFileName();
    }

    /**
     * Custom header for Quotes
     */
    public function Header()
    {
        $ormargins = $this->getOriginalMargins();
        $headerfont = $this->getHeaderFont();
        $headerdata = $this->getHeaderData();

        if (($headerdata['logo']) AND ($headerdata['logo'] != K_BLANK_IMAGE))
        {
            $logo = K_PATH_CUSTOM_IMAGES . $headerdata['logo'];
            $imsize = @getimagesize($logo);
            if ($imsize === FALSE)
            {
                // encode spaces on filename
                $logo = str_replace(' ', '%20', $logo);
                $imsize = @getimagesize($logo);
                if ($imsize === FALSE)
                {
                    $logo = K_PATH_IMAGES . $headerdata['logo'];
                }
            }
            // Print of the logo
            $this->Image($logo, $this->GetX(), $this->getHeaderMargin(), $headerdata['logo_width']);
        }
        // This table split the header in 3 parts of equal width. The last part (on the right) contain the header text.
        $table[0]["logo"] = "";
        $table[0]["blank"] = "";
        $table[0]["data"] = "<div><font face=\"" . $headerfont[0] . "\" size=\"" . ($headerfont[2] + 1) . "\"><b>" . $headerdata['title'] . "</b></font></div>" . $headerdata['string'];
        $options = array(
            "isheader" => false,
        );
        $this->SetTextColor(0, 0, 0);
        // header string
        $this->SetFont($headerfont[0], $headerfont[1], $headerfont[2]);
        // Start overwrite
        $this->writeHTMLTable($table, false, $options);
    }

    function display()
    {
        //turn off all error reporting so that PHP warnings don't munge the PDF code
        error_reporting(E_ALL);
        set_time_limit(1800);

        //Create new page           
        $this->AddPage();
        $this->SetFont(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN);
        $this->Ln();
    }

    /**
     * To be override
     */
    function buildFileName()
    {
        
    }

    /**
     * This method draw an horizontal line with a quotes specific style.
     */
    protected function drawLine()
    {
        $this->SetLineStyle(array('width' => 0.85 / $this->getScaleFactor(), 'cap' => 'butt', 'join' => 'miter', 'dash' => 0, 'color' => array(220, 220, 220)));
        $this->MultiCell(0, 0, '', 'T', 0, 'C');
    }

}