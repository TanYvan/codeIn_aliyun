/*
MySQL Data Transfer
Source Host: localhost
Source Database: zc_extranet
Target Host: localhost
Target Database: zc_extranet
Date: 2014-4-8 9:09:22
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for agents
-- ----------------------------
DROP TABLE IF EXISTS `agents`;
CREATE TABLE `agents` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `status_a` int(11) default NULL COMMENT '状态：1发布，0未发布',
  `used` varchar(1) default 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `post_tel_code` varchar(40) default '' COMMENT '传真',
  `recevice_code` varchar(20) default '',
  `case_code` varchar(20) default '',
  `general_code` varchar(20) default '',
  `partytype` int(1) default NULL COMMENT '当事人类型， 1：申请人 2：被申请人',
  `party_id` int(11) default NULL COMMENT '当事人，与tb_party表中id关联',
  `name` varchar(100) default '' COMMENT '代理人名称',
  `status` varchar(4) default '' COMMENT '身份',
  `duty` varchar(100) default '' COMMENT '职务',
  `postcode` varchar(20) default '' COMMENT '邮编',
  `addr` varchar(100) default '' COMMENT '联系地址',
  `company` varchar(100) default '' COMMENT '公司',
  `email` varchar(40) default '' COMMENT 'Email',
  `tel` varchar(40) default '' COMMENT '联系电话',
  `mobiletel` varchar(40) default '' COMMENT '手机',
  `Area` char(6) default NULL,
  `AcceptSendDate` datetime default NULL,
  `AcceptSignDate` datetime default NULL,
  `SuitSignDate` datetime default NULL,
  `SuitSendDate` datetime default NULL,
  `ArbitBookSendDate` datetime default NULL,
  `capacity` varchar(20) default NULL COMMENT '代理人身份',
  `u` varchar(20) default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  `profession` varchar(100) default '' COMMENT '行业',
  `subprofession` varchar(20) default '' COMMENT '行业子分类',
  `paperwork_type` varchar(4) default NULL COMMENT '证件类型',
  `paperwork_id` int(11) default NULL COMMENT '指向attachment 的id',
  PRIMARY KEY  (`id`),
  KEY `tb_agents_recevice_code` (`recevice_code`),
  KEY `tb_agents_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代理人信息表';

-- ----------------------------
-- Table structure for arbitman
-- ----------------------------
DROP TABLE IF EXISTS `arbitman`;
CREATE TABLE `arbitman` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `status_a` int(11) default NULL COMMENT '状态：1已经内网确认，0未确认',
  `used` varchar(1) default 'Y',
  `identity` varchar(100) default NULL COMMENT '身份，01,02,    01,为仲裁员  02,为调解员',
  `ynbbh` int(11) default NULL,
  `code` varchar(20) default NULL COMMENT '仲裁员编号',
  `password` varchar(20) default NULL COMMENT '密码',
  `spell` varchar(10) default NULL COMMENT '姓名拼音缩写',
  `age` int(11) default '0' COMMENT 'nianling',
  `name` varchar(50) default NULL COMMENT '姓名',
  `name_idcard` varchar(50) default NULL COMMENT '身份证名称',
  `evername` varchar(50) default NULL COMMENT '曾用名',
  `area_code` varchar(200) default NULL COMMENT '地区编码',
  `birthday` date default NULL COMMENT '出生日期',
  `fax` varchar(40) default NULL COMMENT '传真',
  `bank_u` varchar(20) default NULL COMMENT '财务信息的维护人',
  `bank_t` datetime default NULL COMMENT '财务信息的维护时间',
  `telh` varchar(40) default NULL COMMENT '家庭电话',
  `telo` varchar(40) default NULL COMMENT '单位电话',
  `bp` varchar(40) default NULL COMMENT '呼机',
  `mobiletel` varchar(40) default NULL COMMENT '手机',
  `postcode` varchar(13) default NULL COMMENT '邮政编码',
  `addr` varchar(200) default NULL COMMENT '联系地址',
  `company` varchar(200) default NULL COMMENT '单位',
  `busyness` varchar(100) default NULL,
  `pic` varchar(1) default 'N' COMMENT '是否有照片，Y:有照片N:没照片',
  `email` varchar(50) default NULL COMMENT 'Email',
  `status` varchar(1) default NULL COMMENT '状态,1：在聘/0：解聘',
  `sex` varchar(2) default NULL COMMENT '性别,男、女',
  `nation` varchar(6) default NULL COMMENT '民族',
  `polityvisage` varchar(10) default NULL COMMENT '政治面貌',
  `id_card` varchar(50) default NULL COMMENT '身份证号',
  `lawyerdate` varchar(20) default NULL COMMENT '职称',
  `lawyernum` varchar(30) default NULL COMMENT '推荐人',
  `jobwant` smallint(6) default NULL COMMENT '工作意愿',
  `title` varchar(100) default NULL COMMENT '职务,读取系统基本字典表中条目代码前缀为“ZZ" ”的数据',
  `jobstart` varchar(20) default NULL COMMENT '参加工作时间',
  `doforeign` varchar(1) default NULL COMMENT '能否涉外,1：能/0：否',
  `standing` varchar(6) default NULL COMMENT '身份类型,读取系统基本字典表中条目代码前缀为“SF”的数据',
  `comtype` varchar(6) default NULL COMMENT '单位类型,读取系统基本字典表中条目代码前缀为“DL”的数据',
  `secjob` varchar(1) default NULL COMMENT '兼职情况',
  `hightitle` varchar(1) default NULL COMMENT '有无高职',
  `country` varchar(14) default NULL COMMENT '国籍',
  `city` varchar(14) default NULL COMMENT '居住地',
  `work1` varchar(1) default NULL COMMENT '工作状况,1：在职/0：非在职',
  `zy` int(11) default NULL COMMENT '职业分类,1：从事法律研究、教学工作的/2：从事经济贸易等专业工作的/3：曾任审判员的/4：律师/5：从事立法、执法、法',
  `background` mediumtext COMMENT '背景',
  `testdate` varchar(20) default NULL,
  `backg_en` mediumtext COMMENT '文英背景',
  `yearbelong` int(4) default NULL COMMENT '属所年度',
  `salutation` varchar(20) default NULL COMMENT '呼称',
  `caseperyearmin` int(4) default NULL COMMENT '一年办理最小案件数',
  `caseperyearmax` int(4) default NULL COMMENT '大案件数最',
  `setting` varchar(1) default NULL COMMENT '否接受是开庭通知：1是0否',
  `bankaccount` varchar(100) default '' COMMENT '????',
  `bankname` varchar(100) default '' COMMENT '????',
  `bank_typ` varchar(4) default NULL COMMENT '0001:本地   0002:外地',
  `bankremark` tinytext COMMENT '财务的备注',
  `outstanding` mediumtext COMMENT '主要工作业绩',
  `fruit` mediumtext COMMENT '发表的学术成果',
  `selfvalue` mediumtext COMMENT '自我评价',
  `parttime` mediumtext,
  `workhistory` mediumtext,
  `advisorycompany` mediumtext COMMENT '两年内担任法律顾问的企业名',
  `remark` mediumtext COMMENT '备注',
  `user` varchar(20) default NULL,
  `u_time` datetime default NULL,
  `sittingtime` varchar(50) default NULL COMMENT '开庭时间要求',
  `train` varchar(50) default NULL COMMENT '培训要求',
  `recommendation` varchar(50) default NULL COMMENT '住宿要求',
  `file` varchar(50) default NULL COMMENT '接收文件特别要求',
  `financestatus` varchar(4) default NULL,
  `category` varchar(200) default '',
  `isunit` varchar(1) default 'N' COMMENT '是否本单位仲裁员  Y:是；N:不是',
  `role_code` varchar(200) default '',
  `bank_code` varchar(100) default '',
  `bank_username` varchar(100) default NULL COMMENT '银行账号户名',
  `complete` varchar(1) default 'N' COMMENT '资料是否齐全,Y N',
  `other_org_handling` text COMMENT '在其它机构办案情况',
  PRIMARY KEY  (`id`),
  KEY `tb_arbitmen_name` (`name`),
  KEY `tb_arbitmen_spell` (`spell`),
  KEY `tb_arbitmen_name_spell` (`name`,`spell`),
  KEY `tb_arbitmen_code` (`code`),
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仲裁员基本信息表（仲裁员申请）';

-- ----------------------------
-- Table structure for arbitman_att
-- ----------------------------
DROP TABLE IF EXISTS `arbitman_att`;
CREATE TABLE `arbitman_att` (
  `id` int(11) NOT NULL default '0' COMMENT '附件位置类别，0外网附件，1内网附件',
  `status` int(11) default NULL COMMENT '状态：1发布，0未发布',
  `arbitman_id` int(11) default NULL COMMENT '仲裁员id（外网新增）',
  `att_id` int(11) default NULL,
  `u` varchar(20) default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仲裁员附件表（外网存放的附）InnoDB free: 350208 kB; InnoDB free: 350208 kB';

-- ----------------------------
-- Table structure for attachment
-- ----------------------------
DROP TABLE IF EXISTS `attachment`;
CREATE TABLE `attachment` (
  `id` int(11) NOT NULL default '0',
  `category` varchar(4) default NULL COMMENT '文件类别',
  `up_time` datetime default NULL COMMENT '上传时间',
  `file_name` varchar(100) default NULL COMMENT '文件名称',
  `remark` text COMMENT '备注',
  `ext_file_path` varchar(1000) default NULL COMMENT '外网文件路径',
  `file_path` varchar(1000) default NULL COMMENT '内网文件路径',
  `ext_file_url` varchar(1000) default NULL COMMENT '外网url',
  `file_url` varchar(1000) default NULL COMMENT '内网url',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外网附件信息表(用于存放内网确认之前的当事人、仲裁员、案件等附件)';

-- ----------------------------
-- Table structure for attachment_category
-- ----------------------------
DROP TABLE IF EXISTS `attachment_category`;
CREATE TABLE `attachment_category` (
  `id` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for case_apply_base
-- ----------------------------
DROP TABLE IF EXISTS `case_apply_base`;
CREATE TABLE `case_apply_base` (
  `id` int(11) NOT NULL auto_increment,
  `status` int(11) default NULL COMMENT '状态：1发布，0未发布',
  `apply_code` varchar(20) default '' COMMENT '申请号',
  `recevice_code` varchar(20) default '',
  `casereason` text COMMENT '案由',
  `remark` text COMMENT '备注',
  `runstyle` varchar(4) default NULL COMMENT '案件执行情况',
  `runremark` text COMMENT '执行情况说明',
  `run_fill_datetime` datetime default NULL COMMENT '运行情况填写时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件基本信息（申请件案）; InnoDB free: 350208 kB; InnoDB free: 350208 kB';

-- ----------------------------
-- Table structure for case_att
-- ----------------------------
DROP TABLE IF EXISTS `case_att`;
CREATE TABLE `case_att` (
  `id` int(11) NOT NULL default '0',
  `status` int(11) default NULL COMMENT '状态：1已确认，0新建',
  `apply_code` int(11) default NULL COMMENT '申请号',
  `att_id` int(11) default NULL,
  `u` varchar(20) default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件附件表（外网存放）';

-- ----------------------------
-- Table structure for contractsign
-- ----------------------------
DROP TABLE IF EXISTS `contractsign`;
CREATE TABLE `contractsign` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `status` int(11) default NULL COMMENT '状态：1已确认，0新建',
  `apply_code` varchar(20) character set utf8 default '' COMMENT '申请号',
  `used` varchar(1) character set gbk default 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `recevice_code` varchar(20) character set gbk default NULL COMMENT '咨询号',
  `general_code` varchar(20) character set gbk default NULL COMMENT '总案号，ts_case中的general_code',
  `contractdate` date default NULL COMMENT '签订日期',
  `pactname` varchar(200) character set gbk default '' COMMENT '合同名称',
  `note` varchar(200) character set gbk default '' COMMENT '备注',
  `u` varchar(20) character set gbk default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  PRIMARY KEY  (`id`),
  KEY `contractsigns_recevice_code` (`recevice_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='合同签定表(案件申请)';

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` int(11) NOT NULL auto_increment,
  `typ_code` varchar(20) default NULL COMMENT '类别编码',
  `data_val` varchar(200) default '' COMMENT '参数值',
  `data_text` mediumtext COMMENT '参数显示',
  `data_describe` varchar(200) default '' COMMENT '注释',
  `data_parent` varchar(200) default '' COMMENT '参数的父参数',
  `ind` int(11) default '0',
  `state` varchar(1) default '' COMMENT '参数状态  Y:使用   N:停用',
  `used` varchar(1) default 'Y' COMMENT 'Y:使用、N：逻辑删除',
  PRIMARY KEY  (`id`),
  KEY `tb_dictionaries_index_1` (`typ_code`,`data_val`)
) ENGINE=MyISAM AUTO_INCREMENT=1432 DEFAULT CHARSET=gbk COMMENT='数据字典';

-- ----------------------------
-- Table structure for down_log
-- ----------------------------
DROP TABLE IF EXISTS `down_log`;
CREATE TABLE `down_log` (
  `id` int(11) NOT NULL auto_increment,
  `user_type` varchar(2) default NULL COMMENT '用户类别',
  `user_code` varchar(20) default NULL COMMENT '用户编号',
  `ip` varchar(20) default NULL COMMENT 'ip地址',
  `down_time` datetime default NULL COMMENT '下载时间',
  `down_type` varchar(4) default NULL COMMENT '下载类型',
  `file_name` varchar(100) default NULL COMMENT '文件名称',
  `url` varchar(1000) default NULL COMMENT '下载路径',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for duties
-- ----------------------------
DROP TABLE IF EXISTS `duties`;
CREATE TABLE `duties` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(4) default '' COMMENT '编码',
  `name` varchar(200) default '' COMMENT '名称',
  `describ` varchar(200) default '' COMMENT '注释',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户职务信息字典表，该表数据用户不可修改';

-- ----------------------------
-- Table structure for educate
-- ----------------------------
DROP TABLE IF EXISTS `educate`;
CREATE TABLE `educate` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `status` int(11) default NULL COMMENT '状态：1新建未同步，2已同步',
  `arbitman` varchar(20) default NULL COMMENT '仲裁员编号',
  `studycalendar` varchar(50) default NULL COMMENT '学历',
  `degree` varchar(50) default NULL COMMENT '学位',
  `specialty` varchar(50) default NULL COMMENT '所学专业',
  `graduatedate` varchar(20) default NULL COMMENT '毕业或结业时间',
  `school` varchar(50) default NULL COMMENT '毕业院校',
  `degreeletter` varchar(30) default NULL COMMENT '证书编号',
  `lawyercalendar` varchar(1) default NULL COMMENT '是否法学,1：是/0：否',
  `foreignlearn` varchar(1) default NULL COMMENT '是否国外,1：是/0：否',
  `testdate` varchar(20) default NULL,
  `user` varchar(20) default NULL,
  `u_time` datetime default NULL,
  `used` varchar(1) default 'Y',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仲裁员教育（仲裁员申请）';

-- ----------------------------
-- Table structure for evaluate_arbitman_to_arbitman
-- ----------------------------
DROP TABLE IF EXISTS `evaluate_arbitman_to_arbitman`;
CREATE TABLE `evaluate_arbitman_to_arbitman` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `used` varchar(1) NOT NULL default 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `recevice_code` varchar(20) default '' COMMENT '咨询号',
  `u` varchar(20) default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  `arbitman_type` varchar(4) default '' COMMENT '仲裁员类型',
  `arbitman` varchar(20) default NULL COMMENT '裁员仲编码',
  `parent_val` varchar(4) default NULL COMMENT '评分项类别',
  `data_val` varchar(8) default '' COMMENT '评分项编码',
  `data_text` varchar(1000) default NULL COMMENT '评价项内容',
  `score` int(20) default '0' COMMENT '评分',
  `remark` varchar(250) default '' COMMENT '备注',
  PRIMARY KEY  (`id`,`used`),
  KEY `tb_evaluates_index1` (`recevice_code`),
  KEY `tb_evaluates_index2` (`recevice_code`,`arbitman`),
  KEY `tb_evaluates_index3` (`recevice_code`,`arbitman_type`,`arbitman`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仲裁员评价仲裁员(在外网相互评价)';

-- ----------------------------
-- Table structure for evaluate_assistant_to_arbitman
-- ----------------------------
DROP TABLE IF EXISTS `evaluate_assistant_to_arbitman`;
CREATE TABLE `evaluate_assistant_to_arbitman` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `used` varchar(1) NOT NULL default 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `recevice_code` varchar(20) default '' COMMENT '咨询号',
  `u` varchar(20) default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  `assistant_type` varchar(4) default '' COMMENT '助理类型',
  `assistant` varchar(20) default NULL COMMENT '助理编码',
  `parent_val` varchar(4) default NULL COMMENT '评分项类别',
  `data_val` varchar(8) default '' COMMENT '评分项编码',
  `data_text` varchar(1000) default NULL COMMENT '评价项内容',
  `score` int(20) default '0' COMMENT '评分',
  `remark` varchar(250) default '' COMMENT '备注',
  PRIMARY KEY  (`id`,`used`),
  KEY `tb_evaluates_index1` (`recevice_code`),
  KEY `tb_evaluates_index2` (`recevice_code`,`assistant`),
  KEY `tb_evaluates_index3` (`recevice_code`,`assistant_type`,`assistant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='助理评价仲裁员(在外网相互评价)';

-- ----------------------------
-- Table structure for evaluate_party_to_arbitman
-- ----------------------------
DROP TABLE IF EXISTS `evaluate_party_to_arbitman`;
CREATE TABLE `evaluate_party_to_arbitman` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `used` varchar(1) NOT NULL default 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `recevice_code` varchar(20) default '' COMMENT '咨询号',
  `u` varchar(20) default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  `arbitman_type` varchar(4) default '' COMMENT '仲裁员类型',
  `arbitman` varchar(20) default NULL COMMENT '裁员仲编码',
  `parent_val` varchar(4) default NULL COMMENT '评分项类别',
  `data_val` varchar(8) default '' COMMENT '评分项编码',
  `data_text` varchar(1000) default NULL COMMENT '评价项内容',
  `score` int(20) default '0' COMMENT '评分',
  `remark` varchar(250) default '' COMMENT '备注',
  PRIMARY KEY  (`id`,`used`),
  KEY `tb_evaluates_index1` (`recevice_code`),
  KEY `tb_evaluates_index2` (`recevice_code`,`arbitman`),
  KEY `tb_evaluates_index3` (`recevice_code`,`arbitman_type`,`arbitman`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='当事人评价仲裁员(外网相互评价)';

-- ----------------------------
-- Table structure for evaluate_party_to_assistant
-- ----------------------------
DROP TABLE IF EXISTS `evaluate_party_to_assistant`;
CREATE TABLE `evaluate_party_to_assistant` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `used` varchar(1) NOT NULL default 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `recevice_code` varchar(20) default '' COMMENT '咨询号',
  `u` varchar(20) default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  `arbitman_type` varchar(4) default '' COMMENT '仲裁员类型',
  `arbitman` varchar(20) default NULL COMMENT '裁员仲编码',
  `parent_val` varchar(4) default NULL COMMENT '评分项类别',
  `data_val` varchar(8) default '' COMMENT '评分项编码',
  `data_text` varchar(1000) default NULL COMMENT '评价项内容',
  `score` int(20) default '0' COMMENT '评分',
  `remark` varchar(250) default '' COMMENT '备注',
  PRIMARY KEY  (`id`,`used`),
  KEY `tb_evaluates_index1` (`recevice_code`),
  KEY `tb_evaluates_index2` (`recevice_code`,`arbitman`),
  KEY `tb_evaluates_index3` (`recevice_code`,`arbitman_type`,`arbitman`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='事人当评价理助(在外网相互评价)';

-- ----------------------------
-- Table structure for exp_agent
-- ----------------------------
DROP TABLE IF EXISTS `exp_agent`;
CREATE TABLE `exp_agent` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `used` varchar(1) default 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `recevice_code` varchar(20) default '',
  `case_code` varchar(20) default '',
  `general_code` varchar(20) default '',
  `post_tel_code` varchar(40) default '' COMMENT '传真',
  `partytype` int(1) default NULL COMMENT '当事人类型， 1：申请人 2：被申请人',
  `party_id` int(11) default NULL COMMENT '当事人，与tb_party表中id关联',
  `name` varchar(100) default '' COMMENT '代理人名称',
  `status` varchar(4) default '' COMMENT '身份',
  `duty` varchar(100) default '' COMMENT '职务',
  `postcode` varchar(20) default '' COMMENT '邮编',
  `addr` varchar(100) default '' COMMENT '联系地址',
  `company` varchar(100) default '' COMMENT '公司',
  `email` varchar(40) default '' COMMENT 'Email',
  `tel` varchar(40) default '' COMMENT '联系电话',
  `mobiletel` varchar(40) default '' COMMENT '手机',
  `Area` char(6) default NULL,
  `AcceptSendDate` datetime default NULL,
  `AcceptSignDate` datetime default NULL,
  `SuitSignDate` datetime default NULL,
  `SuitSendDate` datetime default NULL,
  `ArbitBookSendDate` datetime default NULL,
  `capacity` varchar(20) default NULL COMMENT '代理人身份',
  `u` varchar(20) default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  `profession` varchar(100) default '' COMMENT '行业',
  `subprofession` varchar(20) default '' COMMENT '行业子分类',
  `paperwork_type` varchar(4) default NULL COMMENT '证件类型',
  `paperwork_id` int(11) default NULL COMMENT '指向exp_attachment 的id',
  PRIMARY KEY  (`id`),
  KEY `tb_agents_recevice_code` (`recevice_code`),
  KEY `tb_agents_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代理人信息表(内网缓存)';

-- ----------------------------
-- Table structure for exp_arbitman
-- ----------------------------
DROP TABLE IF EXISTS `exp_arbitman`;
CREATE TABLE `exp_arbitman` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `used` varchar(1) default 'Y',
  `identity` varchar(100) default NULL COMMENT '身份，01,02,    01,为仲裁员  02,为调解员',
  `ynbbh` int(11) default NULL,
  `code` varchar(20) default NULL COMMENT '仲裁员编号',
  `password` varchar(20) default NULL COMMENT '密码',
  `spell` varchar(10) default NULL COMMENT '姓名拼音缩写',
  `age` int(11) default '0' COMMENT 'nianling',
  `name` varchar(50) default NULL COMMENT '姓名',
  `name_idcard` varchar(50) default NULL COMMENT '身份证名称',
  `evername` varchar(50) default NULL COMMENT '曾用名',
  `area_code` varchar(200) default NULL COMMENT '地区编码',
  `birthday` date default NULL COMMENT '出生日期',
  `fax` varchar(40) default NULL COMMENT '传真',
  `bank_u` varchar(20) default NULL COMMENT '财务信息的维护人',
  `bank_t` datetime default NULL COMMENT '财务信息的维护时间',
  `telh` varchar(40) default NULL COMMENT '家庭电话',
  `telo` varchar(40) default NULL COMMENT '单位电话',
  `bp` varchar(40) default NULL COMMENT '呼机',
  `mobiletel` varchar(40) default NULL COMMENT '手机',
  `postcode` varchar(13) default NULL COMMENT '邮政编码',
  `addr` varchar(200) default NULL COMMENT '联系地址',
  `company` varchar(200) default NULL COMMENT '单位',
  `busyness` varchar(100) default NULL,
  `pic` varchar(1) default 'N' COMMENT '是否有照片，Y:有照片N:没照片',
  `email` varchar(50) default NULL COMMENT 'Email',
  `status` varchar(1) default NULL COMMENT '状态,1：在聘/0：解聘',
  `sex` varchar(2) default NULL COMMENT '性别,男、女',
  `nation` varchar(6) default NULL COMMENT '民族',
  `polityvisage` varchar(10) default NULL COMMENT '政治面貌',
  `id_card` varchar(50) default NULL COMMENT '身份证号',
  `lawyerdate` varchar(20) default NULL COMMENT '职称',
  `lawyernum` varchar(30) default NULL COMMENT '推荐人',
  `jobwant` smallint(6) default NULL COMMENT '工作意愿',
  `title` varchar(100) default NULL COMMENT '职务,读取系统基本字典表中条目代码前缀为“ZZ" ”的数据',
  `jobstart` varchar(20) default NULL COMMENT '参加工作时间',
  `doforeign` varchar(1) default NULL COMMENT '能否涉外,1：能/0：否',
  `standing` varchar(6) default NULL COMMENT '身份类型,读取系统基本字典表中条目代码前缀为“SF”的数据',
  `comtype` varchar(6) default NULL COMMENT '单位类型,读取系统基本字典表中条目代码前缀为“DL”的数据',
  `secjob` varchar(1) default NULL COMMENT '兼职情况',
  `hightitle` varchar(1) default NULL COMMENT '有无高职',
  `country` varchar(14) default NULL COMMENT '国籍',
  `city` varchar(14) default NULL COMMENT '居住地',
  `work1` varchar(1) default NULL COMMENT '工作状况,1：在职/0：非在职',
  `zy` int(11) default NULL COMMENT '职业分类,1：从事法律研究、教学工作的/2：从事经济贸易等专业工作的/3：曾任审判员的/4：律师/5：从事立法、执法、法',
  `background` mediumtext COMMENT '背景',
  `testdate` varchar(20) default NULL,
  `backg_en` mediumtext COMMENT '文英背景',
  `yearbelong` int(4) default NULL COMMENT '属所年度',
  `salutation` varchar(20) default NULL COMMENT '呼称',
  `caseperyearmin` int(4) default NULL COMMENT '一年办理最小案件数',
  `caseperyearmax` int(4) default NULL COMMENT '大案件数最',
  `setting` varchar(1) default NULL COMMENT '否接受是开庭通知：1是0否',
  `bankaccount` varchar(100) default '' COMMENT '????',
  `bankname` varchar(100) default '' COMMENT '????',
  `bank_typ` varchar(4) default NULL COMMENT '0001:本地   0002:外地',
  `bankremark` tinytext COMMENT '财务的备注',
  `outstanding` mediumtext COMMENT '主要工作业绩',
  `fruit` mediumtext COMMENT '发表的学术成果',
  `selfvalue` mediumtext COMMENT '自我评价',
  `parttime` mediumtext,
  `workhistory` mediumtext,
  `advisorycompany` mediumtext COMMENT '两年内担任法律顾问的企业名',
  `remark` mediumtext COMMENT '备注',
  `user` varchar(20) default NULL,
  `u_time` datetime default NULL,
  `sittingtime` varchar(50) default NULL COMMENT '开庭时间要求',
  `train` varchar(50) default NULL COMMENT '培训要求',
  `recommendation` varchar(50) default NULL COMMENT '住宿要求',
  `file` varchar(50) default NULL COMMENT '接收文件特别要求',
  `financestatus` varchar(4) default NULL,
  `category` varchar(200) default '',
  `isunit` varchar(1) default 'N' COMMENT '是否本单位仲裁员  Y:是；N:不是',
  `role_code` varchar(200) default '',
  `bank_code` varchar(100) default '',
  `bank_username` varchar(100) default NULL COMMENT '银行账号户名',
  `complete` varchar(1) default 'N' COMMENT '资料是否齐全,Y N',
  `other_org_handling` text COMMENT '在其它机构办案情况',
  PRIMARY KEY  (`id`),
  KEY `tb_arbitmen_name` (`name`),
  KEY `tb_arbitmen_spell` (`spell`),
  KEY `tb_arbitmen_name_spell` (`name`,`spell`),
  KEY `tb_arbitmen_code` (`code`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=1609 DEFAULT CHARSET=utf8 COMMENT='仲裁员基本信息表（缓存表外网显示）';

-- ----------------------------
-- Table structure for exp_arbitman_att
-- ----------------------------
DROP TABLE IF EXISTS `exp_arbitman_att`;
CREATE TABLE `exp_arbitman_att` (
  `id` int(11) NOT NULL default '0' COMMENT '附件位置类别，0外网附件，1内网附件',
  `arbitman_id` int(11) default NULL COMMENT '仲裁员id（外网新增）',
  `att_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仲裁员附件表（缓存表外网显示）';

-- ----------------------------
-- Table structure for exp_arbitman_syn_copy
-- ----------------------------
DROP TABLE IF EXISTS `exp_arbitman_syn_copy`;
CREATE TABLE `exp_arbitman_syn_copy` (
  `id` int(11) NOT NULL auto_increment,
  `status` int(11) default NULL COMMENT '状态：1发布，0未发布',
  `syn_type` varchar(2) default NULL COMMENT '变更类型，01为需要仲裁员管理员进行确认，02需要财务人员确认',
  `change_time` datetime default NULL COMMENT '修改时间',
  `arbitman` varchar(20) default NULL COMMENT '仲裁员编码',
  `arbitman_name` varchar(20) default NULL COMMENT '仲裁员姓名',
  `change_type` int(11) default NULL COMMENT '修改类型 1新增加，2修改，3删除',
  `item_type` varchar(4) default NULL COMMENT '修改项类别',
  `item` varchar(4) default NULL COMMENT '修改项',
  `change_before` text COMMENT '改变前',
  `change_after` text COMMENT '修改后',
  `remark` text COMMENT '备注说明',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='裁员仲信息变更记录表';

-- ----------------------------
-- Table structure for exp_attachment
-- ----------------------------
DROP TABLE IF EXISTS `exp_attachment`;
CREATE TABLE `exp_attachment` (
  `id` int(11) NOT NULL default '0',
  `exp_id` int(11) default NULL COMMENT '附件外网id',
  `category` varchar(4) default NULL COMMENT '文件类别',
  `file_name` varchar(100) default NULL COMMENT '文件名称',
  `up_time` datetime default NULL COMMENT '上传时间',
  `remark` text COMMENT '备注',
  `exp_file_path` varchar(1000) default NULL COMMENT '外网文件路径',
  `file_path` varchar(1000) default NULL COMMENT '内网文件路径',
  `exp_file_url` varchar(1000) default NULL COMMENT '外网url',
  `file_url` varchar(1000) default NULL COMMENT '内网url',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外网附件信息表（缓存表外网显示）';

-- ----------------------------
-- Table structure for exp_case_apply_base
-- ----------------------------
DROP TABLE IF EXISTS `exp_case_apply_base`;
CREATE TABLE `exp_case_apply_base` (
  `id` int(11) NOT NULL auto_increment,
  `status` int(11) default NULL COMMENT '状态：1发布，0未发布',
  `apply_code` varchar(20) default '' COMMENT '申请号',
  `recevice_code` varchar(20) default '',
  `casereason` text COMMENT '案由',
  `remark` text COMMENT '备注',
  `runstyle` varchar(4) default NULL COMMENT '案件执行情况',
  `runremark` text COMMENT '执行情况说明',
  `run_fill_datetime` datetime default NULL COMMENT '运行情况填写时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件基本信息（缓存表外网显示）';

-- ----------------------------
-- Table structure for exp_case_att
-- ----------------------------
DROP TABLE IF EXISTS `exp_case_att`;
CREATE TABLE `exp_case_att` (
  `id` int(11) NOT NULL default '0' COMMENT '附件位置类别，0外网附件，1内网附件',
  `status` int(11) default NULL COMMENT '状态：1发布，0未发布',
  `recevice_code` varchar(20) character set gbk default NULL COMMENT '咨询号',
  `general_code` varchar(20) character set gbk default NULL COMMENT '总案号，ts_case中的general_code',
  `att_id` int(11) default NULL,
  `contractdate` date default NULL COMMENT '签订日期',
  `u` varchar(20) default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件附件表（缓存表外网显示）';

-- ----------------------------
-- Table structure for exp_case_syn
-- ----------------------------
DROP TABLE IF EXISTS `exp_case_syn`;
CREATE TABLE `exp_case_syn` (
  `id` int(11) NOT NULL auto_increment,
  `status` int(11) default NULL COMMENT '状态：1发布，0未发布',
  `syn_type` varchar(2) default NULL COMMENT '变更类型，01为需要仲裁员管理员进行确认，02需要财务人员确认',
  `change_time` datetime default NULL COMMENT '修改时间',
  `arbitman` varchar(20) default NULL COMMENT '仲裁员编码',
  `arbitman_name` varchar(20) default NULL COMMENT '仲裁员姓名',
  `change_type` int(11) default NULL COMMENT '修改类型 1新增加，2修改，3删除',
  `item_type` varchar(4) default NULL COMMENT '修改项类别',
  `item` varchar(4) default NULL COMMENT '修改项',
  `change_before` text COMMENT '改变前',
  `change_after` text COMMENT '修改后',
  `remark` text COMMENT '备注说明',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件信息变更记录表; InnoDB free: 350208 kB';

-- ----------------------------
-- Table structure for exp_contractsign
-- ----------------------------
DROP TABLE IF EXISTS `exp_contractsign`;
CREATE TABLE `exp_contractsign` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `used` varchar(1) character set gbk default 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `recevice_code` varchar(20) character set gbk default NULL COMMENT '咨询号',
  `general_code` varchar(20) character set gbk default NULL COMMENT '总案号，ts_case中的general_code',
  `contractdate` date default NULL COMMENT '签订日期',
  `pactname` varchar(200) character set gbk default '' COMMENT '合同名称',
  `note` varchar(200) character set gbk default '' COMMENT '备注',
  `u` varchar(20) character set gbk default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  PRIMARY KEY  (`id`),
  KEY `contractsigns_recevice_code` (`recevice_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='合同签定表(内网缓存); ';

-- ----------------------------
-- Table structure for exp_educate
-- ----------------------------
DROP TABLE IF EXISTS `exp_educate`;
CREATE TABLE `exp_educate` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `arbitman` varchar(20) default NULL COMMENT '仲裁员编号',
  `studycalendar` varchar(50) default NULL COMMENT '学历',
  `degree` varchar(50) default NULL COMMENT '学位',
  `specialty` varchar(50) default NULL COMMENT '所学专业',
  `graduatedate` varchar(20) default NULL COMMENT '毕业或结业时间',
  `school` varchar(50) default NULL COMMENT '毕业院校',
  `degreeletter` varchar(30) default NULL COMMENT '证书编号',
  `lawyercalendar` varchar(1) default NULL COMMENT '是否法学,1：是/0：否',
  `foreignlearn` varchar(1) default NULL COMMENT '是否国外,1：是/0：否',
  `testdate` varchar(20) default NULL,
  `user` varchar(20) default NULL,
  `u_time` datetime default NULL,
  `used` varchar(1) default 'Y',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仲裁员教育情况（缓存表外网显示）';

-- ----------------------------
-- Table structure for exp_industry
-- ----------------------------
DROP TABLE IF EXISTS `exp_industry`;
CREATE TABLE `exp_industry` (
  `id` int(11) NOT NULL auto_increment,
  `arbitman_num` int(11) default NULL COMMENT '裁员仲编码',
  `industry_num` int(11) default NULL COMMENT '行业编码',
  `user` varchar(20) default NULL,
  `u_time` datetime default NULL,
  `used` varchar(1) default 'Y',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仲裁员行业信息表（缓存表外网显示）';

-- ----------------------------
-- Table structure for exp_language
-- ----------------------------
DROP TABLE IF EXISTS `exp_language`;
CREATE TABLE `exp_language` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `arbitman` varchar(20) default NULL COMMENT '仲裁员ID',
  `lannum` smallint(6) default NULL COMMENT '语言序号',
  `language` varchar(6) default NULL COMMENT '语种,读取系统基本字典表中条目代码前缀为“  WY ”的数据',
  `ability` varchar(6) default NULL COMMENT '听说能力,读取系统基本字典表中条目代码前缀为“  NL ”的数据',
  `literacy` varchar(6) default NULL COMMENT '读写能力,读取系统基本字典表中条目代码前缀为“  NL ”的数据',
  `remark` varchar(50) default NULL COMMENT '备注',
  `user` varchar(20) default NULL,
  `u_time` datetime default NULL,
  `used` varchar(1) default 'Y',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仲裁员外语语种表（缓存表外网显示）';

-- ----------------------------
-- Table structure for exp_party
-- ----------------------------
DROP TABLE IF EXISTS `exp_party`;
CREATE TABLE `exp_party` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `used` varchar(1) default 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `recevice_code` varchar(20) default '' COMMENT '咨询流水号',
  `general_code` varchar(20) default '',
  `case_code` varchar(20) default '',
  `partytype` int(1) default NULL COMMENT '当事人类型， 1：申请人 2：被申请人',
  `commissary` varchar(30) default '' COMMENT '法定代表人',
  `isperson` int(1) default NULL COMMENT '申请人类型，1：个人 2：单位',
  `partyname` varchar(200) default '' COMMENT '当事人名称',
  `dutyname` varchar(4) default NULL COMMENT '职务',
  `mobiletel` varchar(40) default '' COMMENT '手机',
  `email` varchar(40) default '' COMMENT 'Email',
  `idnum` varchar(40) default '' COMMENT '身份证号',
  `addr` varchar(100) default '' COMMENT '联系地址',
  `tel` varchar(40) default '' COMMENT '联系电话',
  `postcode` varchar(6) default '' COMMENT '邮编',
  `post_tel_code` varchar(40) default '' COMMENT '传真电话',
  `profession` varchar(100) default '' COMMENT '行业',
  `Duty` varchar(12) default '',
  `area` varchar(200) default NULL COMMENT '地区',
  `AcceptSendDate` datetime default NULL,
  `AcceptSignDate` datetime default NULL,
  `SuitSignDate` datetime default NULL,
  `SuitSendDate` datetime default NULL,
  `ArbitBookSendDate` datetime default NULL,
  `u` varchar(20) default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  `subprofession` varchar(20) default '' COMMENT '行业子分类',
  PRIMARY KEY  (`id`),
  KEY `tb_parties_recevice_code` (`recevice_code`),
  KEY `tb_parties_partyname` (`partyname`),
  KEY `tb_parties_area` (`area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='当事人信息表(内网缓存)';

-- ----------------------------
-- Table structure for exp_party_request
-- ----------------------------
DROP TABLE IF EXISTS `exp_party_request`;
CREATE TABLE `exp_party_request` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `used` varchar(1) default 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `recevice_code` varchar(20) default '',
  `case_code` varchar(20) default '',
  `general_code` varchar(20) default '',
  `partytype` int(1) default NULL COMMENT '当事人类型，1：申请人 2：被申请人',
  `party_id` int(11) default NULL COMMENT '当事人，与tb_party表中id关联',
  `requestdate` date default NULL COMMENT '请求提交时间（送来）',
  `rsendstyle` varchar(4) default '' COMMENT '请求送交方式（送来）',
  `rsenddate` date default NULL COMMENT '送交对方当事人日期',
  `asendstyle` varchar(4) default NULL COMMENT '送交对方当事人方式',
  `request_text` mediumtext COMMENT '仲裁请求信息',
  `factreason` mediumtext COMMENT '事实理由',
  `u` varchar(20) default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='请求及事实理由(内网缓存)';

-- ----------------------------
-- Table structure for exp_party_respondent
-- ----------------------------
DROP TABLE IF EXISTS `exp_party_respondent`;
CREATE TABLE `exp_party_respondent` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `used` varchar(1) default 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `recevice_code` varchar(20) default '',
  `case_code` varchar(20) default '',
  `general_code` varchar(20) default '',
  `commissary` varchar(30) default '' COMMENT '法定代表人',
  `isperson` int(1) default NULL COMMENT '申请人类型，1：个人 2：单位',
  `partyname` varchar(200) default '' COMMENT '当事人名称',
  `dutyname` varchar(4) default NULL COMMENT '职务',
  `mobiletel` varchar(40) default '' COMMENT '手机',
  `email` varchar(40) default '' COMMENT 'Email',
  `idnum` varchar(40) default '' COMMENT '身份证号',
  `addr` varchar(100) default '' COMMENT '联系地址',
  `tel` varchar(40) default '' COMMENT '联系电话',
  `postcode` varchar(6) default '' COMMENT '邮编',
  `post_tel_code` varchar(40) default '' COMMENT '传真电话',
  `profession` varchar(100) default '' COMMENT '行业',
  `Duty` varchar(12) default '',
  `area` varchar(200) default NULL COMMENT '地区',
  `AcceptSendDate` datetime default NULL,
  `AcceptSignDate` datetime default NULL,
  `SuitSignDate` datetime default NULL,
  `SuitSendDate` datetime default NULL,
  `ArbitBookSendDate` datetime default NULL,
  `u` varchar(20) default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  `subprofession` varchar(20) default '' COMMENT '行业子分类',
  PRIMARY KEY  (`id`),
  KEY `tb_parties_partyname` (`partyname`),
  KEY `tb_parties_area` (`area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='申请人录入的被申请人信息(内网缓存)';

-- ----------------------------
-- Table structure for exp_resume
-- ----------------------------
DROP TABLE IF EXISTS `exp_resume`;
CREATE TABLE `exp_resume` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `arbit_id` varchar(20) default NULL COMMENT '仲裁员ID',
  `startdate` varchar(20) default NULL COMMENT '起时间',
  `enddate` varchar(20) default NULL COMMENT '止时间',
  `company` varchar(50) default NULL COMMENT '工作单位',
  `business` char(20) default NULL COMMENT '职务',
  `proveman` varchar(50) default NULL COMMENT '证明人',
  `lawyerabout` varchar(1) default NULL COMMENT '是否与法律有关,1：是/0：否',
  `testdate` varchar(20) default NULL,
  `user` varchar(20) default NULL,
  `u_time` datetime default NULL,
  `used` varchar(1) default 'Y',
  `remark` tinytext,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仲裁员简历信息（缓存表外网显示）';

-- ----------------------------
-- Table structure for exp_special
-- ----------------------------
DROP TABLE IF EXISTS `exp_special`;
CREATE TABLE `exp_special` (
  `id` int(11) NOT NULL auto_increment,
  `arbitman_num` int(11) default NULL COMMENT '裁员仲id',
  `speciality_num` int(11) default NULL COMMENT '专业的id',
  `user` varchar(20) character set gbk default NULL,
  `u_time` datetime default NULL,
  `used` varchar(1) character set gbk default 'Y',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仲裁员专业信息（缓存表外网显示）';

-- ----------------------------
-- Table structure for exp_w_user
-- ----------------------------
DROP TABLE IF EXISTS `exp_w_user`;
CREATE TABLE `exp_w_user` (
  `id` int(11) NOT NULL auto_increment,
  `status` int(11) default NULL COMMENT '状态：0外网，1内网',
  `code` varchar(1000) default NULL COMMENT '以u开始的字符串',
  `name` varchar(20) default NULL COMMENT '姓名',
  `password` varchar(100) default NULL COMMENT '密码',
  `id_card` varchar(50) default '' COMMENT '身份证号',
  `telephone` varchar(15) default '' COMMENT '电话',
  `email` varchar(50) default '' COMMENT '邮件地址',
  `identity` varchar(100) default NULL COMMENT '用户身份，律师、代理人、企业用户',
  `remark` text COMMENT '备注',
  `paperwork_type` varchar(4) default NULL COMMENT '证件类型',
  `paperwork_id` varchar(500) default NULL COMMENT '指向exp_attachment 的id',
  `active` varchar(1) default NULL COMMENT '1为在用，0为逻辑删除',
  `fax` varchar(15) default '' COMMENT '电话',
  `title` varchar(100) default NULL COMMENT '职务,读取系统基本字典表中条目代码前缀为“ZZ" ”的数据',
  `postcode` varchar(13) default NULL COMMENT '邮政编码',
  `company` varchar(200) default NULL COMMENT '单位',
  `addr` varchar(200) default NULL COMMENT '联系地址',
  `other_contact` varchar(200) default NULL COMMENT '其它联系方式',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for industry
-- ----------------------------
DROP TABLE IF EXISTS `industry`;
CREATE TABLE `industry` (
  `id` int(11) NOT NULL auto_increment,
  `arbitman_num` int(11) default NULL COMMENT '裁员仲编码',
  `industry_num` int(11) default NULL COMMENT '行业编码',
  `user` varchar(20) default NULL,
  `u_time` datetime default NULL,
  `used` varchar(1) default 'Y',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仲裁员行业信息表（仲裁员申请）';

-- ----------------------------
-- Table structure for language
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `status` int(11) default NULL COMMENT '状态：1新建未同步，2已同步',
  `arbitman` varchar(20) default NULL COMMENT '仲裁员ID',
  `lannum` smallint(6) default NULL COMMENT '语言序号',
  `language` varchar(6) default NULL COMMENT '语种,读取系统基本字典表中条目代码前缀为“  WY ”的数据',
  `ability` varchar(6) default NULL COMMENT '听说能力,读取系统基本字典表中条目代码前缀为“  NL ”的数据',
  `literacy` varchar(6) default NULL COMMENT '读写能力,读取系统基本字典表中条目代码前缀为“  NL ”的数据',
  `remark` varchar(50) default NULL COMMENT '备注',
  `user` varchar(20) default NULL,
  `u_time` datetime default NULL,
  `used` varchar(1) default 'Y',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仲裁员外语语种表（仲裁员申请）; InnoDB free: 351232 kB';

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL auto_increment,
  `role_code` varchar(50) default '' COMMENT '角色编码',
  `code` varchar(50) default '' COMMENT '菜单编码',
  `name` varchar(100) default '' COMMENT '菜单名称',
  `url` varchar(50) default '' COMMENT '页面url',
  `controllers` varchar(200) default '' COMMENT '控制器列表用 | 分割',
  `actions` varchar(500) default '' COMMENT 'action全路径列表，用 | 分割',
  `parent` varchar(50) default '' COMMENT '父节点编码，根节点的父节点为0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=776 DEFAULT CHARSET=utf8 COMMENT='菜单信息表的父子关系存储';

-- ----------------------------
-- Table structure for notifiy
-- ----------------------------
DROP TABLE IF EXISTS `notifiy`;
CREATE TABLE `notifiy` (
  `id` int(11) NOT NULL auto_increment,
  `status` int(11) default NULL COMMENT '状态：1发布，0未发布',
  `title` varchar(200) default NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `category` varchar(4) default NULL COMMENT '类别',
  `range` varchar(500) default NULL COMMENT '发布范围',
  `put_date` varchar(255) default NULL COMMENT '发布时间',
  `num` int(11) default NULL COMMENT '序号',
  `hits` int(11) default NULL COMMENT '点击量',
  `create_time` datetime default NULL,
  `create_user` varchar(20) default NULL COMMENT '发布人，最后修改时间',
  `edit_time` datetime default NULL,
  `edit_user` varchar(20) default NULL COMMENT '发布人，最后修改时间',
  `active` varchar(1) default NULL COMMENT '1为在用，0为逻辑删除',
  `place` varchar(200) default NULL COMMENT '地点',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告';

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(50) default '' COMMENT '页面编码，只用于排序。',
  `name` varchar(100) default '' COMMENT '页面名称',
  `url` varchar(200) default '' COMMENT '页面url',
  `controllers` varchar(200) default '' COMMENT '控制器列表用 | 分割',
  `actions` varchar(200) default '',
  `status` varchar(1) default '' COMMENT '状态，Y可用，N弃用',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=530 DEFAULT CHARSET=utf8 COMMENT='菜单项对应的页面信息';

-- ----------------------------
-- Table structure for party
-- ----------------------------
DROP TABLE IF EXISTS `party`;
CREATE TABLE `party` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `status` int(11) default NULL COMMENT '状态：1已确认，0新建',
  `used` varchar(1) default 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `apply_code` varchar(20) default '' COMMENT '申请号',
  `recevice_code` varchar(20) default '',
  `partytype` int(1) default NULL COMMENT '当事人类型， 1：申请人 2：被申请人',
  `commissary` varchar(30) default '' COMMENT '法定代表人',
  `isperson` int(1) default NULL COMMENT '申请人类型，1：个人 2：单位',
  `partyname` varchar(200) default '' COMMENT '当事人名称',
  `dutyname` varchar(4) default NULL COMMENT '职务',
  `mobiletel` varchar(40) default '' COMMENT '手机',
  `email` varchar(40) default '' COMMENT 'Email',
  `idnum` varchar(40) default '' COMMENT '身份证号',
  `addr` varchar(100) default '' COMMENT '联系地址',
  `tel` varchar(40) default '' COMMENT '联系电话',
  `postcode` varchar(6) default '' COMMENT '邮编',
  `post_tel_code` varchar(40) default '' COMMENT '传真电话',
  `profession` varchar(100) default '' COMMENT '行业',
  `Duty` varchar(12) default '',
  `area` varchar(200) default NULL COMMENT '地区',
  `AcceptSendDate` datetime default NULL,
  `AcceptSignDate` datetime default NULL,
  `SuitSignDate` datetime default NULL,
  `SuitSendDate` datetime default NULL,
  `ArbitBookSendDate` datetime default NULL,
  `u` varchar(20) default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  `subprofession` varchar(20) default '' COMMENT '行业子分类',
  PRIMARY KEY  (`id`),
  KEY `tb_parties_recevice_code` (`apply_code`),
  KEY `tb_parties_partyname` (`partyname`),
  KEY `tb_parties_area` (`area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='当事人信息表(案件申请)';

-- ----------------------------
-- Table structure for party_request
-- ----------------------------
DROP TABLE IF EXISTS `party_request`;
CREATE TABLE `party_request` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `used` varchar(1) default 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `status` int(11) default NULL COMMENT '状态：1已确认，0新建',
  `apply_code` varchar(20) default '' COMMENT '申请号',
  `recevice_code` varchar(20) default '',
  `partytype` int(1) default NULL COMMENT '当事人类型，1：申请人 2：被申请人',
  `party_id` int(11) default NULL COMMENT '当事人，与tb_party表中id关联',
  `requestdate` date default NULL COMMENT '请求提交时间（送来）',
  `rsendstyle` varchar(4) default '' COMMENT '请求送交方式（送来）',
  `rsenddate` date default NULL COMMENT '送交对方当事人日期',
  `asendstyle` varchar(4) default NULL COMMENT '送交对方当事人方式',
  `request_text` mediumtext COMMENT '仲裁请求信息',
  `factreason` mediumtext COMMENT '事实理由',
  `u` varchar(20) default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='请求及事实理由(案件申请)';

-- ----------------------------
-- Table structure for party_respondent
-- ----------------------------
DROP TABLE IF EXISTS `party_respondent`;
CREATE TABLE `party_respondent` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `status` int(11) default NULL COMMENT '状态：1已确认，0新建',
  `used` varchar(1) default 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `apply_code` varchar(20) default '' COMMENT '申请号',
  `recevice_code` varchar(20) default '',
  `commissary` varchar(30) default '' COMMENT '法定代表人',
  `isperson` int(1) default NULL COMMENT '申请人类型，1：个人 2：单位',
  `partyname` varchar(200) default '' COMMENT '当事人名称',
  `dutyname` varchar(4) default NULL COMMENT '职务',
  `mobiletel` varchar(40) default '' COMMENT '手机',
  `email` varchar(40) default '' COMMENT 'Email',
  `idnum` varchar(40) default '' COMMENT '身份证号',
  `addr` varchar(100) default '' COMMENT '联系地址',
  `tel` varchar(40) default '' COMMENT '联系电话',
  `postcode` varchar(6) default '' COMMENT '邮编',
  `post_tel_code` varchar(40) default '' COMMENT '传真电话',
  `profession` varchar(100) default '' COMMENT '行业',
  `Duty` varchar(12) default '',
  `area` varchar(200) default NULL COMMENT '地区',
  `AcceptSendDate` datetime default NULL,
  `AcceptSignDate` datetime default NULL,
  `SuitSignDate` datetime default NULL,
  `SuitSendDate` datetime default NULL,
  `ArbitBookSendDate` datetime default NULL,
  `u` varchar(20) default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  `subprofession` varchar(20) default '' COMMENT '行业子分类',
  PRIMARY KEY  (`id`),
  KEY `tb_parties_recevice_code` (`apply_code`),
  KEY `tb_parties_partyname` (`partyname`),
  KEY `tb_parties_area` (`area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='申请人录入的被申请人信息(案件申请)';

-- ----------------------------
-- Table structure for propose
-- ----------------------------
DROP TABLE IF EXISTS `propose`;
CREATE TABLE `propose` (
  `id` int(11) NOT NULL auto_increment,
  `propose_user_type` varchar(4) default NULL COMMENT '提出人类型',
  `propose_user` varchar(20) default NULL COMMENT '提出人',
  `propose_time` datetime default NULL COMMENT '提出时间',
  `title` varchar(200) default NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `contact` text COMMENT '联系方式',
  `reply_time` datetime default NULL COMMENT '回复时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='建议意见';

-- ----------------------------
-- Table structure for propose_reply
-- ----------------------------
DROP TABLE IF EXISTS `propose_reply`;
CREATE TABLE `propose_reply` (
  `id` int(11) NOT NULL auto_increment,
  `proposes_id` int(11) default NULL,
  `content` text COMMENT '回复内容',
  `reply_user` varchar(20) default NULL COMMENT '回复人用户编码',
  `reply_time` datetime default NULL,
  `active` varchar(1) default NULL COMMENT '1为在用，0为逻辑删除',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='建议回复';

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(200) default NULL COMMENT '编码',
  `name` varchar(200) default '' COMMENT '名称',
  `parent` varchar(200) default '' COMMENT '父节点编码，根节点的父节点为0',
  `arbitman_cost` decimal(65,0) default '0' COMMENT '仲裁员花费',
  `rate_code` varchar(4) default NULL COMMENT '币种编码',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地区信息的父子关系存储';

-- ----------------------------
-- Table structure for remind
-- ----------------------------
DROP TABLE IF EXISTS `remind`;
CREATE TABLE `remind` (
  `id` int(11) NOT NULL auto_increment,
  `remind_time` datetime default NULL COMMENT '提醒时间',
  `remind_type` varchar(4) default NULL COMMENT '提醒类型',
  `content` text COMMENT '提醒内容',
  `accept_user` varchar(20) default NULL COMMENT '接收人(用户编码)',
  `confirm_time` datetime default NULL COMMENT '确认时间',
  `status` int(11) default NULL COMMENT '状态,0未确认，1已确认',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='提醒';

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `status` int(11) default NULL COMMENT '状态：1新建未同步，2已同步',
  `arbit_id` varchar(20) default NULL COMMENT '仲裁员编码',
  `startdate` varchar(20) default NULL COMMENT '起时间',
  `enddate` varchar(20) default NULL COMMENT '止时间',
  `company` varchar(50) default NULL COMMENT '工作单位',
  `business` char(20) default NULL COMMENT '职务',
  `proveman` varchar(50) default NULL COMMENT '证明人',
  `lawyerabout` varchar(1) default NULL COMMENT '是否与法律有关,1：是/0：否',
  `testdate` varchar(20) default NULL,
  `user` varchar(20) default NULL,
  `u_time` datetime default NULL,
  `used` varchar(1) default 'Y',
  `remark` tinytext,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仲裁员简历（仲裁员申请）; InnoDB free: 351232 kB';

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(50) default '' COMMENT '编码',
  `name` varchar(50) default '' COMMENT '名称',
  `description` varchar(50) default '' COMMENT '注释',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='角色编码表';

-- ----------------------------
-- Table structure for special
-- ----------------------------
DROP TABLE IF EXISTS `special`;
CREATE TABLE `special` (
  `id` int(11) NOT NULL auto_increment,
  `status` int(11) default NULL COMMENT '状态：1新建未同步，2已同步',
  `arbitman_num` int(11) default NULL COMMENT '裁员仲id',
  `speciality_num` int(11) default NULL COMMENT '专业的id',
  `user` varchar(20) default NULL,
  `u_time` datetime default NULL,
  `used` varchar(1) default 'Y',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仲裁员专业表（仲裁员申请）; InnoDB free: 351232 kB';

-- ----------------------------
-- Table structure for sys_args
-- ----------------------------
DROP TABLE IF EXISTS `sys_args`;
CREATE TABLE `sys_args` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(20) NOT NULL default '' COMMENT '参数名称',
  `val` varchar(50) NOT NULL default '' COMMENT '编码',
  `describ` varchar(50) default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统参数表';

-- ----------------------------
-- Table structure for urs
-- ----------------------------
DROP TABLE IF EXISTS `urs`;
CREATE TABLE `urs` (
  `id` int(11) NOT NULL auto_increment,
  `user_code` varchar(50) default '' COMMENT '用户编码',
  `role_code` varchar(50) default '' COMMENT '角色编码',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=225 DEFAULT CHARSET=utf8 COMMENT='用户角色信息表';

-- ----------------------------
-- Table structure for user_duties
-- ----------------------------
DROP TABLE IF EXISTS `user_duties`;
CREATE TABLE `user_duties` (
  `id` int(11) NOT NULL auto_increment,
  `user_code` varchar(50) default '' COMMENT '用户编码',
  `duty_code` varchar(4) default '' COMMENT '职务编码',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COMMENT='用户职务信息表，存放用户的职务。';

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `used_used` varchar(1) default 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `l_code` varchar(100) default '' COMMENT '咨询登录编码',
  `ord` int(11) default '0' COMMENT '序号',
  `code` varchar(100) default NULL COMMENT '用户编码',
  `spell` varchar(20) default NULL COMMENT '姓名拼音缩写',
  `name` varchar(100) default NULL COMMENT '用户名称',
  `mobiletel` varchar(40) default NULL COMMENT '手机',
  `sex` varchar(1) default NULL COMMENT '男、女',
  `password` varchar(100) default NULL COMMENT '密码',
  `role_text` varchar(200) default NULL COMMENT '角色名称',
  `duty_text` varchar(200) default NULL COMMENT '职务名称',
  `bankaccount` varchar(100) default '' COMMENT '行银账号',
  `bankname` varchar(100) default '' COMMENT '行银名称',
  `bank_typ` varchar(4) default NULL COMMENT '0001:本地   0002:外地',
  `id_card` varchar(50) default '' COMMENT '身份证号',
  `telephone` varchar(15) default '' COMMENT '电话',
  `fax` varchar(50) default '' COMMENT '传真',
  `email` varchar(50) default '' COMMENT '邮件地址',
  `states` varchar(1) default 'Y' COMMENT '显示状态,Y:显示 N:不显示',
  `used` varchar(1) default 'Y' COMMENT '是否在职 Y:在职、N：不在职',
  `u` varchar(20) default '' COMMENT '维护用户',
  `u_t` datetime default NULL COMMENT '维护时间',
  `bank_code` varchar(100) default '' COMMENT '银行编号',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Table structure for w_user
-- ----------------------------
DROP TABLE IF EXISTS `w_user`;
CREATE TABLE `w_user` (
  `id` int(11) NOT NULL auto_increment,
  `status_a` int(11) default NULL COMMENT '状态：0外网，1内网',
  `code` varchar(100) default NULL COMMENT '以u开始的字符串',
  `name` varchar(20) default NULL COMMENT '姓名',
  `password` varchar(100) default NULL COMMENT '密码',
  `id_card` varchar(50) default '' COMMENT '身份证号',
  `telephone` varchar(15) default '' COMMENT '电话',
  `email` varchar(50) default '' COMMENT '邮件地址',
  `identity` varchar(100) default NULL COMMENT '用户身份，律师、代理人、企业用户',
  `remark` text COMMENT '备注',
  `paperwork_type` varchar(4) default NULL COMMENT '证件类型',
  `paperwork_id` int(11) default NULL COMMENT '指向attachment 的id',
  `fax` varchar(15) default '' COMMENT '电话',
  `title` varchar(100) default NULL COMMENT '职务,读取系统基本字典表中条目代码前缀为“ZZ" ”的数据',
  `postcode` varchar(13) default NULL COMMENT '邮政编码',
  `company` varchar(200) default NULL COMMENT '单位',
  `addr` varchar(200) default NULL COMMENT '联系地址',
  `other_contact` varchar(200) default NULL COMMENT '其它联系方式',
  `active` varchar(1) default NULL COMMENT '1为在用，0为逻辑删除',
  `status` varchar(1) default NULL COMMENT '显示状态,Y:显示 N:不显示',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='当事方外网用户信息表';

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `dictionary` VALUES ('1', '0001', '0000', '仲裁程序', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('2', '0001', '0001', '国内普通', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('3', '0001', '0002', '国内简易', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('4', '0001', '0003', '涉外普通', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('5', '0001', '0004', '涉外简易', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('6', '0002', '0000', '案件分类', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('7', '0002', '0001', '货物买卖合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('8', '0002', '0002', '公司、企业类', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('9', '0003', '0000', '仲裁协议类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('10', '0003', '0001', '合同中的仲裁条款 ', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('11', '0003', '0002', '仲裁协议', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('12', '0004', '0000', '仲裁机构', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('13', '0004', '0001', '华南分会', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('14', '0004', '0002', '深圳分会', '', '', '2', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('15', '0004', '0003', '北京贸仲', '', '', '2', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('16', '0004', '0004', '贸促会', '', '', '100', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('17', '0004', '0005', '其它', '', '', '10', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('18', '0005', '0000', '交寄方式', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('19', '0005', '0002', '来人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('20', '0005', '0001', '邮寄', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('21', '0006', '0000', '仲裁协议类项', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('22', '0006', '0001', '示范格式条款', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('23', '0006', '0002', '自行拟定条款', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('24', '0006', '0003', '事后达成的仲裁协议', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('25', '0007', '0000', '代理人身份', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('26', '0007', '0001', '律师', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('28', '0008', '0000', '仲裁请求提交方式（送来）', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('27', '0007', '0002', '职员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('29', '0008', '0001', '交来', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('30', '0008', '0002', '寄来', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('31', '0009', '0000', '仲裁请求送交对方当事人方式（送去）', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('32', '0009', '0002', '直接', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('33', '0009', '0001', '邮寄', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('34', '0009', '0003', '公证', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('35', '0009', '0004', '委托', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('36', '0009', '0005', '公告', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('37', '0010', '0000', '反请求提交方式（送来）', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('38', '0010', '0001', '交来', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('39', '0010', '0002', '寄来', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('40', '0011', '0000', '反请求送交对方当事人方式（送去）', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('41', '0011', '0002', '直接', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('42', '0011', '0001', '邮寄', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('43', '0011', '0003', '公证', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('44', '0011', '0004', '委托', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('856', '8120', '0000', '裁决书类别', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('857', '8120', '0001', '裁决书', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('48', '0013', '0000', '组庭信息送达方式（送去）', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('49', '0013', '0002', '直接', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('50', '0013', '0001', '邮寄', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('51', '0013', '0003', '公证', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('52', '0013', '0004', '委托', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('54', '0014', '0000', '组庭仲裁员类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('55', '0014', '0001', '独任仲裁员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('56', '0014', '0002', '首席仲裁员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('57', '0014', '0003', '仲裁员（申请人）', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('58', '0014', '0004', '仲裁员（被申请人）', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('59', '0015', '0000', '组庭仲裁员选定方式', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('60', '0015', '0001', '选定', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('61', '0015', '0002', '共同选定', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('62', '0015', '0003', '委托', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('63', '0015', '0004', '共同委托', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('64', '0015', '0005', '代指定', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('65', '0016', '0000', '仲裁员回避者的身份', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('66', '0016', '0001', '身份1', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('67', '0016', '0002', '身份2', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('68', '0016', '0003', '身份3', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('69', '0016', '0004', '身份4', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('70', '0017', '0000', '仲裁员披露信息送交申请人的方式', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('71', '0017', '0002', '直接', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('72', '0017', '0001', '邮寄', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('73', '0017', '0003', '公证', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('74', '0017', '0004', '委托', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('75', '0017', '0005', '公告', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('76', '0018', '0000', '仲裁员披露信息送交被申请人的方式', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('77', '0018', '0002', '直接', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('78', '0018', '0001', '邮寄', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('79', '0018', '0003', '公证', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('80', '0018', '0004', '委托', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('81', '0018', '0005', '公告', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('82', '0019', '0000', '仲裁员更换选定方式', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('83', '0019', '0001', '申请人选定', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('84', '0019', '0002', '被申请人选定', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('85', '0019', '0003', '双方共同选定', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('86', '0019', '0004', '本会主任选定', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('87', '0020', '0000', '仲裁员提出更换人', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('88', '0020', '0001', '申请人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('89', '0020', '0002', '被申请人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('90', '0020', '0003', '双方当事人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('91', '0020', '0004', '本会', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('92', '0021', '0000', '仲裁员更换理由', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('93', '0021', '0001', '仲裁员因死亡或健康原因不能从事仲裁工作', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('94', '0021', '0002', '仲裁员主动退出案件审理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('95', '0021', '0003', '主任决定其回避', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('96', '0021', '0004', '双方当事人一致要求其退出案件审理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('97', '0021', '0005', '本会认为仲裁员在法律上或事实上不能履行职责或者没有按照本规则的', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('98', '0022', '0000', '仲裁员更换意见类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('99', '0022', '0001', '申请人意见', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('100', '0022', '0002', '被申请人意见', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('101', '0022', '0003', '首席仲裁员意见', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('102', '0022', '0004', '仲裁员(申)意见', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('103', '0022', '0005', '仲裁员(被)意见', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('104', '0023', '0000', '仲裁庭', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('105', '0023', '0001', '第一仲裁庭', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('106', '0023', '0002', '第二仲裁庭', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('107', '0023', '0003', '第三仲裁庭', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('108', '0023', '0004', '多功能厅', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('109', '0024', '0000', '开闭庭时间', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('110', '0024', '0001', '08:00', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('111', '0024', '0002', '08:30', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('112', '0024', '0003', '09:00', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('113', '0024', '0004', '09:30', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('114', '0024', '0005', '10:00', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('115', '0024', '0006', '10:30', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('116', '0024', '0007', '11:00', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('117', '0024', '0008', '11:30', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('118', '0024', '0009', '12:00', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('119', '0024', '0010', '12:30', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('120', '0024', '0011', '13:00', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('121', '0024', '0012', '13:30', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('122', '0024', '0013', '14:00', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('123', '0024', '0014', '14:30', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('124', '0024', '0015', '15:00', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('125', '0024', '0016', '15:30', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('126', '0024', '0017', '16:00', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('127', '0024', '0018', '16:30', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('128', '0024', '0019', '17:00', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('129', '0025', '0000', '开庭通知送交申请人的方式', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('130', '0025', '0002', '直接', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('131', '0025', '0001', '邮寄', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('132', '0025', '0003', '公证', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('133', '0025', '0004', '委托', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('134', '0025', '0005', '公告', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('135', '0026', '0000', '开庭通知送交被申请人的方式', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('136', '0026', '0002', '直接', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('137', '0026', '0001', '邮寄', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('138', '0026', '0003', '公证', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('139', '0026', '0004', '委托', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('140', '0026', '0005', '公告', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('141', '0027', '0000', '出庭身份', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('142', '0027', '0001', '申请人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('143', '0027', '0002', '被申请人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('144', '0027', '0003', '申请人法定代表人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('145', '0027', '0004', '被申请人法定代表人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('146', '0027', '0005', '申请方委托代理人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('147', '0027', '0006', '被申请方委托代理人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('148', '0027', '0007', '申请方证人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('149', '0027', '0008', '被申请方证人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('150', '0028', '0000', '仲裁庭使用类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('151', '0028', '0001', '仲裁', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('152', '0028', '0002', '案件合议', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('153', '0028', '0003', '会议2', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('154', '0028', '0004', '会议3', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('155', '0028', '0005', '会议4', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('156', '0028', '0006', '会议5', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('157', '0028', '0007', '会议6', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('158', '0028', '0008', '会议7', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('159', '0029', '0000', '订房类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('160', '0029', '0001', '仲裁员订房（开庭）', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('161', '0029', '0002', '订房类型2', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('162', '0029', '0003', '订房类型3', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('163', '0029', '0004', '订房类型4', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('164', '0029', '0005', '订房类型5', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('165', '0029', '0006', '订房类型6', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('166', '0029', '0007', '订房类型7', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('167', '0030', '0000', '案件延期的提出人', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('168', '0030', '0001', '申请人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('169', '0030', '0002', '被申请人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('170', '0030', '0003', '仲裁员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('171', '9000', '0000', '仲裁员参与活动情况', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('172', '9000', '0001', '参与', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('173', '9000', '0002', '请假', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('174', '9000', '0003', '无故不参与', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('175', '9001', '0000', '活动类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('176', '9001', '0001', '综合', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('177', '9001', '0002', '培训', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('178', '9001', '0003', '研讨', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('179', '9001', '0004', '沙龙', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('180', '9001', '0005', '问卷调查', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('181', '9001', '0006', '其他', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('182', '9002', '0000', '职业分类', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('183', '9002', '0001', '从事法律研究、教学工作的', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('184', '9002', '0002', '从事经济贸易等专业工作的', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('185', '9002', '0003', '曾任审判员的', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('186', '9002', '0005', '从事立法、执法、法律事物工作的', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('187', '9002', '0004', '律师', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('188', '9003', '0000', '民族', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('189', '9003', '0001', '汉', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('190', '9003', '0002', '满', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('191', '9003', '0003', '蒙', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('192', '9003', '0004', '藏', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('193', '9003', '0005', '壮', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('194', '9003', '0006', '回', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('195', '9003', '0007', '苗', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('196', '9003', '0008', '彝', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('197', '9003', '0009', '土家', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('198', '9003', '0010', '朝鲜', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('199', '9003', '0011', '维吾尔', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('200', '9003', '0012', '赫哲族', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('201', '9003', '0013', '傣族', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('202', '9003', '0014', '白族', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('203', '9003', '0015', '其他', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('204', '9004', '0000', '身份类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('205', '9004', '0001', '教授及研究员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('206', '9004', '0002', '副教授及副研究员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('207', '9004', '0003', '高级工程师', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('208', '9004', '0004', '高级经济师', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('209', '9004', '0005', '律师', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('210', '9004', '0006', '行政法官', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('211', '9004', '0007', '其他身份', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('212', '9004', '0008', '退休法官', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('213', '9005', '0000', '单位类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('214', '9005', '0001', '大专院校', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('215', '9005', '0002', '研究机构', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('216', '9005', '0003', '政府部门', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('217', '9005', '0004', '律师事务所', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('218', '9005', '0005', '其他类型单位', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('219', '9006', '0000', '学历', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('220', '9006', '0001', '博士后', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('221', '9006', '0002', '博士研究生', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('222', '9006', '0003', '硕士研究生', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('223', '9006', '0004', '本科', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('224', '9006', '0005', '不详', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('225', '9006', '0006', '为空', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('226', '9007', '0000', '学位', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('227', '9007', '0001', '博士', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('228', '9007', '0002', '硕士', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('229', '9007', '0003', '学士', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('230', '9007', '0004', '不详', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('231', '9007', '0005', '为空', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('232', '9008', '0000', '语种', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('233', '9008', '0001', '英语', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('234', '9008', '0002', '法语', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('235', '9008', '0003', '德语', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('236', '9008', '0004', '日语', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('237', '9008', '0005', '俄语', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('238', '9008', '0006', '阿拉伯语', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('239', '9008', '0007', '朝鲜语', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('240', '9008', '0008', '意大利语', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('241', '9008', '0009', '拉丁文', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('242', '9008', '0010', '塞-克', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('243', '9009', '0000', '听说能力', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('244', '9009', '0001', '普通', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('245', '9009', '0002', '精通', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('246', '9010', '0000', '读写能力', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('247', '9010', '0001', '普通', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('248', '9010', '0002', '精通', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('249', '9011', '0000', '仲裁员类别', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('250', '9011', '0001', '首席仲裁员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('251', '9011', '0002', '第一仲裁员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('252', '9011', '0003', '第二仲裁员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('253', '9011', '0004', '独任仲裁员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('254', '0031', '0000', '费用类型(应收/应退)', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('255', '0031', '0001', '案件收费（争议金额）', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('256', '0031', '0002', '立案费、受理费', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('257', '0031', '0003', '仲裁费、处理费', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('258', '0031', '0007', '代收代支费用', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('259', '0031', '0008', '仲裁员实际开支费', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('260', '0032', '0000', '费用交款方(应收/应退)', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('261', '0032', '0001', '申请人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('262', '0032', '0002', '被申请人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('263', '9012', '0000', '精通专业', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('264', '9012', '0001', '国际冲突法', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('265', '9012', '0002', '合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('266', '9012', '0003', '技术合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('267', '9012', '0004', '房地产', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('268', '9012', '0005', '工程建筑', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('269', '9012', '0006', '信贷', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('270', '9012', '0007', '保险', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('271', '9012', '0008', '股票证券', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('272', '9012', '0009', '期货', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('273', '9012', '0010', '投资', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('274', '9012', '0011', '国际贸易', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('275', '9012', '0012', '侵权', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('276', '9012', '0013', '专利', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('277', '9012', '0014', '商标', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('278', '9012', '0015', '版权', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('279', '9012', '0016', '中介服务合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('280', '9012', '0017', '广告代理合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('281', '9012', '0018', '城市污水处理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('282', '9012', '0019', '房屋租赁', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('283', '9012', '0020', '联营', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('284', '9012', '0021', '给水排水工程', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('285', '9012', '0022', '知识产权', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('286', '9012', '0023', '环境工程', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('287', '9012', '0024', '商贸', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('288', '9012', '0025', '票据法', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('289', '9012', '0026', '国际工程', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('290', '9012', '0027', '海商法', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('291', '9012', '0028', '地下工程', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('292', '9012', '0029', '隧道工程', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('293', '9012', '0030', '金融', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('294', '9012', '0031', '基础工程', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('295', '9012', '0032', '著作权', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('296', '9012', '0033', '发电厂建筑与结构', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('297', '9012', '0034', '国际商法', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('298', '9012', '0035', '工业与民用建筑', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('299', '9012', '0036', '交通管理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('300', '9012', '0037', '计算机软件', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('301', '9012', '0038', '水利工程', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('302', '9012', '0039', '市政工程规划', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('303', '9012', '0040', '建筑结构', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('304', '9012', '0041', '道路工程', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('305', '9012', '0042', '工程经济与管理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('306', '9012', '0043', 'FIDIC及FIDIC条款', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('307', '9012', '0044', '水工抗震', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('308', '9012', '0045', '建设工程合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('309', '9012', '0046', '海洋工程', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('310', '9012', '0047', '国际经济合作实务', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('311', '9012', '0048', '公司收购兼并', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('312', '9012', '0049', '土地管理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('313', '9012', '0050', '房屋管理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('314', '9012', '0051', '外商投资法', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('315', '9012', '0052', '土地评估', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('316', '9012', '0053', '土地出让转让', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('317', '9012', '0054', '土地资产管理与经营', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('318', '9012', '0055', '土地开发', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('319', '9012', '0056', '土地产权', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('320', '9012', '0057', '外商投资', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('321', '9012', '0058', '超高压输变电工程设计', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('322', '9012', '0059', '市政管网', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('323', '9012', '0060', '买卖合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('324', '9012', '0061', '供电、水、气、热水合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('325', '9012', '0062', '咨询建设', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('326', '9012', '0063', '借款合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('327', '9012', '0064', '租赁合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('328', '9012', '0065', '道路与交通工程', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('329', '9012', '0066', '承揽合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('330', '9012', '0067', '运输合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('331', '9012', '0068', '砼结构腐蚀', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('332', '9012', '0069', '保管合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('333', '9012', '0070', '仓储合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('334', '9012', '0071', '委托合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('335', '9012', '0072', '行纪合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('336', '9012', '0073', '居间合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('337', '9012', '0074', '合作合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('338', '9012', '0075', '广告合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('339', '9012', '0076', '标准管理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('340', '9012', '0077', '桥梁设计', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('341', '9012', '0078', '国际商事仲裁', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('342', '9012', '0079', '土地使用权转让', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('343', '9012', '0080', '商品房买卖', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('344', '9012', '0081', '房地产联建、开发', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('345', '9012', '0082', '拆迁补偿', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('346', '9012', '0083', '物业管理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('347', '9012', '0084', '公司', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('348', '9012', '0085', '公司设立', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('349', '9012', '0086', '股东权益', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('350', '9012', '0087', '公司分立、合并', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('351', '9012', '0088', '公司清算', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('352', '9012', '0089', '银行业务', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('353', '9012', '0090', '工程营造', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('354', '9012', '0091', '证券', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('355', '9012', '0092', '建筑工程', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('356', '9012', '0093', '国际商务', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('357', '9012', '0094', '担保', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('358', '9012', '0095', '国际金融', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('359', '9012', '0096', '计算机信息技术', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('360', '9012', '0097', '其它', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('361', '9012', '0098', '国际私法', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('362', '0033', '0000', '出纳收款时录入的付款方', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('363', '0033', '0001', '申请人方', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('364', '0033', '0002', '被申请方', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('365', '0034', '0000', '付款方式', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('366', '0034', '0001', '转账', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('367', '0034', '0002', '现金', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('368', '0034', '0003', '付款方式3', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('369', '0034', '0004', '付款方式4', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('681', '8135', '0004', '部分裁决', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('680', '8135', '0003', '中间裁决', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('679', '8135', '0002', '撤案裁决书', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('678', '8135', '0001', '裁决书', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('677', '8135', '0000', '文书类别', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('376', '8101', '0000', '合议时间', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('377', '8101', '0001', '上午', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('378', '8101', '0002', '下午', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('379', '0035', '0000', '代收代支费用支出类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('380', '0035', '0001', '差旅费', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('381', '0035', '0002', '审计、鉴定费', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('382', '0035', '0003', '仲裁员特殊报酬', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('383', '9013', '0000', '法院意见', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('384', '9013', '0001', '驳回', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('385', '9013', '0002', '撤销', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('386', '9013', '0003', '不予执行', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('387', '9013', '0004', '建议重审', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('388', '9014', '0000', '执行情况', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('389', '9014', '0001', '自动全部执行', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('390', '9014', '0002', '自动部分执行', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('391', '9014', '0003', '强制全部执行', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('392', '9014', '0004', '强制部分执行', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('393', '9014', '0005', '没有执行', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('394', '9015', '0000', '反馈意见类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('395', '9015', '0001', '表扬', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('396', '9015', '0002', '批评', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('397', '9015', '0003', '表扬+批评', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('398', '9015', '0004', '请求', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('399', '9015', '0005', '表扬+请求', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('400', '9015', '0006', '批评+请求', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('401', '9015', '0007', '表扬+批评+请求', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('402', '9016', '0000', '反馈涉及类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('403', '9016', '0001', '仲裁员评价', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('404', '9016', '0002', '对裁决书的评价', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('405', '9016', '0003', '对助理的评价', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('406', '9016', '0004', '其它', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('407', '9017', '0000', '反馈信息人', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('408', '9017', '0001', '当事人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('409', '9017', '0002', '代理人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('410', '9017', '0003', '其他', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1168', '0036', '0011', '住宿', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1169', '0050', '0000', '办案其它报酬', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1170', '0050', '0001', '报酬', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1171', '0050', '0091', '出差补助合计', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1167', '0036', '0003', '补助', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('417', '0037', '0000', '案件仲裁庭费用支出类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('418', '0037', '0001', '工作餐', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('419', '0037', '0002', '支出类型2', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('420', '0037', '0003', '支出类型3', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('421', '0037', '0004', '支出类型4', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('429', '0038', '0002', '其他费用支出类型2', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('428', '0038', '0001', '审计、鉴定费', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('427', '0038', '0000', '案件其他费用支出类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('430', '0038', '0003', '其他费用支出类型3', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('431', '0038', '0004', '其他费用支出类型4', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('478', '8102', '0001', '证据保全', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('479', '8102', '0002', '财产保全', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('480', '8103', '0000', '申请保全人', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('481', '8103', '0001', '申请人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('482', '8103', '0002', '被申请人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('483', '8104', '0000', '保全法院地区', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('484', '8104', '0002', '北京', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('485', '8104', '0003', '外地', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('486', '8104', '0004', '港澳台', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('487', '8104', '0005', '国外', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('735', '8109', '0000', '检测类型（仲裁庭决定，鉴定或审计）', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('491', '8106', '0000', '要求终止方', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('492', '8106', '0001', '法院', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('493', '8106', '0002', '当事人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('494', '8107', '0000', '原因', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('495', '8107', '0001', '等待法院诉讼结果', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('496', '8107', '0002', '一方当事人因不可抗拒的事由，不能参加仲裁', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('497', '8107', '0003', '本案必须以另一案的审理结果为依据，而另一案尚未审结的', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('477', '8102', '0000', '保全类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('498', '8107', '0004', '一方当事人死亡或终止，需要等待确定权利义务承受人的', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('499', '8107', '0005', '当事人向法院申请确认仲裁条款无效', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('500', '8107', '0006', '其他', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('501', '8108', '0000', '是否有特殊情况', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('502', '8108', '0001', '是', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('503', '8108', '0002', '否', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('748', '0041', '0002', '涉外案件', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('736', '8109', '0001', '审计', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('734', '8112', '0003', '仲裁员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('737', '8109', '0002', '鉴定', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('514', '8112', '0000', '内容分类', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('515', '8112', '0001', '实体', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('516', '8112', '0002', '程序', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('517', '8113', '0000', '提出方', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('518', '8113', '0001', '当事人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('519', '8113', '0002', '仲裁庭', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('520', '8114', '0000', '裁决类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('521', '8114', '0001', '中间', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('522', '8114', '0002', '部分', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('523', '8115', '0000', '送交申请人方式', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('524', '8115', '0002', '直接', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('525', '8115', '0001', '邮寄', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('526', '8115', '0003', '公证', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('527', '8115', '0004', '委托', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('528', '8115', '0005', '公告', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('529', '8116', '0000', '送交被申请人方式', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('530', '8116', '0001', '邮寄', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('531', '8116', '0002', '直接', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('532', '8116', '0003', '公证', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('533', '8116', '0004', '委托', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('534', '8116', '0005', '公告', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('535', '8117', '0000', '结案方式', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('536', '8117', '0001', '一般裁决', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('537', '8117', '0002', '和解裁决', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('538', '8117', '0003', '撤案', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('539', '8118', '0000', '送交方式', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('540', '8118', '0002', '直接', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('541', '8118', '0001', '邮寄', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('542', '8119', '0000', '送交方式', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('543', '8119', '0002', '直接', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('544', '8119', '0001', '邮寄', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('782', '8110', '0000', '案件延期提出人类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('548', '8121', '0000', '仲裁庭决定', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('549', '8121', '0001', '是', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('550', '8121', '0002', '否', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('551', '8122', '0000', '补正类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('552', '8122', '0001', '书写错误', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('553', '8122', '0002', '计算错误', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('554', '8122', '0003', '打印错误', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('555', '8122', '0004', '漏裁', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('556', '8123', '0000', '拟稿人', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('557', '8123', '0001', '秘书', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('558', '8123', '0002', '陈博生', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('559', '8123', '0003', '陈桂明', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('560', '8123', '0004', '陈洪武', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('561', '8124', '0000', '电脑录入是否完成', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('562', '8124', '0001', '是', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('563', '8124', '0002', '否', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('564', '8125', '0000', '录入人', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('565', '8125', '0001', '秘书', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('566', '8125', '0002', '助理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('567', '8126', '0000', '审批决定', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('568', '8126', '0001', '已报批', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('569', '8126', '0002', '已报批未审', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('570', '8126', '0003', '需要修改', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('571', '8126', '0004', '通过', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('572', '8126', '0005', '不通过', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('573', '8127', '0000', '是否需要最后合议', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('574', '8127', '0001', '是', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('575', '8127', '0002', '否', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('576', '8128', '0000', '会议是否达成一致', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('577', '8128', '0001', '是', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('578', '8128', '0002', '否', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('579', '8129', '0000', '咨询类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('580', '8129', '0001', '电话咨询', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('581', '8129', '0002', '在线咨询', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('582', '8129', '0003', '来人咨询', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('676', '8134', '0002', '对主体的异议', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('675', '8134', '0001', '仲裁协议效力', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('674', '8134', '0000', '异议类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('673', '8133', '0002', '法院', '', '', '2', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('672', '8133', '0001', '中国国际经济贸易仲裁委员会华南分会', '', '', '3', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('671', '8133', '0000', '受理机构', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('593', '9018', '0000', '月份', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('594', '9018', '0001', '一月', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('595', '9018', '0002', '二月', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('596', '9018', '0003', '三月', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('597', '9018', '0004', '四月', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('598', '9018', '0005', '五月', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('599', '9018', '0006', '六月', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('600', '9018', '0007', '七月', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('601', '9018', '0008', '八月', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('602', '9018', '0009', '九月', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('603', '9018', '0010', '十月', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('604', '9018', '0011', '十一月', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('605', '9018', '0012', '十二月', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('606', '0039', '0000', '裁决书和管辖决定等的起草和修改的事项', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('607', '0039', '0001', '①撰写案情的', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('608', '0039', '0002', '②撰写完整裁决书的', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('609', '0039', '0003', '③撰写仲裁庭意见的', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('610', '0039', '0004', '④撰写案情复杂、难度大的中间裁决、部分裁决，提出实质性修改意见的', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('611', '0039', '0005', '⑤撰写案情一般、难度小的中间裁决、部分裁决，提出较好修改意见的', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('612', '0039', '0006', '⑥撰写和解裁决书的', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('613', '0039', '0007', '⑦撰写管辖权/仲裁员回避决定的', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('614', '0039', '0008', '⑧撰写撤案决定书的', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('615', '0039', '0009', '⑨对裁决作一般文字修改或校核的', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('616', '0039', '0010', '⑩只在裁决书上签字的', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('617', '0040', '0000', '校核类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('618', '0040', '0001', '裁决书/撤案决定书 审核', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('619', '0040', '0002', '管辖/回避/主体资格决定/程序令 审核', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('777', '8111', '0000', '咨询记录咨询方', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('776', '8122', '0005', '其它', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('624', '0002', '0003', '房地产类', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('625', '0002', '0004', '建设工程类', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('626', '0002', '0005', '金融类', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('627', '0002', '00010001', '机电设备（机电产品、仪器设备、生产线、部件）', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('628', '0002', '00010002', '工业原材料（五矿、冶金、化工原料、建筑原材料等）', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('629', '0002', '00010003', '一般货物（不属于机电产品、工业原材料类的产品：轻工、工艺、纺织、粮油、土畜、医药等）', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('630', '0002', '00010004', '其他货物买卖合同', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('631', '0002', '00060002', '物流服务合同', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('632', '0002', '00060003', '医疗服务合同', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('633', '0002', '00060004', '法律服务合同（诉讼、仲裁、调解代理合同等）', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('634', '0002', '00060005', '旅游合同', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('635', '0002', '00060006', '财会服务合同', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('636', '0002', '00060007', '娱乐服务合同', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('637', '0002', '00020001', '股权转让合同', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('638', '0002', '00020002', '公司增资合同', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('639', '0002', '00020003', '三资企业经营合同', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('640', '0002', '00020004', '企业承包经营合同', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('641', '0002', '00020005', '企业并购合同', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('642', '0002', '00020006', '公司章程纠纷', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('643', '0002', '00020007', '其他与公司经营有关的合同', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('644', '0002', '00030006', '临时用地合同', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('645', '0002', '00030007', '合资、合作开发房地产合同', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('646', '0002', '00030008', '房地产项目转让合同', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('647', '0002', '00030009', '其他房地产类合同', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('648', '0002', '00030001', '商品房买卖合同', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('649', '0002', '00030002', '房屋租赁合同', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('650', '0002', '00030003', '商品房委托代理销售合同', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('651', '0002', '00030004', '土地使用权出让合同', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('652', '0002', '00030005', '土地租赁合同', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('653', '0002', '00040001', '建设工程勘察合同', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('654', '0002', '00040002', '建设工程设计合同', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('655', '0002', '00040003', '建设工程监理合同', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('656', '0002', '00040004', '建设工程施工合同', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('657', '0002', '00040005', '建设工程承包合同', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('658', '0002', '00050001', '借款合同', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('659', '0002', '00050002', '委托理财合同', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('660', '0002', '00050003', '信用卡合同', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('661', '0002', '00050004', '证券类合同', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('662', '0002', '00050005', '基金类合同', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('663', '0002', '00050006', '期货类合同', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('664', '0002', '00050007', '信托类合同', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('665', '0002', '00050008', '票据类合同', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('666', '0002', '00050009', '财产保险合同', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('667', '0002', '00050010', '人身保险合同', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('668', '0002', '00050011', '保证保险合同', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('669', '0002', '00050012', '再保险合同', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('670', '0002', '00050013', '其他金融类合同', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('682', '8136', '0000', '评价内容', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('683', '8136', '0001', '1.你对该仲裁员在接受选定或指定时披露的认真程度及寄回声明书情况的评价？', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('684', '8136', '0002', '2.该仲裁员是否存在隐瞒应予披露或回避事由的情形？', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('685', '8136', '0003', '3.已安排好的开庭或合议，是否因该仲裁员的个人原因而延期或延时？', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('686', '8136', '0004', '4.仲裁员是否预留足够庭审时间？', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('687', '8136', '0005', '5.从合议及开庭情况看，你对该仲裁员查阅案件资料，了解案情的评价是：', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('688', '8136', '0006', '6.首席/独任仲裁员是否就庭审做了精心安排，庭审秩序节奏把握 的是否得当？', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('689', '8136', '0007', '7.你认为该案的首席/独任仲裁员具备当首席/独任的足够能力吗？', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('690', '8136', '0008', '8.庭审时仲裁员是否有接收机、发短信、随意离开开庭室等不当行为？', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('691', '8136', '0009', '9.通过开庭及合议，你感觉该仲裁员是否表现出有不当的偏袒情形？', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('692', '8136', '0010', '10.该案是否发生过仲裁庭意见被当事人提前获悉的情形？如有，可能是该仲裁员吗？', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('693', '8136', '0011', '11.该仲裁员如果草拟了裁决书，你认为写作水平如何？如果未草拟裁决书，该仲裁员对裁决书提出的修改意见时表现\r\n\r\n的态度和水平如何？', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('694', '8136', '0012', '12.如果首席起草裁决书，其草拟的时间是否及时？如果该仲裁员是边裁，其对裁决书提出修改意见是否及时？', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('695', '8136', '0013', '13.如果该仲裁员对裁决草案有不同意见，其提出不同意见时是否附有理由？', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('696', '8136', '00010001', '非常认真，很快寄回', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('697', '8136', '00010002', '一般', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('698', '8136', '00010003', '非常差', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('699', '8136', '00020001', '不存在', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('700', '8136', '00020002', '存在', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('701', '8136', '00020003', '说不清', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('702', '8136', '00030001', '未发生该情况', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('703', '8136', '00030002', '发生过该情况', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('704', '8136', '00040001', '预留足够时间爱你', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('705', '8136', '00040002', '未预留足够时间，开庭提前结束', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('706', '8136', '00050001', '非常熟悉案情', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('707', '8136', '00050002', '一般', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('708', '8136', '00050003', '对案情了解不多', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('709', '8136', '00060001', '精心安排，庭审附有效率', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('710', '8136', '00060002', '一般', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('711', '8136', '00060003', '准备不充分，庭审一团糟', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('712', '8136', '00070001', '足够', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('713', '8136', '00070002', '不够', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('714', '8136', '00080001', '有', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('715', '8136', '00080002', '没有', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('716', '8136', '00090001', '没有该情形', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('717', '8136', '00090002', '有，无原则偏袒一方', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('718', '8136', '00090003', '有倾向意见，但在正常范围内', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('719', '8136', '00090004', '说不清', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('720', '8136', '00100001', '未发生过', '', '0010', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('721', '8136', '00100002', '发生过，可可能是该仲裁员', '', '0010', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('722', '8136', '00100003', '发生过，不知是谁', '', '0010', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('723', '8136', '00110001', '非常好', '', '0011', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('724', '8136', '00110002', '水平一般', '', '0011', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('725', '8136', '00110003', '非常差，草稿没法用', '', '0011', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('726', '8136', '00120001', '非常及时，未造成迟延', '', '0012', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('727', '8136', '00120002', '不及时，裁决因此而延迟', '', '0012', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('728', '8136', '00130001', '一味不同意，提不出任何合理理由', '', '0013', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('729', '8136', '00130002', '持不同意见，但可以提出喜爱能供应的理由', '', '0013', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('730', '8159', '0000', '仲裁员类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('731', '8159', '0001', '独任仲裁员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('732', '8159', '0002', '申请人方仲裁员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('733', '8159', '0003', '被申请人方仲裁员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('746', '0041', '0000', '格式函适用的案件类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('747', '0041', '0001', '国内案件', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('742', '8137', '0000', '费用类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('743', '8137', '0001', '国内案件仲裁费用', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('744', '8137', '0002', '涉外案件仲裁费用', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('745', '8137', '0003', '金融争议案件仲裁费用', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('749', '0042', '0000', '选择条件', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('750', '0042', '0001', '申请人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('751', '0042', '0002', '被申请人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('752', '8138', '0000', '材料类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('753', '8138', '0001', '答辩书及证据', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('754', '8138', '0002', '反请求及证据材料', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('755', '8138', '0003', '代理词', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('756', '8138', '0004', '质证意见', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('757', '8138', '0005', '证据', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('758', '8138', '0007', '主体资格证明', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('759', '8139', '0000', '提交人', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('760', '8139', '0001', '申请人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('761', '8139', '0002', '被申请人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('866', '0046', '0000', '案件审理方式', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('810', '0041', '0003', '金融案件', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('804', '8140', '0007', '中＋外诉中', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('767', '0024', '0020', '17:30', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('768', '0024', '0021', '18:00', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('769', '0024', '0022', '18:30', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('770', '0024', '0023', '19:00', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('771', '0024', '0024', '19:30', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('772', '0024', '0025', '20:00', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('778', '8111', '0001', '申请人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('779', '8111', '0002', '被申请人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('780', '8111', '0003', '申请方代理人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('781', '8111', '0004', '申请方代理人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('783', '8110', '0001', '仲裁庭', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('784', '8110', '0002', '办案助理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('785', '8110', '0003', '当事人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('808', '0001', '0005', '国内金融金融规则3人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('807', '8109', '0003', '评估', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('806', '8140', '0009', '中＋外诉中＋外', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('805', '8140', '0008', '中＋外诉外', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('803', '8140', '0006', '外诉中＋外', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('802', '8140', '0005', '外诉外', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('801', '8140', '0004', '外诉中', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('800', '8140', '0003', '中诉中＋外', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('799', '8140', '0002', '中诉外', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('798', '8140', '0001', '中诉中', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('797', '8140', '0000', '案件主体类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('811', '8141', '0000', '当事人职务', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('812', '8141', '0001', '董事长', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('813', '8141', '0002', '律师', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('814', '8141', '0003', '副董事长', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('815', '8141', '0004', '总经理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('816', '8141', '0005', '副总经理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('817', '8141', '0006', '经理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('818', '8141', '0007', '副经理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('819', '8141', '0008', '经理助理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('820', '8141', '0009', '厂长', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('821', '8141', '0010', '副厂长', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('822', '8141', '0011', '职员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('823', '0041', '0004', '国内普通', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('824', '0041', '0005', '国内简易', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('825', '0041', '0006', '涉外普通', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('826', '0041', '0007', '涉外简易', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('827', '0042', '0100', '无', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('828', '0043', '0000', '总会案件大类', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('829', '0043', 'C', '三来一补', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('830', '0043', 'F', '金融交易纠纷', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('831', '0043', 'G', '一般货物（民用产品及不属M、R类的产品）', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('832', '0043', 'H', '房屋出售、租赁、土地使用权纠纷、商品房预售合同纠纷', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('833', '0043', 'L', '专卖店、专营店许可、知识产权许可', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('834', '0043', 'M', '机电设备（机电产品、仪器设备、生产线、部件和租赁）', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('835', '0043', 'P', '建筑、装修工程、承包工程', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('836', '0043', 'R', '工业原材料（五矿、冶金、化工原材料、建筑原材料等）', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('837', '0043', 'S', '证券争议', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('838', '0043', 'T', '股权转让', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('839', '0043', 'V', '三资企业', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('840', '0043', 'X', '其他（贷款、担保、代理、易货、租船等）', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('841', '0041', '0008', '所有案件类型', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('842', '0042', '0004', '送达了《仲裁规则》和《仲裁员名册》', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('843', '0042', '0005', '未送达《仲裁规则》和《仲裁员名册》', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('844', '0042', '0003', '双方', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('846', '0044', '0001', '中文', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('845', '0044', '0000', '办理案件的语言', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('847', '0044', '0002', '英文', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('848', '0044', '0003', '日文', '', '', '0', 'Y', 'N');
INSERT INTO `dictionary` VALUES ('849', '0045', '0000', '立案后删除的原因', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('850', '0045', '0001', '原因1', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('851', '0045', '0002', '原因2', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('852', '0042', '0006', '申请人方仲裁员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('853', '0042', '0007', '被申请人方仲裁员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('854', '0042', '0008', '首席仲裁员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('855', '8104', '0001', '深圳', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('858', '8120', '0004', '裁决书更正', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('859', '8120', '0005', '补充裁决', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('860', '0031', '0004', '案件收费（无明确争议金额）', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('861', '0031', '0005', '立案费/受理费（无明确争议金额）', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('862', '0031', '0006', '仲裁费/处理费（无明确争议金额）', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('865', '8138', '0006', '补充证据材料', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('867', '0046', '0001', '开庭', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('868', '0046', '0002', '书面', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('869', '8120', '0002', '和裁裁决书', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('870', '8120', '0003', '撤案决定书', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('871', '0047', '0000', '归档类别', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('872', '0047', '0001', '撤案', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('873', '0047', '0002', '裁决', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('874', '8142', '0000', '处理结果项目', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('875', '8142', '0001', '实际开支', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('876', '0001', '0006', '国内金融金融规则1人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('877', '0048', '0000', '助理发文语言类别', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('878', '0048', '0001', '中文份数', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('879', '0048', '0002', '英文份数', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('880', '0049', '0000', '仲裁员和助理的其它报酬类别', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('881', '0049', '0001', '类型一', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('882', '0049', '0002', '类型二', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1172', '0050', '0092', '出差费合计', '', '0091', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1165', '0036', '0000', '仲裁员费用支出类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('886', '0051', '0', '庭审和调解 档次和类别', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('887', '0051', '0', '', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('888', '0051', '400', '首席/独任仲裁员A 400', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('889', '0051', '500', '首席/独任仲裁员B 500', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('890', '0052', '0', '助理程序处理 档次和类别 ', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('891', '0052', '0', '', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('892', '0052', '100', 'A 100', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('893', '0052', '250', 'B 250', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('894', '0053', '0', '调查取证报酬 档次和类别 ', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('895', '0053', '0', '', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('896', '0053', '1000', 'A 1000', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('897', '0053', '2000', 'B 2000', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('898', '0054', '0', '助理发文量 档次和类别', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('899', '0054', '0', '', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('900', '0054', '200', 'A 200', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('901', '0054', '500', 'B 500', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('902', '0055', '0', '稿酬 档次和类别 父编码类0039', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('903', '0055', '0', '', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('904', '0055', '0', '', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('905', '0055', '300', '助理A1 300', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('906', '0055', '2000', '仲裁员A01 2000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('907', '0055', '500', 'B500', '', '0001', '0', 'Y', 'N');
INSERT INTO `dictionary` VALUES ('908', '0055', '3000', '仲裁员A02 3000 ', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('909', '0056', '0', '校核 档次和类别 父编码类0040', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('910', '0056', '0', '', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('911', '0056', '0', '', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('912', '0056', '100', '文件校对A 100', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('913', '0056', '300', '主校A 300', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('914', '0056', '200', '文件校对B 200', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('915', '0051', '600', '首席/独任仲裁员C 600', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('916', '0051', '700', '首席/独任仲裁员D 700', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('917', '0051', '800', '首席/独任仲裁员E 800', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('918', '0051', '900', '首席/独任仲裁员F 900', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('919', '0051', '1000', '首席/独任仲裁员G 1000', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('920', '0051', '1100', '首席/独任仲裁员H 1100', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('921', '0051', '1200', '首席/独任仲裁员I 1200', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('922', '0051', '1300', '首席/独任仲裁员J 1300', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('923', '0051', '1400', '首席/独任仲裁员K 1400', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('924', '0051', '1500', '首席/独任仲裁员L 1500', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('925', '0051', '300', '仲裁员a 300', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('926', '0051', '400', '仲裁员b 400', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('927', '0051', '500', '仲裁员c 500', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('928', '0051', '600', '仲裁员d 600', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('929', '0051', '700', '仲裁员e 700', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('930', '0051', '800', '仲裁员f 800', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('931', '0051', '900', '仲裁员g 900', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('932', '0051', '1000', '仲裁员h 1000', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1166', '0036', '0002', '差旅', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('934', '0055', '450', '助理A2 450', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('935', '0055', '600', '助理A3 600', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('936', '0055', '750', '助理A4 750', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('937', '0055', '900', '助理A5 900', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('938', '0055', '1050', '助理A6 1050', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('939', '0055', '1200', '助理A7 1200', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('940', '0055', '4000', '仲裁员A03 4000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('941', '0055', '5000', '仲裁员A04 5000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('942', '0055', '6000', '仲裁员A05 6000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('943', '0055', '7000', '仲裁员A06 7000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('944', '0055', '8000', '仲裁员A07 8000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('945', '0055', '9000', '仲裁员A08 9000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('946', '0055', '10000', '仲裁员A09 10000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('947', '0055', '11000', '仲裁员A10 11000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('948', '0055', '12000', '仲裁员A11 12000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('949', '0055', '13000', '仲裁员A12 13000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('950', '0055', '14000', '仲裁员A13 14000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('951', '0055', '15000', '仲裁员A14 15000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('952', '0055', '16000', '仲裁员A15 16000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('953', '0055', '17000', '仲裁员A16 17000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('954', '0055', '18000', '仲裁员A17 18000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('955', '0055', '1000', '助理B1 1000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('956', '0055', '1500', '助理B2 1500', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('957', '0055', '2000', '助理B3 2000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('958', '0055', '2500', '助理B4 2500', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('959', '0055', '3000', '助理B5 3000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('960', '0055', '3500', '助理B6 3500', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('961', '0055', '4000', '助理B7 4000', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('962', '0055', '0', '', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('963', '0055', '1000', '仲裁员B01 1000', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('964', '0055', '2000', '仲裁员B02 2000', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('965', '0055', '3000', '仲裁员B03 3000', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('966', '0055', '4000', '仲裁员B04 4000', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('967', '0055', '5000', '仲裁员B05 5000', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('968', '0055', '6000', '仲裁员B06 6000', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('969', '0055', '7000', '仲裁员B07 7000', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('970', '0055', '8000', '仲裁员B08 8000', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('971', '0055', '9000', '仲裁员B09 9000', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('972', '0055', '10000', '仲裁员B10 10000', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('973', '0055', '11000', '仲裁员B11 11000', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('974', '0055', '12000', '仲裁员B12 12000', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('975', '0055', '800', '助理C1 800', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('976', '0055', '1000', '助理C2 1000', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('977', '0055', '1200', '助理C3 1200', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('978', '0055', '1500', '助理C4 1500', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('979', '0055', '2000', '助理C5 2000', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('980', '0055', '2500', '助理C6 2500', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('981', '0055', '0', '', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('982', '0055', '1000', '仲裁员B01 1000', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('983', '0055', '2000', '仲裁员B02 2000', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('984', '0055', '3000', '仲裁员B03 3000', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('985', '0055', '4000', '仲裁员B04 4000', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('986', '0055', '5000', '仲裁员B05 5000', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('987', '0055', '6000', '仲裁员B06 6000', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('988', '0055', '7000', '仲裁员B07 7000', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('989', '0055', '8000', '仲裁员B08 8000', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('990', '0055', '9000', '仲裁员B09 9000', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('991', '0055', '10000', '仲裁员B10 10000', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('992', '0055', '11000', '仲裁员B11 11000', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('993', '0055', '12000', '仲裁员B12 12000', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('994', '0055', '800', '助理C1 800', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('995', '0055', '1000', '助理C2 1000', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('996', '0055', '1200', '助理C3 1200', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('997', '0055', '1500', '助理C4 1500', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('998', '0055', '2000', '助理C5 2000', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('999', '0055', '2500', '助理C6 2500', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1000', '0055', '0', '', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1001', '0055', '1000', '仲裁员B01 1000', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1002', '0055', '2000', '仲裁员B02 2000', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1003', '0055', '3000', '仲裁员B03 3000', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1004', '0055', '4000', '仲裁员B04 4000', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1005', '0055', '5000', '仲裁员B05 5000', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1006', '0055', '6000', '仲裁员B06 6000', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1007', '0055', '7000', '仲裁员B07 7000', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1008', '0055', '8000', '仲裁员B08 8000', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1009', '0055', '9000', '仲裁员B09 9000', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1010', '0055', '10000', '仲裁员B10 10000', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1011', '0055', '11000', '仲裁员B11 11000', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1012', '0055', '12000', '仲裁员B12 12000', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1013', '0055', '800', '助理C1 800', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1014', '0055', '1000', '助理C2 1000', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1015', '0055', '1200', '助理C3 1200', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1016', '0055', '1500', '助理C4 1500', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1017', '0055', '2000', '助理C5 2000', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1018', '0055', '2500', '助理C6 2500', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1019', '0055', '0', '', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1020', '0055', '600', '仲裁员C01 600', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1021', '0055', '800', '仲裁员C02 800', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1022', '0055', '1000', '仲裁员C03 1000', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1023', '0055', '1200', '仲裁员C04 1200', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1024', '0055', '1500', '仲裁员C05 1500', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1025', '0055', '1800', '仲裁员C06 1800', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1026', '0055', '2000', '仲裁员C07 2000', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1027', '0055', '2200', '仲裁员C08 2200', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1028', '0055', '2500', '仲裁员C09 2500', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1029', '0055', '2800', '仲裁员C10 2800', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1030', '0055', '3000', '仲裁员C11 3000', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1031', '0055', '3200', '仲裁员C12 3200', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1032', '0055', '3500', '仲裁员C13 3500', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1033', '0055', '3800', '仲裁员C14 3800', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1034', '0055', '4000', '仲裁员C15 4000', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1035', '0055', '250', '助理D1 250', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1036', '0055', '500', '助理D2 500', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1037', '0055', '650', '助理D3 650', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1038', '0055', '800', '助理D4 800', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1039', '0055', '1000', '助理D5 1000', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1040', '0055', '0', '', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1041', '0055', '400', '仲裁员G1 400', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1042', '0055', '600', '仲裁员G2 600', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1043', '0055', '800', '仲裁员G3 800', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1044', '0055', '1000', '仲裁员G4 1000', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1045', '0055', '1200', '仲裁员G5 1200', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1046', '0055', '1600', '仲裁员G6 1600', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1047', '0055', '2000', '仲裁员G7 2000', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1048', '0055', '2500', '仲裁员G8 2500', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1049', '0055', '3000', '仲裁员G9 3000', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1050', '0055', '400', '助理E1 400', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1051', '0055', '600', '助理E2 600', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1052', '0055', '800', '助理E3 800', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1053', '0055', '1000', '助理E4 1000', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1054', '0055', '1200', '助理E5 1200', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1055', '0055', '1600', '助理E6 1600', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1056', '0055', '2000', '助理E7 2000', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1057', '0055', '2500', '助理E8 2500', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1058', '0055', '3000', '助理E9 3000', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1059', '0055', '0', '', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1060', '0055', '300', '仲裁员D01 300', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1061', '0055', '500', '仲裁员D02 500', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1062', '0055', '700', '仲裁员D03 700', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1063', '0055', '1000', '仲裁员D04 1000', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1064', '0055', '1200', '仲裁员D05 1200', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1065', '0055', '1500', '仲裁员D06 1500', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1066', '0055', '1800', '仲裁员D07 1800', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1067', '0055', '2000', '仲裁员D08 2000', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1068', '0055', '2200', '仲裁员D09 2200', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1069', '0055', '2400', '仲裁员D10 2400', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1070', '0055', '2600', '仲裁员D11 2600', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1071', '0055', '2800', '仲裁员D12 2800', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1072', '0055', '3000', '仲裁员D13 3000', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1073', '0055', '100', '助理F1 100', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1074', '0055', '300', '助理F2 300', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1075', '0055', '400', '助理F3 400', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1076', '0055', '500', '助理F4 500', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1077', '0055', '600', '助理F5 600', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1108', '0055', '0', '', '', '0010', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1109', '0055', '100', '仲裁员F1 100', '', '0010', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1110', '0055', '200', '仲裁员F2 200', '', '0010', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1111', '0055', '300', '仲裁员F3 300', '', '0010', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1112', '0055', '400', '仲裁员F4 400', '', '0010', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1113', '0055', '500', '仲裁员F5 500', '', '0010', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1114', '0052', '400', 'C 400', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1115', '0052', '550', 'D 550', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1088', '0055', '0', '', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1089', '0055', '200', '仲裁员E1 200', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1090', '0055', '500', '仲裁员E2 500', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1091', '0055', '800', '仲裁员E3 800', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1092', '0055', '1000', '仲裁员E4 1000', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1119', '0052', '1150', 'H 1150', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1120', '0053', '3000', 'C 3000', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1121', '0053', '4000', 'D 4000', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1122', '0053', '5000', 'E 5000', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1116', '0052', '700', 'E 700', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1117', '0052', '850', 'F 850', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1118', '0052', '1000', 'G 1000', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1100', '0055', '1200', '仲裁员E5 1200', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1101', '0055', '1500', '仲裁员E6 1500', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1102', '0055', '1800', '仲裁员E7 1800', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1103', '0055', '100', '助理G1 100', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1104', '0055', '200', '助理G2 200', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1105', '0055', '300', '助理G3 300', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1106', '0055', '400', '助理G4 400', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1107', '0055', '500', '助理G5 500', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1123', '0054', '750', 'C 750', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1124', '0054', '950', 'D 950', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1125', '0054', '1100', 'E 1100', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1126', '0054', '1300', 'F 1300', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1127', '0054', '1500', 'G 1500', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1128', '0056', '300', '文件校对C 300', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1129', '0056', '400', '文件校对D 400', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1130', '0056', '500', '文件校对E 500', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1131', '0056', '300', '形式内容主校/复校A 300', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1132', '0056', '500', '形式内容主校/复校B 500', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1133', '0056', '600', '形式内容主校/复校C 800', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1134', '0056', '1000', '形式内容主校/复校D 1000', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1135', '0056', '1200', '形式内容主校/复校E 1200', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1136', '0056', '1500', '形式内容主校/复校F 1500', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1137', '0056', '400', '主校B 400', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1138', '0056', '500', '主校C 500', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1139', '0056', '600', '主校D 600', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1140', '0056', '200', '复校a 200', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1141', '0056', '300', '复校b 300', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1142', '0056', '400', '复校c 400', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1143', '0056', '500', '复校d 500', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1144', '0001', '0007', '涉外金融规则3人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1145', '0001', '0008', '涉外金融规则1人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1146', '8143', '0000', '适用规则项目', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1147', '8143', '0001', 'CIETAC规则', '', '', '3', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1148', '8143', '0002', 'CIETAC(修改)', '', '', '1', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1149', '8143', '0003', 'ICC规则', '', '', '1', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1150', '8143', '0004', 'UNCITRAL Rules', '', '', '1', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1151', '8143', '0005', '其他', '', '', '1', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1152', '8144', '0000', '特殊约定', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1153', '8144', '0001', '无', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1154', '8144', '0002', '简易程序约定三人仲裁庭', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1155', '8144', '0003', '普通程序约定独任仲裁庭', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1156', '8142', '0100', '抹零', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1173', '0050', '0093', '出差补助', '', '0091', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1174', '0021', '0006', '仲裁员本人', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1175', '0020', '0005', '仲裁员本人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1176', '8160', '0000', '阶段', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1177', '8160', '0001', '庭审前', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1178', '8160', '00010001', '1、接受选定或指定时披露得不认真或寄回声明书不及时（扣1--3分）；', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1179', '8160', '00010002', '2、存在隐瞒应予披露或回避事由的情形（扣1--3分）；', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1180', '8160', '00010003', '3、由于个人原因推迟确定开庭时间、未预留开庭时间、已安排好的开庭或合议因个人原因延期或延时（造成严重后果的，如其他外地仲裁员已发生实际开支费用，酌情多扣分）（扣1--6分）；', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1181', '8160', '00010004', '4、忘记开庭时间的（扣1--3分）；开庭忘记带材料的（扣1―5分）；', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1182', '8160', '00010005', '5、主动打电话询问案件程序情况的（加1--3分）；', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1183', '8160', '00010006', '6、对案情熟悉，庭前合议时能够提出初步意见或能提出拟调查事项的（不加分也不扣分）；\r\n对案情不熟悉，庭前合议时未能提出初步意见或能提出拟调查事项的，导致庭审效率不高（扣1--5分）；\r\n庭前能做好审理计划书或归纳争议点或作其他能提高庭审效率工作的（加1--10分并标注）；\r\n庭前没有认真阅卷，合议时一味附和，提不出自己意见的（扣1--10分）。', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1184', '8160', '0002', '庭审中', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1185', '8160', '00020001', '7、开庭因非正当原因迟到（扣1--3分）；', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1186', '8160', '00020002', '8、开庭着装太随意或开庭发言太随意引起当事人不满的（扣1--3分）；', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1187', '8160', '00020003', '9、没有预留足够庭审时间和合议时间（扣1--3分）；', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1188', '8160', '00020004', '10、庭审时仲裁员有接手机、发短信、随意离开开庭室等不当行为（扣1--3分）；', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1189', '8160', '00020005', '11、在开庭审理及仲裁程序中，表现出偏袒倾向，包括代替或变相代替一方向另一方\r\n质证、辩论、提出请求或明显具有诱导性问题的（该考察点请谨慎评价）（扣1--10分）；', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1190', '8160', '00020006', '12、庭审时心不在焉或打瞌睡（扣1--5分）；', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1191', '8160', '00020007', '13、不能控制庭审节奏，导致开庭时间拖延（扣1--5分）；', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1192', '8160', '00020008', '14、不能抓住案件实质问题进行调查的（扣1--5分）；', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1193', '8160', '00020009', '15、对仲裁程序和庭审程序不熟悉，引起当事人不满的（扣1--5分）；', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1194', '8160', '00020010', '16、不和其他两位仲裁员沟通，独断专行的（扣1－5分）；', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1195', '8160', '00020011', '17、仲裁员掌握庭审水平和技巧的（可以加分或减分，分值在－5至5分之间）；', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1196', '8160', '00020012', '18、调解时能促成当事人和解的（加1--5分并标注）。', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1197', '8160', '0003', '庭审后', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1198', '8160', '00030001', '19、在未经仲裁委员会同意，擅自对外发表关于仲裁案件的不当言论的（扣1--5分）；', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1199', '8160', '00030002', '20、不愿意起草裁决书又没有正当理由的（首席扣1--5分，边裁不扣分）；', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1200', '8160', '00030003', '21、在首席不写裁决书时主动承揽起草裁决书任务的（边裁加1--10分，首席不加分）；', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1201', '8160', '00030004', '22、对别人写的裁决书稿发表意见不及时（收到裁决书稿一个星期内没有发表意见的）或不负责（提不出任何理由，一味地附和）（扣1--10分）；', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1202', '8160', '00030005', '23、起草裁决书时间不算快（未因此导致裁决延期的）但质量高，无需作较大改动的（不加分也不扣分）；\r\n起草裁决书时间太晚，导致裁决延期的（扣1--10分）；\r\n起草裁决书时间太晚，导致裁决延期的，且质量不高的（扣1--15分）；\r\n起草裁决书时间快，但质量不高（扣1--5分）；\r\n承担起草裁决书的任务，但是找人代写（扣1--10分）；\r\n对秘书起草的裁决书没有认真审阅的（扣1--5分）；\r\n没有正当理由导致对裁决书核校意见反馈不及时的（收到核校意见一星期后才反馈）（扣1--5分）；\r\n对他人的中肯意见没有理由一味地不接受的（扣1--5分）。\r\n', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1203', '8160', '00030006', '24、裁决书发出去后由于仲裁员的过错产生偏差导致社会效果不好的（扣1--10分）。', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1204', '0057', '0000', '机构选定方式', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1205', '0057', '0001', '仲裁庭指定', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1206', '0057', '0002', '当事人协商指定', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1207', '0057', '0003', '仲裁庭授权秘书指定', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1208', '0058', '0000', '裁决类型（裁决书管理）', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1209', '0058', '0001', '一般裁决', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1210', '0058', '0002', '多数/首仲裁决', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1211', '0058', '0003', '和解裁决', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1212', '0058', '0004', '撤案', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1213', '0059', '0000', '裁决书起草类型--裁决书管理', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1214', '0059', '0001', '起草案情', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1215', '0059', '0002', '仲裁庭意见', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1216', '0059', '0003', '完整裁决书', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1217', '0059', '0004', '撤案决定书', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1218', '8141', '0012', '主任', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1219', '0043', 'ZZZ', '无', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1220', '0041', '0009', '金融规则3人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1221', '0041', '0010', '金融规则1人', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1222', '0007', '0003', '实习律师', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1223', '9019', '0000', '行业', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1224', '9019', '0001', '农林牧渔业', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1225', '9019', '0002', '采矿和采石业', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1226', '9020', '0000', '合同类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1227', '9020', '0001', '合同类型一', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1228', '9020', '0002', '合同类型二', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1229', '9021', '0005', '0.9', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1230', '9021', '0006', '0.8', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1231', '9021', '0007', '0.7', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1232', '9022', '0000', '仲裁员报酬——裁决书类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1233', '9022', '0001', '完整裁决书', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1234', '9022', '0002', '仲裁庭意见', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1235', '9022', '0003', '中间裁决、部分裁决', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1236', '9023', '0000', '裁决书评价', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1237', '9023', '0001', 'A  很好', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1238', '9023', '0002', 'B  较好', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1239', '9023', '0003', 'C  一般', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1240', '9023', '0004', 'D  差', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1241', '9024', '0000', '因仲裁员原因延长裁限情况', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1242', '9024', '0001', 'B  一次', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1243', '9024', '0002', 'C  两次', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1244', '9024', '0003', 'D  三次', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1245', '9024', '0004', 'E  三次以上', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1246', '9025', '0000', '仲裁员违反《仲裁员行为考察规定》第十条任一款', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1247', '9025', '0001', 'C  情节较轻，未造成较大影响', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1248', '9025', '0002', 'D  情节较重，造成较大影响', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1249', '9025', '0003', 'E  情节特别严重，造成恶劣影响，完全扣除绩效考核报酬。', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1250', '9026', '0000', '仲裁员绩效报酬评价', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1251', '9026', '0001', 'A  100%', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1252', '9026', '0002', 'B  75%', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1253', '9026', '0003', 'C  50%', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1254', '9026', '0004', 'D  25%', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1255', '9026', '0005', 'E  0%', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1256', '9021', '0000', '仲裁员报酬调整系数', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1257', '9021', '0001', '1.3', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1258', '9021', '0002', '1.2', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1259', '9021', '0003', '1.1', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1260', '9021', '0004', '1', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1261', '0059', '0005', '中间裁决、部分裁决', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1262', '0007', '0004', '律师助理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1263', '0002', '0006', '服务合同', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1264', '0002', '0007', '担保合同类', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1265', '0002', '0008', '知识产权类', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1266', '0002', '0009', '其他常用合同类', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1267', '0002', '00040006', '建设工程装饰装修合同', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1268', '0002', '00040007', '其他建设工程类合同', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1269', '0002', '00060001', '电信服务合同', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1270', '0002', '00060008', '教育培训合同', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1271', '0002', '00060009', '物业服务合同', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1272', '0002', '00060010', '其他服务合同', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1273', '0002', '00070001', '保证合同', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1274', '0002', '00070002', '抵押合同', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1275', '0002', '00070003', '质押合同', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1276', '0002', '00070004', '其他担保合同', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1277', '0002', '00080001', '著作权合同', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1278', '0002', '00080002', '商标合同', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1279', '0002', '00080003', '专利合同', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1280', '0002', '00080004', '商业秘密合同', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1281', '0002', '00080005', '非专利技术合同', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1282', '0002', '00080006', '特许经营合同', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1283', '0002', '00080007', '其他知识产权类合同', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1284', '0002', '00090001', '一般租赁合同（非房地产类租赁）', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1285', '0002', '00090002', '融资租赁合同', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1286', '0002', '00090003', '借款合同（非金融类）', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1287', '0002', '00090004', '承揽合同', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1288', '0002', '00090005', '运输合同', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1289', '0002', '00090006', '保管、仓储合同', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1290', '0002', '00090007', '行纪、居间合同', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1291', '0002', '00090008', '委托合同', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1292', '0002', '00090009', '展览合同', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1293', '0002', '00090010', '劳务（雇佣）合同', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1294', '0002', '00090011', '拍卖合同', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1295', '0002', '00090012', '典当合同', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1296', '0002', '00090013', '其他常用合同', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1297', '9019', '00010001', '农林牧渔业', '', '0001', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1298', '9019', '00010002', '小学', '', '0001', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1299', '9019', '00020001', '采矿和采石业', '', '0002', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1300', '9019', '0003', '制造业', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1301', '9019', '00030001', '食品、饮料制造', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1302', '9019', '00030002', '烟草制品制造', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1303', '9019', '00030003', '纺织品、服装制造', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1304', '9019', '00030004', '皮革和相关产品制造', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1305', '9019', '00030005', '木材、木材制品及软木制品的制造(包括家具)、草编制品及编织材料物品的制造', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1306', '9019', '00030006', '纸和纸制品制造', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1307', '9019', '00030007', '印刷及与印刷相关服务', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1308', '9019', '00030008', '焦炭和精炼石油产品制造', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1309', '9019', '00030009', '化学品及化学制品制造', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1310', '9019', '00030010', '基本医药产品和医药制剂制造', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1311', '9019', '00030011', '橡胶和塑料制品制造', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1312', '9019', '00030012', '钢铁、有色金属制造与铸造', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1313', '9019', '00030013', '其他金属制品制造（机械设备除外）', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1314', '9019', '00030014', '计算机、电子产品和光学产品的制造', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1315', '9019', '00030015', '电力设备的制造', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1316', '9019', '00030016', '汽车、挂车、半挂车等运输设备制造', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1317', '9019', '00030017', '机械和设备的修理和安装', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1318', '9019', '00030018', '其他制造业', '', '0003', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1319', '9019', '0004', '电、煤气、蒸汽供应', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1320', '9019', '00040001', '电、煤气、蒸汽供应', '', '0004', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1321', '9019', '0005', '供水、污水处理、废物回收处理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1322', '9019', '00050001', '供水、污水处理、废物回收处理', '', '0005', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1323', '9019', '0006', '建筑业', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1324', '9019', '00060001', '房屋及土木工程建设', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1325', '9019', '00060002', '建筑设备安装', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1326', '9019', '00060003', '建筑装修和装饰', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1327', '9019', '00060004', '其他建筑业', '', '0006', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1328', '9019', '0007', '批发和零售业', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1329', '9019', '00070001', '汽车销售、修理与保养', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1330', '9019', '00070002', '批发贸易（汽车除外）', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1331', '9019', '00070003', '店铺零售贸易（汽车除外）', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1332', '9019', '00070004', '通过邮购和因特网进行的零售', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1333', '9019', '00070005', '其他批发和零售业', '', '0007', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1334', '9019', '0008', '运输、储存和邮政业', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1335', '9019', '00080001', '海陆空运输', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1336', '9019', '00080002', '邮政和邮递', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1337', '9019', '00080003', '运输与仓储等附属活动', '', '0008', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1338', '9019', '0009', '酒店与餐饮业', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1339', '9019', '00090001', '酒店与餐饮业', '', '0009', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1340', '9019', '0010', '信息和通信业', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1341', '9019', '00100001', '出版活动', '', '0010', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1342', '9019', '00100002', '影视作品制作与出品', '', '0010', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1343', '9019', '00100003', '广播电视', '', '0010', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1344', '9019', '00100004', '电信服务', '', '0010', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1345', '9019', '00100005', '门户网站等信息服务', '', '0010', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1346', '9019', '00100006', '计算机软件设计及服务', '', '0010', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1347', '9019', '00100007', '其他信息和通信业', '', '0010', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1348', '9019', '0011', '金融业', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1349', '9019', '00110001', '银行', '', '0011', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1350', '9019', '00110002', '证券', '', '0011', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1351', '9019', '00110003', '保险', '', '0011', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1352', '9019', '00110004', '信托', '', '0011', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1353', '9019', '00110005', '基金', '', '0011', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1354', '9019', '00110006', '期货', '', '0011', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1355', '9019', '00110007', '金融租赁', '', '0011', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1356', '9019', '00110008', '金融混业经营', '', '0011', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1357', '9019', '0012', '房地产业', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1358', '9019', '00120001', '房地产开发经营', '', '0012', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1359', '9019', '00120002', '物业管理', '', '0012', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1360', '9019', '00120003', '房地产销售中介', '', '0012', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1361', '9019', '0013', '专业服务、科学和技术活动', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1362', '9019', '00130001', '法律、会计及管理等专业服务', '', '0013', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1363', '9019', '00130002', '建筑工程技术咨询服务', '', '0013', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1364', '9019', '00130003', '科学研究与发展', '', '0013', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1365', '9019', '00130004', '广告业和市场调研', '', '0013', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1366', '9019', '00130005', '其他专业、科学和技术活动', '', '0013', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1367', '9019', '0014', '商务辅助活动', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1368', '9019', '00140001', '出租和租赁活动', '', '0014', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1369', '9019', '00140002', '就业活动', '', '0014', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1370', '9019', '00140003', '旅行社、旅游经营者、预订服务及相关活动', '', '0014', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1371', '9019', '00140004', '调查和安全保卫活动', '', '0014', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1372', '9019', '00140005', '为楼宇和院落景观活动提供的服务', '', '0014', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1373', '9019', '00140006', '办公室行政管理、办公支持和其他企业辅助活动', '', '0014', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1374', '9019', '00140007', '其他商务辅助服务活动', '', '0014', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1375', '9019', '0015', '教育', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1376', '9019', '00150001', '教育', '', '0015', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1377', '9019', '0016', '医疗与护理', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1378', '9019', '00160001', '医疗与护理', '', '0015', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1379', '9019', '0017', '文化艺术、体育和娱乐业', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1380', '9019', '00170001', '文化艺术、体育和娱乐业', '', '0015', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1381', '9019', '0018', '其他服务业', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1382', '9019', '00180001', '其他服务业', '', '0018', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1383', '90270000', '0000', '报酬发放税种', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1384', '90270002', '0.033', '个人所得税2%(0.033)', '', '', '9', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1385', '90270001', '0.05', '营业税5%(0.05)', '', '', '2', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1386', '90270005', '0.005', '营业税附加12%(0.005)', '', '', '4', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1387', '0031', '0009', '当事人多交仲裁费', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1388', '90270004', '0.006', '营业税附加12% (0.006)', '', '', '3', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1389', '90270003', '0.015', '个人所得税(0.015)', '', '', '8', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1390', '90270006', '0.03*0.07', '城建税', '', '', '5', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1391', '90270007', '0.03*0.03', '教育费附加', '', '', '6', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1392', '90270008', '0.03*0.02', '地方教育费附加', '', '', '7', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1393', '8135', '0005', '程序上的决定', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1394', '9014', '0006', '因撤案等原因无需执行', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1395', '8143', '0006', 'SCIA规则', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1397', '0004', '0006', '华南国仲', '', '', '0', 'Y', 'N');
INSERT INTO `dictionary` VALUES ('1399', '0004', '0006', '深圳国际仲裁院', '', '', '1', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1400', '0004', '0007', '华南国仲', '', '', '1', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1401', '8170', '0000', '仲裁员类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1402', '8170', '0001', '首席仲裁员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1403', '8170', '0002', '独任仲裁员', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1404', '8133', '0003', '华南国际经济贸易仲裁委员会', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1405', '8133', '0004', '深圳国际仲裁院', '', '', '1', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1407', '9019', '9999', '自然人', '', '', '9999', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1408', '9019', '999901', '自然人', '', '9999', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1409', '8201', '0000', '银行类别', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1410', '8201', '0001', '本地', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1411', '8201', '0002', '外地', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1412', '8201', '0003', '中行本地', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1413', '8201', '0004', '中行外地', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1414', '8201', '0005', '非中国银行', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1415', '0050', '0101', '住宿', '', '0091', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1416', '0050', '9203', '机票_开庭', '', '0092', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1417', '0050', '9205', '交通费_开庭', '', '0092', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1418', '0050', '9207', '火车_开庭', '', '0092', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1419', '0050', '9209', '市内交通_开庭', '', '0092', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1420', '0050', '9215', '其他_开庭', '', '0092', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1421', '0050', '9253', '机票_开庭返程', '', '0092', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1422', '0050', '9255', '交通费_开庭返程', '', '0092', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1423', '0050', '9257', '火车_开庭返程', '', '0092', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1424', '0050', '9259', '市内交通_开庭返程', '', '0092', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1425', '8202', '0000', '其它报酬发放类别', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1426', '8202', '0001', '发放', '', '', '0', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1431', '90270009', '0.03', '增值税3%', '', '', '1', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1427', '0060', '0000', '开票类型', '', '', '0', 'N', 'Y');
INSERT INTO `dictionary` VALUES ('1428', '0060', '0001', '收据', '', '', '1', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1429', '0060', '0002', '专票', '', '', '2', 'Y', 'Y');
INSERT INTO `dictionary` VALUES ('1430', '0060', '0003', '普票', '', '', '3', 'Y', 'Y');
INSERT INTO `menus` VALUES ('57', '0001', '001', '系统维护', '', '', '', '0');
INSERT INTO `menus` VALUES ('58', '0001', '001002', '用户信息管理', '/user/list', '|user|ur|duty|', '', '001');
INSERT INTO `menus` VALUES ('380', '0002', '003', '案件查询', '', '', '', '0');
INSERT INTO `menus` VALUES ('381', '0002', '003001', '案件基本情况查询', '/case_query1/list_1', '', '|case_query1/list_1|', '003');
INSERT INTO `menus` VALUES ('473', '0003', '0031', '退费确认', '/should_refund_check2/list', '|should_refund_check2|', '', '0');
INSERT INTO `menus` VALUES ('231', '0002', '001', '咨询案件', '', '', '', '0');
INSERT INTO `menus` VALUES ('232', '0002', '001002', '咨询案件管理', '/case_consultation/list', '|case_consultation|region_select|', '', '001');
INSERT INTO `menus` VALUES ('435', '0006', '001', '日常办公', '', '', '', '0');
INSERT INTO `menus` VALUES ('436', '0006', '001001', '仲裁庭预订_月历表', '/book/arbitroom_book', '|book|', '', '001');
INSERT INTO `menus` VALUES ('236', '0001', '001001', '系统权限维护', '/page/list', '|page|', '', '001');
INSERT INTO `menus` VALUES ('359', '0002', '002006010', '文书签字', '/instrument/instrument_list', '|instrument|', '', '002');
INSERT INTO `menus` VALUES ('360', '0002', '002006008', '仲裁员评价', '/evaluate/list', '|evaluate|', '', '002');
INSERT INTO `menus` VALUES ('361', '0002', '0060001', '案件收费快算', '/fare/fare_list', '|fare|', '', '006');
INSERT INTO `menus` VALUES ('362', '0002', '0060002', '案件收费方法', '', '', '', '006');
INSERT INTO `menus` VALUES ('363', '0002', '01', '国内案件费用表', '/fare/internal ', '', '', '0060002');
INSERT INTO `menus` VALUES ('357', '0002', '002015', '案件助理变更（助理使用）', '/clerk_change/list', '|clerk_change|', '', '002');
INSERT INTO `menus` VALUES ('358', '0003', '004', '案件助理变更(处长使用)', '/clerk_change_cz/list', '|clerk_change_cz|', '', '0');
INSERT INTO `menus` VALUES ('557', '8000', '0219', '当事人国别统计', '/region_total/list', '', '|region_total/list|region_total/list_a|', '02');
INSERT INTO `menus` VALUES ('558', '8000', '0220', '当事人地区统计', '/region_total/list_2', '|region_select|', '|region_total/list_2|region_total/list_2a|region_total/list_2b|region_total/list_self|', '02');
INSERT INTO `menus` VALUES ('559', '8000', '0221', '广东省当事人统计', '/region_total/list_3', '', '|region_total/list_3|region_total/list_3a|region_total/list_self|', '02');
INSERT INTO `menus` VALUES ('560', '8000', '0222', '国内各省当事人统计', '/region_total/list_4', '', '|region_total/list_4|region_total/list_4a|region_total/list_self|', '02');
INSERT INTO `menus` VALUES ('522', '8000', '01', '案件查询', '', '', '', '0');
INSERT INTO `menus` VALUES ('523', '8000', '0101', '咨询工作日志查询', '/case_query1/list_12', '', '|case_query1/list_12|', '01');
INSERT INTO `menus` VALUES ('524', '8000', '0102', '案件基本情况查询', '/case_query1/list_31', '', '|case_query1/list_31|every_casebase/every_list|', '01');
INSERT INTO `menus` VALUES ('525', '8000', '0103', '仲裁参与人查询', '/case_query1/list_32 ', '', '|case_query1/list_32|', '01');
INSERT INTO `menus` VALUES ('526', '8000', '0104', '按仲裁程序查询', '/case_query1/list_33', '', '|case_query1/list_33|', '01');
INSERT INTO `menus` VALUES ('527', '8000', '0105', '按时间查询', '/case_query1/list_34', '', '|case_query1/list_34|', '01');
INSERT INTO `menus` VALUES ('529', '8000', '0107', '申请人、代理人信息查询', '/case_query1/list_38', '', '|case_query1/list_38|', '01');
INSERT INTO `menus` VALUES ('718', '0004', '001001', '仲裁庭预订_月历表', '/book/arbitroom_book', '|book|', '', '001');
INSERT INTO `menus` VALUES ('354', '0002', '002000001', '争议金额', '/case_amount/list', '|case_amount|', '', '002');
INSERT INTO `menus` VALUES ('355', '0002', '00200504', '中间(部分)裁决', '/interim/interim_list', '|interim|', '', '002005');
INSERT INTO `menus` VALUES ('356', '0002', '002005041', '管辖权异议申请', '/jurisdiction/jurisdiction_list', '|jurisdiction|', '', '002005');
INSERT INTO `menus` VALUES ('555', '8000', '0217', '仲裁员回避件数', '/census3/list3_13', '|census3|', '', '02');
INSERT INTO `menus` VALUES ('556', '8000', '0218', '补充、更正裁决统计', '/census3/list3_14', '|census3|', '', '02');
INSERT INTO `menus` VALUES ('338', '0002', '000119', '秘书处例会纪要', '/regular_meeting/list_regular_meeting', '|regular_meeting|', '', '000101');
INSERT INTO `menus` VALUES ('719', '0002', '00010202', '发文查询', '/case_doc/doc_search', '|case_doc|', '', '000102');
INSERT INTO `menus` VALUES ('694', '0002', '002005042', '专家咨询会', '/expert_meeting/list_expert_meeting', '|expert_meeting|', '', '002005');
INSERT INTO `menus` VALUES ('333', '0002', '001003', '历史案件', '/history/list', '|history|', '', '001');
INSERT INTO `menus` VALUES ('690', '0009', '001010', '专家聘用管理', '', '', '', '001');
INSERT INTO `menus` VALUES ('691', '0009', '0010101', '专家名单', '/expertconsult/expertconsult_list', '|expertconsult|', '', '001010');
INSERT INTO `menus` VALUES ('415', '0009', '0010031', '仲裁员届信息查询', '/expire_check/list', '|expire_check|', '', '001');
INSERT INTO `menus` VALUES ('697', '0009', '0010104', '专家届信息查询', '/period_check/list', '|period_check|', '', '001010');
INSERT INTO `menus` VALUES ('709', '0014', '100002', '仲裁条款统计', '/report_total3/list4', '|report_total3|', '|every_casebase/every_list|', '1000');
INSERT INTO `menus` VALUES ('331', '0004', '008', '仲裁员帐号信息', '/account/list_account', '|account|', '', '0');
INSERT INTO `menus` VALUES ('692', '0009', '0010102', '专家解聘续聘管理', '/period/period_list', '|period|', '', '001010');
INSERT INTO `menus` VALUES ('238', '0002', '002001001', '申请人信息', '', '', '', '002001');
INSERT INTO `menus` VALUES ('239', '0002', '002001001001', '申请人', '/party/party_list', '|party|case_p|region_select|', '', '002001001');
INSERT INTO `menus` VALUES ('243', '0002', '002001001002', '代理人信息', '/party_agent/agent_list', '|party_agent|case_p|', '', '002001001');
INSERT INTO `menus` VALUES ('244', '0002', '002001001003', '申请人仲裁请求及事实理由', '/party_request/request_list', '|party_request|case_p||', '', '002001001');
INSERT INTO `menus` VALUES ('247', '0002', '002001001004', '申请人证人信息维护', '/party_witness/wit_list', '|party_witness|party_p|', '', '002001001');
INSERT INTO `menus` VALUES ('248', '0002', '002001001005', '反请求答辩', '/party_answer/answer_list', '|party_answer|party_p|', '', '002001001');
INSERT INTO `menus` VALUES ('249', '0002', '002', '办理案件', '/case_p/list', '', '', '0');
INSERT INTO `menus` VALUES ('250', '0002', '002003', '组庭管理', '', '', '', '002');
INSERT INTO `menus` VALUES ('251', '0002', '00200302', '组庭信息', '/caseorg/caseorg_list', '|caseorg|', '', '002003');
INSERT INTO `menus` VALUES ('255', '0002', '002004', '开庭管理', '', '', '', '002');
INSERT INTO `menus` VALUES ('256', '0002', '002004001', '开庭信息', '/sitting/sitting_list', '|sitting|', '', '002004');
INSERT INTO `menus` VALUES ('257', '0002', '006', '案件费用', '', '', '', '0');
INSERT INTO `menus` VALUES ('258', '0002', '006001', '应收费用', '/should_charge/case_list_1', '|should_charge|', '', '006');
INSERT INTO `menus` VALUES ('259', '0009', '001', '仲裁员管理', '', '', '', '0');
INSERT INTO `menus` VALUES ('260', '0009', '001001', '仲裁员查询', '/show_arbitman/list_arbitman', '|show_arbitman|', '', '001');
INSERT INTO `menus` VALUES ('261', '0009', '001002', '仲裁员信息维护', '/arbitman/list_arbitman', '|arbitman|region_select|', '', '001');
INSERT INTO `menus` VALUES ('262', '0009', '001003', '仲裁员解聘续聘', '/arbitmannow/list_arbitmannow', '|arbitmannow|', '', '001');
INSERT INTO `menus` VALUES ('263', '0009', '001004', '仲裁员拒绝', '/invite/list_invite', '|invite|', '', '001');
INSERT INTO `menus` VALUES ('264', '0009', '001005', '仲裁员信息统计', '', '', '', '001');
INSERT INTO `menus` VALUES ('265', '0009', '001006', '仲裁员评价', '', '', '', '001');
INSERT INTO `menus` VALUES ('266', '0009', '001007', '仲裁员培训', '', '', '', '001');
INSERT INTO `menus` VALUES ('267', '0009', '001006001', '仲裁员案内评价', '/appraise/list_arbitman_appraise', '|appraise|', '', '001006');
INSERT INTO `menus` VALUES ('115', '0001', '001003', '角色管理', '/role/list', '|role|', '', '001');
INSERT INTO `menus` VALUES ('701', '0003', '007001', '特殊终审', '/caseendlimit/list', '|caseendlimit|', '', '0');
INSERT INTO `menus` VALUES ('488', '0007', '1', '裁决书编号及上传', '/caseend_book2/case_list', '|caseend_book2|', '|every_casebase/every_list|', '0');
INSERT INTO `menus` VALUES ('377', '0002', '004001', '案件发文管理', '/case_doc/list1', '|case_doc|', '', '004');
INSERT INTO `menus` VALUES ('378', '0003', '005', '案件发文审批', '/doc_approval/list', '|doc_approval|', '', '0');
INSERT INTO `menus` VALUES ('364', '0002', '02', '涉外案件费用表', '/fare/abroad ', '', '', '0060002');
INSERT INTO `menus` VALUES ('365', '0002', '03', '金融案件费用表', '/fare/finance ', '', '', '0060002');
INSERT INTO `menus` VALUES ('366', '0002', '0060003', '案件费用减交', '/reduction/reduction_list', '|reduction|', '', '006');
INSERT INTO `menus` VALUES ('367', '0002', '0060004', '案件费用缓交', '/deferral/deferral_list', '|deferral|', '', '006');
INSERT INTO `menus` VALUES ('371', '0005', '005', '档案提交记录', '/seefile/list', '|seefile|case_p|', '', '0');
INSERT INTO `menus` VALUES ('372', '0005', '006', '档案查看记录', '/lookfile/list', '|lookfile|case_p|', '', '0');
INSERT INTO `menus` VALUES ('373', '0001', '001008', '格式函管理', '/docformat/docformat_list', '|docformat|', '', '001');
INSERT INTO `menus` VALUES ('374', '0002', '0020000002', '案件基本情况查看', '/casebase/list', '|casebase|', '', '002');
INSERT INTO `menus` VALUES ('416', '0009', '00100301', '在聘仲裁员', '/expire/list_expires', '|expire|', '', '001');
INSERT INTO `menus` VALUES ('325', '0001', '001006', '工作日管理', '/workday/workday_index', '|workday|', '', '001');
INSERT INTO `menus` VALUES ('485', '0002', '0001020', '仲裁庭管理', '/arbitroom/arbitroom_list', '|arbitroom|', '', '000101');
INSERT INTO `menus` VALUES ('324', '0002', '000106', '咨询工作日志', '/casepro/casepro_list', '|casepro|', '', '000101');
INSERT INTO `menus` VALUES ('368', '0002', '002500', '案件终审', '/case_end/list', '|case_end|', '', '002');
INSERT INTO `menus` VALUES ('315', '0002', '002006005', '案件延期', '/ampliation/ampliation_list', '|ampliation|', '', '002006');
INSERT INTO `menus` VALUES ('316', '0002', '002006006', '裁决书报校核', '/award/award_list', '|award|', '', '002006');
INSERT INTO `menus` VALUES ('714', '8000', '021500', '律师事务所统计', '/census3/list3_15', 'census3', '', '02');
INSERT INTO `menus` VALUES ('550', '8000', '0212', '争议金额统计', '/amount_total/list', '|amount_total|', '', '02');
INSERT INTO `menus` VALUES ('551', '8000', '0213', '结案案件平均时间统计', '/report_total4/list', '|report_total4|', '', '02');
INSERT INTO `menus` VALUES ('552', '8000', '0214', '撤案案件平均时间统计', '/report_total4/list_2', '|report_total4|', '', '02');
INSERT INTO `menus` VALUES ('321', '0001', '001005', '字典表管理', '/dictionary/dictionary_list', '|dictionary|', '', '001');
INSERT INTO `menus` VALUES ('322', '0002', '000101', '日常办公', '', '', '', '0');
INSERT INTO `menus` VALUES ('268', '0009', '001006002', '仲裁员案外评价', '/appraise/list_prize', '|appraise|', '', '001006');
INSERT INTO `menus` VALUES ('269', '0009', '001007001', '仲裁员参与情况', '/arbitman_session/list_arbitman_session', '|arbitman_session|', '', '001007');
INSERT INTO `menus` VALUES ('270', '0009', '001007002', '活动列表', '/arbitman_session/list_session_detail', '|arbitman_session|', '', '001007');
INSERT INTO `menus` VALUES ('271', '0004', '005', '收款信息维护', '/charge/list', '|charge|', '', '0');
INSERT INTO `menus` VALUES ('272', '0002', '002014', '案件合议', '/casecomment/casecomment_list', '|casecomment|', '', '002');
INSERT INTO `menus` VALUES ('273', '0002', '006002', '收款记录对应', '/charge_correspondence/charge_list', '|charge_correspondence|', '', '006');
INSERT INTO `menus` VALUES ('274', '0002', '006003', '案件收费明细信息对照', '/charge_correspondence_detail/charge_case_list', '|charge_correspondence_detail|', '', '006');
INSERT INTO `menus` VALUES ('275', '0002', '006004', '案件代收代支费用支出', '/expend_detail/list', '|expend_detail|case_p|', '', '006');
INSERT INTO `menus` VALUES ('276', '0002', '002007', '结案后处理', '', '', '', '002');
INSERT INTO `menus` VALUES ('277', '0002', '002007001', '撤销及不予执行情况', '/wind_up_case/backout_and_unrun', '|wind_up_case|', '', '002007');
INSERT INTO `menus` VALUES ('278', '0002', '002007002', '执行情况', '/wind_up_case/show_implement', '|wind_up_case|', '', '002007');
INSERT INTO `menus` VALUES ('279', '0002', '002007003', '重新审理', '/rehearing/list', '|rehearing|', '', '002007');
INSERT INTO `menus` VALUES ('280', '0002', '002007004', '反馈信息', '/wind_up_case/list_feedback', '|wind_up_case|', '', '002007');
INSERT INTO `menus` VALUES ('237', '0002', '002001', '当事人信息', '', '', '', '002');
INSERT INTO `menus` VALUES ('514', '0004', '021', '实际开支-仲裁员费用', '/arbitman_spend/case_list', '|arbitman_spend|disposal|', '', '0');
INSERT INTO `menus` VALUES ('282', '0002', '006006', '实际开支-仲裁庭', '/arbitcourt_spend/list', '|arbitcourt_spend|case_p|', '', '006');
INSERT INTO `menus` VALUES ('283', '0002', '006007', '案件其它支出', '/other_spend/list', '|other_spend|case_p|', '', '006');
INSERT INTO `menus` VALUES ('284', '0002', '006008', '案件退费', '/should_refund/case_list_1', '|should_refund|', '', '006');
INSERT INTO `menus` VALUES ('291', '0002', '002005', '其它', '', '', '', '002');
INSERT INTO `menus` VALUES ('292', '0002', '00200501', '保全管理', '/save/save_list', '|save|', '', '002005');
INSERT INTO `menus` VALUES ('293', '0002', '00200502', '仲裁中止与仲裁恢复', '/adjudgebrike/adjudgebrike_list', '|adjudgebrike|', '', '002005');
INSERT INTO `menus` VALUES ('294', '0002', '00200503', '检测(审计、鉴定)', '/detection/detection_list', '|detection|', '', '002005');
INSERT INTO `menus` VALUES ('296', '0002', '00200506', '其他', '/other/other_list', '|other|', '', '002005');
INSERT INTO `menus` VALUES ('297', '0002', '00200507', '联系记录', ' /contactrecord/contactrecord_list', '|contactrecord|', '', '002005');
INSERT INTO `menus` VALUES ('298', '0004', '006', '退费确认', '/should_refund_check/list', '|should_refund_check|', '', '0');
INSERT INTO `menus` VALUES ('299', '0002', '002001002', '被申请人信息', '', '', '', '002001');
INSERT INTO `menus` VALUES ('300', '0002', '002001002001', '被申请人', '/respondent/party_list', '|respondent|case_p|region_select|', '', '002001002');
INSERT INTO `menus` VALUES ('301', '0002', '002001002002', '代理人信息', '/respondent_agent/agent_list', '|respondent_agent|case_p|', '', '002001002');
INSERT INTO `menus` VALUES ('302', '0002', '002001002003', '被申请人答辩信息', '/respondent_request/request_list', '|respondent_request|case_p|', '', '002001002');
INSERT INTO `menus` VALUES ('303', '0002', '002001002004', '被申请人证人信息维护', '/respondent_witness/wit_list', '|respondent_witness|respondent_p|', '', '002001002');
INSERT INTO `menus` VALUES ('304', '0002', '002001002005', '反请求信息', '/respondent_answer/answer_list', '|respondent_answer|respondent_p|', '', '002001002');
INSERT INTO `menus` VALUES ('305', '0004', '007', '已确认的退费记录', '/should_refund_checked/list', '|should_refund_checked|', '', '0');
INSERT INTO `menus` VALUES ('306', '0003', '002', '收款记录回退', '/charge_recall/list', '|charge_recall|', '', '0');
INSERT INTO `menus` VALUES ('307', '0003', '003', '退费记录回退', '/refund_recall/list', '|refund_recall|', '', '0');
INSERT INTO `menus` VALUES ('308', '0002', '006009', '退费信息列表', '/refund_list/list', '|refund_list|', '', '006');
INSERT INTO `menus` VALUES ('309', '0001', '001004', '币种管理', '/money/list', '|money|', '', '001');
INSERT INTO `menus` VALUES ('310', '0002', '002006', '结案管理', '', '', '', '002');
INSERT INTO `menus` VALUES ('311', '0002', '002006001', '结案处理', '/caseend_book/caseendbook_list', '|caseend_book|repairarbit|addarbit|report|opposition|', '', '002006');
INSERT INTO `menus` VALUES ('370', '0005', '001', '拟归档案件', '/filing_up/list', '|filing_up|', '', '0');
INSERT INTO `menus` VALUES ('369', '0002', '002520', '档案提交', '/file_submit/list', '|file_submit|', '', '002');
INSERT INTO `menus` VALUES ('382', '0002', '004002', '案件收文管理', '/amail/list', '|amail|', '', '004');
INSERT INTO `menus` VALUES ('383', '0002', '003002', '仲裁参与人查询（自己）', '/case_query1/list_2', '', '|case_query1/list_2|', '003');
INSERT INTO `menus` VALUES ('384', '0002', '003003', '按仲裁程序查询', '/case_query1/list_3', '', '|case_query1/list_3|', '003');
INSERT INTO `menus` VALUES ('385', '0002', '003004', '按时间查询', '/case_query1/list_4', '', '|case_query1/list_4|', '003');
INSERT INTO `menus` VALUES ('386', '0002', '0031', '案件统计', '', '', '', '0');
INSERT INTO `menus` VALUES ('679', '8000', '0229', '案件分类统计', '/census/list', '|census|', '', '02');
INSERT INTO `menus` VALUES ('388', '0002', '003005', '按结案情况查询', '/case_query1/list_5', '', '|case_query1/list_5|', '003');
INSERT INTO `menus` VALUES ('389', '0002', '003008', '申请人、代理人信息查询', '/case_query1/list_8', '', '|case_query1/list_8|', '003');
INSERT INTO `menus` VALUES ('571', '9901', '002000001', '争议金额', '/case_amount/list', '|case_amount|', '', '002');
INSERT INTO `menus` VALUES ('570', '9901', '002006008', '仲裁员评价', '/evaluate/evaluate_list', '|evaluate|', '', '002');
INSERT INTO `menus` VALUES ('680', '0002', '08', '所有案件基本信息查询', '/case_query1/list_101', '', '|case_query1/list_101|', '003');
INSERT INTO `menus` VALUES ('393', '0002', '0032', '助理办案情况统计', '', '', '', '0');
INSERT INTO `menus` VALUES ('394', '0002', '0032001', '仲裁程序与结案类型统计', '/casetype_endtype_count/list', '|casetype_endtype_count|', '', '0032');
INSERT INTO `menus` VALUES ('396', '0002', '0032002', '结案类型统计', '/endtype_count/list', '|endtype_count|', '', '0032');
INSERT INTO `menus` VALUES ('397', '0002', '0032003', '案件数统计', '/casetype_count/list', '|casetype_count|', '', '0032');
INSERT INTO `menus` VALUES ('681', '0002', '008', '已归档案件数据（自己）', '/archive_self/list', '|archive_self|', '', '0');
INSERT INTO `menus` VALUES ('399', '0002', '0032004', '平均办案时间统计', '/casetype_endtype_workday_count/list', '|casetype_endtype_workday_count|', '', '0032');
INSERT INTO `menus` VALUES ('401', '0002', '003017', '助理的在办案件', '/case_query1/case_now_clerk', '|case_query1|', '|case_query1/case_now_clerk|', '003');
INSERT INTO `menus` VALUES ('402', '0004', '020', '费用统计', '', '', '', '0');
INSERT INTO `menus` VALUES ('403', '0004', '020001', '财务统计', '/finance/list1', '|finance|', '', '020');
INSERT INTO `menus` VALUES ('405', '0002', '0002', '工作提醒', '', '', '', '0');
INSERT INTO `menus` VALUES ('406', '0002', '0002001', '提醒', '/remind/list', '|remind|', '', '0002');
INSERT INTO `menus` VALUES ('407', '0002', '0002002', '未到期提醒', '/remind/will_list', '|remind|', '', '0002');
INSERT INTO `menus` VALUES ('408', '0002', '0002003', '历史提醒', '/remind/histroy_list', '|remind|', '', '0002');
INSERT INTO `menus` VALUES ('409', '0002', '0001021', '仲裁庭统计', '/census9/list9', '|census9|', '', '000101');
INSERT INTO `menus` VALUES ('685', '8000', '0230', '涉外案件主体类型统计', '/census22/list', '|census22|', '', '02');
INSERT INTO `menus` VALUES ('411', '0002', '00200000021', '案件基本情况修改', '/casebase/edit', '|casebase|', '', '002');
INSERT INTO `menus` VALUES ('412', '0001', '001009', '地区信息维护', '/region/r_main', '|region|', '', '001');
INSERT INTO `menus` VALUES ('414', '0001', '001010', '系统参数表信息维护', '/sys_arg/list', '|sys_arg|', '', '001');
INSERT INTO `menus` VALUES ('417', '0003', '010', '工作提醒', '', '', '', '0');
INSERT INTO `menus` VALUES ('418', '0003', '010001', '提醒', '/remind/list', '|remind|', '', '010');
INSERT INTO `menus` VALUES ('419', '0003', '010002', '未到期提醒', '/remind/will_list', '|remind|', '', '010');
INSERT INTO `menus` VALUES ('420', '0003', '010003', '历史提醒', '/remind/histroy_list', '|remind|', '', '010');
INSERT INTO `menus` VALUES ('438', '0006', '001003', '仲裁庭统计', '/census9/list9', '|census9|', '', '001');
INSERT INTO `menus` VALUES ('423', '0003', '011', '日常办公', '', '', '', '0');
INSERT INTO `menus` VALUES ('424', '0003', '011001', '仲裁庭预订_月历表', '/book_hotel/hotel', '|book_hotel|', '', '011');
INSERT INTO `menus` VALUES ('708', '0014', '100001', '案件基本情况查询', '/case_query1/list_31', '', '|case_query1/list_31|every_casebase/every_list|', '1000');
INSERT INTO `menus` VALUES ('426', '0003', '011003', '仲裁庭统计', '/census9/list9', '|census9|', '', '011');
INSERT INTO `menus` VALUES ('704', '0001', '001209', '案件综合信息查询', '/report_total2/list_2', '|report_total2|', '', '001');
INSERT INTO `menus` VALUES ('429', '0003', '011006', '咨询工作日志', '/casepro/casepro_list', '|casepro|', '', '011');
INSERT INTO `menus` VALUES ('430', '0003', '011007', '专家咨询委员会', '', '', '', '011');
INSERT INTO `menus` VALUES ('431', '0003', '011007001', '专家名单', '/expertconsult/expertconsult_list', '|expertconsult|', '', '011007');
INSERT INTO `menus` VALUES ('432', '0003', '011007002', '专家解聘续聘管理', '/period/period_list', '|period|', '', '011007');
INSERT INTO `menus` VALUES ('433', '0003', '011007002', '专家会议纪要', '/expert_meeting/list_expert_meeting', '|expert_meeting|', '', '011007');
INSERT INTO `menus` VALUES ('434', '0003', '011008', '秘书处例会纪要', '/regular_meeting/list_regular_meeting', '|regular_meeting|', '', '011');
INSERT INTO `menus` VALUES ('439', '0006', '001004', '宾馆预订_月历表', '/book_hotel2/hotel', '|book_hotel2|', '', '001');
INSERT INTO `menus` VALUES ('707', '0014', '1000', '咨询处查询统计', '', '', '', '0');
INSERT INTO `menus` VALUES ('441', '0006', '001006', '咨询工作日志', '/casepro/casepro_list', '|casepro|', '', '001');
INSERT INTO `menus` VALUES ('537', '0003', '006', '立案招回', '/place_recall/case_list', '|place_recall|', '', '0');
INSERT INTO `menus` VALUES ('538', '0003', '007', '终审招回', '/end_recall/case_list', '|end_recall|', '', '0');
INSERT INTO `menus` VALUES ('539', '8000', '0204', '业务数据统计', '/census3/list3_1', '|census3|', '', '02');
INSERT INTO `menus` VALUES ('540', '8000', '0205', '适用规则项目案件统计', '/census3/list3_2', '|census3|', '', '02');
INSERT INTO `menus` VALUES ('446', '0006', '001008', '秘书处例会纪要', '/regular_meeting/list_regular_meeting', '|regular_meeting|', '', '001');
INSERT INTO `menus` VALUES ('447', '0006', '002', '工作提醒', '', '', '', '0');
INSERT INTO `menus` VALUES ('448', '0006', '002001', '提醒', '/remind/list', '|remind|', '', '002');
INSERT INTO `menus` VALUES ('449', '0006', '002002', '未到期提醒', '/remind/will_list', '|remind|', '', '002');
INSERT INTO `menus` VALUES ('450', '0006', '002003', '历史提醒', '/remind/histroy_list', '|remind|', '', '002');
INSERT INTO `menus` VALUES ('490', '0002', '0060005', '案件退费调整', '/chargeback/chargeback_list', '|chargeback|', '', '006');
INSERT INTO `menus` VALUES ('451', '0004', '004', '币种管理', '/money/list', '|money|', '', '0');
INSERT INTO `menus` VALUES ('452', '0009', '001008', '仲裁员当事人查询', '/arbit_party/list', '|arbit_party|', '', '001');
INSERT INTO `menus` VALUES ('453', '0009', '001009', '仲裁员办案情况查询', '/arbit_case/list', '|arbit_case|', '', '001');
INSERT INTO `menus` VALUES ('638', '0005', '007', '查询', '', '', '', '0');
INSERT INTO `menus` VALUES ('639', '0005', '007001', '结案查询', '/census3/list3_62', '|census3|', '', '007');
INSERT INTO `menus` VALUES ('640', '0005', '007002', '撤案查询', '/census3/list3_72', '|census3|', '', '007');
INSERT INTO `menus` VALUES ('458', '0004', '002', '工作提醒', '', '', '', '0');
INSERT INTO `menus` VALUES ('459', '0004', '002001', '提醒', '/remind/list', '|remind|', '', '002');
INSERT INTO `menus` VALUES ('460', '0004', '002002', '未到期提醒', '/remind/will_list', '|remind|', '', '002');
INSERT INTO `menus` VALUES ('461', '0004', '002003', '历史提醒', '/remind/histroy_list', '|remind|', '', '002');
INSERT INTO `menus` VALUES ('641', '0005', '002', '已接收档案', '/filing_receive/list', '|filing_receive|', '', '0');
INSERT INTO `menus` VALUES ('553', '8000', '0215', '当事人与案件数量统计', '/census3/list3_11', '|census3|', '', '02');
INSERT INTO `menus` VALUES ('717', '0004', '001', '日常办公', '', '', '', '0');
INSERT INTO `menus` VALUES ('716', '0002', '003018', '仲裁参与人查询（所有人）', '/case_query1/list_32 ', '', '|case_query1/list_32|', '003');
INSERT INTO `menus` VALUES ('549', '8000', '0211', '仲裁员人案按时间统计', '/census3/list3_10', '|census3|', '|every_casebase/every_list|', '02');
INSERT INTO `menus` VALUES ('562', '8000', '02141', '人均结案时间统计', '/report_total4/list_3', '|report_total4|', '', '02');
INSERT INTO `menus` VALUES ('563', '8000', '0225', '提醒信息统计', '/remind_total/list', '|remind_total|remind|', '', '02');
INSERT INTO `menus` VALUES ('564', '8000', '0111', '未对应的收款信息', '/charge_correspondence/charge_list', '|charge_correspondence|', '', '01');
INSERT INTO `menus` VALUES ('572', '9901', '00200504', '中间(部分)裁决', '/interim/interim_list', '|interim|', '', '002005');
INSERT INTO `menus` VALUES ('472', '0002', '001001', '当前咨询案件', '/case_consultation2/list ', '|case_consultation2|region_select|', '', '001');
INSERT INTO `menus` VALUES ('474', '0003', '0032', '已确认退费记录', '/should_refund_checked2/list', '|should_refund_checked2|', '', '0');
INSERT INTO `menus` VALUES ('475', '0002', '00200001', '仲裁程序变更', '/aribitprog_change/case_list', '|aribitprog_change|', '', '002');
INSERT INTO `menus` VALUES ('476', '0003', '0033', '指定校核人员', '/check_staff/case_list', '|check_staff|', '', '0');
INSERT INTO `menus` VALUES ('477', '0002', '0001002', '仲裁庭预订_月历表', '/book/arbitroom_book', '|book|', '', '000101');
INSERT INTO `menus` VALUES ('568', '9901', '0020000003', '合同签订', '/compact/con_list', '|compact|', '', '002');
INSERT INTO `menus` VALUES ('569', '9901', '002006010', '文书签字', '/instrument/instrument_list', '|instrument|', '', '002');
INSERT INTO `menus` VALUES ('712', '0002', '002006007', '工时汇总(2013年03月01日之前)', '/remuneration11/list', '|remuneration11|remuneration12|', '', '002006');
INSERT INTO `menus` VALUES ('478', '0002', '0001031', '宾馆预订_月历表', '/book_hotel2/hotel', '|book_hotel2|', '', '000101');
INSERT INTO `menus` VALUES ('479', '0002', '00020001', '收款提醒', '/remind/list_2', '|remind|', '', '0002');
INSERT INTO `menus` VALUES ('480', '0004', '0020001', '收款记录信息提醒', '/remind/list_3', '|remind|', '', '002');
INSERT INTO `menus` VALUES ('481', '0001', '001011', '立案后删除', '/case_transfer/case_list', '|case_transfer|', '', '001');
INSERT INTO `menus` VALUES ('482', '0002', '000102', '案件收发文', '', '', '', '0');
INSERT INTO `menus` VALUES ('487', '0002', '00010201', '案件发文管理', '/case_doc/list1', '|case_doc|', '', '000102');
INSERT INTO `menus` VALUES ('484', '0002', '00010203', '案件收文管理', '/amail/list', '|amail|', '', '000102');
INSERT INTO `menus` VALUES ('489', '0002', '00200301', '仲裁员信息', '/caseorg_arbit/arbitman_list', '|caseorg_arbit|arbitmannow_select|', '', '002003');
INSERT INTO `menus` VALUES ('491', '0006', '003', '案件基本信息', '/case_query1/list_101', '', '|case_query1/list_101|', '0');
INSERT INTO `menus` VALUES ('493', '0002', '0002004', '欠费、多缴费案件信息列表', '/fees_query/list', '|fees_query|', '', '0002');
INSERT INTO `menus` VALUES ('494', '0002', '0002005', '审限到期案件', '/limit_query/list', '|limit_query|', '', '0002');
INSERT INTO `menus` VALUES ('495', '0004', '0051', '应收款信息查询', '/should_charge_query/list', '|should_charge_query|', '', '0');
INSERT INTO `menus` VALUES ('554', '8000', '0216', '管辖权决定数', '/census3/list3_12', '|census3|', '', '02');
INSERT INTO `menus` VALUES ('541', '8000', '0206', '特殊约定案件统计', '/census3/list3_3', '|census3|', '', '02');
INSERT INTO `menus` VALUES ('530', '8000', '0108', '将到期案件查询', '/case_query1/list_10', '', '|case_query1/list_10|', '01');
INSERT INTO `menus` VALUES ('503', '0002', '0012', '导出当事人、代理人信息', '/addi/list', '|addi|', '', '0');
INSERT INTO `menus` VALUES ('504', '0008', '012101', '案件基本情况查询', '/case_query1/list_101', '', '|case_query1/list_101|', '0');
INSERT INTO `menus` VALUES ('505', '0010', '001', '所有案件情况查询', '/case_query1/list_31', '', '|case_query1/list_31|', '0');
INSERT INTO `menus` VALUES ('506', '0002', '0030001', '咨询工作日志查询', '/case_query1/list_12', '', '|case_query1/list_12|', '003');
INSERT INTO `menus` VALUES ('542', '8000', '0207', '各开庭地案件数量统计', '/census3/list3_4', '|census3|', '', '02');
INSERT INTO `menus` VALUES ('510', '0004', '00501', '已确认收款信息', '/charge/list_1', '|charge|', '', '0');
INSERT INTO `menus` VALUES ('511', '0002', '0031001', '咨询工作日志统计', '/census/list2', '', '|census/list2|', '0031');
INSERT INTO `menus` VALUES ('512', '0002', '0031002', '咨询立案统计', '/case_query1/case_now_total', '', '|case_query1/case_now_total|', '0031');
INSERT INTO `menus` VALUES ('543', '8000', '0208', '中外籍仲裁员数量统计', '/census3/list3_5', '|census3|', '', '02');
INSERT INTO `menus` VALUES ('515', '0004', '009', '工作人员帐号信息', '/account/list_account_2', '|account|', '', '0');
INSERT INTO `menus` VALUES ('516', '0002', '0060061', '实际开支处理结果', '/disposal/list', '|disposal|', '', '006');
INSERT INTO `menus` VALUES ('567', '8000', '01092', '撤案查询', '/census3/list3_72', '|census3|', '', '01');
INSERT INTO `menus` VALUES ('531', '8000', '0109', '结案查询', '/census3/list3_62', '|census3|', '', '01');
INSERT INTO `menus` VALUES ('532', '8000', '0110', '助理的在办案件', '/case_query1/case_now_clerk2', '', '|case_query1/case_now_clerk2|', '01');
INSERT INTO `menus` VALUES ('533', '8000', '02', '案件统计', '', '', '', '0');
INSERT INTO `menus` VALUES ('534', '8000', '0201', '咨询工作日志统计', '/census/list2', '', '|census/list2|', '02');
INSERT INTO `menus` VALUES ('535', '8000', '0202', '咨询立案统计', '/case_query1/case_now_total', '', '|case_query1/case_now_total|', '02');
INSERT INTO `menus` VALUES ('536', '8000', '0203', '助理在办案件统计', '/case_query1/case_now_clerk2_total', '|case_query1|', '|case_query1/case_now_clerk2_total|', '02');
INSERT INTO `menus` VALUES ('573', '9901', '002005041', '管辖权异议申请', '/jurisdiction/jurisdiction_list', '|jurisdiction|', '', '002005');
INSERT INTO `menus` VALUES ('574', '9901', '002001001', '申请人信息', '', '', '', '002001');
INSERT INTO `menus` VALUES ('575', '9901', '002001001001', '申请人', '/party/party_list', '|party|case_p|region_select|', '', '002001001');
INSERT INTO `menus` VALUES ('576', '9901', '002001001002', '代理人信息', '/party_agent/agent_list', '|party_agent|case_p|', '', '002001001');
INSERT INTO `menus` VALUES ('577', '9901', '002001001003', '申请人仲裁请求及事实理由', '/party_request/request_list', '|party_request|case_p||', '', '002001001');
INSERT INTO `menus` VALUES ('578', '9901', '002001001004', '申请人证人信息维护', '/party_witness/wit_list', '|party_witness|party_p|', '', '002001001');
INSERT INTO `menus` VALUES ('579', '9901', '002001001005', '反请求信息维护', '/party_answer/answer_list', '|party_answer|party_p|', '', '002001001');
INSERT INTO `menus` VALUES ('580', '9901', '002', '办理案件', '/case_p/list', '', '|case_p/list|', '0');
INSERT INTO `menus` VALUES ('581', '9901', '002003', '组庭管理', '', '', '', '002');
INSERT INTO `menus` VALUES ('582', '9901', '002003001', '组庭信息', '/caseorg/caseorg_list', '|caseorg|arbitmannow_select|', '', '002003');
INSERT INTO `menus` VALUES ('583', '9901', '002004', '开庭管理', '', '', '', '002');
INSERT INTO `menus` VALUES ('584', '9901', '002004001', '开庭信息', '/sitting/sitting_list', '|sitting|', '', '002004');
INSERT INTO `menus` VALUES ('585', '9901', '006', '案件费用', '', '', '', '0');
INSERT INTO `menus` VALUES ('586', '9901', '006001', '应收费用', '/should_charge/case_list_1', '|should_charge|', '', '006');
INSERT INTO `menus` VALUES ('587', '9901', '0020000001', '案件进度', '/progress/list', '|progress|', '', '002');
INSERT INTO `menus` VALUES ('588', '9901', '004', '案件收发文', '', '', '', '0');
INSERT INTO `menus` VALUES ('589', '9901', '0060003', '案件费用减交', '/reduction/reduction_list', '|reduction|', '', '006');
INSERT INTO `menus` VALUES ('590', '9901', '0060004', '案件费用缓交', '/deferral/deferral_list', '|deferral|', '', '006');
INSERT INTO `menus` VALUES ('591', '9901', '0020000002', '案件基本情况查看', '/casebase/list', '|casebase|', '', '002');
INSERT INTO `menus` VALUES ('592', '9901', '002006005', '案件延期', '/ampliation/ampliation_list', '|ampliation|', '', '002006');
INSERT INTO `menus` VALUES ('594', '9901', '002014', '案件合议', '/casecomment/casecomment_list', '|casecomment|', '', '002');
INSERT INTO `menus` VALUES ('595', '9901', '006002', '收款记录对应', '/charge_correspondence/charge_list', '|charge_correspondence|', '', '006');
INSERT INTO `menus` VALUES ('596', '9901', '006003', '案件收费明细信息对照', '/charge_correspondence_detail/charge_case_list', '|charge_correspondence_detail|', '', '006');
INSERT INTO `menus` VALUES ('597', '9901', '006004', '案件代收代支费用支出', '/expend_detail/list', '|expend_detail|', '', '006');
INSERT INTO `menus` VALUES ('598', '9901', '002007', '结案后处理', '', '', '', '002');
INSERT INTO `menus` VALUES ('599', '9901', '002007001', '撤销及不予执行情况', '/wind_up_case/backout_and_unrun', '|wind_up_case|', '', '002007');
INSERT INTO `menus` VALUES ('600', '9901', '002007002', '执行情况', '/wind_up_case/show_implement', '|wind_up_case|', '', '002007');
INSERT INTO `menus` VALUES ('601', '9901', '002007004', '反馈信息', '/wind_up_case/list_feedback', '|wind_up_case|', '', '002007');
INSERT INTO `menus` VALUES ('602', '9901', '002001', '当事人信息', '', '', '', '002');
INSERT INTO `menus` VALUES ('603', '9901', '006006', '案件仲裁庭费用支出', '/arbitcourt_spend/list', '|arbitcourt_spend|', '', '006');
INSERT INTO `menus` VALUES ('604', '9901', '006007', '案件其它支出', '/other_spend/list', '|other_spend|', '', '006');
INSERT INTO `menus` VALUES ('605', '9901', '006019', '案件退费', '/should_refund/case_list_1', '|should_refund|', '', '006');
INSERT INTO `menus` VALUES ('606', '9901', '002005', '其它', '', '', '', '002');
INSERT INTO `menus` VALUES ('607', '9901', '00200501', '保全管理', '/save/save_list', '|save|', '', '002005');
INSERT INTO `menus` VALUES ('608', '9901', '00200502', '仲裁中止与仲裁恢复', '/adjudgebrike/adjudgebrike_list', '|adjudgebrike|', '', '002005');
INSERT INTO `menus` VALUES ('609', '9901', '00200503', '检测(审计、鉴定)', '/detection/detection_list', '|detection|', '', '002005');
INSERT INTO `menus` VALUES ('610', '9901', '00200505', '专家咨询', '/expert/expert_list', '|expert|', '', '002005');
INSERT INTO `menus` VALUES ('611', '9901', '00200506', '其他', '/other/other_list', '|other|', '', '002005');
INSERT INTO `menus` VALUES ('612', '9901', '00200507', '联系记录', ' /contactrecord/contactrecord_list', '|contactrecord|', '', '002005');
INSERT INTO `menus` VALUES ('613', '9901', '002001002', '被申请人信息', '', '', '', '002001');
INSERT INTO `menus` VALUES ('614', '9901', '002001002001', '被申请人', '/respondent/party_list', '|respondent|case_p|region_select|', '', '002001002');
INSERT INTO `menus` VALUES ('615', '9901', '002001002002', '代理人信息', '/respondent_agent/agent_list', '|respondent_agent|case_p|', '', '002001002');
INSERT INTO `menus` VALUES ('616', '9901', '002001002003', '被申请人仲裁请求及事实理由', '/respondent_request/request_list', '|respondent_request|case_p|', '', '002001002');
INSERT INTO `menus` VALUES ('617', '9901', '002001002004', '被申请人证人信息维护', '/respondent_witness/wit_list', '|respondent_witness|respondent_p|', '', '002001002');
INSERT INTO `menus` VALUES ('618', '9901', '002001002005', '反请求信息维护', '/respondent_answer/answer_list', '|respondent_answer|respondent_p|', '', '002001002');
INSERT INTO `menus` VALUES ('619', '9901', '006020', '退费信息列表', '/refund_list/list', '|refund_list|', '', '006');
INSERT INTO `menus` VALUES ('620', '9901', '002006', '结案管理', '', '', '', '002');
INSERT INTO `menus` VALUES ('621', '9901', '002006001', '结案处理', '/caseend_book/caseendbook_list', '|caseend_book|repairarbit|addarbit|report|opposition|', '', '002006');
INSERT INTO `menus` VALUES ('622', '9901', '004002', '案件收文管理', '/amail/list', '|amail|', '', '004');
INSERT INTO `menus` VALUES ('623', '9901', '00200000021', '案件基本情况修改', '/casebase/edit', '|casebase|', '', '002');
INSERT INTO `menus` VALUES ('624', '9901', '002006006', '裁决书报校核', '/award/award_list', '|award|', '', '002006');
INSERT INTO `menus` VALUES ('674', '9901', '002006011', '校核评价', '/award_judge/list', '|award_judge|', '', '002');
INSERT INTO `menus` VALUES ('625', '9901', '0060005', '案件费用减退', '/chargeback/chargeback_list', '|chargeback|', '', '006');
INSERT INTO `menus` VALUES ('626', '9901', '002003002', '案件仲裁员信息', '/caseorg_arbit/arbitman_list', '|caseorg_arbit|', '', '002003');
INSERT INTO `menus` VALUES ('628', '9901', '006018', '当事人承担实际开支', '/disposal/list', '|disposal|', '', '006');
INSERT INTO `menus` VALUES ('642', '0005', '003', '已归档案件', '/filing_archived/list', '|filing_archived|', '', '0');
INSERT INTO `menus` VALUES ('630', '0002', '000120', '仲裁资料', '/screen/list', '|screen|', '', '000101');
INSERT INTO `menus` VALUES ('631', '0003', '011009', '仲裁资料', '/screen/list', '|screen|', '', '011');
INSERT INTO `menus` VALUES ('632', '8000', '0226', '仲裁条款统计', '/report_total3/list4', '|report_total3|', '|every_casebase/every_list|', '02');
INSERT INTO `menus` VALUES ('636', '0002', '002004002', '开庭短信通知', '/sms_alert2/list', '|sms_alert2|', '', '002004');
INSERT INTO `menus` VALUES ('637', '0002', '002004003', '已发放开庭短信通知信息', '/sms_alert2/list_1', '|sms_alert2|', '', '002004');
INSERT INTO `menus` VALUES ('643', '0003', '008', '归档已接收案件回退', '/filing_racall/list', '|filing_racall|', '', '0');
INSERT INTO `menus` VALUES ('644', '0005', '008', '案件归档统计', '/archiv_total/list', '|archiv_total|', '', '0');
INSERT INTO `menus` VALUES ('645', '8000', '0227', '案件归档统计', '/archiv_total/list', '|archiv_total|', '', '02');
INSERT INTO `menus` VALUES ('646', '8000', '02161', '检测(审计、鉴定)统计', '/census3/list3_31', '|census3|', '', '02');
INSERT INTO `menus` VALUES ('647', '0004', '019', '案件查询', '', '', '', '0');
INSERT INTO `menus` VALUES ('648', '0004', '019001', '结案查询', '/census3/list3_62', '|census3|', '', '019');
INSERT INTO `menus` VALUES ('649', '0004', '019002', '撤案查询', '/census3/list3_72', '|census3|', '', '019');
INSERT INTO `menus` VALUES ('650', '8000', '01093', '延期案件查询', '/census3/list3_32', '|census3|', '', '01');
INSERT INTO `menus` VALUES ('651', '8000', '0106', '按结案情况查询', '/case_query1/list_35', '', '|case_query1/list_35|', '01');
INSERT INTO `menus` VALUES ('652', '8000', '02142', '按仲裁程序统计结案时间', '/census3/list3', '|census3|', '', '02');
INSERT INTO `menus` VALUES ('677', '0001', '001201', '历史upload', '/data_imp/index', '|data_imp|', '', '001');
INSERT INTO `menus` VALUES ('654', '8000', '0112', '中止案件查询', '/census3/list3_33', '|census3|', '', '01');
INSERT INTO `menus` VALUES ('663', '8000', '0228', '机构查询统计', '/org_total/list', '|org_total|', '', '02');
INSERT INTO `menus` VALUES ('661', '8000', '0223', '案件数统计', '/casetype_count/list', '|casetype_count|', '', '02');
INSERT INTO `menus` VALUES ('658', '0002', '00108', '机构', '/org/list', '|org|', '', '000101');
INSERT INTO `menus` VALUES ('660', '0002', '002006009', '机构评价', '/org_appraisal/list', '|org_appraisal|', '|org/new|org/create|', '002');
INSERT INTO `menus` VALUES ('667', '8000', '0113', '咨询案件费用', '/recevice_fee_sum/list', '|recevice_fee_sum|', '', '01');
INSERT INTO `menus` VALUES ('665', '0003', '009', '延期信息删除', '/casedelay_del/case_list_1', '|casedelay_del|', '', '0');
INSERT INTO `menus` VALUES ('666', '0011', '001', '校核评价', '/award_judge/list', '|award_judge|', '', '0');
INSERT INTO `menus` VALUES ('673', '9901', '002006009', '机构评价', '/org_appraisal/list', '|org_appraisal|', '|org/new|org/create|', '002');
INSERT INTO `menus` VALUES ('670', '0002', '09', '机构查询', '/org_total/list', '|org_total|', '', '003');
INSERT INTO `menus` VALUES ('676', '0001', '001202', '历史数据更新', '/data_old_t/list', '|data_old_t|arbitman_select|', '', '001');
INSERT INTO `menus` VALUES ('683', '0012', '001', '已归档案件数据（ALL）', '/archive_all/list', '|archive_all|', '', '0');
INSERT INTO `menus` VALUES ('682', '9901', '002006007', '结案处理创建', '/caseend_book2/case_list', '|caseend_book2|', '|every_casebase/every_list|', '002006');
INSERT INTO `menus` VALUES ('684', '8000', '0114', '专家会议案件查询', '/case_query1/expert_meeting_query', '', '|case_query1/expert_meeting_query|case_query1/expert_meeting_list|', '01');
INSERT INTO `menus` VALUES ('686', '0013', '001', '工作提醒', '', '', '', '0');
INSERT INTO `menus` VALUES ('687', '0013', '001001', '提醒', '/remind/list', '|remind|', '', '001');
INSERT INTO `menus` VALUES ('688', '0013', '001002', '未到期提醒', '/remind/will_list', '|remind|', '', '001');
INSERT INTO `menus` VALUES ('689', '0013', '001003', '历史提醒', '/remind/histroy_list', '|remind|', '', '001');
INSERT INTO `menus` VALUES ('696', '0009', '0010103', '在聘专家', '/period_expire/list_expires', '|period_expire|', '', '001010');
INSERT INTO `menus` VALUES ('698', '8000', '0115', '前一月数据统计', '/region_total/list_1', '|region_total|', '|region_total/list_1|', '01');
INSERT INTO `menus` VALUES ('699', '0004', '019003', '案件基本信息', '/case_query1/list_101', '', '|case_query1/list_101|', '019');
INSERT INTO `menus` VALUES ('715', '0003', '0034', '指定案件督办人', '/superintendent/case_list', '|superintendent|', '', '0');
INSERT INTO `menus` VALUES ('720', '8000', '0209', '当事人统计', '/census3/list33_8', '|census3|', '', '02');
INSERT INTO `menus` VALUES ('721', '0001', '001012', '规则收费办法配置', '/charge_fun/list', '|charge_fun|', '', '001');
INSERT INTO `menus` VALUES ('722', '0002', '0060000', '案件费用--案件收费快算--新', '/fare/fare_list_a', '|fare|', '', '006');
INSERT INTO `menus` VALUES ('723', '9001', '001', '工时汇总_3200', '', '', '', '0');
INSERT INTO `menus` VALUES ('724', '9001', '001001', '工时汇总_处长(2013年03月01日之前)', '/remuneration11_set/list', '|remuneration11_set|remuneration12_set|', '', '001');
INSERT INTO `menus` VALUES ('725', '9001', '001002', '报酬报表(2013年03月01日之前)', '/remuneration11_set/report', '|remuneration11_set|remuneration12_set|', '', '001');
INSERT INTO `menus` VALUES ('726', '9001', '001008', '校核工作统计', '/census3/list4', '|census3|', '', '001');
INSERT INTO `menus` VALUES ('727', '9001', '001009', '仲裁员评价加减分统计', '/add_less/list', '|add_less|', '', '001');
INSERT INTO `menus` VALUES ('728', '9001', '001005', '仲裁员评价信息查询', '/case_query1/list_50', '|case_query1|', '', '001');
INSERT INTO `menus` VALUES ('729', '9002', '001', '报酬_出纳_3200', '', '', '', '0');
INSERT INTO `menus` VALUES ('730', '9002', '001001', '办案其它报酬_案件', '/remuneration23_set/list', '|remuneration23_set|case_p|', '', '001');
INSERT INTO `menus` VALUES ('731', '9002', '001002', '办案其它报酬_独立维护', '/remuneration23_set2/list', '|remuneration23_set2|arbitmannow_select|', '', '001');
INSERT INTO `menus` VALUES ('732', '9002', '001003', '新案件报酬', '/extend/list', '|extend|', '', '001');
INSERT INTO `menus` VALUES ('733', '9002', '001004', '待发放报酬', '/t_extend/list', '|t_extend|', '', '001');
INSERT INTO `menus` VALUES ('734', '9002', '001007', '报酬发放信息', '/show_extend/list_extend_code', '|show_extend|', '', '001');
INSERT INTO `menus` VALUES ('735', '9003', '001', '财务查询统计_出纳_3200', '', '', '', '0');
INSERT INTO `menus` VALUES ('736', '9003', '001001', '案件费用统计', '/report_total2/list', '|report_total2|', '', '001');
INSERT INTO `menus` VALUES ('737', '9003', '001002', '受理案件仲裁条款及争议金额分析', '/report_total3/list', '|report_total3|', '', '001');
INSERT INTO `menus` VALUES ('738', '9003', '001003', '仲裁员费用情况', '/report_total2/list', '|report_total2|', '', '001');
INSERT INTO `menus` VALUES ('739', '9003', '001004', '仲裁员人案统计', '/census3/list3_9', '|census3|', '|every_casebase/every_list_2|', '001');
INSERT INTO `menus` VALUES ('740', '9003', '001005', '结案查询', '/census3/list_6', '|census3|', '', '001');
INSERT INTO `menus` VALUES ('741', '9003', '001006', '撤案查询', '/census3/list3_7', '|census3|', '', '001');
INSERT INTO `menus` VALUES ('742', '9003', '001007', '案件财务平衡表', '/finance_balance/case_list_1', '|finance_balance|', '', '001');
INSERT INTO `menus` VALUES ('743', '9003', '001008', '立结审案件数统计', '/census3/list3_34', 'census3', '', '001');
INSERT INTO `menus` VALUES ('744', '9003', '001009', '仲裁员评价加减分统计', '/add_less/list', '|add_less|', '', '001');
INSERT INTO `menus` VALUES ('745', '9003', '001010', '仲裁员评价信息查询', '/case_query1/list_50', '|case_query1|', '', '001');
INSERT INTO `menus` VALUES ('746', '9003', '001011', '前一月数据统计', '/region_total/list_1', '|region_total|', '', '001');
INSERT INTO `menus` VALUES ('747', '9004', '001', '会计_3200', '', '', '', '0');
INSERT INTO `menus` VALUES ('748', '9004', '001001', '案件费用统计', '/report_total2/list', '|report_total2|', '', '001');
INSERT INTO `menus` VALUES ('749', '9004', '001002', '结案查询', '/census3/list3_6', '|census3|', '', '001');
INSERT INTO `menus` VALUES ('750', '9004', '001003', '撤案查询', '/census3/list3_7', '|census3|', '', '001');
INSERT INTO `menus` VALUES ('751', '9005', '01319', '仲裁员人案统计', '/census3/list3_9', '|census3|', '|every_casebase/every_list|', '0');
INSERT INTO `menus` VALUES ('752', '0001', '001203', '仲裁员信息上传', '/data_arbitman_imp/index', '|data_arbitman_imp|', '', '001');
INSERT INTO `menus` VALUES ('753', '0001', '001204', '仲裁员数据更新', '/data_arbitman_old/list', '|data_arbitman_old|', '', '001');
INSERT INTO `menus` VALUES ('754', '9002', '001008', '本单位报酬', '/extend/list_1', '|extend|', '', '001');
INSERT INTO `menus` VALUES ('755', '9002', '001015', '本单位已发报酬', '/extend/list_2', '|extend|', '', '001');
INSERT INTO `menus` VALUES ('756', '9002', '001017', '已发放报酬查询', '/extend/search', '|extend|', '', '001');
INSERT INTO `menus` VALUES ('759', '0002', '002006011', '工时汇总(2013年03月01日之后)', '/remuneration12/list', '|remuneration12|remuneration11|', '', '002006');
INSERT INTO `menus` VALUES ('758', '9001', '001007', '拟归档案件', '/filing_up/list', '|filing_up|', '', '001');
INSERT INTO `menus` VALUES ('760', '9001', '001003', '工时汇总_处长(2013年03月01日之后)', '/remuneration12_set/list', '|remuneration12_set|remuneration11_set|', '', '001');
INSERT INTO `menus` VALUES ('761', '9002', '001005', '历史待处理_待发报酬', '/t_extend/history_list', '', '|t_extend/history_list|t_extend/recall_history|', '001');
INSERT INTO `menus` VALUES ('762', '9002', '001019', '在办案件仲裁员信息', '/census3/list3_16', '', '|census3/list3_16|', '001');
INSERT INTO `menus` VALUES ('764', '9002', '001009', '本单位待发放报酬', '/t_extend/list_2', '|t_extend|', '', '001');
INSERT INTO `menus` VALUES ('765', '9002', '001010', '本单位报酬发放信息', '/show_extend/list_extend_code_2', '|show_extend|', '', '001');
INSERT INTO `menus` VALUES ('766', '9002', '001031', '报酬短信提醒信息', '/sms_alert/list', '|sms_alert|', '', '001');
INSERT INTO `menus` VALUES ('767', '9002', '001032', '已发放报酬短信提醒信息', '/sms_alert/list_1', '|sms_alert|', '', '001');
INSERT INTO `menus` VALUES ('768', '9002', '001035', '仲裁员报酬发放汇总', '/extend/arbitman_sum', '', '|extend/arbitman_sum|extend/arbitman_sum_gxh|', '001');
INSERT INTO `menus` VALUES ('769', '9003', '001012', '案件费用统计——new', '/report_total2/list_a', '', '|report_total2/list_a|', '001');
INSERT INTO `menus` VALUES ('770', '0003', '00401', '支出费用确认', '/expend_detail_check2/list', '|expend_detail_check2|', '', '0');
INSERT INTO `menus` VALUES ('771', '0004', '006001', '费用支出确认', '/expend_detail_check/list', '|expend_detail_check|', '', '0');
INSERT INTO `menus` VALUES ('772', '0003', '002001', '支出记录召回', '/expend_detail_recall/list', '|expend_detail_recall|', '', '0');
INSERT INTO `menus` VALUES ('773', '0003', '00402', '已确认支出费用', '/expend_detail_checked2/list', '|expend_detail_checked2|', '', '0');
INSERT INTO `menus` VALUES ('774', '0004', '006002', '已确认支出', '/expend_detail_checked/list', '|expend_detail_checked|', '', '0');
INSERT INTO `menus` VALUES ('775', '8000', '011201', '上周咨询案件情况', '/recevice_fee_sum/list_1', '', '|recevice_fee_sum/list_1|', '01');
INSERT INTO `region` VALUES ('1', '001', '中国内地', '0', '0', '0001');
INSERT INTO `region` VALUES ('7', '001001', '广东省', '001', '0', '0001');
INSERT INTO `region` VALUES ('8', '001002', '北京市', '001', '12000', '0001');
INSERT INTO `region` VALUES ('9', '001003', '天津市', '001', '12000', '0001');
INSERT INTO `region` VALUES ('11', '005', '美国', '0', '0', '0001');
INSERT INTO `region` VALUES ('12', '006', '英国', '0', '0', '0001');
INSERT INTO `region` VALUES ('13', '007', '德国', '0', '0', '0001');
INSERT INTO `region` VALUES ('14', '008', '日本', '0', '0', '0001');
INSERT INTO `region` VALUES ('15', '009', '澳大利亚', '0', '0', '0001');
INSERT INTO `region` VALUES ('16', '00A', '英属开曼群岛', '0', '0', '0001');
INSERT INTO `region` VALUES ('17', '00B', '韩国', '0', '0', '0001');
INSERT INTO `region` VALUES ('18', '001004', '河北省', '001', '12000', '0001');
INSERT INTO `region` VALUES ('19', '001005', '山西省', '001', '0', '0001');
INSERT INTO `region` VALUES ('20', '001006', '内蒙古自治区', '001', '15000', '0001');
INSERT INTO `region` VALUES ('21', '001007', '河南省', '001', '10000', '0001');
INSERT INTO `region` VALUES ('22', '001008', '湖南省', '001', '8000', '0001');
INSERT INTO `region` VALUES ('23', '001009', '河北省', '001', '0', '0001');
INSERT INTO `region` VALUES ('24', '001010', '安徽省', '001', '0', '0001');
INSERT INTO `region` VALUES ('25', '001011', '福建省', '001', '8000', '0001');
INSERT INTO `region` VALUES ('26', '001012', '江苏省', '001', '10000', '0001');
INSERT INTO `region` VALUES ('27', '001013', '江西省', '001', '0', '0001');
INSERT INTO `region` VALUES ('28', '001014', '山东省', '001', '12000', '0001');
INSERT INTO `region` VALUES ('29', '001015', '上海市', '001', '10000', '0001');
INSERT INTO `region` VALUES ('30', '001016', '浙江省', '001', '10000', '0001');
INSERT INTO `region` VALUES ('31', '001017', '广西壮族自治区', '001', '8000', '0001');
INSERT INTO `region` VALUES ('32', '001018', '海南省', '001', '8000', '0001');
INSERT INTO `region` VALUES ('34', '001020', '四川省', '001', '10000', '0001');
INSERT INTO `region` VALUES ('35', '001021', '重庆市', '001', '10000', '0001');
INSERT INTO `region` VALUES ('36', '001022', '贵州省', '001', '0', '0001');
INSERT INTO `region` VALUES ('37', '001023', '西藏自治区', '001', '0', '0001');
INSERT INTO `region` VALUES ('38', '001024', '云南省', '001', '0', '0001');
INSERT INTO `region` VALUES ('39', '001025', '黑龙江省', '001', '15000', '0001');
INSERT INTO `region` VALUES ('40', '001026', '吉林省', '001', '15000', '0001');
INSERT INTO `region` VALUES ('41', '001027', '辽宁省', '001', '15000', '0001');
INSERT INTO `region` VALUES ('42', '001028', '陕西省', '001', '12000', '0001');
INSERT INTO `region` VALUES ('43', '001029', '宁夏回族自治区', '001', '0', '0001');
INSERT INTO `region` VALUES ('44', '001030', '青海省', '001', '0', '0001');
INSERT INTO `region` VALUES ('45', '001031', '新疆乌鲁木齐自治区', '001', '15000', '0001');
INSERT INTO `region` VALUES ('47', '001032', '甘肃省', '001', '0', '0001');
INSERT INTO `region` VALUES ('48', '001001001', '广东省深圳市', '001001', '0', '0001');
INSERT INTO `region` VALUES ('49', '001001002', '广东省广州市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('50', '001001003', '广东省韶关市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('51', '001001004', '广东省珠海市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('52', '001001005', '广东省汕头市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('53', '001001006', '广东省佛山市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('54', '001001007', '广东省江门市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('55', '001001008', '广东省湛江市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('56', '001001009', '广东省茂名市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('57', '001001010', '广东省肇庆市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('58', '001001011', '广东省惠州市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('59', '001001012', '广东省梅州市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('60', '001001013', '广东省汕尾市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('61', '001001014', '广东省河源市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('62', '001001015', '广东省阳江市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('63', '001001016', '广东省清远市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('64', '001001017', '广东省东莞市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('65', '001001018', '广东省中山市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('66', '001001019', '广东省潮州市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('67', '001001020', '广东省揭阳市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('68', '001001021', '广东省云浮市', '001001', '3000', '0001');
INSERT INTO `region` VALUES ('69', '00C', '瑞典', '0', '0', '0001');
INSERT INTO `region` VALUES ('70', '010', '法国', '0', '0', '0001');
INSERT INTO `region` VALUES ('71', '011', '荷兰', '0', '0', '0001');
INSERT INTO `region` VALUES ('72', '012', '泰国', '0', '0', '0001');
INSERT INTO `region` VALUES ('73', '013', '迪拜', '0', '0', '0001');
INSERT INTO `region` VALUES ('76', '015', '缅甸', '0', '0', '0001');
INSERT INTO `region` VALUES ('77', '016', '伊朗', '0', '0', '0001');
INSERT INTO `region` VALUES ('78', '017', '波兰', '0', '0', '0001');
INSERT INTO `region` VALUES ('79', '018', '芬兰', '0', '0', '0001');
INSERT INTO `region` VALUES ('80', '003', '澳门', '0', '4800', '0002');
INSERT INTO `region` VALUES ('81', '020', '捷克', '0', '0', '0001');
INSERT INTO `region` VALUES ('82', '021', '蒙古', '0', '0', '0001');
INSERT INTO `region` VALUES ('83', '022', '朝鲜', '0', '0', '0001');
INSERT INTO `region` VALUES ('84', '023', '印度', '0', '0', '0001');
INSERT INTO `region` VALUES ('85', '024', '也门', '0', '0', '0001');
INSERT INTO `region` VALUES ('87', '025', '约旦', '0', '0', '0001');
INSERT INTO `region` VALUES ('88', '026', '秘鲁', '0', '0', '0001');
INSERT INTO `region` VALUES ('89', '027', '埃及', '0', '0', '0001');
INSERT INTO `region` VALUES ('90', '028', '智利', '0', '0', '0001');
INSERT INTO `region` VALUES ('91', '029', '挪威', '0', '0', '0001');
INSERT INTO `region` VALUES ('92', '030', '南非', '0', '0', '0001');
INSERT INTO `region` VALUES ('93', '031', '利比亚', '0', '0', '0001');
INSERT INTO `region` VALUES ('94', '032', '新加坡', '0', '0', '0001');
INSERT INTO `region` VALUES ('95', '033', '俄罗斯', '0', '0', '0001');
INSERT INTO `region` VALUES ('96', '034', '意大利', '0', '0', '0001');
INSERT INTO `region` VALUES ('97', '035', '加拿大', '0', '0', '0001');
INSERT INTO `region` VALUES ('98', '036', '奥地利', '0', '0', '0001');
INSERT INTO `region` VALUES ('99', '037', '菲律宾', '0', '0', '0001');
INSERT INTO `region` VALUES ('100', '038', '比利时', '0', '0', '0001');
INSERT INTO `region` VALUES ('101', '039', '匈牙利', '0', '0', '0001');
INSERT INTO `region` VALUES ('102', '040', '孟加拉', '0', '0', '0001');
INSERT INTO `region` VALUES ('103', '041', '西班牙', '0', '0', '0001');
INSERT INTO `region` VALUES ('104', '042', '巴拿马', '0', '0', '0001');
INSERT INTO `region` VALUES ('105', '043', '以色列', '0', '0', '0001');
INSERT INTO `region` VALUES ('106', '044', '阿联酋', '0', '0', '0001');
INSERT INTO `region` VALUES ('108', '045', '新西兰', '0', '0', '0001');
INSERT INTO `region` VALUES ('109', '046', '阿根廷', '0', '0', '0001');
INSERT INTO `region` VALUES ('110', '047', '土尔其', '0', '0', '0001');
INSERT INTO `region` VALUES ('111', '048', '扎伊尔', '0', '0', '0001');
INSERT INTO `region` VALUES ('112', '049', '乌拉圭', '0', '0', '0001');
INSERT INTO `region` VALUES ('113', '050', '柬埔寨', '0', '0', '0001');
INSERT INTO `region` VALUES ('114', '051', '马来西亚', '0', '0', '0001');
INSERT INTO `region` VALUES ('115', '052', '澳大利亚', '0', '0', '0001');
INSERT INTO `region` VALUES ('116', '053', '保加利亚', '0', '0', '0001');
INSERT INTO `region` VALUES ('117', '054', '罗马尼亚', '0', '0', '0001');
INSERT INTO `region` VALUES ('118', '055', '南斯拉夫', '0', '0', '0001');
INSERT INTO `region` VALUES ('119', '056', '克罗地亚', '0', '0', '0001');
INSERT INTO `region` VALUES ('120', '057', '塞浦路斯', '0', '0', '0001');
INSERT INTO `region` VALUES ('121', '058', '巴基斯坦', '0', '0', '0001');
INSERT INTO `region` VALUES ('122', '059', '莫桑比克', '0', '0', '0001');
INSERT INTO `region` VALUES ('123', '060', '波利维亚', '0', '0', '0001');
INSERT INTO `region` VALUES ('124', '061', '斯里兰卡', '0', '0', '0001');
INSERT INTO `region` VALUES ('125', '062', '哥伦比亚', '0', '0', '0001');
INSERT INTO `region` VALUES ('126', '063', '英属维尔京', '0', '0', '0001');
INSERT INTO `region` VALUES ('127', '064', '印度尼西亚', '0', '0', '0001');
INSERT INTO `region` VALUES ('128', '065', '哈萨克斯坦', '0', '0', '0001');
INSERT INTO `region` VALUES ('129', '066', '列支敦士登', '0', '0', '0001');
INSERT INTO `region` VALUES ('130', '067', '乌兹别克斯', '0', '0', '0001');
INSERT INTO `region` VALUES ('131', '014', '瑞士', '0', '0', '0001');
INSERT INTO `region` VALUES ('132', '068', '丹麦', '0', '0', '0001');
INSERT INTO `region` VALUES ('133', '002', '香港', '0', '4800', '0002');
INSERT INTO `region` VALUES ('134', '0010081', '湖北省', '001', '8000', '0001');
INSERT INTO `region` VALUES ('136', '004', '台湾', '0', '5500', '0002');
INSERT INTO `region` VALUES ('137', '0151', '越南', '0', '0', '0001');
INSERT INTO `region` VALUES ('138', '0631', '英属百慕大', '0', '0', '0001');
INSERT INTO `region` VALUES ('139', '069', '阿尔及利亚', '0', '0', '0001');
INSERT INTO `region` VALUES ('140', '070', '爱尔兰', '0', '0', '0001');
INSERT INTO `region` VALUES ('141', '071', '沙特阿拉伯', '0', '0', '0001');
INSERT INTO `region` VALUES ('142', '072', '巴西', '0', '0', '0001');
INSERT INTO `region` VALUES ('143', '073', '尼日利亚', '0', '0', '0001');
INSERT INTO `region` VALUES ('144', '074', '萨摩亚', '0', '0', '0001');
INSERT INTO `roles` VALUES ('36', '0001', '1', '1');
INSERT INTO `urs` VALUES ('217', '1', '1');
INSERT INTO `urs` VALUES ('218', '1', '1');
INSERT INTO `urs` VALUES ('219', '1', '1');
INSERT INTO `urs` VALUES ('220', '1', '1');
INSERT INTO `urs` VALUES ('221', '1', '1');
INSERT INTO `urs` VALUES ('222', '1', '1');
INSERT INTO `urs` VALUES ('224', '1', '0001');
INSERT INTO `users` VALUES ('1', 'Y', '1', '1', 'admin', '1', '管理员', '1', '1', '1', null, null, '', '', null, '', '', '', '', 'Y', 'Y', '', null, '');
