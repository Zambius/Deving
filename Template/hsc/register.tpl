<div class="col-lg-12">
	<div class="thumbnail">
		<div class="caption">
<form name="form" method="post" action="" onsubmit="return checkform1(this)">
<table cellpadding="0" cellspacing="0" class="regForm">
<tr>
	<td colspan="2" align="center" class="title_main"><p>ACCOUNT REGISTRATION</p></td>
</tr>
[servers]
<tr>
	<td class="tdLeft">SERVER:</td>
  	<td class="tdRight"><select style="width: 100%;" name="sid">{servers}</select></td>
</tr>
[/servers]
[prefix]
<tr>
	<td class="tdLeft">PREFIX:<br><span class="description">(Will be added to the account)</span></td>
  	<td class="tdRight"><select style="width: 100%;" name="l2prefix">{prefix}</select></td>
</tr>
[/prefix]
<tr>
	<td class="tdLeft">ACCOUNT:<br><span class="description">(4 to 14 characters 'NO use @-_!ø?"#, ...')</span></td>
  	<td class="tdRight"><input type="text" name="l2account" maxlength="14" class="input"></td>
</tr>
<tr>
	<td class="tdLeft">PASSWORD:<br><span class="description">(6 to 16 characters 'NO use @-_!ø?"#, ...')</span></td>
  	<td class="tdRight"><input type="password" name="l2password1" maxlength="16" class="input"></td>
</tr>
<tr>
  	<td class="tdLeft">CONFIRM PASSWORD:</td>
  	<td class="tdRight"><input type="password" name="l2password2" maxlength="16" class="input"></td>
</tr>
<tr>
  	<td class="tdLeft">EMAIL:<br><span class="description">(Enter a valid e-mail address)</span></td>
  	<td class="tdRight"><input type="text" name="l2email" maxlength="64" class="input"></td>
</tr>
[captcha]
<tr>
  	<td class="tdLeft">{l2sec_code}</td>
  	<td class="tdRight"><input type="text" name="l2sec_code" maxlength="10" class="input"></td>
</tr>
[/captcha]
[recaptcha]
<tr>
  	<td colspan="2">{code}</td>
</tr>
[/recaptcha]
[referal]
<tr>
	<td class="tdLeft">FRIEND NAME:<br><span class="description">(Not necessary)</span></td>
  	<td class="tdRight"><input type="text" name="l2friend" maxlength="16" class="input"></td>
</tr>
[/referal]
<tr>
  	<td colspan="2" style="text-align: center;"><input type="submit" name="register"  value="REGISTER" class="btn btn-default" /></td>
</tr>
<tr>
	<td colspan="2" align="left" class="title_main"><p>Please enter your valid E-Mail. Without it, you cannot create your account:
<ul>
<li>ACTIVATE ACCOUNT.</li>
<li>RESTORE PASSWORD</li>
<li>RESTORE PREFIX.</li>
<li>RESTORE THE KEY TO THE CHARACTER.</li>
<li>REMOVE BINDING BY HWID</li>
</ul>
IMPORTANT! Any problems with the account, without a valid E-MAIL, will not be considered by the administration.</p></td>
</tr>
</table>
</form>
</div>
</div>
</div>