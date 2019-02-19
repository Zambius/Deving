SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for stress_auto_rb
-- ----------------------------
CREATE TABLE `stress_auto_rb` (
  `id` int(11) NOT NULL auto_increment,
  `InvId` varchar(8) NOT NULL,
  `charId` int(11) NOT NULL default '0',
  `OutSum` double(10,2) NOT NULL default '0.00',
  `OutCount` int(11) NOT NULL default '0',
  `trans_date` int(11) NOT NULL default '0',
  `user_ip` varchar(30) NOT NULL default '',
  `stage` enum('0','S','E','P','F') NOT NULL default '0',
  `success` enum('0','1') NOT NULL default '0',
  `comment` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `InvId` (`InvId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;