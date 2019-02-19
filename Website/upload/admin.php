<?php
/**
 * STRESS WEB
 * @author S.T.R.E.S.S.
 * @copyright 2008 - 2012 STRESS WEB
 * @version 13
 * @web http://stressweb.ru
 */
session_start();
error_reporting( 0 );
/*** SECURITY ***/
define( 'STRESSWEB', true );
/*** ADMIN DIRECTORY NAME ***/
define( 'ADMINDIR', 'admin' );
/*** ADMIN FILE NAME ***/
define( 'ADMFILE', 'admin.php' );
/*** DIRECTORY SEPARATOR ***/
define( 'DS', DIRECTORY_SEPARATOR );
/*** REAL SITE PATH ***/
define( 'ROOT_DIR', realpath(dirname(__file__)).DS );
/*** ADMIN DIRECTORY PATH ***/
define( 'PATHDIR', ROOT_DIR.ADMINDIR.DS );
/*** CONFIGURATION DIRECTORY ***/
define( 'CONFDIR', ROOT_DIR.'config'.DS );
/*** CORE DIRECTORY ***/
define( 'DEVDIR', ROOT_DIR.'dev'.DS );
/*** SCRIPT NAME ***/
define( 'SCRIPT', 'admin' );
/*** MODULES DIRECTORY ***/
define( 'L2J', ROOT_DIR.'l2j'.DS );

require DEVDIR.'boot.admin.php';

/**
 *Initialize 
 */
@header( "Content-type: text/html; charset=utf-8" );
@header( "Last-Modified: ".gmdate("D, d M Y H:i:s", strtotime("-1 day"))." GMT" );
@header( "Cache-Control: no-store, no-cache, must-revalidate" );
@header( "Expires: 0" );
@header( "Pragma: no-cache" );

$tpl = View::getInstance();
$tpl->SetViewPathAdmin();
$controller = new Admin;


if ( $controller->isAdmin() ) {
    $_url = ADMFILE."?mod";
    $tpl->LoadView( 'index' );
    $tpl->Set( 'index', ADMFILE );
    $tpl->Set( 'login', $controller->sess_get('acplogin') );
    switch ( $app ) {
        case "settings":
            $module = "settings.php";
            $title = "Настройки";
            break;
        case "polls":
            $module = "polls.php";
            $title = "Опросы";
            break;
        case "static":
            $module = "static.php";
            $title = "Статические страницы";
            break;
        case "news":
            $module = "news.php";
            $title = "Управление новостями";
            break;
        case "admins":
            $module = "admins.php";
            $title = "Администраторы";
            break;
        case "accounts":
            $module = "accounts.php";
            $title = "Аккаунты";
            break;
        case "chars":
            $module = "chars.php";
            $title = "Персонажи";
            break;
        case "support":
            $module = "support.php";
            $title = "Обратная связь";
            break;
        case "telnet":
            $module = "telnet.php";
            $title = "Telnet";
            break;
        default:
            $module = "index.php";
            $title = "Главная";
    }
    $tpl->Set( 'title', $title );
    if ( file_exists(PATHDIR.$module) ) {
        include PATHDIR.$module;
    } else {
        $tpl->SetResult( "content", "<div class='error'>Ошибка 404. Страница не найдена</div>" );
    }
    $tpl->Set( 'content', $tpl->GetResult("content") );
    $tpl->Set( 'copyright', '2008-2012 © <a href="http://stressweb.ru">STRESS WEB</a>' );
    $tpl->Build( "admin" );
} else {
    $tpl->LoadView( 'login' );
    if ( $l2cfg['captcha']['admin_type'] == 'sw' ) {
        $tpl->Block( 'code' );
        $tpl->Block( 'recode', false );
    }
    if ( $l2cfg['captcha']['admin_type'] == 'recaptcha' ) {
        $tpl->Block( 'code', false );
        $tpl->Block( 'recode' );
        $tpl->Set( 'recaptcha', '
            <script type="text/javascript">
 				var RecaptchaOptions = {
    				theme : \'white\'
 				};
 			</script>
			<script type="text/javascript"
		       src="http://www.google.com/recaptcha/api/challenge?k='.$l2cfg['captcha']['publickey'].'">
		    </script>
		    <noscript>
		       <iframe src="http://www.google.com/recaptcha/api/noscript?k='.$l2cfg['captcha']['publickey'].'"
		           height="300" width="500" frameborder="0"></iframe><br>
		       <textarea name="recaptcha_challenge_field" rows="3" cols="40">
		       </textarea>
		       <input type="hidden" name="recaptcha_response_field"
		           value="manual_challenge">
		    </noscript>' );
    }
    $tpl->Build( "admin" );
}
$tpl->Display( "admin" );
/**
 * Закрываем соединения с базами 
 */
/*** База сайта ***/
if ( isset($db) ) {
    $db->close();
}
/*** Базы логин серверов ***/
if ( isset($ldb) ) {
    foreach ( $ldb as $ldb_close ) {
        $ldb_close->close();
    }
}
/*** Базы гейм серверов ***/
if ( isset($gdb) ) {
    foreach ( $gdb as $gdb_close ) {
        $gdb_close->close();
    }
}

?>