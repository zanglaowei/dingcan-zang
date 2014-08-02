-- MySQL database dump




































  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(50) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;




























  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(11) DEFAULT NULL,
  `atitle` varchar(150) DEFAULT NULL,
  `pic` varchar(300) DEFAULT NULL,
  `alink` varchar(300) DEFAULT NULL,
  `content` mediumtext,
  `create_time` int(13) DEFAULT NULL,
  `top` int(2) DEFAULT '0',
  `sort` int(3) DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `aid` (`aid`,`acid`,`atitle`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
























  `acid` int(11) NOT NULL AUTO_INCREMENT,
  `afid` int(11) DEFAULT NULL,
  `aname` varchar(80) DEFAULT NULL,
  `dir` char(20) DEFAULT NULL,
  `atop` int(2) DEFAULT '0',
  `apic` varchar(300) DEFAULT NULL,
  `wap` int(2) DEFAULT '0',
  `sort` int(2) DEFAULT '0',
  `keyword` char(200) DEFAULT NULL,
  `ades` char(200) DEFAULT NULL,
  `acreate_time` int(13) DEFAULT NULL,
  `ispic` int(2) DEFAULT '0',
  PRIMARY KEY (`acid`),
  KEY `acid` (`acid`,`afid`,`aname`,`dir`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
























  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `cate` int(3) DEFAULT '0' COMMENT '0为基本设置，1为支付设置，2登录设置,3店铺设置,4积分设置',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置说明',
  `remark` varchar(100) NOT NULL COMMENT '配置说明',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `value` text NOT NULL COMMENT '配置值',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;




































  `fid` int(10) NOT NULL AUTO_INCREMENT,
  `fcid` int(10) DEFAULT NULL,
  `fnum` int(10) DEFAULT NULL,
  `fname` char(90) DEFAULT NULL,
  `ftitle` char(150) DEFAULT NULL,
  `fprice` float(10,2) DEFAULT NULL,
  `fpic` char(200) DEFAULT NULL,
  `fsort` int(5) DEFAULT '0',
  `ftop` int(5) DEFAULT '0',
  `fctime` int(16) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `salecount` int(10) DEFAULT NULL,
  `farea` varchar(50) NOT NULL DEFAULT '0' COMMENT '地区',
  `fshop` int(10) NOT NULL COMMENT '所属商家',
  PRIMARY KEY (`fid`),
  KEY `fid` (`fid`,`fcid`,`fnum`,`fname`,`fprice`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;












































  `fcid` int(10) NOT NULL AUTO_INCREMENT,
  `fcname` char(90) DEFAULT NULL,
  `fpid` int(15) DEFAULT '0',
  `fcsort` int(5) DEFAULT '0',
  `fctop` int(5) DEFAULT '0',
  `ctime` int(15) DEFAULT NULL,
  `sid` int(10) DEFAULT NULL,
  `fcount` int(5) DEFAULT NULL,
  PRIMARY KEY (`fcid`),
  KEY `fcid` (`fcid`,`fcname`,`fpid`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;






























  `oid` int(30) NOT NULL AUTO_INCREMENT,
  `orderprice` float(10,2) DEFAULT NULL,
  `ordercount` int(10) DEFAULT NULL,
  `pay` float(10,2) DEFAULT NULL,
  `ucount` int(10) DEFAULT '0',
  `uid` int(15) DEFAULT NULL,
  `uname` char(60) DEFAULT NULL,
  `pid` char(100) DEFAULT NULL,
  `shopspay` int(11) DEFAULT '0' COMMENT '配送费用',
  `shopname` char(100) DEFAULT NULL,
  `gid` char(90) DEFAULT NULL,
  `order_ctime` int(16) DEFAULT NULL,
  `order_endtime` int(16) DEFAULT NULL,
  `print_time` int(16) DEFAULT NULL,
  `print_name` char(100) DEFAULT NULL,
  `morecontent` char(200) DEFAULT NULL,
  `otel` char(80) DEFAULT NULL,
  `oman` char(100) DEFAULT NULL,
  `oaddress` char(200) DEFAULT NULL,
  `orderstatus` int(1) DEFAULT '1',
  `ordersource` char(40) DEFAULT NULL,
  `couponid` int(30) DEFAULT '0',
  PRIMARY KEY (`oid`),
  KEY `oid` (`oid`,`orderprice`,`ordercount`,`orderstatus`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 CHECKSUM=1;






















  `oid` bigint(30) DEFAULT NULL,
  `did` int(6) DEFAULT NULL,
  `fid` int(6) DEFAULT NULL,
  `fname` char(100) DEFAULT NULL,
  `fcid` int(15) DEFAULT NULL,
  `fcname` char(100) DEFAULT NULL,
  `fprice` float(10,2) DEFAULT NULL,
  `fcount` int(10) DEFAULT NULL,
  `prices` float(10,2) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `gid` char(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




























  `lid` int(10) NOT NULL AUTO_INCREMENT,
  `type` int(1) DEFAULT '0',
  `linkname` varchar(200) DEFAULT NULL,
  `link` varchar(300) DEFAULT NULL,
  `top` int(2) DEFAULT '0',
  `create_time` int(15) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
























  `uid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(60) NOT NULL,
  `userpass` char(90) NOT NULL DEFAULT '',
  `userpic` varchar(200) NOT NULL,
  `useremail` varchar(100) NOT NULL DEFAULT '',
  `usertel` int(15) DEFAULT '0',
  `nickname` varchar(50) DEFAULT NULL,
  `userqq` int(15) NOT NULL,
  `usersex` int(3) DEFAULT NULL,
  `usergroup` int(8) DEFAULT '0',
  `last_login_ip` varchar(16) NOT NULL,
  `last_login_time` int(15) DEFAULT NULL,
  `create_time` int(15) DEFAULT NULL,
  `userlevel` varchar(60) NOT NULL DEFAULT '0',
  `userpoint` smallint(6) DEFAULT '0',
  `userstatus` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `user_nicename` (`nickname`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
























  `pagid` int(11) NOT NULL AUTO_INCREMENT,
  `page_fid` int(11) DEFAULT '0',
  `pagedir` char(30) DEFAULT NULL,
  `page_title` varchar(150) DEFAULT NULL,
  `page_content` mediumtext,
  `page_header` varchar(1000) DEFAULT NULL,
  `page_footer` varchar(1000) DEFAULT NULL,
  `page_key` char(100) DEFAULT NULL,
  `page_des` char(200) DEFAULT NULL,
  `pic` varchar(300) DEFAULT NULL,
  `pic2` varchar(300) DEFAULT NULL,
  `pic3` varchar(300) DEFAULT NULL,
  `pic4` varchar(300) DEFAULT NULL,
  `sort` int(2) DEFAULT '0',
  `create_time` int(13) DEFAULT NULL,
  `page_top` int(1) DEFAULT '0',
  PRIMARY KEY (`pagid`),
  KEY `pagid` (`pagid`,`pagedir`,`page_title`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
































  `sid` int(10) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) NOT NULL,
  `semail` varchar(20) NOT NULL,
  `sphone` varchar(20) NOT NULL,
  `sprice` float(10,2) NOT NULL,
  `spic` char(200) NOT NULL,
  `scontent` varchar(100) NOT NULL,
  `sarea` int(10) NOT NULL,
  `scid` int(10) NOT NULL,
  `stime` int(16) NOT NULL,
  `ssort` int(5) NOT NULL,
  `stop` int(5) NOT NULL,
  `sstatus` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;























