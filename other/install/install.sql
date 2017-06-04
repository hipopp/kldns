DROP TABLE IF EXISTS `pre_configs`;
CREATE TABLE `pre_configs` (
  `vkey` varchar(255) NOT NULL,
  `value` varchar(1000) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vkey`),
  UNIQUE KEY `vkey` (`vkey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `pre_configs` VALUES ('index_title', '快乐二级域名分发-2.0', '首页标题');
INSERT INTO `pre_configs` VALUES ('keywords', '快乐二级域名分发', 'SEO关键词');
INSERT INTO `pre_configs` VALUES ('description', '快乐二级域名分发', 'SEO描述');
INSERT INTO `pre_configs` VALUES ('record_coin', '10', '每条记录需要金币');
INSERT INTO `pre_configs` VALUES ('reg_coin', '50', '注册赠送金币');
INSERT INTO `pre_configs` VALUES ('admin', 'admin', '管理员账号');
INSERT INTO `pre_configs` VALUES ('password', '91d0ce90989fbfa1d92d1e37455f9873', '管理员密码');
INSERT INTO `pre_configs` VALUES ('name', '快乐二级域名分发', '网站名称');
INSERT INTO `pre_configs` VALUES ('hold_rr', 'www,wap,3g,m,4g', '域名保留前缀');
INSERT INTO `pre_configs` VALUES ('version', '2.0', '版本号');
INSERT INTO `pre_configs` VALUES ('foot', '<p class=\"text-center\">Powered by <a href=\"https://github.com/klsf\" target=\"_blank\">klsf</a> v2.0</p>', '前台底部代码');
DROP TABLE IF EXISTS `pre_domains`;
CREATE TABLE `pre_domains` (
  `domain_id` varchar(50) NOT NULL,
  `domain` varchar(50) NOT NULL,
  `dns` varchar(50) NOT NULL,
  `power` int(11) NOT NULL DEFAULT '0',
  `add_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `pre_records`;
CREATE TABLE `pre_records` (
  `uid` int(11) NOT NULL,
  `record_id` varchar(50) NOT NULL,
  `domain_id` varchar(50) NOT NULL,
  `rr` varchar(15) NOT NULL,
  `type` varchar(10) NOT NULL,
  `value` varchar(50) NOT NULL,
  `add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  UNIQUE KEY `record_info` (`record_id`,`domain_id`),
  KEY `uid_record_id` (`uid`,`record_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `pre_users`;
CREATE TABLE `pre_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(16) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `sid` varchar(32) NOT NULL,
  `group` int(11) NOT NULL DEFAULT '1',
  `coin` int(11) NOT NULL DEFAULT '0',
  `add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;
