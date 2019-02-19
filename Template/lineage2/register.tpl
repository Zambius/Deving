<div class="form_title"><span>ACCOUNT REGISTRATION</span></div>
<form class="smart_form" name="form" method="post" action="" onsubmit="return checkform1(this)" style="left: 22px;">
    <table>
        [servers]
        <tr>
            <td>
                <div class="form_label">Server:</div>
                <select name="sid">{servers}</select>
            </td>
        </tr>
        [/servers]
        <!--[prefix]
        <tr>
            <td>
                <div class="form_label">Prefix:<p>(will be added to the account)</p></div>
                <select name="l2prefix">{prefix}</select>
            </td>
        </tr>
        [/prefix]
        [referal]
        <tr>
            <td>
                <div class="form_label">Friend's nickname:<p>(not necessary)</p></div>
                <input type="text" name="l2friend" maxlength="16" placeholder="Enter friend's nickname" />
            </td>
        </tr>
        [/referal]-->
        <tr>
            <td>
                <div class="form_label">Account:<p>(4 to 14 characters)</p></div>
                <input type="text" name="l2account" maxlength="14" placeholder="Enter login" required />
            </td>
        </tr>
        <tr>
            <td>
                <div class="form_label">Password:<p>(4 to 14 characters)</p></div>
                <input type="password" name="l2password1" maxlength="16" placeholder="Enter password" required />
            </td>
        </tr>
        <tr>
            <td>
                <div class="form_label">Confirm password:<p>(4 to 14 characters)</p></div>
                <input type="password" name="l2password2" maxlength="16" placeholder="Confirm password" required />
            </td>
        </tr>
        <tr>
            <td>
                <div class="form_label">Email:<p>(Enter a valid e-mail address)</p></div>
                <input type="text" name="l2email" maxlength="64" placeholder="Enter email" required />
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
            <td style="margin-top: 20px; left: -24px;">
                <input type="submit" name="register"  value="REGISTER" class="smart_btn" />
            </td>
        </tr>
    </table>
</form>