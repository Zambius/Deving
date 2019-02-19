<div class="form_title"><span>РЕГИСТРАЦИЯ АККАУНТА</span></div>
<form class="smart_form" name="form" method="post" action="" onsubmit="return checkform1(this)" style="left: 22px;">
    <table>
        [servers]
        <tr>
            <td>
                <div class="form_label">Сервер:</div>
                <select name="sid">{servers}</select>
            </td>
        </tr>
        [/servers]
        <!--[prefix]
        <tr>
            <td>
                <div class="form_label">Префикс:<p>(будет добавлен к аккаунту)</p></div>
                <select name="l2prefix">{prefix}</select>
            </td>
        </tr>
        [/prefix]
        [referal]
        <tr>
            <td>
                <div class="form_label">Ник друга:<p>(необязательно)</p></div>
                <input type="text" name="l2friend" maxlength="16" placeholder="Введите ник друга" />
            </td>
        </tr>
        [/referal]-->
        <tr>
            <td>
                <div class="form_label">Аккаунт:<p>(От 4 до 14 символов)</p></div>
                <input type="text" name="l2account" maxlength="14" placeholder="Введите логин" required />
            </td>
        </tr>
        <tr>
            <td>
                <div class="form_label">Пароль:<p>(От 4 до 14 символов)</p></div>
                <input type="password" name="l2password1" maxlength="16" placeholder="Введите пароль" required />
            </td>
        </tr>
        <tr>
            <td>
                <div class="form_label">Повторите пароль:<p>(От 4 до 14 символов)</p></div>
                <input type="password" name="l2password2" maxlength="16" placeholder="Повторите пароль" required />
            </td>
        </tr>
        <tr>
            <td>
                <div class="form_label">Email:<p>(Введите действующий e-mail адрес)</p></div>
                <input type="text" name="l2email" maxlength="64" placeholder="Введите email" required />
            </td>
        </tr>
        [captcha]
        <tr>
            <td>
                <div class="form_label">Код<p>(Защита от роботов)</p></div>
                <input type="text" name="l2sec_code" maxlength="10" placeholder="Введите капчу" class="form_code_style" required />
                <div class="smart_l2sec_code">{l2sec_code}</div>
            </td>
        </tr>
        [/captcha]
        <tr>
            <td style="margin-top: 20px; left: -24px;">
                <input type="submit" name="register"  value="ЗАРЕГИСТРИРОВАТЬСЯ" class="smart_btn" />
            </td>
        </tr>
    </table>
</form>