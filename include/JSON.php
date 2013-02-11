<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

/*********************************************************************************
   ********************************************************************************/

/*********************************************************************************

 * Description:  Includes generic helper functions used throughout the application.
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 ********************************************************************************/

class JSON
{

    /**
     * JSON encode a string
     *
     * @param string $string
     * @param bool $addSecurityEnvelope defaults to false
     * @return string 
     */
    public static function encode($string, $addSecurityEnvelope = false, $encodeSpecial = false)
    {
        $encodedString = json_encode($string);
        
        if($addSecurityEnvelope) {
            $encodedString = "while(1);/*" . $encodedString . "*/";
        }


        if ($encodeSpecial)
        {
            $charMap = array('<' => '\u003C', '>' => '\u003E', "'" => '\u0027', '&' => '\u0026');
            foreach($charMap as $c => $enc)
            {
                $encodedString = str_replace($c, $enc, $encodedString);
            }
        }
        
        return $encodedString;
    }

    /**
     * JSON decode a string
     *
     * @param string $string
     * @param bool $examineEnvelope Default false, true to extract and verify envelope
     * @return string 
     */
    public static function decode($string, $examineEnvelope=false, $assoc = true)
    {
        if ($examineEnvelope) {
            $meta = json_decode($string,true);
            if($meta['asychronous_key'] != $_SESSION['asychronous_key']) {
                $GLOBALS['log']->fatal("*** SECURITY: received asynchronous call with invalid ['asychronous_key'] value. Possible CSRF attack.");
                return '';
            }

            return $meta['jsonObject'];
        }

        return json_decode($string,$assoc);
    }

    /**
     * @deprecated use JSON::encode() instead
     */
    public static function encodeReal($string)
    {
        return self::encode($string);
    }
    
    /**
     * @deprecated use JSON::decode() instead
     */
    public static function decodeReal($string)
    {
        return self::decode($string);
    }
}
