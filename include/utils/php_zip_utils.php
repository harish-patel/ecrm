<?php
/*********************************************************************************
   ********************************************************************************/



if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

function unzip( $zip_archive, $zip_dir)
{
   return unzip_file($zip_archive, null, $zip_dir);
}

function unzip_file( $zip_archive, $archive_file, $zip_dir)
{
    if( !is_dir( $zip_dir ) ) {
        if (defined('SUGAR_PHPUNIT_RUNNER') || defined('SUGARCRM_INSTALL'))
        {
        	$GLOBALS['log']->fatal("Specified directory '$zip_dir' for zip file '$zip_archive' extraction does not exist.");
        	return false;
        } else {
            die( "Specified directory '$zip_dir' for zip file '$zip_archive' extraction does not exist." );
        }
    }
    
    $zip = new ZipArchive;
    $res = $zip->open($zip_archive);
    
    if($res !== TRUE) {
        if (defined('SUGAR_PHPUNIT_RUNNER') || defined('SUGARCRM_INSTALL'))
        {
        	$GLOBALS['log']->fatal(sprintf("ZIP Error(%d): Status(%s): Arhive(%s): Directory(%s)", $res, $zip->status, $zip_archive, $zip_dir));
            return false;
        } else {
        	die(sprintf("ZIP Error(%d): Status(%s): Arhive(%s): Directory(%s)", $res, $zip->status, $zip_archive, $zip_dir));
        }
    }

    if($archive_file !== null) {
        $res = $zip->extractTo($zip_dir, $archive_file);
    } else {
        $res = $zip->extractTo($zip_dir);
    }
    
    if($res !== TRUE) {
        if (defined('SUGAR_PHPUNIT_RUNNER') || defined('SUGARCRM_INSTALL'))
        {
        	$GLOBALS['log']->fatal(sprintf("ZIP Error(%d): Status(%s): Arhive(%s): Directory(%s)", $res, $zip->status, $zip_archive, $zip_dir));
            return false;
        } else {
        	die(sprintf("ZIP Error(%d): Status(%s): Arhive(%s): Directory(%s)", $res, $zip->status, $zip_archive, $zip_dir));
        }
    }
    return true;
}

function zip_dir( $zip_dir, $zip_archive )
{
    if( !is_dir( $zip_dir ) ){
        if (!defined('SUGAR_PHPUNIT_RUNNER'))
            die( "Specified directory '$zip_dir' for zip file '$zip_archive' extraction does not exist." );
        return false;
    }
    $zip = new ZipArchive();
    $zip->open($zip_archive, ZIPARCHIVE::CREATE|ZIPARCHIVE::OVERWRITE);
    $path = realpath($zip_dir);
    $chop = strlen($path)+1;
    $dir = new RecursiveDirectoryIterator($path);
    $it = new RecursiveIteratorIterator($dir, RecursiveIteratorIterator::SELF_FIRST);
    foreach ($it as $k => $fileinfo) {
        $localname = substr($fileinfo->getPathname(), $chop);
        if($fileinfo->isDir()) {
            $zip->addEmptyDir($localname);
        } else {
            $zip->addFile($fileinfo->getPathname(), $localname);
        }
    }
}

/**
 * Zip list of files, optionally stripping prefix
 * @param string $zip_file
 * @param array $file_list
 * @param string $prefix Regular expression for the prefix to strip
 */
function zip_files_list($zip_file, $file_list, $prefix = '')
{
    $archive    = new ZipArchive();
    $res = $archive->open($zip_file, ZipArchive::CREATE|ZipArchive::OVERWRITE);
    if($res !== TRUE)
    {
        $GLOBALS['log']->fatal("Unable to open zip file, check directory permissions: $zip_file");
        return FALSE;
    }
    foreach($file_list as $file) {
        if(!empty($prefix) && preg_match($prefix, $file, $matches) > 0) {
            $zipname = substr($file, strlen($matches[0]));
        } else {
            $zipname = $file;
        }
        $archive->addFile($file, $zipname);
    }
    return TRUE;
}
