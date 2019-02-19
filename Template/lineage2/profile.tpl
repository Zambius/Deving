[profile]
<div class="form_title"><span>ЛИЧНЫЙ КАБИНЕТ</span></div>
<ul class="smart_content_menu">
    <li><a href="{uCHARS}">Персонажи</a></li>
    <li><a href="{uCHPASS}">Сменить пароль</a></li>
    <li><a href="{uCHMAIL}">Сменить E-Mail</a></li>
    <li><a href="{uSUPPORT}">Поддержка</a></li>
    <li><a href="{uROBO}">Пожертвование</a></li>
    <li><a href="{uCHSEX}">Смена пола</a></li>
    <li><a href="{uCHNAME}">Смена ника</a></li>
    <li><a href="{uCHANGER}">Обменник</a></li>
    <li><a href="{uREFERAL}">Пригласи друга</a></li>
    <li><a href="index.php?doExit=yes">Завершить сеанс</a></li>
</ul>
<div class="content-page">
{content}
</div>
[/profile]
[login]
<div class="form_title"><span>Вход в кабинет</span></div>
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
                <div class="form_label">Логин:</div>
                <input type="text" name="sw_name" maxlength="14" placeholder="Введите логин" required />
            </td>
        </tr>
        <tr>
            <td>
                <div class="form_label">Пароль:</div>
                <input type="password" name="sw_pass" maxlength="16" placeholder="Введите пароль" required />
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
            <td>
                <a href="/" class="smart_btn" onclick="javascript: document.do_login.submit(); return false;">Войти</a>
            </td>
        </tr>
        <tr>
            <td>
                <a href="{uFORGET}" class="smart_btn_forget_login">Забыли пароль?</a>
            </td>
        </tr>
        <tr>
            <td>
                <a class="smart_btn_forget_login" href="{uREGISTER}">Регистрация</a>
            </td>
        </tr>
    </table>
</form>
[/login]