/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50713
Source Host           : 127.0.0.1:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2016-10-02 14:55:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for apply_user
-- ----------------------------
DROP TABLE IF EXISTS `apply_user`;
CREATE TABLE `apply_user` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) NOT NULL COMMENT '账户',
  `password` varchar(40) NOT NULL COMMENT '??',
  `mobile` varchar(11) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `wechat` varchar(50) DEFAULT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `company_address` varchar(200) DEFAULT NULL,
  `invitation_code` varchar(100) DEFAULT NULL,
  `invited_code` varchar(100) DEFAULT NULL,
  `code_url` varchar(1000) DEFAULT NULL,
  `apply_type` int(1) DEFAULT '1',
  `department` varchar(100) DEFAULT NULL,
  `duties` varchar(100) DEFAULT NULL,
  `telphone` varchar(30) DEFAULT NULL,
  `user_name` varchar(200) DEFAULT NULL,
  `identity_card` varchar(50) DEFAULT NULL,
  `join_date` varchar(20) DEFAULT NULL,
  `num` int(10) DEFAULT '0',
  `user_level` int(10) NOT NULL DEFAULT '1',
  `num1` int(10) DEFAULT '0',
  `certification_state` int(10) DEFAULT '0' COMMENT '认证状态',
  `photograph_url` varchar(200) DEFAULT NULL COMMENT '上传图片地址',
  `qq` varchar(12) DEFAULT NULL COMMENT 'QQ号',
  `openid` varchar(100) DEFAULT NULL COMMENT '微信openID唯一标示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1954 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply_user
-- ----------------------------
INSERT INTO `apply_user` VALUES ('1', 'lch880815', '880815', '18329363871', '雷超', '2716309021@qq.com', '18329363871', '发开劳务派遣有限公司', '上海浦东新区秀沿路恒和中路1028号', '49TG5CV21447814832', '0n1sQ6v0', 'http://gys.gongren.com/user/registerPage?invitation_code=49TG5CV21447814832&&apply_type=1', '1', '业务部', '经理', '021-61525560', '', '', '2015-11-18 10:47:12', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1405', '666666', '111111', '13848494949', '李静', 'jdjd@qq.com', '', '他惹有神经莫名', '', 'VZYLJ73P1447669518', '1MpO47MG', 'http://gys.gongren.com/user/registerPage?invitation_code=VZYLJ73P1447669518', '1', '', '', '', '', '', '2015-11-16 18:25:18', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1409', '1690265828', '198357', '17715592610', '王城叶', '1690265828@qq.com', 'chengye414', '', '江苏省苏州市', 'K89EZVRW1447730745', 'GgkUl5UF', 'http://gys.gongren.com/user/registerPage?invitation_code=K89EZVRW1447730745', '2', '', '', '', '', '', '2015-11-17 11:25:45', '0', '1', '0', '0', '', '1690265828', null);
INSERT INTO `apply_user` VALUES ('1410', '群创', '090910', '13913397445', '黄树', '2280139743@qq.com', '', '', '', 'P2C5OF6X1447738264', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=P2C5OF6X1447738264', '2', '', '', '', '', '', '2015-11-17 13:31:04', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1411', '一心', '090910', '13913397445', '史绍璐', '2280139743@qq.com', '', '', '', 'YMU58D9Q1447738428', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=YMU58D9Q1447738428', '2', '', '', '', '', '', '2015-11-17 13:33:48', '0', '1', '0', '1', '/files/4d45482b-5883-4167-989e-36a8e70660e1}@98JP{G$6@$XNF{_~)4_5K.jpg', '', null);
INSERT INTO `apply_user` VALUES ('1412', 'zhongxinyuan1213', 'qwe123', '15659288581', '常女士', '3027323152@qq.com', 'jpxl789', '', '', 'KTDPQGLV1447738432', 'Qpxgw23J', 'http://gys.gongren.com/user/registerPage?invitation_code=KTDPQGLV1447738432', '2', '', '', '', '', '', '2015-11-17 13:33:52', '0', '1', '0', '1', '/files/f7704b7b-a996-4456-a99c-59852d8f6c52mmexport1447740731493.jpg', '3027323152', null);
INSERT INTO `apply_user` VALUES ('1413', '工人招聘网', '123456', '13616911536', '田小姐', '1416178962@qq.com', '', '人力资源', '', '5CQ8PZHB1447738964', '0n1sQ6v0', 'http://gys.gongren.com/user/registerPage?invitation_code=5CQ8PZHB1447738964', '1', '人事', '人事', '', '', '', '2015-11-17 13:42:44', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1414', '招募课01', '645865', '18262015498', '王主管', '645865651@qq.com', '', '苏州沃克电子科技有限公司', '江苏省苏州市吴中区木渎镇长江路南98号', 'PM4E5T8Q1447741273', '0n1sQ6v0', 'http://gys.gongren.com/user/registerPage?invitation_code=PM4E5T8Q1447741273', '1', '人事部', '主管', '0512-81661429', '', '', '2015-11-17 14:21:13', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1415', '397551830', '198919', '18612921989', '马老师', '397551830@qq.com', '18612921989', '北京八方顺达劳务派遣有限公司', '北京市丰台区小屯路', 'Y8HT2CIW1447741740', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=Y8HT2CIW1447741740', '1', '人力资源', '', '010-82121362', '', '', '2015-11-17 14:29:00', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1416', '1405927637', '199612', '15665125663', '蒋助理', '3340201841@QQ.com', '1352094108', '苏州工业园区景诺电子有限公司', '江苏省苏州市高新区', 'BUA8L4TV1447746419', '0n1sQ6v0', 'http://gys.gongren.com/user/registerPage?invitation_code=BUA8L4TV1447746419', '1', '人事部', '助理', '88964954', '', '', '2015-11-17 15:46:59', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1417', '测试001', 'Jiao11', '13458454646', 'up匿名', 'hhdhd@qq.com', '提体贴', '', '加Q灵敏婆婆也破也也破也', 'WPG2I7NF1447748837', '3ziDtBrn', 'http://gys.gongren.com/user/registerPage?invitation_code=WPG2I7NF1447748837', '2', '', '', '', '', '', '2015-11-17 16:27:17', '0', '1', '0', '1', '/files/e69bbefd-ee77-4c6a-8973-0fdf74a74079image.jpg', '6164648454', null);
INSERT INTO `apply_user` VALUES ('1418', '测试002', '111111', '13484537667', 'jiaohaitang', '646467@qq.com', '你仔细', '123133', '学习一下说也破在真谦虚无锡', '2OGAXKWC1447749935', '3ziDtBrn', 'http://gys.gongren.com/user/registerPage?invitation_code=2OGAXKWC1447749935', '2', '', '', '', '', '', '2015-11-17 16:45:35', '0', '1', '0', '0', '', '43你明明', null);
INSERT INTO `apply_user` VALUES ('1419', '5233', 'aHSZss', '15005176102', '周姗姗', '3082630186@qq.com', 'A13052877561', '', '南京市江宁区苏源大道', '5DJR9UXO1447750102', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=5DJR9UXO1447750102', '2', '', '', '', '', '', '2015-11-17 16:48:22', '0', '1', '0', '0', '', '3082630187', null);
INSERT INTO `apply_user` VALUES ('1420', '测试003', '111111', '13464964646', '刑警why婆儿滴定mix匿名orz所以想', '84554@qq.com', '87946949499787667676646464664664664646666966666663', 'XP明星哦咯嘻嘻嘻嘻XP我我是我去外婆呵呵1的1妈妈X5XP明明是你名字XP外婆咯咯倪敏1额1额XP', '56494994迥异我hmmm分泼洒7k7k破好我1哦1几斤提', 'XT3YF7JC1447751360', '3ziDtBrn', 'http://gys.gongren.com/user/registerPage?invitation_code=XT3YF7JC1447751360', '1', 'XP你宁愿去也行你名', '兴民一定要说也破也破', '029-55566396', '', '', '2015-11-17 17:09:20', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1676', '1232', '432', '13681857256', 'cont', 's@q.com', 'wx', 'name', '上海长宁区120', 'U6RRLAUt', 'grw', 'http://gys.gongren.com/user/registerPage?invitation_code=U6RRLAUt', '1', 'bumen ', '', '021', null, '', '2015/10/27 18:11:42', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1677', 'wsx', 'xsw', '13681857252', 'cont', '4@q.com', '', 'comname', '上海长宁区', 'xSriUNsg', 'U6RRLAUt', 'http://gys.gongren.com/user/registerPage?invitation_code=xSriUNsg', '1', '', '', '', null, '', '2015/10/27 19:09:32', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1678', '332e', '312', '13622225555', '3', 'w@q.c', '', '3', '上海长宁区', '4EYMrS2a', 'xSriUNsg', 'http://gys.gongren.com/user/registerPage?invitation_code=4EYMrS2a', '1', '', '', '', null, '', '2015/10/27 19:25:37', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1679', 'wwwx', 'xx', '13681857236', '陈峥', 'w@w.w', '微信号', '工人网', '上海长宁区5596', 'uXn4i5y3', 'U6RRLAUt', 'http://gys.gongren.com/user/registerPage?invitation_code=uXn4i5y3', '1', '网络部', '', '02188882236', null, '', '2015/10/28 17:41:54', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1680', 'xddd', '432', '15522336699', 'ss', '4@q.com', '', 'ss', '上海长宁区', 'Fc2AZUJ8', 'U6RRLAUt', 'http://gys.gongren.com/user/registerPage?invitation_code=Fc2AZUJ8', '1', '', '', '', null, '', '2015/10/28 17:43:07', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1681', 'ssxss', 'ss', '13682594415', 's', 's@q.com', '', 's', '上海长宁区', 'N24KP6TX', 'U6RRLAUt', 'http://gys.gongren.com/user/registerPage?invitation_code=N24KP6TX', '1', '', '', '', null, '', '2015/10/28 17:43:57', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1682', 'xsddd', 'x', '13652996635', 's', 's@q.com', '', 'ss', '上海长宁区', 'xPQgGUNr', 'U6RRLAUt', 'http://gys.gongren.com/user/registerPage?invitation_code=xPQgGUNr', '1', '', '', '', null, '', '2015/10/28 17:55:17', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1683', 'dddsaddd', '432s', '13499556622', '1', 'q@q.c', '', '12', '上海长宁区', '4aBlWIBN', '123', 'http://gys.gongren.com/user/registerPage?invitation_code=4aBlWIBN', '1', '', '', '', null, '', '2015/10/30 14:26:32', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1684', 'jswbn', '800618jl', '13511627068', '陈吉理', '125010491@qq.com', '', '江苏我帮您企业管理有限公司', '江苏苏州', 'AxO1yiln', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=AxO1yiln', '1', '', '', '', null, '', '2015/11/1 8:42:39', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1685', 'hr086', 'cyb900824', '13818317784', '曹先生', '576839829@qq.com', '13818317783', '上海辉腾资产管理有限公司', '上海普陀区金沙江路1500号', 'C93LLa4e', '5ZRrsj38', 'http://gys.gongren.com/user/registerPage?invitation_code=C93LLa4e', '1', '人事部', '', '02133197481', null, '', '2015/11/3 9:33:28', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1686', '13761089727', '910517', '13761089727', '周金干', 'zjg@gongren.com', '', '普工', '上海长宁区', '3I4mdtlZ', 'kh8epAeG', 'http://gys.gongren.com/user/registerPage?invitation_code=3I4mdtlZ', '1', '', '', '', null, '', '2015/11/3 9:35:02', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1687', '13916975833', '456789', '13916975833', '詹明飞', 'zmf@gongren.com', '13916975833', '普工', '上海普陀区', 'b10nK2Cy', '5ZRrsj38', 'http://gys.gongren.com/user/registerPage?invitation_code=b10nK2Cy', '1', '招聘', '', '021331918888007', null, '', '2015/11/3 9:38:56', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1688', 'cyb123', 'cyb900824', '15800756889', '曹先生', '771171939@qq.com', '576839829', '上海世纪集团', '上海普陀区金沙江路1501号', 'RzEazYvx', '5ZRrsj38', 'http://gys.gongren.com/user/registerPage?invitation_code=RzEazYvx', '1', '人事部', '', '02133198888188', null, '', '2015/11/3 9:48:20', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1689', '5456458', '545645', '13818007036', '胡万浪', 'q459575096@qq.com', '', '普工企业管理有限公司', '上海长宁区', 'cBHbrD6w', '5ZRrsj38', 'http://gys.gongren.com/user/registerPage?invitation_code=cBHbrD6w', '1', '', '', '', null, '', '2015/11/3 10:14:42', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1690', '13916169787', '13916169787', '13817109059', '杨明', '13812374@qq.com', '', '上海逸盛劳务派遣有限公司', '上海青浦区沪青平公路3888号', 'PPocVjBV', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=PPocVjBV', '1', '人力资源', '', '02159750173', null, '', '2015/11/3 14:28:45', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1691', '12345678', '111111', '18916083598', '刘成', '760454724@qq.com', '', '上海创安职业介绍所', '上海长宁区', 'xD83gyAu', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=xD83gyAu', '1', '', '', '', null, '', '2015/11/3 15:26:22', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1692', '中龙保安', 'qinye123490', '13020178888', '秦烨', 'qy@jtwb.com.cn', 'baoansh', '中龙护嘉（上海）保安服务有限公司', '上海浦东新区川宏路365号圣御工业总部园7号楼510室', 'eijN0z6Y', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=eijN0z6Y', '1', '办公室', '', '021516191668009', null, '', '2015/11/3 15:52:27', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1693', '骁扬劳务外', 'qinye123490', '13818409588', '秦烨', 'qinye5234@163.com', 'baoansh', '上海骁扬劳务服务外包有限公司', '上海浦东新区川宏路365号圣御工业总部园7号楼510室', 'v85o5fX4', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=v85o5fX4', '1', '销售部', '', '02151619133', null, '', '2015/11/3 16:21:14', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1694', 'langminghong', 'haopin123', '13913554969', '郎明红', '1028446485@qq.com', '', '好聘网', '江苏苏州滨河路588号赛格电子市场', 'l25S2piF', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=l25S2piF', '1', '', '', '', null, '', '2015/11/3 16:31:35', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1695', 'gongren', '1901', '18862379911', '江路生', 'jls@gongren.com', '', '普工苏州分公司', '江苏苏州广济南路19号', 'CSOkqPvR', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=CSOkqPvR', '1', '招聘部', '', '0512655606296016', null, '', '2015/11/3 17:07:30', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1696', 'zj001', '123456', '13472619272', '李从起', '1446488906@qq.com', '', '正智劳务', '上海闵行区', 'jzPGA0s9', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=jzPGA0s9', '1', '招聘', '', '', null, '', '2015/11/3 17:34:31', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1697', 'dfdfg', '123', '13484534256', '打发打发', '714@jdifj.c', ' 奋斗奋斗', '上海工人网', '上海闸北区大幅度', 'r2r1JD5n', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=r2r1JD5n', '1', '奋斗奋斗', '', '的', null, '', '2015/11/3 18:23:47', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1698', 'jht', '123', '17236569856', 'fgfg', 'fg@sdf.n', '', 'fsdfgdgsdf', '上海长宁区', 'sM1bgvdj', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=sM1bgvdj', '1', '', '', '', null, '', '2015/11/3 18:34:10', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1699', 'haitang', '111', '13484525636', '你minsXP也破也随意玩也破也破也也破也破也破', '445@qq.com', '', '你几级', '上海长宁区来咯乌塔卡图特嗯甲苯owl了考虑图摸哦看ull哈all11好啦阿拉了了661681天弄错误', '3ziDtBrn', 'sM1bgvdj', 'http://gys.gongren.com/user/registerPage?invitation_code=3ziDtBrn', '1', '', '', '', null, '', '2015/11/3 18:37:43', '0', '1', '0', '0', '', '', '');
INSERT INTO `apply_user` VALUES ('1700', 'cp', '111', '13645636855', '明', 'VPN@ww.nxjxj', '', '行李', '上海长宁区', '1MpO47MG', 'sM1bgvdj', 'http://gys.gongren.com/user/registerPage?invitation_code=1MpO47MG', '1', '', '', '', null, '', '2015/11/3 19:15:32', '0', '1', '0', '0', '', '', '');
INSERT INTO `apply_user` VALUES ('1701', 'sh002xx', 'Abc123456', '14733226655', 'a', 's@s.com', '', '1', '上海长宁区', 'AI2e7fEn', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=AI2e7fEn', '1', '', '', '021-22235556', null, '', '2015/11/3 19:58:55', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1702', '123456789', '111345', '14523658965', 'dfdf', 'dfd@ff.cbb', '', 'jht', '上海长宁区', 'pHmswTTz', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=pHmswTTz', '1', '', '', '021-84523656', null, '', '2015/11/3 20:00:47', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1703', 'dddddddddddx', 'xxxxxxxxxxxxxxx', '13266559988', 'x', 'zyl@gongren.com', '', 'xxxxxxxxx', '上海长宁区', 'CjYEATSU', '', 'http://gys.gongren.com/user/registerPage?invitation_code=CjYEATSU', '1', '', '', '021-22556633', null, '', '2015/11/4 13:23:13', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1704', '123222222222222222', '4322222222222', '13681852564', '2222222222222', 'q@gongren.com', '', '2222', '上海长宁区', 'DgcZzwfc', '', 'http://gys.gongren.com/user/registerPage?invitation_code=DgcZzwfc', '1', '', '', '-', null, '', '2015/11/4 13:28:13', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1705', 'ffff', 'Abcdef', '13484523658', 'ghdfhdfh', 'hdf@fgdf.com', '', 'dfdfdfsfsdfsfsdfsfsdfsdfsdfsdfsfs', '上海长宁区', 'gNDjQ4mP', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=gNDjQ4mP', '1', '', '', '-', null, '', '2015/11/4 13:40:36', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1706', 'jiao', 'Abcdef', '14523656985', 'dfdd', 'dfsdg@fgdfh.cfdf', '', 'dfdfdgfhhkilgastlfdsarukmjny', '上海长宁区dfhktyrjwwhj5jf53b8hlyocgewc fwghwgwegwegonwwwcge hvr', 'peySiSVy', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=peySiSVy', '1', '', '', '-', null, '', '2015/11/4 14:22:30', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1707', '6666464646467676', 'jxjzjzjsjsjz', '13681827536', '明年', 'hjk@gongren.com', '', '你明明', '上海长宁区', 'sRKKybuv', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=sRKKybuv', '1', '', '', '-', null, '', '2015/11/4 14:23:00', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1708', 'hhhhhh', 'hhhhhh', '14323432234', 'ghgd', 'fgf@dfgd.hrh', '', 'dfdsgdfshdfh', '上海长宁区', 'jJzICUxg', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=jJzICUxg', '1', '', '', '-', null, '', '2015/11/4 14:34:12', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1709', '哈哈哈哈哈', '546464664664', '13681857244', '哈哈', 'Hjk@gongren.com', '', '好解决就', '上海长宁区', 'DyKEWYiI', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=DyKEWYiI', '1', '', '', '-', null, '', '2015/11/4 16:03:45', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1710', 'Hjk', '123456', '13681857261', 'Hjk', 'Hjk@gongren.com', '', 'Hjk', '上海长宁区', 'fk8t3rA7', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=fk8t3rA7', '1', '', '', '-', null, '', '2015/11/4 16:05:59', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1711', 'chenzheng', '123456', '13681854422', 'qqq', 'a@qg.com', '', 'qqq', '上海长宁区', 'P39pd9ii', '', 'http://gys.gongren.com/user/registerPage?invitation_code=P39pd9ii', '1', '', '', '-', null, '', '2015/11/4 17:02:29', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1712', 'chenzhengx', '111111', '14522333322', '11111111111111', '1@q.com', '', '1', '上海长宁区11111111111111', 'vZFvv9ZU', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=vZFvv9ZU', '1', '', '', '-', null, '', '2015/11/4 17:04:12', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1713', 'chenzhengxxxxx', '111111', '13633333332', 'xxxxxxxxxxxxxxxxxxxxxxxx', 'aaaaaaaaaa@q.com', 'qqqqqq', 'xxxxxxxxxxxxxxxxxxxxxxxxxx', '上海长宁区qqqqqqqqqqqqqqqqqqqqqqqqqq', 'G5TjMOYm', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=G5TjMOYm', '1', 'qqqq', '', '-', null, '', '2015/11/4 17:05:42', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1714', '呃呃呃', '111111', '13458963658', '明', '4545@qq.com', '', '提理解人快陪啦咯人快', '上海长宁区', 'nD8qC76s', '5ZRrsj38', 'http://gys.gongren.com/user/registerPage?invitation_code=nD8qC76s', '1', '', '', '-', null, '', '2015/11/4 17:21:20', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1715', 'wanchlw', 'yinjun20120530', '13651892379', '殷俊', 'wanchlw@163.com', '', '上海万骋劳务服务有限公司', '上海宝山区杨行镇湄浦南周3号。', 'VXdQqtru', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=VXdQqtru', '1', '', '', '021-36215711', null, '', '2015/11/4 17:39:43', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1716', 'hdbdh', 'hdhdhddhd', '13467883636', 'zbxbx', 'hdhshs@262.62', '', 'hxbxbxdb', '上海长宁区', '2CvR2EBQ', '5ZRrsj38', 'http://gys.gongren.com/user/registerPage?invitation_code=2CvR2EBQ', '1', '', '', '-', null, '', '2015/11/4 17:48:13', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1717', 'hdy13795455545', '13795455545', '13795455545', '韩德云', '724342408@qq.com', 'hdy13795455545', '劳联劳务', '上海松江区佘北公路602号', 'eSSlVmuQ', '5ZRrsj38', 'http://gys.gongren.com/user/registerPage?invitation_code=eSSlVmuQ', '1', '', '', '021-57794109', null, '', '2015/11/4 18:54:21', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1718', 'FRW1991', 'frw1991', '18936497836', '范如玮', '755125@qq.com', '18936497836', '扬州红树人力资源有限公司', '江苏扬州扬州现代广场25幢319', 'jxfWhvOY', 'MnWabDrz', 'http://gys.gongren.com/user/registerPage?invitation_code=jxfWhvOY', '1', '招聘部', '', '0514-87883439', null, '', '2015/11/4 20:36:07', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1719', 'baorui2013', 'meijimu2013', '13817737719', '王建华', '2227957962@qq.com', '', '上海宝睿文化咨询有限公司', '上海长宁区', 'mMhGT73T', '11v6P7iX', 'http://gys.gongren.com/user/registerPage?invitation_code=mMhGT73T', '1', '', '', '-', null, '', '2015/11/5 17:01:59', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1720', '031366', '123456', '18610047999', '01081777988', '123505024@qq.com', '', '北京中海建源装饰工程有限公司', '北京昌平区', 'j08vF2JU', 'zyR1Y9Lt', 'http://gys.gongren.com/user/registerPage?invitation_code=j08vF2JU', '1', '', '', '-', null, '', '2015/11/5 23:23:51', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1721', '13915767766', '767766', '13915767766', '郭太平', 'gtp@gongren.com', '', '工人网', '上海长宁区', 'fJBGPqCp', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=fJBGPqCp', '1', '', '', '-', null, '', '2015/11/10 14:53:44', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1722', 'e-choice', 'e111111', '18939867771', 'Sherry', 'sherryzhuang@e-choice.cn', '', '上海奕见企业管理咨询有限公司', '上海浦东新区', '8btzzTRs', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=8btzzTRs', '1', '', '', '-', null, '', '2015/11/10 15:46:08', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1723', '谭1032', 'tanqian789:', '15829659525', '谭倩倩', '3104784298@qq.com', '', '上海永奋劳务派遣有限公司', '上海长宁区', 'ZOfJ9i22', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=ZOfJ9i22', '1', '', '', '-', null, '', '2015/11/11 15:05:59', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1724', 'xiangxuan123', 'xiana880816', '13805216069', '夏娜', '3146862609@qq.com', '', '江苏祥煊企业管理咨询有限公司', '江苏徐州铜山区汉府公寓5楼509室', '7cpbicfT', 'k1PACljN', 'http://gys.gongren.com/user/registerPage?invitation_code=7cpbicfT', '1', '人事部', '', '0516-80202799', null, '', '2015/11/11 16:15:46', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1725', 'why051700', '123321', '15950044231', '徐东', '1486543998@qq.com', '', '畅航人力资源有限公司', '上海浦东新区', '3qHOf157', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=3qHOf157', '1', '', '', '-', null, '', '2015/11/12 15:29:21', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1726', '哈哈哈哈', '123456', '18862379915', '肖', '1666814934@qq.com', '', '工人网', '上海长宁区', 'DijQByVS', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=DijQByVS', '1', '', '', '-', null, '', '2015/11/12 15:31:01', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1727', '上海云哲', '1169347352', '18217210095', '杨洋', '1169347352@qq.com', '18217210095', '上海云哲企业管理有限公司', '上海浦东新区上海铺东新区东明路2288号', 'NNT6okbN', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=NNT6okbN', '1', '人事部', '', '-', null, '', '2015/11/12 15:46:26', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1728', 'szminghao', 'cjh521144130', '18061930685', '陈家海', '1275100457@qq.com', 'cjh1275100457', '苏州明豪企业管理有限公司', '江苏苏州苏州工业园区胜浦镇通江路128号', 'XAWSpnCu', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=XAWSpnCu', '1', '市场部', '', '0512-65921411', null, '', '2015/11/12 16:00:19', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1729', '武汉保洁', '51969033', '18918004448', '赵女士', 'shwujie@163.com', '', '上海武杰保洁有限公司', '上海浦东新区', 'P0yPz7bl', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=P0yPz7bl', '1', '', '', '-', null, '', '2015/11/12 16:15:47', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1730', '15939072853', '18438264120', '18438264120', '姚海龙', '767462396@qq.com', '767462396', '苏通人力', '江苏苏州苏州吴中区木渎镇花苑东路', 'O59tTe65', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=O59tTe65', '1', '招聘部', '', '-', null, '', '2015/11/12 16:29:52', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1731', 'lanyi5201', 'lanyiyaoji5201', '18658822559', '马超', 'machao3.5@163.com', 'lanyiyaoji5201', '上海传迹劳务派遣有限公司', '上海浦东新区秀浦路3188弄', 'IXbnpoO0', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=IXbnpoO0', '1', '', '', '-', null, '', '2015/11/12 17:04:10', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1732', '菅平军1985', 'z147258', '18702163179', '菅平军', '422986570@qq.com', '13262774323', '上海谷鼎人力资源有限公司', '上海浦东新区上海市浦东新区康桥镇川周公路2806号', 'gk5PW8Xu', '0n1sQ6v0', 'http://gys.gongren.com/user/registerPage?invitation_code=gk5PW8Xu', '1', '市场部', '', '021-60514567', null, '', '2015/11/12 17:18:57', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1733', '13276010578', 'jhrlzp123', '13276010578', '小陈', '1011898919@qq.com', '13665019516', '福州靖浩人力资源有限公司', '福建福州仓山区金山街道金建小区一期二栋206', '9VkRFDGr', 'Qpxgw23J', 'http://gys.gongren.com/user/registerPage?invitation_code=9VkRFDGr', '1', '行政', '', '0591-86393360', null, '', '2015/11/13 10:02:48', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1734', 'cxlw666', 'cxlw888', '15161696913', '梅莲芝', '921361768@qq.com', '15236672225', '超信劳务派遣有限公司', '江苏无锡新区坊镇路50号', 'q3ATgJcT', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=q3ATgJcT', '1', '资源部', '', '0510-88520666', null, '', '2015/11/13 15:03:21', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1735', '187096217360', 'qq123321', '18706217360', '张松森', '599086131@qq.com', '13526423864', '苏州金翰利企业管理服务有限公司', '江苏苏州吴中区珠江南路999号', 'PR7lYVPB', 'rQeTKeG1', 'http://gys.gongren.com/user/registerPage?invitation_code=PR7lYVPB', '1', '人事部', '', '0512-88966013', null, '', '2015/11/13 15:08:47', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1736', '上海奎宁企业招聘咨询', 'KN1812140069088', '18121400690', '魏老师', '2429390170@qq.com', '13818322869', '上海奎宁人力资源', '上海松江区上海市松江区荣乐东路2173号', 'Pvph09dy', '0n1sQ6v0', 'http://gys.gongren.com/user/registerPage?invitation_code=Pvph09dy', '1', '招聘部', '', '021-67743123', null, '', '2015/11/16 15:28:27', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1737', '1234', '123', null, null, null, null, null, null, 'dnmv9mVT', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=dnmv9mVT', '1', null, '', null, null, '', '2015/11/3 19:56:04', '0', '1', '0', '0', '', null, null);
INSERT INTO `apply_user` VALUES ('1738', 'FFFFF', 'Abcdef', null, null, null, null, null, null, 'k3dcilAy', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=k3dcilAy', '1', null, '', null, null, '', '2015/11/3 20:07:44', '0', '1', '0', '0', '', null, null);
INSERT INTO `apply_user` VALUES ('1739', 'JHTJHTJHT', 'Abcdef', null, null, null, null, null, null, 'bBgHXsZr', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=bBgHXsZr', '1', null, '', null, null, '', '2015/11/3 20:07:52', '0', '1', '0', '0', '', null, null);
INSERT INTO `apply_user` VALUES ('1740', '123', '321', '13681857256', 'wine', '1@q.com', 'wx', '', '上海长宁区702', 'hiSngeag', 'grw', 'http://gys.gongren.com/user/registerPage?invitation_code=hiSngeag', '2', '', '', '', null, '430', '2015/10/27 17:53:37', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1741', 'rfv', 'vfr', '13682569936', 'wine', 'w@q.com', '', '', '上海长宁区', 'thDq0CPS', 'hiSngeag', 'http://gys.gongren.com/user/registerPage?invitation_code=thDq0CPS', '2', '', '', '', null, '4302', '2015/10/27 19:12:26', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1742', '123131', '432123123123', '13688552233', '1231231', 'q@q.c', '', '', '上海长宁区', '0HO63ZBo', '', 'http://gys.gongren.com/user/registerPage?invitation_code=0HO63ZBo', '2', '', '', '', null, '', '2015/10/30 14:19:36', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1743', 'adad', 's', '13655224411', '123', 'Q@q.c', '', '', '上海长宁区', 'WmPWxXxq', '', 'http://gys.gongren.com/user/registerPage?invitation_code=WmPWxXxq', '2', '', '', '', null, '', '2015/10/30 14:21:40', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1744', 'gggggggg', 'd', '13681852211', 'd', 'q@q.co', '', '', '上海长宁区', '1hZSBiBW', 'undefined', 'http://gys.gongren.com/user/registerPage?invitation_code=1hZSBiBW', '2', '', '', '', null, '', '2015/10/30 14:23:20', '0', '1', '0', '0', '', 'qq', null);
INSERT INTO `apply_user` VALUES ('1745', 'dxa', 's', '13244559988', '12333', 'q@q.qc', '', '', '上海长宁区', 'AjI2W8Yw', '123', 'http://gys.gongren.com/user/registerPage?invitation_code=AjI2W8Yw', '2', '', '', '', null, '', '2015/10/30 14:24:39', '0', '1', '0', '0', '', 'q', null);
INSERT INTO `apply_user` VALUES ('1746', 'ivanrcw', 'rcw123', '13681857302', '任传伟', 'rcw@gongren.com', 'a', '', '上海普陀区aa', 'QZ2DUxzQ', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=QZ2DUxzQ', '2', '', '', '', null, '', '2015/11/2 10:27:21', '0', '1', '0', '0', '', '2222122', null);
INSERT INTO `apply_user` VALUES ('1747', 'sh002', 'Abc123456', '13916982600', '张有利', 'zyl@gongren.com', '13916982600', '', '上海普陀区真北路958号天地科技广场1号楼7楼', '5ZRrsj38', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=5ZRrsj38', '2', '', '', '', null, '', '2015/11/3 9:26:48', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1748', '13917596363', '456852', '13917596363', '温蒂', 'wyy@gongren.com', '', '', '上海普陀区真北路958号', 'kh8epAeG', '5ZRrsj38', 'http://gys.gongren.com/user/registerPage?invitation_code=kh8epAeG', '2', '', '', '', null, '', '2015/11/3 9:29:12', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1749', 'wlw3033028', 'wlw3033028', '13795399191', '王力伟', 'wlw@gongren.com', '', '', '上海普陀区真北路958号', 'ArOW83a1', '5ZRrsj38', 'http://gys.gongren.com/user/registerPage?invitation_code=ArOW83a1', '2', '', '', '', null, '', '2015/11/3 9:30:37', '0', '1', '0', '0', '', '2880086656', null);
INSERT INTO `apply_user` VALUES ('1750', 'huangxue70', '15162337249', '15380623962', '黄雪娇', 'hxj@gongren.com', 'H423002758', '', '上海普陀区', 'zyR1Y9Lt', 'kh8epAeG', 'http://gys.gongren.com/user/registerPage?invitation_code=zyR1Y9Lt', '2', '', '', '', null, '', '2015/11/3 9:34:01', '0', '1', '0', '0', '', '423002758', null);
INSERT INTO `apply_user` VALUES ('1751', '13681857207', '13681857207', '13681857207', '朱丽', 'zl03@gongren.com', '', '', '上海普陀区', 'tNxpsr2R', 'ArOW83a1', 'http://gys.gongren.com/user/registerPage?invitation_code=tNxpsr2R', '2', '', '', '', null, '', '2015/11/3 9:39:57', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1752', '123456', '123456789', '15216734045', '张三', '2014261660@qq.com', '', '', '上海普陀区2路1号', 'PT2FxJMg', '5ZRrsj38', 'http://gys.gongren.com/user/registerPage?invitation_code=PT2FxJMg', '2', '', '', '', null, '', '2015/11/3 9:43:09', '0', '1', '0', '0', '', '2014231660', null);
INSERT INTO `apply_user` VALUES ('1753', '18629413426', '456852', '18629413426', '文迪', 'wyyan0228@163.com', '', '', '上海长宁区', 'YjNqK6LR', 'kh8epAeG', 'http://gys.gongren.com/user/registerPage?invitation_code=YjNqK6LR', '2', '', '', '', null, '', '2015/11/3 9:44:16', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1754', '13598027737', 'liLi520', '13508027737', '廖成莉', '752247177@qq.com', '13508027737', '', '四川乐山', '5AAHSWDL', 'zyR1Y9Lt', 'http://gys.gongren.com/user/registerPage?invitation_code=5AAHSWDL', '2', '', '', '', null, '', '2015/11/3 11:59:08', '0', '1', '0', '0', '', '752247177', null);
INSERT INTO `apply_user` VALUES ('1755', 'zsy', '990609', '13472725353', '张士勇', '252715993@qq.com', '13472725353', '', '上海青浦区', 'MnWabDrz', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=MnWabDrz', '2', '', '', '', null, '', '2015/11/3 14:19:56', '0', '1', '0', '0', '', '252715993', null);
INSERT INTO `apply_user` VALUES ('1756', '董亮', 'dl1234', '13916959175', '董亮', 'dl@gongren.com', '', '', '上海普陀区', '11v6P7iX', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=11v6P7iX', '2', '', '', '', null, '', '2015/11/3 14:19:57', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1757', '河南工人网', 'hngrwnq', '13262017667', '牛群', '564991059@qq.com', '13262017667', '', '河南南阳宛城区北京北路综合市场', 'vYExBXgV', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=vYExBXgV', '2', '', '', '', null, '', '2015/11/3 21:10:14', '0', '1', '0', '0', '', '564991059', null);
INSERT INTO `apply_user` VALUES ('1758', 'asdadasdasda', 'ddddddddddd', '13681857250', 'ddd', 'dl@gongren.com', '', '', '上海长宁区', 'gocpgPyk', '', 'http://gys.gongren.com/user/registerPage?invitation_code=gocpgPyk', '2', '', '', '', null, '', '2015/11/4 13:22:27', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1759', 'oooooo', 'oooooo', '14667677567', 'dfd', 'dfd@fg.gh', '', '', '上海长宁区', 'tvslxUnZ', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=tvslxUnZ', '2', '', '', '', null, '', '2015/11/4 14:37:42', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1760', 'ywl198713', '198713', '18361805674', '杨文龙', '278373939@qq.com', 'ywlcxh1314', '', '上海杨浦区上海杨浦区国顺路400弄', 'unXqumwU', '5ZRrsj38', 'http://gys.gongren.com/user/registerPage?invitation_code=unXqumwU', '2', '', '', '', null, '', '2015/11/4 17:49:26', '0', '1', '0', '0', '', '278373939', null);
INSERT INTO `apply_user` VALUES ('1761', '527258435', 'ys20141114', '18616187777', '赵行行', '527258435@qq.com', '', '', '上海青浦区', 'uNCjxBct', 'MnWabDrz', 'http://gys.gongren.com/user/registerPage?invitation_code=uNCjxBct', '2', '', '', '', null, '', '2015/11/4 18:11:22', '0', '1', '0', '0', '', '527258435', null);
INSERT INTO `apply_user` VALUES ('1762', 'zm847935295', 'qas521314', '13671664472', '张明', '847935295@qq.com', '', '', '江苏苏州', 'R0mv9cAn', 'MnWabDrz', 'http://gys.gongren.com/user/registerPage?invitation_code=R0mv9cAn', '2', '', '', '', null, '', '2015/11/4 18:54:22', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1763', 'wangwei', 'wang200610340123', '18751590776', '王四威', '2571438651@qq.com', 'aijiao5288', '', '江苏吴江', 'rhYS3HXh', 'MnWabDrz', 'http://gys.gongren.com/user/registerPage?invitation_code=rhYS3HXh', '2', '', '', '', null, '', '2015/11/4 19:04:32', '0', '1', '0', '0', '', '2571438651', null);
INSERT INTO `apply_user` VALUES ('1764', '与狼共舞', 'lhl19810428', '18121257829', '李海林', '1403918015@qq.com', '18121257829', '', '上海长宁区', 'cnLfFNTe', 'MnWabDrz', 'http://gys.gongren.com/user/registerPage?invitation_code=cnLfFNTe', '2', '', '', '', null, '', '2015/11/4 19:14:42', '0', '1', '0', '0', '', '1403918015', null);
INSERT INTO `apply_user` VALUES ('1765', 'job&easy', 'wds851100', '15026662132', '王定升', 'andrew5214@163.com', '', '', '上海浦东新区乐园路298号', 'DUSVIBHC', '5ZRrsj38', 'http://gys.gongren.com/user/registerPage?invitation_code=DUSVIBHC', '2', '', '', '', null, '', '2015/11/4 19:22:51', '0', '1', '0', '0', '', '252701021', null);
INSERT INTO `apply_user` VALUES ('1766', '工人网', '910517', '18655303910', '周金干', 'zjg@gongren.com', '', '', '上海长宁区', 'io9iIYxt', '5ZRrsj38', 'http://gys.gongren.com/user/registerPage?invitation_code=io9iIYxt', '2', '', '', '', null, '', '2015/11/4 22:42:45', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1767', 'Ying111', 'ying0011', '13512586247', '韩颖', '475028676@qq.com', 'yy1351258', '', '江苏盐城盐都区', 'DnW5pn61', 'zyR1Y9Lt', 'http://gys.gongren.com/user/registerPage?invitation_code=DnW5pn61', '2', '', '', '', null, '', '2015/11/5 10:03:42', '0', '1', '0', '0', '', '1817265563', null);
INSERT INTO `apply_user` VALUES ('1768', 'jjzd', '8866909', '13979202288', '高华清', '1439925382@qq.com', '13979202288', '', '江西九江九江市濂溪大道88号   ', 'Yp0YKUMQ', '5ZRrsj38', 'http://gys.gongren.com/user/registerPage?invitation_code=Yp0YKUMQ', '2', '', '', '', null, '', '2015/11/5 10:04:15', '0', '1', '0', '0', '', '1439925382', null);
INSERT INTO `apply_user` VALUES ('1769', '778017763', 'wcr197004', '13052185808', '吴成容', '778017763@qq.com', 'Wcr197004', '', '上海青浦区徐泾镇京华路158弄', 'PCWkg0gk', 'kh8epAeG', 'http://gys.gongren.com/user/registerPage?invitation_code=PCWkg0gk', '2', '', '', '', null, '', '2015/11/5 10:16:10', '0', '1', '0', '0', '', '778017763', null);
INSERT INTO `apply_user` VALUES ('1770', '18151709753', '758006', '18151709753', '吴坚', 'uj00878@sina.com', '', '', '江苏无锡', 'oXEhACKL', 'kh8epAeG', 'http://gys.gongren.com/user/registerPage?invitation_code=oXEhACKL', '2', '', '', '', null, '', '2015/11/5 10:47:59', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1771', '卢拓宇', '919308', '13545611058', '卢拓宇', 'lty@gongren.com', '', '', '上海普陀区真北路958号', 'xzi37lIY', '5ZRrsj38', 'http://gys.gongren.com/user/registerPage?invitation_code=xzi37lIY', '2', '', '', '', null, '', '2015/11/5 11:49:26', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1772', 'mayang9', 'mayang19921228', '13817929955', 'mayang', '2880086657@qq.com', '', '', '上海普陀区真北路', 'sMRHg9Yn', 'kh8epAeG', 'http://gys.gongren.com/user/registerPage?invitation_code=sMRHg9Yn', '2', '', '', '', null, '', '2015/11/5 12:35:40', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1773', 'yemaomao', '8136879', '15157000014', '叶', '514267936@qq.com', '', '', '上海长宁区', 'PldY1dR8', 'zyR1Y9Lt', 'http://gys.gongren.com/user/registerPage?invitation_code=PldY1dR8', '2', '', '', '', null, '', '2015/11/5 13:14:30', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1774', 'STjinger', 'jingerjinger', '13682906919', '何静', '277172492@qq.com', '', '', '广东汕头市', 'nyUZ2aXo', 'zyR1Y9Lt', 'http://gys.gongren.com/user/registerPage?invitation_code=nyUZ2aXo', '2', '', '', '', null, '', '2015/11/5 13:16:17', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1775', 'l?y?g?123456', 'lyg123456', '13675210061', '泽泽', '514932737@qq.com', '', '', '江苏连云港东海县幸福路44-23', 'vZfZt95D', 'zyR1Y9Lt', 'http://gys.gongren.com/user/registerPage?invitation_code=vZfZt95D', '2', '', '', '', null, '', '2015/11/5 13:25:05', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1776', 'justin', 'gb19840917', '13917070826', '葛斌', '27549652@qq.com', 'justinbingo0917', '', '上海闸北区大统路统北村2号204室', 'l6Qy8wIX', 'zyR1Y9Lt', 'http://gys.gongren.com/user/registerPage?invitation_code=l6Qy8wIX', '2', '', '', '', null, '', '2015/11/5 14:01:43', '0', '1', '0', '0', '', '27549652', null);
INSERT INTO `apply_user` VALUES ('1777', 'cloudcyf', 'cyf003', '15900439549', '陈云峰', '314068990@qq.com', '', '', '上海奉贤区', 'mqUTVRAM', 'sMRHg9Yn', 'http://gys.gongren.com/user/registerPage?invitation_code=mqUTVRAM', '2', '', '', '', null, '', '2015/11/5 15:22:35', '0', '1', '0', '0', '', '314068990', null);
INSERT INTO `apply_user` VALUES ('1778', '1084886476', 'xiao123456', '18872669551', '萧丹', '1084886475@qq.com', '', '', '湖北武汉', 'VMqp2di8', 'zyR1Y9Lt', 'http://gys.gongren.com/user/registerPage?invitation_code=VMqp2di8', '2', '', '', '', null, '', '2015/11/5 17:59:23', '0', '1', '0', '0', '', '1084886475', null);
INSERT INTO `apply_user` VALUES ('1779', '18057266371', '13676816573', '17757279795', '王明文', '413190738@qq.com', '18057266371', '', '浙江湖州经四路往北200米上辛桥大楼401', 'xIlsGpeB', 'MnWabDrz', 'http://gys.gongren.com/user/registerPage?invitation_code=xIlsGpeB', '2', '', '', '', null, '', '2015/11/5 18:11:46', '0', '1', '0', '0', '', '413190738', null);
INSERT INTO `apply_user` VALUES ('1780', '1126256742', '121200', '15901984658', '耿世界', '1126256742@qq.com', 'G427120', '', '上海嘉定区马陆陈宝路242', '4ZxGbSQd', 'kh8epAeG', 'http://gys.gongren.com/user/registerPage?invitation_code=4ZxGbSQd', '2', '', '', '', null, '', '2015/11/5 21:58:50', '0', '1', '0', '0', '', '1126256742', null);
INSERT INTO `apply_user` VALUES ('1781', '2211981', '22119281', '18217555561', '邱靖', '175@163.com', '22119281', '', '上海浦东新区金高路88号对面《工人招聘网》', 'HiUC9dCI', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=HiUC9dCI', '2', '', '', '', null, '', '2015/11/7 12:13:29', '0', '1', '0', '0', '', '22119281', null);
INSERT INTO `apply_user` VALUES ('1782', '124972671', '03114388', '13586878655', '陈双双', '124972671@qq.com', '13586878655', '', '浙江宁波鄞州区飞虹新村', 'X1SNVHs7', 'MnWabDrz', 'http://gys.gongren.com/user/registerPage?invitation_code=X1SNVHs7', '2', '', '', '', null, '', '2015/11/7 15:28:18', '0', '1', '0', '0', '', '124972671', null);
INSERT INTO `apply_user` VALUES ('1783', 'sh246', '410728', '13816697315', '李云鹏', 'lyp@gongren.com', '13816697315', '', '上海普陀区', 'VrEcRUBi', '', 'http://gys.gongren.com/user/registerPage?invitation_code=VrEcRUBi', '2', '', '', '', null, '', '2015/11/9 11:21:41', '0', '1', '0', '0', '', '876310441', null);
INSERT INTO `apply_user` VALUES ('1784', '工人网黄宏', 'a123456', '13022126208', '黄宏', '404304260@qq.com', '宏10061077', '', '上海普陀区真北路958号天地科技广场1号楼7楼', '9c8hJllt', '', 'http://gys.gongren.com/user/registerPage?invitation_code=9c8hJllt', '2', '', '', '', null, '', '2015/11/9 11:21:54', '0', '1', '0', '0', '', '404304260', null);
INSERT INTO `apply_user` VALUES ('1785', 'Lisa', 'wode1216', '15921146352', '刘小姐', 'lxk02@gongren.com', '', '', '上海普陀区真北路958号天地科技广场1号楼7楼', 'gHUuXIEA', '', 'http://gys.gongren.com/user/registerPage?invitation_code=gHUuXIEA', '2', '', '', '', null, '', '2015/11/9 11:23:45', '0', '1', '0', '0', '', '315263360', null);
INSERT INTO `apply_user` VALUES ('1786', '李涛Tony', '752359809', '13816319255', '李涛', 'lt@gongren.com', '13816319255', '', '上海普陀区真北路958号天地科技广场1号楼7楼', '0n1sQ6v0', '', 'http://gys.gongren.com/user/registerPage?invitation_code=0n1sQ6v0', '2', '', '', '', null, '', '2015/11/9 11:26:34', '0', '1', '0', '1', '/files/b774c459-df91-4cee-80f3-1d2e380cae8aQQ图片20151119174442.png', '2746800547', null);
INSERT INTO `apply_user` VALUES ('1787', 'Arial', '201314', '13965024774', '孔军', '1207018443@qq.com', '', '', '上海普陀区真北路958号天地科技广场1号楼7楼', 'Kt7iHZTR', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=Kt7iHZTR', '2', '', '', '', null, '', '2015/11/9 11:31:29', '0', '1', '0', '0', '', '1207018443', null);
INSERT INTO `apply_user` VALUES ('1788', 'zhangyan', '113431', '15901904715', '113431', '552036902@qq.com', 'yekeke222', '', '上海普陀区真北路天地科技广场7楼', 'QXcc8xHj', '', 'http://gys.gongren.com/user/registerPage?invitation_code=QXcc8xHj', '2', '', '', '', null, '', '2015/11/9 11:31:58', '0', '1', '0', '0', '', '552036902', null);
INSERT INTO `apply_user` VALUES ('1789', '张先生', '123456', '18321672536', '张志强', 'zzq@gongren.com', 'a2361342352', '', '上海普陀区上海市普陀区真北路958号天地科技广场1号楼7楼', 'k1PACljN', '', 'http://gys.gongren.com/user/registerPage?invitation_code=k1PACljN', '2', '', '', '', null, '', '2015/11/9 11:33:03', '0', '1', '0', '0', '', '2880086640', '');
INSERT INTO `apply_user` VALUES ('1790', '3484005', '123456asd', '13636578282', '钱刚', '3484005@qq.com', '13636578282', '', '江苏苏州昆山淀山湖镇', 'j0nVWLRI', '5ZRrsj38', 'http://gys.gongren.com/user/registerPage?invitation_code=j0nVWLRI', '2', '', '', '', null, '', '2015/11/9 14:49:12', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1791', '13915424951', '123456', '13915424951', '何红霞', 'hhx@gongren.com', '', '', '江苏苏州', '2PurnlgG', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=2PurnlgG', '2', '', '', '', null, '', '2015/11/10 9:55:50', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1792', '苏州招聘', 'grzpw1901', '18862379912', '郭小姐', 'gnn@gongren.com', '', '', '江苏苏州金阊区广济南路', 'TyLZGflH', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=TyLZGflH', '2', '', '', '', null, '', '2015/11/10 9:57:16', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1793', 'pxj0506', '123456', '17005129418', '彭秀娟', '457539318@qq.com', '', '', '上海长宁区', 'awEhEMdw', 'AxO1yiln', 'http://gys.gongren.com/user/registerPage?invitation_code=awEhEMdw', '2', '', '', '', null, '', '2015/11/10 10:04:52', '0', '1', '0', '0', '', '457539318', null);
INSERT INTO `apply_user` VALUES ('1794', '2774340378', 'k123456', '18616297811', '唐小丽', '2774340378@QQ.com', 'rcyh20200196', '', '上海浦东新区曹路镇', 'Z562TnMk', '', 'http://gys.gongren.com/user/registerPage?invitation_code=Z562TnMk', '2', '', '', '', null, '', '2015/11/10 12:04:58', '0', '1', '0', '0', '', '2774340378', null);
INSERT INTO `apply_user` VALUES ('1795', '13764242707', '106333', '13764242707', '刘伟', '13764242707@163.com', 'Qiru1603', '', '上海浦东新区', 'GuUhKGFq', '', 'http://gys.gongren.com/user/registerPage?invitation_code=GuUhKGFq', '2', '', '', '', null, '', '2015/11/10 14:20:45', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1796', 'gongrenwang', '151008', '15821439115', '田娜', '1426178962@qq.com', 'shanghai50694', '', '上海长宁区浦东新区航头镇', 'AREekjYG', '', 'http://gys.gongren.com/user/registerPage?invitation_code=AREekjYG', '2', '', '', '', null, '', '2015/11/10 14:31:45', '0', '1', '0', '0', '', '1416178962', null);
INSERT INTO `apply_user` VALUES ('1797', 'zhixuanhr', 'a58395583', '13661734584', '周先生', 'zhouyugsng@zhixuanhr.com', '', '', '上海长宁区', 'dB7Oicmd', '', 'http://gys.gongren.com/user/registerPage?invitation_code=dB7Oicmd', '2', '', '', '', null, '', '2015/11/10 15:10:55', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1798', '2351442243', '19971024liujie', '18896700183', '小杰', '1729432424@qq.com', '', '', '江苏苏州', 'dB1yNsHs', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=dB1yNsHs', '2', '', '', '', null, '', '2015/11/10 15:44:18', '0', '1', '0', '0', '', '1729432424', null);
INSERT INTO `apply_user` VALUES ('1799', 'tanqianqian', 'tanqian789:', '15829659525', 'tanqian789：', '3104784298@qq.com', '', '', '上海长宁区', 'qYsbyVmS', '', 'http://gys.gongren.com/user/registerPage?invitation_code=qYsbyVmS', '2', '', '', '', null, '', '2015/11/11 13:41:42', '0', '1', '0', '0', '', '3104784298', null);
INSERT INTO `apply_user` VALUES ('1800', '工人网田娜', '151008', '13761965790', '田小姐', '1416178962@qq.com', 'shanghai50694', '', '上海普陀区真北路958号', 'Qpxgw23J', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=Qpxgw23J', '2', '', '', '', null, '', '2015/11/11 16:25:06', '0', '1', '0', '0', '', '1416178962', null);
INSERT INTO `apply_user` VALUES ('1801', 'zhangzhiqiang', '19920212', '13818705252', '张先生', '3042675818@qq.com', 'z2361342352', '', '上海普陀区上海市普陀区真北路天地科技广场1号楼7楼', 'rQeTKeG1', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=rQeTKeG1', '2', '', '', '', null, '', '2015/11/11 16:26:46', '0', '1', '0', '0', '', '3042675818', null);
INSERT INTO `apply_user` VALUES ('1802', 'jyx500520', '500520love', '18550398443', '安泽', '3192039527@qq.com', '', '', '江苏苏州工业园区唯亭镇春辉路11号', 'v5vXEBx2', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=v5vXEBx2', '2', '', '', '', null, '', '2015/11/12 11:09:01', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1803', 'chenchaoli', '13455375962', '15850118760', '陈朝利', '328900301@qq.com', '', '', '江苏苏州', 'pyVfgpA8', 'v5vXEBx2', 'http://gys.gongren.com/user/registerPage?invitation_code=pyVfgpA8', '2', '', '', '', null, '', '2015/11/12 12:57:52', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1804', '刘先生', '123456', '18662808571', '刘伟', '316102206@qq.com', 'Qiru1603', '', '上海浦东新区', 'jtHTjwsH', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=jtHTjwsH', '2', '', '', '', null, '', '2015/11/12 13:03:41', '0', '1', '0', '0', '', '316102206', null);
INSERT INTO `apply_user` VALUES ('1805', 'zhangyan222', '123456', '13818320284', '张燕', '552036902@qq.com', 'yekeke222', '', '上海普陀区真北路天地科技广场7楼', 'cQ8RjAjk', '0n1sQ6v0', 'http://gys.gongren.com/user/registerPage?invitation_code=cQ8RjAjk', '2', '', '', '', null, '', '2015/11/12 13:18:20', '0', '1', '0', '0', '', '552036902', null);
INSERT INTO `apply_user` VALUES ('1806', '13182539186', 'tangpei013479', '13182839186', '唐培', '226360583@163.com', '471684776', '', '江苏常州武进区鸣新中路25号', 'WPtJCy8P', 'cxht', 'http://gys.gongren.com/user/registerPage?invitation_code=WPtJCy8P', '2', '', '', '', null, '', '2015/11/12 16:35:11', '0', '1', '0', '0', '', '471684776', null);
INSERT INTO `apply_user` VALUES ('1807', '15162518378', '147258369', '15162518378', '马凯', '305151439@qq.com', '15162518378', '', '江苏长宁区苏州市吴江区吴江经济开发区燕浜路', 'yfbI8GzP', '', 'http://gys.gongren.com/user/registerPage?invitation_code=yfbI8GzP', '2', '', '', '', null, '', '2015/11/12 19:51:06', '0', '1', '0', '0', '', '305151739', null);
INSERT INTO `apply_user` VALUES ('1808', 'dengmin9969', 'lsj5259969', '15268842613', '邓敏', '750501572@qq.com', 'dengmin9969', '', '浙江杭州', 'LF5Oso0E', 'zyR1Y9Lt', 'http://gys.gongren.com/user/registerPage?invitation_code=LF5Oso0E', '2', '', '', '', null, '', '2015/11/13 9:39:51', '0', '1', '0', '0', '', '750501572', null);
INSERT INTO `apply_user` VALUES ('1809', '努力与时间同步', 'a654178478', '18801541340', '庞恩泽', '3045677478@qq.com', '18801541340', '', '江苏苏州园区青剑湖', 'bIvozikm', 'rQeTKeG1', 'http://gys.gongren.com/user/registerPage?invitation_code=bIvozikm', '2', '', '', '', null, '', '2015/11/13 10:49:58', '0', '1', '0', '0', '', '3045677478', null);
INSERT INTO `apply_user` VALUES ('1810', '181818186', '783455521', '18168989919', '张斌才', '783455521@qq.com', '', '', '江苏苏州', 'Cp5hTTm6', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=Cp5hTTm6', '2', '', '', '', null, '', '2015/11/13 11:16:28', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1811', 'changjiazhizhao', 'ntb20091025', '13771910663', '龙恩', '2844310665@qq.com', '', '', '江苏苏州相城区东桥镇长泰路', 'X3rEYzZv', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=X3rEYzZv', '2', '', '', '', null, '', '2015/11/13 11:55:23', '0', '1', '0', '0', '', '2844310665', null);
INSERT INTO `apply_user` VALUES ('1812', '1021062839q', 'qwe123', '15900460010', '徐雅', 'beipan737@sina.com', '18256112200', '', '上海普陀区', 'jTQaMVOY', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=jTQaMVOY', '2', '', '', '', null, '', '2015/11/13 15:36:12', '0', '1', '0', '0', '', '1524341951', null);
INSERT INTO `apply_user` VALUES ('1813', '人事部袁主任', 'woxiangni', '18550218623', '袁聪聪', '747519978@qq.com', 'rain920488085', '', '江苏苏州', 'Gbql3g9p', 'rQeTKeG1', 'http://gys.gongren.com/user/registerPage?invitation_code=Gbql3g9p', '2', '', '', '', null, '', '2015/11/16 10:06:00', '0', '1', '0', '0', '', '747519978', null);
INSERT INTO `apply_user` VALUES ('1814', '泰州天仁人力资源有限公司', '520326', '18262343337', '张志勇', '2851828113@qq.com', 'TRzhang88888', '', '江苏泰州泰州建工大厦29楼', 'Ck4y4PlQ', 'Qpxgw23J', 'http://gys.gongren.com/user/registerPage?invitation_code=Ck4y4PlQ', '2', '', '', '', null, '', '2015/11/16 13:34:21', '0', '1', '0', '0', '', '2851828113', null);
INSERT INTO `apply_user` VALUES ('1815', '2370562489', 'asdf0.123', '18814626362', '乔禹明', '13889906@qq.com', '2370562489', '', '山东青岛城阳区世纪花园', 'kSzCsciv', 'rQeTKeG1', 'http://gys.gongren.com/user/registerPage?invitation_code=kSzCsciv', '2', '', '', '', null, '', '2015/11/16 16:33:37', '0', '1', '0', '0', '', '13889906', null);
INSERT INTO `apply_user` VALUES ('1816', '秦阳01', '153580', '15821502212', '秦阳', 'qy01@gongren.com', '', '', '上海普陀区真北路天地科技广场', 'GgkUl5UF', '0n1sQ6v0', 'http://gys.gongren.com/user/registerPage?invitation_code=GgkUl5UF', '2', '', '', '', null, '', '2015/11/16 18:14:04', '0', '1', '0', '0', '', '', null);
INSERT INTO `apply_user` VALUES ('1817', '12x1', 'xxx', null, null, null, null, '', null, 'xxxxxx', 'thDq0CPS', 'http://gys.gongren.com/user/registerPage?invitation_code=xxxxxx', '2', '', '', '', null, null, null, '0', '1', '0', '0', '', null, null);
INSERT INTO `apply_user` VALUES ('1931', 'Guxinyue87611473', '876114', '15221663075', '顾红玲', '1795276534qq.com', '', null, '', 'RPCOS4IV1447818313', 'HiUC9dCI', 'http://gys.gongren.com/user/registerPage?invitation_code=RPCOS4IV1447818313&&apply_type=2', '2', null, null, null, '', null, '2015-11-18 11:45:13', '0', '1', '0', '0', null, '1795276534', null);
INSERT INTO `apply_user` VALUES ('1932', '靳云亮', '197744', '17784176267', '章萍', '1097486831@qq.com', '18221440653', null, '', '7HWSMV621447831121', 'GgkUl5UF', 'http://gys.gongren.com/user/registerPage?invitation_code=7HWSMV621447831121&&apply_type=2', '2', null, null, null, '', null, '2015-11-18 15:18:41', '0', '1', '0', '0', null, '1097486831', null);
INSERT INTO `apply_user` VALUES ('1933', 'njlhlw', 'nanj20', '15951949175', '胡榕榕', '1692801007@qq.com', '15951949175', '南京龙恒劳务服务有限公司', '江苏省南京市建宁路亚都大厦', '9SFRBDPO1447835442', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=9SFRBDPO1447835442&&apply_type=1', '1', '招聘部', '人事经理', '025—85989526', null, null, '2015-11-18 16:30:42', '0', '1', '0', '0', null, null, null);
INSERT INTO `apply_user` VALUES ('1934', 'wshua123', 'wshua1', '13248080996', '王进华', '379996548@qq.com', '379996548', null, '浦东新区高东生态园上钦街', '5CREGWYI1447837616', 'HiUC9dCI', 'http://gys.gongren.com/user/registerPage?invitation_code=5CREGWYI1447837616&&apply_type=2', '2', null, null, null, '', null, '2015-11-18 17:06:56', '0', '1', '0', '0', null, '379996548', null);
INSERT INTO `apply_user` VALUES ('1935', 'wshua235', '123456', '15821170538', '王进华', '379996548@qq.com', '379996548', null, '高东生态园上钦街', '6VUF3QRL1447838496', 'HiUC9dCI', 'http://gys.gongren.com/user/registerPage?invitation_code=6VUF3QRL1447838496&&apply_type=2', '2', null, null, null, '', null, '2015-11-18 17:21:36', '0', '1', '0', '0', null, '379996548', null);
INSERT INTO `apply_user` VALUES ('1936', 'xtgdtg2', '860219', '18226823806', '田岗', '317708932@qq.com', '', null, '', 'ERCKSJMH1447852450', 'HiUC9dCI', 'http://gys.gongren.com/user/registerPage?invitation_code=ERCKSJMH1447852450&&apply_type=2', '2', null, null, null, '', null, '2015-11-18 21:14:10', '0', '1', '0', '0', null, '317708932', null);
INSERT INTO `apply_user` VALUES ('1937', '明道人力资源', 'df3333', '13015681155', '李春凤', '1220425280@qq.com', '1220425280', null, '三明市梅列区绿岩新村32幢303', '4G8XH6QE1447899359', 'Qpxgw23J', 'http://gys.gongren.com/user/registerPage?invitation_code=4G8XH6QE1447899359&&apply_type=2', '2', null, null, null, '', null, '2015-11-19 10:15:59', '0', '1', '0', '0', null, '1220425280', null);
INSERT INTO `apply_user` VALUES ('1938', '测试', '111111', '15637381989', null, '123@qq.com', '1234567890', null, '测试', 'L49Z3X5M1447903231', 'grw', 'http://gys.gongren.com/user/registerPage?invitation_code=L49Z3X5M1447903231&&apply_type=2', '2', null, null, null, '测试', null, '2015-11-19 11:20:31', '0', '1', '0', '0', null, '110110110', null);
INSERT INTO `apply_user` VALUES ('1939', '祖帅强', '199010', '18652064362', '网招部', '349920905@qq.com', '349920905', '南京市仙龙人力资源有限公司', '', 'KMJ74RZN1447903693', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=KMJ74RZN1447903693&&apply_type=1', '1', '', '', '', null, null, '2015-11-19 11:28:13', '0', '1', '0', '0', null, null, null);
INSERT INTO `apply_user` VALUES ('1946', '青岛联志达', '809832', '15376746807', '汲秀艳', 'lzdxingzhengbu@126.com', '', '青岛联智达企业管理有限公司', '', 'A7GHQ8IC1447923579', '0n1sQ6v0', 'http://gys.gongren.com/user/registerPage?invitation_code=A7GHQ8IC1447923579&&apply_type=1', '1', '行政部', '行政文员', '0532-80983285', null, null, '2015-11-19 16:59:39', '0', '1', '0', '0', null, null, null);
INSERT INTO `apply_user` VALUES ('1949', '测试1', '111111', '13523568965', null, '123@qq.com', '123456', null, '上海', 'V6JRCPOS1447926412', 'grw', 'http://gys.gongren.com/user/registerPage?invitation_code=V6JRCPOS1447926412&&apply_type=2', '2', null, null, null, '别是', null, '2015-11-19 17:46:52', '0', '1', '0', '0', null, '1005369852', '');
INSERT INTO `apply_user` VALUES ('1950', '823599764', '344283', '18850899967', '张昌敏', '823599764', 'min823599764', null, '福州马尾儒江东路', 'CJY3KS591447926721', 'Qpxgw23J', 'http://gys.gongren.com/user/registerPage?invitation_code=CJY3KS591447926721&&apply_type=2', '2', null, null, null, '', null, '2015-11-19 17:52:01', '0', '1', '0', '0', null, '823599764', '');
INSERT INTO `apply_user` VALUES ('1951', '13915276731', '668294', '13915276731', '高亚', '664328294', '13915276731', null, '江苏省无锡市新区', '39OMN6721447983409', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=39OMN6721447983409&&apply_type=2', '2', null, null, null, '', null, '2015-11-20 09:36:49', '0', '1', '0', '0', null, '664327294@qq', '');
INSERT INTO `apply_user` VALUES ('1952', '万友电子', '123123', '15251290370', '张亮', '2310993242@qq.com', 'zy15251290370', '苏州万友电子有限公司', '江苏省苏州市高新区泰山路六号', 'DUR4A9HP1447998605', '9c8hJllt', 'http://gys.gongren.com/user/registerPage?invitation_code=DUR4A9HP1447998605&&apply_type=1', '1', '人事招聘部', '招聘专员', '0512–88966956', null, null, '2015-11-20 13:50:05', '0', '1', '0', '0', null, null, '');
INSERT INTO `apply_user` VALUES ('1953', '金安鸿达', 'jahd88', '15029237046', '高飞', '670041689@qq.com', '', '苏州金安鸿达服务外包有限公司', '', '7LBREIXD1448002072', 'GgkUl5UF', 'http://gys.gongren.com/user/registerPage?invitation_code=7LBREIXD1448002072&&apply_type=1', '1', '市场', '主管', '', null, null, '2015-11-20 14:47:52', '0', '1', '0', '0', null, null, '');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `state` int(1) DEFAULT NULL COMMENT '登陆状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', '张三', '123456', '0');
INSERT INTO `member` VALUES ('2', 'admin', 'admin', '1');
INSERT INTO `member` VALUES ('3', 'zhang', 'zhang', '0');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for studen222t
-- ----------------------------
DROP TABLE IF EXISTS `studen222t`;
CREATE TABLE `studen222t` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studen222t
-- ----------------------------
INSERT INTO `studen222t` VALUES ('1', 's1', '1');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱号',
  `status` int(1) DEFAULT NULL COMMENT '激活状态',
  `validatecode` varchar(255) DEFAULT NULL COMMENT '激活码',
  `registertime` date DEFAULT NULL COMMENT '注册时间',
  `tokenexptime` bigint(255) DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('51', 'admin', '111111', '1002688187', null, null, null, '1471065081804');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(10) NOT NULL,
  `userid` int(10) DEFAULT NULL,
  `roleId` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
