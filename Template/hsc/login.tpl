[logged]
<div id="cp">
HELLO, <b>{user}</b><br />
<a href="{uCHARS}">ACCOUNT</a><br />
<a href="{uCHPASS}">CHANGE PASSWORD</a><br />
<a href="{uCHMAIL}">CHANGE EMAIL</a><br />
<a href="{uSUPPORT}">SUPPORT</a><br />
<a href="{uROBO}">DONATE</a><br />
<a href="{uCHSEX}">CHANGE SEX</a><br />
<a href="{uCHNAME}">CHANGE NAME</a><br />
<a href="{uCHANGER}">EXCHANGER</a><br />
<a href="{uREFERAL}">INVITE A FRIEND</a><br />
<a href="{url}/index.php?doExit=yes">LOG OFF</a>
</div>
[/logged]
[login]
<div id="login">
<form action="" method="post" name="dologin">
<input type="hidden" value="1" name="doLogin">
<input type="submit" style="display:none">
<table width="170" cellpadding="0" cellspacing="0">
<tr>
	<td width="70" height="25" valign="top" align="left">LOGIN:</td>
	<td width="100" valign="top"><input type="text" name="sw_name" style="width: 100px;" maxlength="16"></td>
</tr>
<tr>
	<td height="25" valign="top" align="left">PASSWORD:</td>
	<td valign="top"><input type="password" name="sw_pass" style="width: 100px;" maxlength="16"></td>
</tr>
[servers]
<tr>
	<td height="25" valign="top" align="left">SERVER:</td>
	<td valign="top">{servers}</td>
</tr>
[/servers]
[captcha]
<tr>
	<td height="25" valign="top" align="left">{l2sec_code}</td>
  	<td valign="top"><input type="text" name="l2sec_code" maxlength="10" style="width: 100px;"></td>
</tr>
[/captcha]
[recaptcha]
<tr>
	<td>{code}</td>
	<td>{field}</td>
</tr>
[/recaptcha]
<tr>
	<td colspan="2" align="center">
		<a href="{uFORGET}">FORGOT YOUR PASSWORD</a> &nbsp; <a href="/" onclick="javascript: document.dologin.submit(); return false;">CONNECT</a>		
	</td>
</tr>
</table>
</form>
</div>
[/login]