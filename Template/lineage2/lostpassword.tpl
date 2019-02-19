<div class="form_title"><span>Password recovery</span></div>
<form class="smart_form" name="form" method="post" action="" style="left: 22px;">
    <table>
        [servers]
        <tr>
            <td>
                <div class="form_label">Сервер:</div>
                <select name="sid">{servers}</select>
            </td>
        </tr>
        [/servers]
        <tr>
            <td>
                <div class="form_label">Login:</div>
                <input type="text" name="login" maxlength="14" placeholder="Enter login" required />
            </td>
        </tr>
        <tr>
            <td>
                <div class="form_label">Email:<p>(Enter a valid e-mail address)</p></div>
                <input type="text" name="email" maxlength="64" placeholder="Enter email" required />
            </td>
        </tr>
        [captcha]
        <tr>
            <td>
                <div class="form_label">Code<p>(Robot Protection)</p></div>
                <input type="text" name="seccode" maxlength="10" placeholder="Enter captcha" class="form_code_style" required />
                <div class="smart_l2sec_code">{captcha}</div>
            </td>
        </tr>
        [/captcha]
        <tr>
            <td style="margin-top: 20px; left: -24px;">
                <input type="submit" name="repass"  value="RESTORE PASSWORD" class="smart_btn" />
            </td>
        </tr>
    </table>
</form>