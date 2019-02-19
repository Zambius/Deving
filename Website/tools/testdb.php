<?php
/**
 * @name STRESS WEB
 * @author S.T.R.E.S.S.
 * @copyright 2008 - 2012 STRESS WEB
 * @version 13 
 * @web http://stressweb.ru
 */

$host = 'localhost'; // сервер на котором установлена база данных L2J
$user = 'root'; // имя пользователя от базы данный
$pass = 'root'; // пароль пользователя от базы данный
$db = 'l2jdb'; // название базы данных

$mc = mysql_connect($host, $user, $pass) or die(mysql_error());
if ($mc)
{
    $db = mysql_select_db($db) or die(mysql_error());
}

if ($mc and $db)
{

    echo 'It work!';

}
mysql_close($mc);
?>