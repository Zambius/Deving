<div align="center">
	<div class="voteBlock">
		<center><b><u>How to get a prize?</u></b></center>
 		<br>1. You need to have a gaming spell on our server.
    	<br>2. Go to the banner (or this <a href="http://l2top.ru/vote/{voteid}/" target="_blank">reference</a>) and vote for the server.
    	<br>3. Enter your character's nickname below and choose a server
		<br>4. To receive a prize
    	<br>
    	<br><center><u>Attention: According to the rules of L2Top.ru, 1 vote is received from 1 IP address, within 24 hours.</u></center>
    	<br><br>
	</div>
	[vote]
	<div class="voteBlock">
		<script type="text/javascript">//<![CDATA[
function reload () {
	var rndval = new Date().getTime(); 
	document.getElementById('sw-captcha').innerHTML = '<a onclick="reload(); return false;" href="#"><img src="{url}/module/antibot.php?rndval=' + rndval + '" border="0"></a>';
};
//]]></script>
		<center><b><u>Voted? Get a prizeu></b>
		<br>Enter the nickname of the player for whom you want to receive a bonus<br /></center>
		<form action="" method="post">
		<input type="hidden" name="act" value="get">
		<table border="0" cellpadding="0" cellspacing="0" width="100%" id="voteTab1">
        <tr>
        	<td align="right">«Character Nick» &nbsp;&nbsp;</td>
        	<td><input type="text" name="char_name" maxlength="16" class="input"></td>
        </tr>
        <tr>
        	<td align="right">«Server» &nbsp;&nbsp;</td>
            <td>{servers}</td>
        </tr>
        [captcha]
        <tr>
        	<td align="right">{l2sec_code} </td>
        	<td valign="top"><input type="text" name="l2sec_code" maxlength="5" class="input"></td>
        </tr>
        [/captcha]
        [recaptcha]
		<tr>
		  	<td colspan="2">{code}</td>
		</tr>
		[/recaptcha]
        <tr>
        	<td colspan="2" align="center"><input type="submit" value="Receive" class="button"></td>
		</tr>
        </table>
		</form>
	</div>
	[/vote]
	[error]
	<div class="voteBlockErr">
		{error}
	</div>
	[/error]
</div>