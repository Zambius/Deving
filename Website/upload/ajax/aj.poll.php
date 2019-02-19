<?php
/**
 * STRESS WEB
 * @author S.T.R.E.S.S.
 * @copyright 2008 - 2012 STRESS WEB
 * @version 13
 * @web http://stressweb.ru
 */
header( "Content-type: text/html; charset=utf-8" );
header( "Cache-Control: no-cache" );
header( "Pragma: nocache" );
define( 'STRESSWEB', true );
require_once str_replace( 'ajax', '', dirname(__file__) )."config".DIRECTORY_SEPARATOR."config.db.php";
$is_ajax = ( isset($_SERVER['HTTP_X_REQUESTED_WITH']) and $_SERVER['HTTP_X_REQUESTED_WITH'] == 'XMLHttpRequest' ) ? true:false;
//обработка запроса
if ( isset($_POST) and $is_ajax ) {
    $_lang = ( isset($_COOKIE['swlang']) and $_COOKIE['swlang'] == 'en' ) ? '_en':'';
    $pid = intval( $_POST['id'] );
    $ansval = intval( $_POST['val'] );

    $link = mysql_connect( DBHOST, DBUSER, DBPASS ) or die( 'No connect' );
    if ( $link )
        $db = mysql_select_db( DBNAME ) or die( 'No db' );

    if ( $db ) {
        mysql_query( "SET NAMES utf8", $link );
        if ( $ansval != 0 ) {
            $check = mysql_query( "SELECT `id` FROM `stress_poll_logs` WHERE `ip`='".mysql_real_escape_string($_SERVER['REMOTE_ADDR'])."' AND `pid`='{$pid}' ", $link );
            if ( mysql_num_rows($check) == 0 ) {
                mysql_query( "UPDATE `stress_poll` SET `poll_num`=`poll_num`+1 WHERE `id`='{$pid}'", $link );
                mysql_query( "INSERT INTO `stress_poll_logs` (`pid`,`answ`,`name`,`ip`) VALUES ('{$pid}','{$ansval}','voter','".mysql_real_escape_string($_SERVER['REMOTE_ADDR'])."')", $link );
            }
        }

        $sel = mysql_query( "SELECT `id`,`poll_num`,`body`,`body_en` FROM `stress_poll` WHERE `id`='{$pid}'", $link );
        $data = mysql_fetch_array( $sel );
        if ( empty($data['body_en']) )
            $data['body_en'] = $data['body'];
        $answers = array_filter( explode("|", $data['body'.$_lang]) );
        $content = "";
        $keys = array_keys( $answers );
        foreach ( $keys as $key ) {
            $ans_num = 0;
            $perc = 0;
            if ( $data['poll_num'] > 0 ) {
                $ans_num = mysql_result( mysql_query("SELECT count(`answ`) FROM `stress_poll_logs` WHERE `pid`='{$pid}' AND `answ`='{$key}'", $link), 0 );
                $perc = 100 * round( $ans_num / $data['poll_num'], 2 );
            }
            $p_perc = ( $perc == 0 ) ? 1:$perc;
            $content .= "<div class='panswer' align='left'><i>{$answers[$key]}</i> {$perc}% ({$ans_num})</div>";
            $content .= "<div class='pprogress' align='left'><img src='sysimg/poll.png' height='10' width='{$p_perc}'></div>";
        }
        mysql_close( $link );
        echo $content;
    }
}
?>