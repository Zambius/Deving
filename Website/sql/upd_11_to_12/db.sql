SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for stress_news
-- ----------------------------
ALTER TABLE `stress_news` ADD `flink` text NOT NULL;
ALTER TABLE `stress_news` ADD `img` varchar(255) NOT NULL default '';
-- ----------------------------
-- Table structure for stress_mmotop
-- ----------------------------
CREATE TABLE `stress_mmotop` (
  `id` int(10) NOT NULL auto_increment,
  `mmoid` int(10) NOT NULL DEFAULT '0',
  `account_name` varchar(100) NOT NULL,
  `charid` int(255) DEFAULT NULL,
  `charname` varchar(255) DEFAULT NULL,
  `ip` varchar(25) DEFAULT NULL,
  `date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `deliver` enum('0','1') NOT NULL default '0',
  `date_deliver` timestamp NOT NULL default '0000-00-00 00:00:00',
  `sid` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;