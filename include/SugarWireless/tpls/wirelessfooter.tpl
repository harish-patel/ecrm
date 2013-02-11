
{*

*}
<!-- Logout -->
<hr />
<div id="footerlinks">
{if $VIEW != 'wirelessmain'}
<small><a href="index.php?module=Users&action=wirelessmain">{sugar_translate label='LBL_TABGROUP_HOME' module=''}</a></small> | 
{/if}
<small><a href="javascript:history.back();">{sugar_translate label='LBL_BACK' module=''}</a></small> | 
<small><a href="index.php?module=Employees&action=wirelessmodule">{sugar_translate label='LBL_EMPLOYEES' module=''}</a></small> |
<small><a href="index.php?module=Users&action=Logout">{sugar_translate label='LBL_LOGOUT' module=''}</a></small>
</div>

</body>
</html>
