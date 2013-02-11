{*

*}

{if $AUTHENTICATED}
<div id="welcome">
    {$APP.NTC_WELCOME}, <strong><a href='index.php?module=Users&action=EditView&record={$CURRENT_USER_ID}'>{$CURRENT_USER}</a></strong> <span>|</span> <a href='{$LOGOUT_LINK}' class='utilsLink'>{$LOGOUT_LABEL}</a> 
</div>
<img src="{sugar_getimagepath file="globalLinksLeft.png"}" id="globalLinksLeft"/>
{/if}
