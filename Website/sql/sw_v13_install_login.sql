SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for accounts
-- ----------------------------
ALTER TABLE `accounts` ADD `l2email` varchar(100) NOT NULL DEFAULT 'null@null';
ALTER TABLE `accounts` ADD `l2money` double(10,2) NOT NULL DEFAULT '0.00';