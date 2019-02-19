ALTER TABLE `stress_auto_rb` CHANGE COLUMN `InvId` `RND` varchar(8) NOT NULL;
ALTER TABLE `stress_auto_rb` ADD `InvId` int(11) NOT NULL DEFAULT '0';
CREATE TABLE `stress_referal` (
  `id` int(11) NOT NULL auto_increment,
  `account_referer` varchar(100) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `charId` int(11) NOT NULL default '0',
  `char_name` varchar(30) NOT NULL,
  `success` enum('0','1') NOT NULL default '0',
  `date` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `account_referer` (`account_referer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;