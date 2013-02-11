
{*

*}
{if $login_error}<br /><div class="error"><small>{$error_message}</small></div><br />{/if}
<!-- LOGIN FORM -->
<div class="sec">
<form method="post" action="index.php">
	<small>{$LBL_USER_NAME}:</small><br />
	<input type="text" name="user_name" value="" autocorrect="off" autocapitalize="off" /><br/>
	<small>{$LBL_PASSWORD}:</small><br />
	<input type="password" value="" name="user_password" /><br/>
	<input type="submit" value="{$LBL_LOGIN_BUTTON_LABEL}" />
	<input type="hidden" value="Users" name="module" />
	<input type="hidden" value="Authenticate" name="action" />
	<input type="hidden" value="Users" name="return_module" />
    <input type="hidden" name="login_module" value="{if isset($smarty.request.login_module)}{$smarty.request.login_module}{else}Users{/if}">
    <input type="hidden" name="login_action" value="{if isset($smarty.request.login_action)}{$smarty.request.login_action}{else}wirelessmain{/if}">
    <input type="hidden" name="login_record" value="{if isset($smarty.request.login_record)}{$smarty.request.login_record}{/if}">
</form>
<p>
<a href="index.php?module=Users&action=Login&mobile=0">{$LBL_NORMAL_LOGIN}</a>
</p>
</div>
