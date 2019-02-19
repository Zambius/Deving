[profile]
<div align="center">
<H3>~ PERSONAL AREA ~</H3>
<table width="90%" cellpadding="0" cellspacing="0" class="tabProfileMenu">
<tr>
	<td align="center" height="30">
		<a href="index.php?doExit=yes"> <u>LOG OFF</u> </a>
	</td>
</tr>
<tr>
	<td align="center">
		<a href="{uCHARS}">::CHARACTER::</a>
		<a href="{uCHPASS}">::CHANGE PASSWORD::</a>
		<a href="{uCHMAIL}">::CHANGE EMAIL::</a>
		<a href="{uSUPPORT}">::SUPPORT::</a>
		<a href="{uROBO}">::DONATE::</a>
		<a href="{uCHSEX}">::CHANGE SEX::</a>
		<a href="{uCHNAME}">::CHANGE NAME::</a>
		<a href="{uCHANGER}">::EXCHANGER::</a>
		<a href="{uREFERAL}">::INVITE A FRIEND::</a>
	</td>
</tr>
</table>
{content}
</div>
[/profile]
[login]
<div align="center">
<form action="" method="post" name="do_login">
<input type="hidden" value="1" name="doLogin">
<table width="165" cellpadding="0" cellspacing="0" id="account">
<tr>
	<td colspan="2" class="title" height="30">LOGIN TO THE OFFICE</td>
</tr>
[servers]
<tr>
	<td width="65" height="25" valign="top" align="left">SERVER:</td>
	<td width="100" valign="top">{servers}</td>
</tr>
[/servers]
<tr>
	<td width="65" height="25" valign="top" align="left">LOGIN:</td>
	<td width="100" valign="top"><input type="text" name="sw_name" style="width: 80px;" maxlength="16"></td>
</tr>
<tr>
	<td width="65" height="25" valign="top" align="left">PASSWORD:</td>
	<td width="100" valign="top"><input type="password" name="sw_pass" style="width: 80px;" maxlength="16"></td>
</tr>
[captcha]
<tr>
	<td width="65" height="25" valign="top" align="left">{l2sec_code}</td>
  	<td width="100" valign="top"><input type="text" name="l2sec_code" maxlength="10" style="width: 80px;"></td>
</tr>
[/captcha]
[recaptcha]
<tr>
  	<td colspan="2">{code}</td>
</tr>
[/recaptcha]
<tr>
	<td colspan="2" align="center">
		<a href="{uFORGET}">FORGOT YOUR PASSWORD?</a> &nbsp; <a href="/" onclick="javascript: document.do_login.submit(); return false;">CONNECT</a><br /><a href="{uREGISTER}">REGISTER</a>
	</td>
</tr>
</table>
</form></div>
[/login]