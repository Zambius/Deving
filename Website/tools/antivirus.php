<?php
/**
 * @name STRESS WEB
 * @author S.T.R.E.S.S.
 * @copyright 2008 - 2012 STRESS WEB
 * @version 13 
 * @web http://stressweb.ru
 */

$good_files = array(
	'./admin.php',
	'./antivirus.php',
	'./build.php',
	'./index.php',
	'./log_auth.php',	
	'./admin/accounts.php',
	'./admin/admins.php',
	'./admin/chars.php',
	'./admin/index.php',
	'./admin/news.php',
	'./admin/polls.php',
	'./admin/settings.php',
	'./admin/static.php',
	'./admin/support.php',
	'./admin/telnet.php',
	'./ajax/aj.poll.php',
	'./ajax/aj.robo.php',
	'./application/404.php',
	'./application/account/changer.php',
	'./application/account/charinfo.php',
	'./application/account/charlist.php',
	'./application/account/chmail.php',
	'./application/account/chname.php',
	'./application/account/chpass.php',
	'./application/account/chsex.php',
	'./application/account/robokassa.php',
	'./application/account/support.php',
	'./application/account/referal.php',
	'./application/cp.php',
	'./application/forget.php',
	'./application/l2top.php',
	'./application/main.php',
	'./application/mmotop.php',
	'./application/news.php',
	'./application/register.php',
	'./application/robo.php',
	'./application/stat.php',
	'./application/ru.php',
	'./application/en.php',
	'./config/config.db.php',
	'./config/config.iptable.php',
	'./config/config.l2cfg.php',
	'./config/lock.php',
	'./config/key.php',
	'./dev/boot.admin.php',
	'./dev/boot.php',
	'./dev/cfg.default.php',
	'./dev/class.admin.php',
	'./dev/class.controller.php',
	'./dev/class.db.php',
	'./dev/class.functions.php',
	'./dev/class.init.admin.php',
	'./dev/class.init.php',
	'./dev/class.iptable.php',
	'./dev/class.la2.php',
	'./dev/class.mail.php',
	'./dev/class.router.php',
	'./dev/class.view.php',
	'./l2j/l2j_duotm.php',
	'./l2j/l2j_emurt.php',
	'./l2j/l2j_firstteam.php',
	'./l2j/l2j_l2dc.php',
	'./l2j/l2j_l2dream.php',
	'./l2j/l2j_l2emuenterprise.php',
	'./l2j/l2j_l2evo.php',
	'./l2j/l2j_l2jfree.php',
	'./l2j/l2j_l2jfrozen.php',
	'./l2j/l2j_l2jserver.php',
	'./l2j/l2j_l2nextgen.php',
	'./l2j/l2j_l2open.php',
	'./l2j/l2j_l2openfreya.php',
	'./l2j/l2j_la2base.php',
	'./l2j/l2j_lucera.php',
	'./l2j/l2j_phoenix.php',
	'./l2j/l2j_phoenix19xxx.php',
	'./l2j/l2j_rt.php',
	'./l2j/l2j_scoria.php',
	'./lang/en.php',
	'./lang/ru.php',
	'./module/antibot.php',
	'./module/copyright.php',
	'./module/forum.php',
	'./module/login.php',
	'./module/pktop.php',
	'./module/poll.php',
	'./module/pvptop.php',
	'./module/server.php'
);

function antivirus( $root )
{
	global $good_files;
    if ( $dir = @opendir($root) ) {
        while ( ($file = @readdir($dir)) !== false ) {
            if ( $file == '.' or $file == '..' )
                continue;
            if ( is_file($root.'/'.$file) ) {
                $file_info = pathinfo( strtolower($root.'/'.$file) );
                if ( $file_info["extension"] == 'php' ){
					if(!in_array($root.'/'.$file, $good_files))
						echo $root.'/'.$file.'<br />';					
				}                    
            }
            if ( is_dir($root.'/'.$file) ) {
                antivirus( $root.'/'.$file );
            }
        }
        closedir( $dir );
    }

}
antivirus('.');
?>