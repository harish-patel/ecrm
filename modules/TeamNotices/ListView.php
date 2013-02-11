<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');






global $mod_strings;
global $app_list_strings;
global $app_strings;
global $current_user;
$GLOBALS['displayListView'] = true; 
$header_text = '';
$focus = new TeamNotice();
//$is_edit = true;

$GLOBALS['log']->info("TeamNotice list view");

echo getClassicModuleTitle('TeamNotices', array($mod_strings['LBL_MODULE_NAME']), true);

$ListView = new ListView();
$ListView->initNewXTemplate( 'modules/TeamNotices/ListView.html',$mod_strings);
$ListView->xTemplateAssign("DELETE_INLINE_PNG",  SugarThemeRegistry::current()->getImage('delete_inline','align="absmiddle" alt="'.$app_strings['LNK_DELETE'].'" border="0"'));
$ListView->setQuery('', "", "team_notices.name", "TEAMNOTICE");
$ListView->processListView($focus, "main", "TEAMNOTICE");
