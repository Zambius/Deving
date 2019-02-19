<?php
/**
 * STRESS WEB
 * @author S.T.R.E.S.S.
 * @copyright 2008 - 2012 STRESS WEB
 * @version 1.0
 * @web http://stressweb.ru
 */
header("Content-type: text/html; charset=utf-8");
header("Cache-Control: no-cache");
header("Pragma: nocache");
error_reporting(E_ALL);
if ($_POST)
{
    $step = intval($_POST['s']);
    if ($step == '1')
    {
        $ms_host = $_POST['mshost'];
        $ms_user = $_POST['msuser'];
        $ms_pass = $_POST['mspass'];
        $ms_db = $_POST['msname'];
        $ms_link = mysql_connect($ms_host, $ms_user, $ms_pass);
        if (!$ms_link)
            $err = "<font color='red'>Невозможно соединиться с MySQL сервером!<br>MySQL Error: ".mysql_error()."</font>";
        elseif (!mysql_select_db($ms_db, $ms_link))
            $err = "<font color='red'>Невозможно выбрать базу данных MySQL!<br>MySQL Error: ".mysql_error()."</font>";
        else
        {
            mysql_close($ms_link);
            $err = "<font color='green'>Соединение прошло успешно!<br>Можете продолжить установку</font>";
        }
        echo "<hr>".$err;
    }
    if ($step == '2')
    {
        $ms_host = $_POST['mshost'];
        $ms_user = $_POST['msuser'];
        $ms_pass = $_POST['mspass'];
        $ms_db = $_POST['msname'];
        $ms_collate = $_POST['mscol'];
        $database_config = <<< TEXT
<?php
/**
 * STRESS WEB
 * @author S.T.R.E.S.S.
 * @copyright 2008 - 2012 STRESS WEB
 * @version 13
 * @web http://stressweb.ru  
 */
if (!defined('STRESSWEB')) die ('Access denied...');
define("DBHOST", "{$ms_host}");
define("DBUSER", "{$ms_user}");
define("DBPASS", "{$ms_pass}");
define("DBNAME", "{$ms_db}");
define("COLLATE", "{$ms_collate}");
?>
TEXT;
        $con_file = fopen(str_replace('install', '', dirname(__file__)).DIRECTORY_SEPARATOR."config".DIRECTORY_SEPARATOR."config.db.php", "w+");
        if ($con_file)
        {
            fwrite($con_file, $database_config);
            fclose($con_file);
            @chmod(str_replace('install', '', dirname(__file__)).DIRECTORY_SEPARATOR."config".DIRECTORY_SEPARATOR."config.db.php", 0666);
            echo 'OK';
        }
        else
        {
            echo 'E:CHMOD';
        }
    }
    if ($step == '3')
    {
        $admname = mysql_escape_string($_POST['name']);
        $admpass = base64_encode(pack('H*', sha1(utf8_encode(mysql_escape_string($_POST['pass'])))));
        $admnick = mysql_escape_string($_POST['nick']);

        define('STRESSWEB', true);
        session_start();
        require_once str_replace('install', '', dirname(__file__)).DIRECTORY_SEPARATOR."config".DIRECTORY_SEPARATOR."config.db.php";
        $ms_link = mysql_connect(DBHOST, DBUSER, DBPASS);
        if (!$ms_link)
            echo 'conn';
        elseif (!mysql_select_db(DBNAME, $ms_link))
            echo 'db';
        else
        {
            mysql_query("INSERT INTO `stress_admin` VALUES ('1', '{$admname}', '{$admpass}', '{$admnick}')");
            if (mysql_affected_rows() > 0)
            {
                $_SESSION['acplogin'] = $admname;
                $_SESSION['acppass'] = $admpass;
                $_SESSION['acpnick'] = $admnick;
                echo 'ok';
            }
            else
                echo 'sql';
            mysql_close($ms_link);
        }
    }
}
?>