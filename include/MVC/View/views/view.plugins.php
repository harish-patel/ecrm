<?php

if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');
/* * *******************************************************************************
 * ****************************************************************************** */


require_once('include/MVC/View/views/view.ajax.php');
require_once('include/SugarPlugins/SugarPlugins.php');

class ViewPlugins extends ViewAjax
{

    /**
     * @see SugarView::display()
     */
    public function display()
    {
        global $app_strings;

        $sp = new SugarPlugins();

        $plugins = $sp->getPluginList();
        $pluginsCat = array(
            "Outlook" => array(
                "name" => $app_strings['LBL_PLUGIN_OUTLOOK_NAME'],
                "desc" => $app_strings['LBL_PLUGIN_OUTLOOK_DESC'],
            ),
            "Word" => array(
                "name" => $app_strings['LBL_PLUGIN_WORD_NAME'],
                "desc" => $app_strings['LBL_PLUGIN_WORD_DESC'],
            ),
            "Excel" => array(
                "name" => $app_strings['LBL_PLUGIN_EXCEL_NAME'],
                "desc" => $app_strings['LBL_PLUGIN_EXCEL_DESC'],
            ),
        );
        $str = '<table cellpadding="0" cellspacing="0" class="detail view">';
        $str .= "<tr><th colspan='2'>";
        $str .= "<h4>{$app_strings['LBL_PLUGINS_TITLE']}</h4>";
        $str .= "</th><tr>";

        $str .= "<tr><td colspan='2' style='padding-left: 10px;'>{$app_strings['LBL_PLUGINS_DESC']}</td></tr>";

        foreach ($pluginsCat as $key => $value)
        {
            $pluginImage = SugarThemeRegistry::current()->getImageURL("plug-in_{$key}.gif");
            $str .= "<tr><td valign='top' width='80' style='padding-right: 10px; padding-left: 10px;'><img src='$pluginImage'></td>";
            $str .= "<td><b>{$value['name']}</b><br>";
            $str .= $value['desc'];
            $str .= '<ul id="pluginList">';

            foreach ($plugins as $plugin)
            {
                $raw_name = urlencode($plugin['raw_name']);
                $display_name = str_replace('_', ' ', $plugin['formatted_name']);
                if (strpos($display_name, $key) !== false)
                {
                    $str .= "<li><a href='index.php?module=Home&action=DownloadPlugin&plugin=$raw_name'>$display_name</a></li>";
                }
            }
            $str .= '</ul></td></tr>';
        }

        $str .= "</table>";
        echo $str;
    }

}
