<?php
/*********************************************************************************
   ********************************************************************************/




/**
 * @deprecated use DBManager::convert() instead.
 */
function db_convert($string, $type, $additional_parameters=array(),$additional_parameters_oracle_only=array())
	{
    return $GLOBALS['db']->convert($string, $type, $additional_parameters, $additional_parameters_oracle_only);
            }

/**
 * @deprecated use DBManager::concat() instead.
 */
function db_concat($table, $fields)
	{
    return $GLOBALS['db']->concat($table, $fields);
}

/**
 * @deprecated use DBManager::fromConvert() instead.
 */
function from_db_convert($string, $type)
	{
    return $GLOBALS['db']->fromConvert($string, $type);
	}

$toHTML = array(
	'"' => '&quot;',
	'<' => '&lt;',
	'>' => '&gt;',
	"'" => '&#039;',
);
$GLOBALS['toHTML_keys'] = array_keys($toHTML);
$GLOBALS['toHTML_values'] = array_values($toHTML);

/**
 * Replaces specific characters with their HTML entity values
 * @param string $string String to check/replace
 * @param bool $encode Default true
 * @return string
 *
 * @todo Make this utilize the external caching mechanism after re-testing (see
 *       log on r25320).
 */
function to_html($string, $encode=true){
	if (empty($string)) {
		return $string;
	}
	static $cache = array();
	global $toHTML;
	if (isset($cache['c'.$string])) {
	    return $cache['c'.$string];
	}

	$cache_key = 'c'.$string;

	if($encode && is_string($string)){//$string = htmlentities($string, ENT_QUOTES);
		/*
		 * cn: bug 13376 - handle ampersands separately
		 * credit: ashimamura via bug portal
		 */
		//$string = str_replace("&", "&amp;", $string);

		if(is_array($toHTML)) { // cn: causing errors in i18n test suite ($toHTML is non-array)
			$string = str_replace(
				$GLOBALS['toHTML_keys'],
				$GLOBALS['toHTML_values'],
				$string
			);
		}
	}
	$cache[$cache_key] = $string;
	return $cache[$cache_key];
}

/**
 * Replaces specific HTML entity values with the true characters
 * @param string $string String to check/replace
 * @param bool $encode Default true
 * @return string
 */
function from_html($string, $encode=true) {
    if (!is_string($string) || !$encode) {
        return $string;
    }

	global $toHTML;
    static $toHTML_values = null;
    static $toHTML_keys = null;
    static $cache = array();
    if (!isset($toHTML_values) || !empty($GLOBALS['from_html_cache_clear'])) {
        $toHTML_values = array_values($toHTML);
        $toHTML_keys = array_keys($toHTML);
    }

    // Bug 36261 - Decode &amp; so we can handle double encoded entities
	$string = str_replace("&amp;", "&", $string);

    if (!isset($cache[$string])) {
        $cache[$string] = str_replace($toHTML_values, $toHTML_keys, $string);
    }
    return $cache[$string];
}

/**
 * @deprecated
 * @todo this function is only used by one function ( run_upgrade_wizard_sql() ), which isn't
 *       used either; trying kill this off
 */
function run_sql_file( $filename )
{
    if( !is_file( $filename ) ){
        print( "Could not find file: $filename <br>" );
        return( false );
    }


    $contents = sugar_file_get_contents($filename);

    $lastsemi   = strrpos( $contents, ';') ;
    $contents   = substr( $contents, 0, $lastsemi );
    $queries    = explode( ';', $contents );
    $db         = DBManagerFactory::getInstance();

    foreach( $queries as $query ){
        if( !empty($query) ){
			if($db->dbType == 'oci8')
			{
			}
			else
			{
				$db->query( $query.';', true, "An error has occured while running.<br>" );
			}
        }
    }
    return( true );
}

/*
 * Return a version of $proposed that can be used as a column name in any of our supported databases
 * Practically this means no longer than 25 characters as the smallest identifier length for our supported DBs is 30 chars for Oracle plus we add on at least four characters in some places (for indicies for example)
 * @param string $name Proposed name for the column
 * @param string $ensureUnique
 * @return string Valid column name trimmed to right length and with invalid characters removed
 */
 function getValidDBName ($name, $ensureUnique = false, $maxLen = 30)
{
    // first strip any invalid characters - all but alphanumerics and -
    $name = preg_replace ( '/[^\w-]+/i', '', $name ) ;
    $len = strlen ( $name ) ;
    $result = $name;
    if ($ensureUnique)
    {
        $md5str = md5($name);
        $tail = substr ( $name, -11) ;
        $temp = substr($md5str , strlen($md5str)-4 );
        $result = substr ( $name, 0, 10) . $temp . $tail ;
    }else if ($len > ($maxLen - 5))
    {
        $result = substr ( $name, 0, 11) . substr ( $name, 11 - $maxLen + 5);
    }
    return strtolower ( $result ) ;
}

?>
