<?php

if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
class LeadAgeCalculator
{
    public function calculateAge(&$bean, $event, $arguments)
    {
        $dateEntered = $bean->date_entered;
        $dateEntered = strtotime($dateEntered);

        // current date time
        $now = time();
        $datediff = $now - $dateEntered;
        $diffInDays = floor($datediff / (60 * 60 * 24));
        
        $diffInDays = (!isset($diffInDays) ? 0 : $diffInDays);

        // set this newly calculated difference in the appropriate field. 
        $bean->lead_age_c = $diffInDays;
    }
}

?>
