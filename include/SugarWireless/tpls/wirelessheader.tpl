
{*

*}
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<title>{sugar_translate label='LBL_BROWSER_TITLE' module=''}</title>
<link rel="apple-touch-icon" href="{sugar_getimagepath file='sugar_icon.png'}" />
<link href="include/SugarWireless/css/wireless.css" type="text/css" rel="stylesheet">
<link media="only screen and (max-device-width: 480px)" href="include/SugarWireless/css/iphone.css" type= "text/css" rel="stylesheet">
<meta name="viewport" content="user-scalable=no, width=device-width">
<meta name="apple-touch-fullscreen" content="yes" />
</head>
<body>
<img id="companylogo" width="212" height="40" border="0" alt="Company Logo" src="{sugar_getimagepath file='company_logo.png'}"/>
<hr />
{if $WELCOME}
<div class="sec welcome" align="right">
<small>{sugar_translate label='NTC_WELCOME' module=''}, {$user_name} [<a href="index.php?module=Users&action=Logout">{sugar_translate label='LBL_LOGOUT' module=''}</a>]</small><br />
</div>
{/if}
