[profile]
<div class="form_title"><span>PERSONAL AREA</span></div>
<ul class="smart_content_menu">
    <li><a href="{uCHARS}">Characters</a></li>
    <li><a href="{uCHPASS}">Change password</a></li>
    <li><a href="{uCHMAIL}">Change E-Mail</a></li>
    <li><a href="{uSUPPORT}">Support</a></li>
    <li><a href="{uROBO}">Donation</a></li>
    <li><a href="{uCHSEX}">Sex change</a></li>
    <li><a href="{uCHNAME}">Change nickname</a></li>
    <li><a href="{uCHANGER}">Exchanger</a></li>
    <li><a href="{uREFERAL}">Invite a friend</a></li>
    <li><a href="index.php?doExit=yes">Complete session</a></li>
</ul>
<div class="content-page">
{content}
</div>
[/profile]
[login]
<div class="form_title"><span>Login to the office</span></div>
<form class="smart_form" action="" method="post" name="do_login"  style="left: 22px;">
    <input type="hidden" value="1" name="doLogin">
    <table>
        [servers]
        <tr>
            <td>
                <div class="form_label">Сервер:</div>
                {servers}
            </td>
        </tr>
        [/servers]
        <tr>
            <td>
                <div class="form_label">Login:</div>
                <input type="text" name="sw_name" maxlength="14" placeholder="Enter login" required />
            </td>
        </tr>
        <tr>
            <td>
                <div class="form_label">Пароль:</div>
                <input type="password" name="sw_pass" maxlength="16" placeholder="Enter password" required />
            </td>
        </tr>
        [captcha]
        <tr>
            <td>
                <div class="form_label">Code<p>(Robot Protection)</p></div>
                <input type="text" name="l2sec_code" maxlength="10" placeholder="Enter captcha" class="form_code_style" required />
                <div class="smart_l2sec_code">{l2sec_code}</div>
            </td>
        </tr>
        [/captcha]
        <tr>
            <td>
                <a href="/" class="smart_btn" onclick="javascript: document.do_login.submit(); return false;">Login</a>
            </td>
        </tr>
        <tr>
            <td>
                <a href="{uFORGET}" class="smart_btn_forget_login">Forgot your password?</a>
            </td>
        </tr>
        <tr>
            <td>
                <a class="smart_btn_forget_login" href="{uREGISTER}">Registration</a>
            </td>
        </tr>
    </table>
</form>
[/login]