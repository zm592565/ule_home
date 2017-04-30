/*
Navicat MySQL Data Transfer

Source Server         : �������ݿ�
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : ule

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-04-30 18:16:31
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `ule_admin`
-- ----------------------------
DROP TABLE IF EXISTS `ule_admin`;
CREATE TABLE `ule_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(42) NOT NULL COMMENT '用户名',
  `pass` varchar(42) NOT NULL COMMENT '密码',
  `name` varchar(40) NOT NULL COMMENT '姓名',
  `email` varchar(80) NOT NULL COMMENT 'email',
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否冻结',
  `last_time` datetime NOT NULL COMMENT '上次登录时间',
  `last_ip` varchar(20) NOT NULL COMMENT '上次登录IP',
  `login_count` int(20) NOT NULL COMMENT '登录次数',
  `outlets_id` int(5) DEFAULT '0' COMMENT '快递网点id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ule_admin
-- ----------------------------
INSERT INTO `ule_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '2017-04-19 20:26:57', '::1', '76', '0');
INSERT INTO `ule_admin` VALUES ('46', 'zm592565', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '2017-04-01 15:21:34', '127.0.0.1', '42', '0');
INSERT INTO `ule_admin` VALUES ('47', '18591980321', '6bbadbba0874c141508359bdf27ad23e', '', '', '1', '2016-09-21 11:13:38', '::1', '0', '0');
INSERT INTO `ule_admin` VALUES ('48', 'wangxiaoming', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '2016-10-09 16:20:58', '116.228.73.38', '6', '0');
INSERT INTO `ule_admin` VALUES ('49', 'xiliming', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '2016-09-29 14:36:54', '120.25.202.160', '0', '0');
INSERT INTO `ule_admin` VALUES ('50', 'liushichang', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '2016-10-12 10:24:11', '123.139.27.23', '4', '0');
INSERT INTO `ule_admin` VALUES ('51', 'zhushuai', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '2016-10-14 10:42:40', '123.139.22.241', '8', '0');
INSERT INTO `ule_admin` VALUES ('79', 'wuliu', '96e79218965eb72c92a549dd5a330112', 'wuliu', 'wuliu@qq.com', '1', '2016-10-20 16:06:10', '127.0.0.1', '3', '2');
INSERT INTO `ule_admin` VALUES ('77', 'lcg1020', 'e10adc3949ba59abbe56e057f20f883e', '刚', '94117983@qq.com', '1', '2016-10-20 10:22:14', '127.0.0.1', '0', '0');
INSERT INTO `ule_admin` VALUES ('60', 'lcg123', 'e10adc3949ba59abbe56e057f20f883e', 'lcg666', 'lcg123666@sohu.com', '1', '2016-10-20 10:10:44', '127.0.0.1', '2', '6');
INSERT INTO `ule_admin` VALUES ('78', 'lcg111', '96e79218965eb72c92a549dd5a330112', 'lcg111', 'lcg111@sohu.com', '1', '2016-10-20 11:28:40', '127.0.0.1', '0', '0');
INSERT INTO `ule_admin` VALUES ('80', 'test', 'e10adc3949ba59abbe56e057f20f883e', '342342', '4234234@sohu.com', '1', '2016-10-20 15:03:10', '127.0.0.1', '0', '0');

-- ----------------------------
-- Table structure for `ule_ask`
-- ----------------------------
DROP TABLE IF EXISTS `ule_ask`;
CREATE TABLE `ule_ask` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `ask_user` int(8) unsigned NOT NULL COMMENT '会员id',
  `ask_title` varchar(200) NOT NULL COMMENT '标题',
  `ask_content` mediumtext NOT NULL COMMENT '详细内容',
  `ask_saw` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `ask_answer` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '回答次数',
  `ask_focus` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '关注此问题的人',
  `ask_tag` varchar(200) NOT NULL COMMENT '问题标签',
  `ask_add` int(40) unsigned NOT NULL COMMENT '添加时间',
  `ask_state` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '目前状态（已回答，待回答，热门问题）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='悠乐帮问题列表';

-- ----------------------------
-- Records of ule_ask
-- ----------------------------
INSERT INTO `ule_ask` VALUES ('1', '3', 'test', 'dsdsadsadsadaa', '8', '9', '9', '', '1483184784', '1');
INSERT INTO `ule_ask` VALUES ('2', '4', 'test', 'dsdsadsadsadaa', '2', '11', '9', '', '1483184903', '1');
INSERT INTO `ule_ask` VALUES ('3', '6', '带上书包去拉瑟？', 'dsdsadsadsadaa', '12', '6', '1', '', '1483184967', '1');
INSERT INTO `ule_ask` VALUES ('4', '5', '北现17万平污水渗坑威胁地下水安全 环保部回应', '北现17万平污水渗坑威胁地下水安全 环保部回应', '20', '3', '9', '', '1492700375', '1');
INSERT INTO `ule_ask` VALUES ('5', '5', 'wahhahah', 'dsadsadsadas', '0', '0', '0', '', '1492959762', '1');
INSERT INTO `ule_ask` VALUES ('6', '5', '测试沙和尚啊', '继续详细的测测&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0015.gif&quot; _src=&quot;http://img.baidu.com/hi/jx2/j_0015.gif&quot;&gt;', '0', '0', '0', '', '1493032362', '1');
INSERT INTO `ule_ask` VALUES ('7', '5', '测试提交求助问题', '&lt;img src=&quot;/ueditor/php/upload/image/20170424/1493032580103177.jpg&quot; title=&quot;1493032580103177.jpg&quot; _src=&quot;/ueditor/php/upload/image/20170424/1493032580103177.jpg&quot; alt=&quot;picture1.jpg&quot;&gt;\n哈哈哈哈哈哈哈啊哈哈', '1', '0', '0', '', '1493032589', '1');
INSERT INTO `ule_ask` VALUES ('8', '5', '哈哈哈哈哈', '哈哈哈哈啊哈', '0', '0', '0', '', '1493034980', '1');
INSERT INTO `ule_ask` VALUES ('9', '5', '我家黑猪哇是哥住', '大撒旦撒旦撒&lt;img src=&quot;http://img.baidu.com/hi/face/i_f01.gif&quot; _src=&quot;http://img.baidu.com/hi/face/i_f01.gif&quot;&gt;', '0', '0', '0', '', '1493035032', '1');
INSERT INTO `ule_ask` VALUES ('10', '5', '红魔曼联 仍然保留着晋级希望', '伊布和罗货的撒大撒旦啊大撒旦撒大撒旦', '0', '0', '0', '', '1493035137', '1');
INSERT INTO `ule_ask` VALUES ('11', '5', '再次测试亿i啊', '大撒旦撒旦撒打算大撒旦撒', '0', '0', '0', '', '1493035198', '1');
INSERT INTO `ule_ask` VALUES ('12', '5', '测试测试测', '哈哈哈啊哈哈哈', '0', '0', '0', '', '1493035289', '1');
INSERT INTO `ule_ask` VALUES ('13', '5', '哈哈哈哈哈', '哈哈哈哈哈', '0', '0', '0', '', '1493035343', '1');
INSERT INTO `ule_ask` VALUES ('14', '5', '哈哈哈哈哈', '哈哈哈哈哈', '0', '0', '0', '', '1493035360', '1');
INSERT INTO `ule_ask` VALUES ('15', '5', 'layer.close(index) - 关闭特定层', 'dsada大撒旦撒倒萨倒萨大叔', '0', '0', '0', '', '1493035380', '1');
INSERT INTO `ule_ask` VALUES ('16', '5', '最后一次测试', '最后一次测测但是的撒旦撒', '0', '0', '0', '', '1493035410', '1');
INSERT INTO `ule_ask` VALUES ('17', '5', '发布求助问题', '在球队的机会是渺小的的', '0', '0', '0', '', '1493035479', '1');
INSERT INTO `ule_ask` VALUES ('18', '5', '测试测试继续测试', '哈哈哈哈哈哈哈', '0', '0', '0', '', '1493041686', '1');
INSERT INTO `ule_ask` VALUES ('19', '3', '张明测试测试', '哈哈哈哈详情们~~&lt;img src=&quot;http://img.baidu.com/hi/bobo/B_0003.gif&quot; _src=&quot;http://img.baidu.com/hi/bobo/B_0003.gif&quot;&gt;', '0', '0', '0', '', '1493041749', '1');
INSERT INTO `ule_ask` VALUES ('20', '3', '测试tags表是否可以带入userid', '大撒旦撒旦撒旦撒旦撒', '11', '0', '0', '', '1493041939', '1');
INSERT INTO `ule_ask` VALUES ('21', '3', '测试tag是为空的时候是否插入tag表', '侧hi测试侧hi侧hi从诶', '0', '0', '0', '', '1493042552', '1');
INSERT INTO `ule_ask` VALUES ('22', '3', '继续测试tags', '哈哈哈哈哈哈哈', '1', '0', '0', '', '1493043146', '1');
INSERT INTO `ule_ask` VALUES ('23', '3', '小猪哇打哈哈大坏蛋啊', '哈哈哈哈', '6', '0', '0', '', '1493043199', '1');
INSERT INTO `ule_ask` VALUES ('24', '5', '我的小猪哇他是黑虎娃', '哈哈哈哈哈哈', '0', '0', '0', '', '1493044118', '1');
INSERT INTO `ule_ask` VALUES ('25', '3', '测试用户积分是否增加，并且用户操作日志是否写入', '测试测侧hi侧hi测测测', '0', '0', '0', '', '1493121543', '1');
INSERT INTO `ule_ask` VALUES ('26', '3', '再次测试用户积分是否写入', '哈哈哈哈测试', '0', '0', '0', '', '1493121717', '1');
INSERT INTO `ule_ask` VALUES ('27', '3', '测试添加之后刷新父级窗口', '&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0013.gif&quot; _src=&quot;http://img.baidu.com/hi/jx2/j_0013.gif&quot;&gt;', '0', '0', '0', '', '1493122248', '1');
INSERT INTO `ule_ask` VALUES ('28', '3', '测试添加之后刷新父级窗口', '&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0013.gif&quot; _src=&quot;http://img.baidu.com/hi/jx2/j_0013.gif&quot;&gt;', '0', '0', '0', '', '1493122253', '1');
INSERT INTO `ule_ask` VALUES ('29', '3', '测试测试测试测试', '测试测试测试测试测试测试测试测试', '0', '0', '0', '', '1493122364', '1');
INSERT INTO `ule_ask` VALUES ('30', '3', '测试测试测试', '的撒大撒旦撒大', '4', '0', '0', '', '1493122422', '1');
INSERT INTO `ule_ask` VALUES ('31', '3', '测试测试测试', '大撒旦撒旦撒', '0', '0', '0', '', '1493122563', '1');
INSERT INTO `ule_ask` VALUES ('32', '3', '测试测是是', '的撒打算打算大撒旦', '8', '0', '0', '', '1493122576', '1');
INSERT INTO `ule_ask` VALUES ('33', '3', '哈哈哈dsada', '哈哈哈哈哈', '2', '0', '0', '', '1493122921', '1');
INSERT INTO `ule_ask` VALUES ('34', '3', '测试父即刷新', '杀进挥洒接口啊', '3', '0', '0', '', '1493122980', '1');
INSERT INTO `ule_ask` VALUES ('35', '3', '先刷新在关闭', '测试测试', '10', '0', '0', '', '1493123027', '1');
INSERT INTO `ule_ask` VALUES ('36', '3', '黑猪哇不要脸', '&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0002.gif&quot; _src=&quot;http://img.baidu.com/hi/jx2/j_0002.gif&quot;&gt;哈哈哈哈&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0002.gif&quot; _src=&quot;http://img.baidu.com/hi/jx2/j_0002.gif&quot;&gt;&lt;img src=&quot;http://img.baidu.com/hi/tsj/t_0004.gif&quot; _src=&quot;http://img.baidu.com/hi/tsj/t_0004.gif&quot;&gt;', '4', '0', '0', '', '1493124084', '1');
INSERT INTO `ule_ask` VALUES ('37', '5', '增加一个三分', '哈哈哈哈哈', '188', '4', '0', '', '1493126183', '1');
INSERT INTO `ule_ask` VALUES ('38', '5', '再添加一条', '测试测试&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0002.gif&quot; _src=&quot;http://img.baidu.com/hi/jx2/j_0002.gif&quot;&gt;&lt;img align=&quot;none&quot; width=&quot;400&quot; height=&quot;95&quot; _url=&quot;http://box.baidu.com/widget/flash/bdspacesong.swf?from=tiebasongwidget&amp;amp;url=&amp;amp;name=%E6%B5%AE%E5%A4%B8&amp;amp;artist=%E9%99%88%E5%A5%95%E8%BF%85&amp;amp;extra=U-87&amp;amp;autoPlay=false&amp;amp;loop=true&quot; class=&quot;edui-faked-music&quot; src=&quot;http://localhost/ule/Public/admin/lib/ueditor/1.4.3/lang/zh-cn/images/music.png&quot; _src=&quot;http://localhost/ule/Public/admin/lib/ueditor/1.4.3/lang/zh-cn/images/music.png&quot;&gt;', '12', '0', '0', '', '1493207883', '1');
INSERT INTO `ule_ask` VALUES ('39', '5', '测试文字是否换行', '参数绑定是通过直接绑定URL地址中的变量作为操作方法的参数，可以简化方法的定义甚至路由的解析。\n参数绑定功能默认是开启的，其原理是把URL中的参数（不包括模块、控制器和操作名）和操作方法中的参数进行绑定。\n要启用参数绑定功能，首先确保你开启了URL_PARAMS_BIND设置：', '19', '0', '0', '', '1493216169', '1');
INSERT INTO `ule_ask` VALUES ('40', '5', '继续测试哈哈', '中国青年网合肥4月26日电 整整一年过去了，全国劳模、国网安徽省电力公司宿州供电公司带电班副班长许启金回想起去年今日与总书记面对面交流的场景，还历历在目。\n“我们要全面建成小康社会，进而建成富强民主文明和谐的社会主义现代化国家，实现中华民族伟大复兴，必须依靠知识，必须依靠劳动，必须依靠广大青年。这是我们国家和民族发展的力量所在，也是我们事业成功的力量所在。”2016年4月26日的合肥，习近平总书记在知识分子、劳动模范、青年代表座谈会上说。', '44', '0', '0', '', '1493216545', '1');
INSERT INTO `ule_ask` VALUES ('41', '5', '继续厕厕厕厕厕厕', '&lt;p&gt;中国青年网合肥4月26日电&amp;nbsp;整整一年过去了，全国劳模、国网安徽省电力公司宿州供电公司带电班副班长许启金回想起去年今日与总书记面对面交流的场景，还历历在目。&lt;/p&gt;&lt;p&gt;“我们要全面建成小康社会，进而建成富强民主文明和谐的社会主义现代化国家，实现中华民族伟大复兴，必须依靠知识，必须依靠劳动，必须依靠广大青年。这是我们国家和民族发展的力量所在，也是我们事业成功的力量所在。”2016年4月26日的合肥，习近平总书记在知识分子、劳动模范、青年代表座谈会上说。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '76', '0', '0', '', '1493216627', '1');
INSERT INTO `ule_ask` VALUES ('42', '5', '测试公共方法是否可以调用成功', '&lt;p&gt;这次是新添加永爱&lt;/p&gt;', '0', '0', '0', '', '1493430899', '1');
INSERT INTO `ule_ask` VALUES ('43', '5', '继续测试测测才二次额测测额才', '&lt;p&gt;大撒旦撒但是但是&lt;/p&gt;', '33', '5', '0', '', '1493431391', '1');
INSERT INTO `ule_ask` VALUES ('44', '3', '测试发布dsada', '&lt;p&gt;萨大撒旦撒旦撒大&lt;/p&gt;', '3', '1', '0', '', '1493439035', '1');
INSERT INTO `ule_ask` VALUES ('45', '5', 'aaaaa', '&lt;p id=&quot;initContent&quot;&gt;请输入详细求助信息...&lt;/p&gt;', '0', '0', '0', '', '1493475574', '1');
INSERT INTO `ule_ask` VALUES ('46', '5', 'dsadd', '&lt;p&gt;dsadsa&lt;br/&gt;&lt;/p&gt;', '0', '0', '0', '', '1493475788', '1');
INSERT INTO `ule_ask` VALUES ('47', '5', 'dsadd', '&lt;p&gt;dsadsa&lt;br/&gt;&lt;/p&gt;', '0', '0', '0', '', '1493475789', '1');
INSERT INTO `ule_ask` VALUES ('48', '5', 'dddddd', '&lt;p&gt;dddddddd&lt;/p&gt;', '8', '0', '0', '', '1493475815', '1');
INSERT INTO `ule_ask` VALUES ('49', '5', 'javascript:;', '&lt;p&gt;cxcxzcxzcxzcxzc&lt;/p&gt;', '10', '2', '0', '', '1493476316', '1');

-- ----------------------------
-- Table structure for `ule_ask_answer`
-- ----------------------------
DROP TABLE IF EXISTS `ule_ask_answer`;
CREATE TABLE `ule_ask_answer` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `askpid` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '所属求助问题的id',
  `userid` int(8) unsigned NOT NULL COMMENT '发布会员的id',
  `content` tinytext NOT NULL COMMENT '回答内容',
  `pid` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '对别人发布的回答进行评论，这里是回复的那条回复的id',
  `support` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '支持数',
  `addtime` int(40) unsigned NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='用来记录用户对求助问题的回答和评论';

-- ----------------------------
-- Records of ule_ask_answer
-- ----------------------------
INSERT INTO `ule_ask_answer` VALUES ('1', '37', '5', '&lt;p&gt;啊啊dad撒旦撒旦撒旦的撒旦撒旦撒&lt;br/&gt;&lt;/p&gt;', '0', '21', '1493394559');
INSERT INTO `ule_ask_answer` VALUES ('2', '37', '5', '&lt;p&gt;给增加三分添加一条测试胰腺癌！！&lt;/p&gt;', '0', '0', '1493395011');
INSERT INTO `ule_ask_answer` VALUES ('3', '35', '5', '&lt;p&gt;35ide来测试&lt;/p&gt;', '0', '0', '1493395043');
INSERT INTO `ule_ask_answer` VALUES ('4', '0', '5', '新泽西州测试儿子', '2', '0', '1493431740');
INSERT INTO `ule_ask_answer` VALUES ('5', '37', '5', '&lt;p&gt;测试是否给主表写入回答条数&lt;/p&gt;', '0', '0', '1493430234');
INSERT INTO `ule_ask_answer` VALUES ('6', '37', '5', '&lt;p&gt;添加回答测试是否写入操作日志&lt;/p&gt;', '0', '0', '1493431740');
INSERT INTO `ule_ask_answer` VALUES ('7', '43', '5', '&lt;p&gt;测试回答测试挥发&lt;/p&gt;', '0', '0', '1493432067');
INSERT INTO `ule_ask_answer` VALUES ('8', '43', '5', '&lt;p&gt;德萨德萨大撒旦撒旦撒&lt;/p&gt;', '0', '0', '1493432685');
INSERT INTO `ule_ask_answer` VALUES ('9', '43', '3', '&lt;p&gt;德萨大撒旦撒旦撒大&lt;/p&gt;', '0', '0', '1493432717');
INSERT INTO `ule_ask_answer` VALUES ('10', '43', '3', '&lt;p&gt;h啊哈哈&lt;/p&gt;', '0', '0', '1493438958');
INSERT INTO `ule_ask_answer` VALUES ('11', '43', '3', '&lt;p&gt;哈哈哈哈哈哈啊哈&lt;/p&gt;', '0', '0', '1493438990');
INSERT INTO `ule_ask_answer` VALUES ('12', '44', '3', '&lt;p&gt;即将变成44分&lt;/p&gt;', '0', '0', '1493439083');
INSERT INTO `ule_ask_answer` VALUES ('13', '0', '3', '@刘家马大哈 哈哈哈哈', '4', '0', '1493456221');
INSERT INTO `ule_ask_answer` VALUES ('14', '0', '3', '@刘家马大哈 哈哈哈哈哈哈哈', '2', '0', '1493456383');
INSERT INTO `ule_ask_answer` VALUES ('15', '37', '3', '&lt;p&gt;小猪哇哈哈哈&lt;/p&gt;', '0', '0', '1493456428');
INSERT INTO `ule_ask_answer` VALUES ('16', '0', '3', '小猪哇你好啊', '15', '0', '1493456443');
INSERT INTO `ule_ask_answer` VALUES ('17', '0', '3', '@zhangming 小鸡哇', '15', '0', '1493456454');
INSERT INTO `ule_ask_answer` VALUES ('18', '37', '3', '&lt;p&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0063.gif&quot;/&gt;&lt;/p&gt;', '0', '0', '1493456557');
INSERT INTO `ule_ask_answer` VALUES ('19', '49', '5', '&lt;p&gt;回答测测&lt;/p&gt;', '0', '0', '1493476471');
INSERT INTO `ule_ask_answer` VALUES ('20', '0', '5', '继续测试', '19', '0', '1493476483');
INSERT INTO `ule_ask_answer` VALUES ('21', '0', '5', '@刘家马大哈 再来已va', '19', '0', '1493476499');
INSERT INTO `ule_ask_answer` VALUES ('22', '49', '5', '&lt;p&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0001.gif&quot;/&gt;&lt;/p&gt;', '0', '0', '1493476924');

-- ----------------------------
-- Table structure for `ule_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `ule_auth_group`;
CREATE TABLE `ule_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ule_auth_group
-- ----------------------------
INSERT INTO `ule_auth_group` VALUES ('1', '超级管理员', '1', '1,2,3,4,5');
INSERT INTO `ule_auth_group` VALUES ('2', '内容编辑', '1', '4,5');
INSERT INTO `ule_auth_group` VALUES ('3', '站点管理员', '1', '2,3,4,5');
INSERT INTO `ule_auth_group` VALUES ('4', '物流管理员', '1', '6');

-- ----------------------------
-- Table structure for `ule_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `ule_auth_group_access`;
CREATE TABLE `ule_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ule_auth_group_access
-- ----------------------------
INSERT INTO `ule_auth_group_access` VALUES ('1', '1');
INSERT INTO `ule_auth_group_access` VALUES ('46', '1');
INSERT INTO `ule_auth_group_access` VALUES ('47', '1');
INSERT INTO `ule_auth_group_access` VALUES ('48', '2');
INSERT INTO `ule_auth_group_access` VALUES ('49', '2');
INSERT INTO `ule_auth_group_access` VALUES ('50', '2');
INSERT INTO `ule_auth_group_access` VALUES ('51', '1');
INSERT INTO `ule_auth_group_access` VALUES ('52', '2');
INSERT INTO `ule_auth_group_access` VALUES ('54', '4');
INSERT INTO `ule_auth_group_access` VALUES ('58', '4');
INSERT INTO `ule_auth_group_access` VALUES ('77', '1');
INSERT INTO `ule_auth_group_access` VALUES ('78', '2');
INSERT INTO `ule_auth_group_access` VALUES ('79', '4');
INSERT INTO `ule_auth_group_access` VALUES ('80', '1');

-- ----------------------------
-- Table structure for `ule_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ule_auth_rule`;
CREATE TABLE `ule_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ule_auth_rule
-- ----------------------------
INSERT INTO `ule_auth_rule` VALUES ('1', '1', '系统管理', '1', '1', '');
INSERT INTO `ule_auth_rule` VALUES ('2', '2', '管理员管理', '1', '1', '');
INSERT INTO `ule_auth_rule` VALUES ('3', '3', '会员管理', '1', '1', '');
INSERT INTO `ule_auth_rule` VALUES ('4', '4', '评论管理', '1', '1', '');
INSERT INTO `ule_auth_rule` VALUES ('5', '5', '内容管理', '1', '1', '');
INSERT INTO `ule_auth_rule` VALUES ('6', '6', '物流管理', '1', '1', '');

-- ----------------------------
-- Table structure for `ule_banner`
-- ----------------------------
DROP TABLE IF EXISTS `ule_banner`;
CREATE TABLE `ule_banner` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `banner_name` varchar(100) NOT NULL,
  `banner_link` varchar(200) NOT NULL,
  `banner_info` varchar(400) NOT NULL,
  `banner_class` int(8) unsigned NOT NULL COMMENT '所属类',
  `banner_thumb` text NOT NULL COMMENT '图片列表',
  `banner_color` varchar(20) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL COMMENT '是否显示',
  `time` int(20) unsigned NOT NULL,
  `sort` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='广告图详情';

-- ----------------------------
-- Records of ule_banner
-- ----------------------------
INSERT INTO `ule_banner` VALUES ('18', '01', '#', '...', '10', '[\"\\/Uploads\\/thumb\\/2016-10-09\\/57f9be933b613.jpg\"]', '#1990ee', '1', '1475985046', '1');
INSERT INTO `ule_banner` VALUES ('19', '02', '#', '...', '10', '[\"\\/Uploads\\/thumb\\/2016-10-09\\/57f9beb1dcb95.jpg\"]', '#2b84f1', '1', '1475985076', '2');
INSERT INTO `ule_banner` VALUES ('20', '最新APP下载', '#', 'ddddd', '11', '[\"\\/Uploads\\/thumb\\/2016-10-10\\/57fb561f9846f.jpg\"]', '', '1', '1476089434', '1');
INSERT INTO `ule_banner` VALUES ('10', '广告投诉建议', '#', '得到', '11', '[\"\\/Uploads\\/thumb\\/2016-09-29\\/57ecda6d28e91.jpg\"]', '', '1', '1475140208', '2');

-- ----------------------------
-- Table structure for `ule_bclass`
-- ----------------------------
DROP TABLE IF EXISTS `ule_bclass`;
CREATE TABLE `ule_bclass` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(8) unsigned NOT NULL COMMENT '父级',
  `is_show` tinyint(1) unsigned NOT NULL COMMENT '是否显示',
  `class_name` varchar(100) NOT NULL COMMENT '类名',
  `class_info` varchar(300) NOT NULL,
  `time` int(40) unsigned NOT NULL COMMENT '时间',
  `add_user` varchar(40) NOT NULL COMMENT '添加人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='广告位分类表';

-- ----------------------------
-- Records of ule_bclass
-- ----------------------------
INSERT INTO `ule_bclass` VALUES ('11', '0', '1', '首页资讯中心的专题轮换图', '这个是固定尺寸550*300', '1474857931', 'admin');
INSERT INTO `ule_bclass` VALUES ('10', '0', '0', '首页顶部大轮换图', '首页顶部，最多循环5张即可,可以设置背景颜色，高度450px', '1474857973', 'admin');

-- ----------------------------
-- Table structure for `ule_class`
-- ----------------------------
DROP TABLE IF EXISTS `ule_class`;
CREATE TABLE `ule_class` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(22) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `class_name` varchar(60) NOT NULL COMMENT '栏目中文名',
  `class_en` varchar(40) NOT NULL COMMENT '栏目英文名',
  `class_info` varchar(200) NOT NULL COMMENT '栏目说明',
  `class_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '栏目类型,0：list,1:page',
  `class_img` varchar(200) NOT NULL COMMENT '栏目图片',
  `sort` int(9) unsigned NOT NULL COMMENT '排序',
  `is_menu` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否导航显示',
  `time` date NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of ule_class
-- ----------------------------
INSERT INTO `ule_class` VALUES ('43', '35', '联系我们', 'contact', '联系我们', '1', '', '43', '1', '2017-04-11');
INSERT INTO `ule_class` VALUES ('38', '35', '使用帮助', 'usehelp', '使用帮助', '1', '', '38', '1', '2017-04-11');
INSERT INTO `ule_class` VALUES ('39', '35', '网站地图', 'sitemap', '网站地图', '1', '', '39', '1', '2017-04-11');
INSERT INTO `ule_class` VALUES ('40', '35', '版权声明', 'copyright', '版权声明', '1', '', '40', '1', '2017-04-11');
INSERT INTO `ule_class` VALUES ('37', '35', '新手上路', 'newmember', '新手上路', '1', '', '37', '1', '2017-04-11');
INSERT INTO `ule_class` VALUES ('35', '0', '帮助中心', 'help', '版权帮助信息等等', '0', '', '35', '0', '2017-04-11');
INSERT INTO `ule_class` VALUES ('36', '35', '悠乐简介', 'uleabout', '网站简介', '1', '', '36', '1', '2017-04-11');

-- ----------------------------
-- Table structure for `ule_focus_ask`
-- ----------------------------
DROP TABLE IF EXISTS `ule_focus_ask`;
CREATE TABLE `ule_focus_ask` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `ask_id` int(8) unsigned NOT NULL COMMENT '关注的求助问题',
  `user_id` int(8) unsigned NOT NULL COMMENT '关注人的会员id',
  `focus_time` int(20) unsigned NOT NULL COMMENT '关注时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='用来记录会员关注的求助问题';

-- ----------------------------
-- Records of ule_focus_ask
-- ----------------------------
INSERT INTO `ule_focus_ask` VALUES ('1', '40', '5', '0');
INSERT INTO `ule_focus_ask` VALUES ('2', '41', '5', '1493301472');
INSERT INTO `ule_focus_ask` VALUES ('3', '39', '5', '1493301573');
INSERT INTO `ule_focus_ask` VALUES ('4', '37', '5', '1493301746');
INSERT INTO `ule_focus_ask` VALUES ('5', '36', '5', '1493301788');
INSERT INTO `ule_focus_ask` VALUES ('6', '34', '5', '1493301851');
INSERT INTO `ule_focus_ask` VALUES ('7', '32', '5', '1493301908');
INSERT INTO `ule_focus_ask` VALUES ('8', '23', '5', '1493303909');
INSERT INTO `ule_focus_ask` VALUES ('9', '20', '5', '1493304437');
INSERT INTO `ule_focus_ask` VALUES ('10', '40', '3', '1493304723');
INSERT INTO `ule_focus_ask` VALUES ('11', '38', '3', '1493304811');
INSERT INTO `ule_focus_ask` VALUES ('12', '36', '3', '1493304920');
INSERT INTO `ule_focus_ask` VALUES ('13', '22', '3', '1493304977');
INSERT INTO `ule_focus_ask` VALUES ('14', '41', '3', '1493389791');
INSERT INTO `ule_focus_ask` VALUES ('15', '38', '5', '1493391746');
INSERT INTO `ule_focus_ask` VALUES ('16', '43', '3', '1493439146');
INSERT INTO `ule_focus_ask` VALUES ('17', '49', '5', '1493476460');

-- ----------------------------
-- Table structure for `ule_from`
-- ----------------------------
DROP TABLE IF EXISTS `ule_from`;
CREATE TABLE `ule_from` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '来源名',
  `name_en` varchar(60) NOT NULL COMMENT '来源英文名',
  `name_info` varchar(200) NOT NULL COMMENT '来源说明',
  `link` varchar(200) NOT NULL COMMENT '来源链接',
  `date` datetime NOT NULL COMMENT '添加 时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ule_from
-- ----------------------------
INSERT INTO `ule_from` VALUES ('4', '申通编辑', 'sto', 'dd', 'http://www.sto.cn', '2016-09-22 10:11:15');
INSERT INTO `ule_from` VALUES ('5', '申通国际部', '', '申通国际部', '#', '2016-09-29 17:34:53');
INSERT INTO `ule_from` VALUES ('6', '申通国际事业部', 'sto', 'ss', 'http://intl.sto.cn/', '2016-10-14 14:21:54');

-- ----------------------------
-- Table structure for `ule_member`
-- ----------------------------
DROP TABLE IF EXISTS `ule_member`;
CREATE TABLE `ule_member` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `member_name` varchar(40) NOT NULL COMMENT '会员名',
  `member_ename` varchar(40) NOT NULL COMMENT '别名',
  `member_face` text NOT NULL COMMENT '会员头像',
  `member_sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '默认0 未知 1为男性 2女性',
  `member_email` varchar(50) NOT NULL COMMENT '邮箱',
  `member_qq` int(20) NOT NULL COMMENT 'QQ',
  `memer_phone` varchar(20) NOT NULL COMMENT '手机',
  `member_pass` varchar(42) NOT NULL COMMENT '密码',
  `member_year` int(4) unsigned NOT NULL COMMENT '出生年',
  `member_month` int(2) unsigned NOT NULL COMMENT '出生月',
  `member_day` int(2) unsigned NOT NULL COMMENT '出生日',
  `member_reg_day` int(42) unsigned NOT NULL COMMENT '注册日时间戳',
  `member_from` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '默认自己注册0，后台添加1',
  `member_state` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态，默认是1是正常，0是冻结',
  `member_code` varchar(42) NOT NULL COMMENT '用户识别码',
  `member_integral` int(8) unsigned NOT NULL DEFAULT '10' COMMENT '用户积分',
  `member_about` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ule_member
-- ----------------------------
INSERT INTO `ule_member` VALUES ('2', 'ming163263', '', '', '0', '', '0', '', 'f3e70847bd7ce1ca8fd3fc47701393b2', '0', '0', '0', '1483184766', '1', '0', 'HT!8B{LE', '0', null);
INSERT INTO `ule_member` VALUES ('3', 'zhangming', '', '', '0', 'zm592565@163.com', '0', '', 'b8e6e589115c042aa79cb4359b231134', '0', '0', '0', '1483184784', '1', '1', '{Q$cLZw;', '48', null);
INSERT INTO `ule_member` VALUES ('4', '344822559', '', '', '0', '344822559@qq.com', '0', '', 'ae6533220c08c80e9ec0486e756ba40b', '0', '0', '0', '1491636754', '1', '1', 'pW,No?8q', '0', null);
INSERT INTO `ule_member` VALUES ('5', '刘家马大哈', '', '/ule/Uploads/thumb/2017-03-30/58dcc8a68e1e2.jpg', '0', '123@qq.com', '0', '', 'aea3f679572e0485db6089a6c159e6b8', '0', '0', '0', '1491729638', '0', '1', 'eect*R(b', '46', null);
INSERT INTO `ule_member` VALUES ('6', '王家小姐', '', '', '0', '456@qq.com', '0', '', '3f97d055dab070c1fdd55cece16fb172', '0', '0', '0', '1491730363', '1', '1', 'd($!E U9', '0', null);
INSERT INTO `ule_member` VALUES ('10', '', '', '', '0', 'zm592561111@163.com', '0', '', '41a36e1204cab834b4fae65dc15fce70', '0', '0', '0', '1491910494', '0', '1', 'I>7un$p&', '0', null);
INSERT INTO `ule_member` VALUES ('11', '', '', '', '0', 'zm592@163.com', '0', '', 'fd5fde8504903788ab9c218b1b7153c0', '0', '0', '0', '1491918268', '0', '1', 'n$k=pyf$', '0', null);
INSERT INTO `ule_member` VALUES ('12', '', '', '', '0', 'cehi@123.com', '0', '', '48bd2831d1a739f8dcaca894920d059a', '0', '0', '0', '1493462675', '0', '1', '?#Sj_GF5', '10', null);

-- ----------------------------
-- Table structure for `ule_member_do`
-- ----------------------------
DROP TABLE IF EXISTS `ule_member_do`;
CREATE TABLE `ule_member_do` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(8) NOT NULL COMMENT '会员id',
  `user_do` varchar(200) NOT NULL COMMENT '操作内容',
  `add_int` int(10) NOT NULL COMMENT '添加积分',
  `add_time` int(40) unsigned NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='会员操作增加积分详情';

-- ----------------------------
-- Records of ule_member_do
-- ----------------------------
INSERT INTO `ule_member_do` VALUES ('1', '3', '发布求助', '3', '1493121718');
INSERT INTO `ule_member_do` VALUES ('2', '3', '发布求助', '3', '1493122922');
INSERT INTO `ule_member_do` VALUES ('3', '3', '发布求助', '3', '1493122981');
INSERT INTO `ule_member_do` VALUES ('4', '3', '发布求助', '3', '1493123029');
INSERT INTO `ule_member_do` VALUES ('5', '3', '发布求助', '3', '1493124085');
INSERT INTO `ule_member_do` VALUES ('6', '5', '发布求助', '3', '1493126184');
INSERT INTO `ule_member_do` VALUES ('7', '5', '发布求助', '3', '1493207885');
INSERT INTO `ule_member_do` VALUES ('8', '5', '发布求助', '3', '1493216170');
INSERT INTO `ule_member_do` VALUES ('9', '5', '发布求助', '3', '1493216546');
INSERT INTO `ule_member_do` VALUES ('10', '5', '发布求助', '3', '1493216628');
INSERT INTO `ule_member_do` VALUES ('11', '5', '发布求助', '3', '1493430900');
INSERT INTO `ule_member_do` VALUES ('12', '5', '发布求助', '3', '1493431392');
INSERT INTO `ule_member_do` VALUES ('13', '5', '回答求助信息', '2', '1493431740');
INSERT INTO `ule_member_do` VALUES ('14', '5', '回答求助信息', '2', '1493432067');
INSERT INTO `ule_member_do` VALUES ('15', '5', '回答求助信息', '2', '1493432685');
INSERT INTO `ule_member_do` VALUES ('16', '3', '回答求助信息', '2', '1493432717');
INSERT INTO `ule_member_do` VALUES ('17', '3', '回答求助信息', '2', '1493438958');
INSERT INTO `ule_member_do` VALUES ('18', '3', '回答求助信息', '2', '1493438990');
INSERT INTO `ule_member_do` VALUES ('19', '3', '发布求助', '3', '1493439036');
INSERT INTO `ule_member_do` VALUES ('20', '3', '回答求助信息', '2', '1493439083');
INSERT INTO `ule_member_do` VALUES ('21', '3', '回答求助信息', '2', '1493456428');
INSERT INTO `ule_member_do` VALUES ('22', '3', '回答求助信息', '2', '1493456557');
INSERT INTO `ule_member_do` VALUES ('23', '5', '发布求助', '3', '1493475575');
INSERT INTO `ule_member_do` VALUES ('24', '5', '发布求助', '3', '1493475789');
INSERT INTO `ule_member_do` VALUES ('25', '5', '发布求助', '3', '1493475790');
INSERT INTO `ule_member_do` VALUES ('26', '5', '发布求助', '3', '1493475816');
INSERT INTO `ule_member_do` VALUES ('27', '5', '发布求助', '3', '1493476317');
INSERT INTO `ule_member_do` VALUES ('28', '5', '回答求助信息', '2', '1493476471');
INSERT INTO `ule_member_do` VALUES ('29', '5', '回答求助信息', '2', '1493476924');

-- ----------------------------
-- Table structure for `ule_member_score`
-- ----------------------------
DROP TABLE IF EXISTS `ule_member_score`;
CREATE TABLE `ule_member_score` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '用户操作内容',
  `add_score` int(8) unsigned NOT NULL COMMENT '此项操作增加的分数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户操作增加积分分类';

-- ----------------------------
-- Records of ule_member_score
-- ----------------------------
INSERT INTO `ule_member_score` VALUES ('1', '发布求助', '3');
INSERT INTO `ule_member_score` VALUES ('2', '完善会员资料', '5');
INSERT INTO `ule_member_score` VALUES ('3', '回答求助信息', '2');

-- ----------------------------
-- Table structure for `ule_message`
-- ----------------------------
DROP TABLE IF EXISTS `ule_message`;
CREATE TABLE `ule_message` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(8) unsigned NOT NULL COMMENT '评论会员id',
  `pid` int(8) unsigned NOT NULL COMMENT '所评论的页面id',
  `message_info` varchar(200) NOT NULL COMMENT '评论内容',
  `admire` int(8) unsigned NOT NULL COMMENT '点赞次数',
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态1是显示0是隐藏',
  `add_time` int(50) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ule_message
-- ----------------------------
INSERT INTO `ule_message` VALUES ('1', '3', '1', '123132132123132132', '10', '1', '1483184784');

-- ----------------------------
-- Table structure for `ule_net`
-- ----------------------------
DROP TABLE IF EXISTS `ule_net`;
CREATE TABLE `ule_net` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `nation` varchar(60) NOT NULL COMMENT '国家名',
  `company_cn` varchar(100) NOT NULL COMMENT '中文公司名',
  `company_en` varchar(200) NOT NULL COMMENT '英文公司名',
  `city_cn` varchar(100) NOT NULL COMMENT '所在城市中文',
  `city_en` varchar(100) NOT NULL COMMENT '所在城市英文名',
  `net_pic` mediumtext NOT NULL COMMENT '网点图片',
  `is_show` tinyint(1) unsigned NOT NULL COMMENT '是否显示',
  `net_info` mediumtext NOT NULL COMMENT '网点介绍',
  `address_cn` varchar(400) NOT NULL COMMENT '中文地址',
  `address_en` varchar(600) NOT NULL COMMENT '英文地址',
  `charge` varchar(100) NOT NULL COMMENT '负责人',
  `manager` varchar(100) NOT NULL COMMENT '客服经理',
  `tel` varchar(200) NOT NULL COMMENT '客服电话',
  `add_user` int(8) unsigned NOT NULL COMMENT '添加用户',
  `add_time` int(20) unsigned NOT NULL COMMENT '添加时间戳',
  `sort` int(8) unsigned NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ule_net
-- ----------------------------
INSERT INTO `ule_net` VALUES ('20', '中國', '香港申通', 'Shentong International Express (Hong Kong) Ltd.', '香港', 'Hong Kong', 'null', '1', '', '香港荃灣大涌道22-28號合福工業大廈15樓全層', '15/F Hale  Weal  Industrial Building  22-28 Tai Chung  Road  Tsuen Wan  N.T', '张存伟', '關劍文', '00852-27071670(銷售）/00852-27071624（客服）/00852-27071628（客服）', '51', '1476178978', '20');
INSERT INTO `ule_net` VALUES ('21', '美国', '美国申通', 'STO INTL(USA)', '旧金山', 'Fremont', 'null', '1', '', '', '40539 Encyclopedia Cir, Fremont, CA 94538', '杨璞', 'sissy', '510-6836188', '51', '1476179166', '45');
INSERT INTO `ule_net` VALUES ('22', '美国', '美国申通', 'STO INTL(USA)', '洛杉矶', 'Los Angeles', 'null', '1', '', '', '2019 Santa Anita Ave., South El Monte, CA 91733', '杨璞', 'wendy', '626-2797388/626-2797386', '51', '1476179273', '46');
INSERT INTO `ule_net` VALUES ('23', '美国', '美国申通', 'STO INTL(USA)', '俄勒冈', 'Oregon', 'null', '1', '', '', '7858 SW Nimbus Ave, Beaverton, OR 97008', '杨璞', 'Lam', '503-2142128', '51', '1476179357', '47');
INSERT INTO `ule_net` VALUES ('24', '美国', '美国申通', 'STO INTL(USA)', '芝加哥', 'Chicago', 'null', '1', '', '', '3550 S Morgan St. , Chicago IL , 60609', '杨璞', 'jim', '312-2332119', '51', '1476179438', '48');
INSERT INTO `ule_net` VALUES ('25', '美国', '美国申通', 'STO INTL(USA)', '纽约', 'New York', 'null', '1', '', '', '95-A Executive Dr, Brentwood , NY 11717', '杨璞', 'qiang', '929-9998887', '51', '1476179517', '49');
INSERT INTO `ule_net` VALUES ('26', '美国', '美国申通', 'STO INTL(USA)', '奥兰多', 'Orlando', 'null', '1', '', '', '5084 W Colonial Dr , Orlando, FL 32808', '杨璞', 'tony', '407-2718499', '51', '1476179617', '50');
INSERT INTO `ule_net` VALUES ('27', '美国', '美国申通', 'STO INTL(USA)', '波士顿', 'Boston', 'null', '1', '', '', '13 Garabedian Dr unit A ，Salem NH 03079', '杨璞', 'woody', '781-3630796', '51', '1476179688', '51');
INSERT INTO `ule_net` VALUES ('28', '美国', '美国申通', 'STO INTL(USA)', '休斯顿', 'Houston', 'null', '1', '', '', '10641 Harwin , Suite 506 ,Houston,TX 77036', '杨璞', 'WilsonWang', '626-2389155', '51', '1476179826', '52');
INSERT INTO `ule_net` VALUES ('29', '美国', '美国申通', 'STO INTL(USA)', '西雅图', 'Seattle', 'null', '1', '', '', '544 Industry Drive,Tukwila WA 98188', '杨璞', 'ZhaoBaoSheng', '253-2365223/253-2437909', '51', '1476179910', '53');
INSERT INTO `ule_net` VALUES ('30', '美国', '美国申通', 'STO INTL(USA)', '亚特兰大', 'Atlanta', 'null', '1', '', '', '3766 Peachtree Crest Dr.Suits C Duluth GA30097', '杨璞', 'Henry', '347-3639747', '51', '1476179974', '54');
INSERT INTO `ule_net` VALUES ('31', '美国', '美国申通', 'STO INTL(USA)', '达拉斯', 'Dallas', 'null', '1', '', '', '1325 Whitlock Ln,Suite 408 ,Carrollton TX75006', '杨璞', 'chunli', '818-4057880', '51', '1476180050', '55');
INSERT INTO `ule_net` VALUES ('32', '美国', '美国申通', 'STO INTL(USA)', '特拉华', 'Delaware', 'null', '1', '', '', '261 Quigley Blvd, Suite 2, New Castle, DE 19720', '杨璞', 'mike', '302-525-4055', '51', '1476180120', '56');
INSERT INTO `ule_net` VALUES ('33', '加拿大', '加拿大申通', 'STO Express Canada Co., Ltd', '多伦多', 'Toronto', 'null', '1', '', '19 瓦尔肯路,怡陶碧谷,安大略,M9W 1L3', '19 Vulcan St,Etobocoke,Ontario,M9W 1L3', 'Cissy', 'Franky Qian', '905-754-8557/416-855-7300', '51', '1476180256', '33');
INSERT INTO `ule_net` VALUES ('34', '韩国', '韩国申通', 'STO Express Korea Co.,Ltd.', '京畿道金浦市', 'Gimpo-si,Gyeonggi-Do', 'null', '1', '', '京畿道金浦市高村邑银杏永思亭路 155-9（10124）', '155-9，Eunhaeng Young sa jung-Ro,Gochon-Eup,Gimpo-si,Gyeonggi-Do,Korea(10124)', '李宇宙', '文莲玉/权秀玉', '0082-10-8317-8370/0082-10-9455-6272', '51', '1476180362', '34');
INSERT INTO `ule_net` VALUES ('35', '澳大利亚', '澳大利亚申通', 'STO Express Australia Pty Ltd', '悉尼', 'Sydney', 'null', '1', '', '', '15/47 Parramatta Road，Granville，NSW 2142', '张沫', '宋卉卉', '+61286771598/+61488979977', '51', '1476180500', '35');
INSERT INTO `ule_net` VALUES ('36', '印度尼西亚', '印度尼西亚申通', 'PT.STO.EXPRESS INDONESIA', '雅加达', 'JAKARTA', 'null', '1', '', '雅加达市香港城C区GF层94号', 'Mangga 2 Square Blok GF NO.C94 Jakarta', '唐关称', '李武', 'oo6281287226755/13826498095', '51', '1476180584', '36');
INSERT INTO `ule_net` VALUES ('37', '尼泊尔', '尼泊尔申通', 'STO XPRESS NEPAL PVT.LTD', '尼泊尔加德满都', 'KTHMANDU NEPAL', 'null', '1', '', '尼泊尔加德满都泰米尔', 'Jyatha Thamel Kthmandu Nepal', '陈建红', '吴燕利', '13989902517/00977-9818421112', '51', '1476180663', '37');
INSERT INTO `ule_net` VALUES ('38', '日本', '日本申通', 'Sto Express Japan Co.,Ltd', '东京', 'Tokyo', 'null', '1', '', '东京都中央区八重洲1-6-19-2F', '1-6-19-2F,Yaesu,Chuo-ku,Tokyo JAPAN(103-0028)', '薛立功', '宋征鹏', '080-3359-2839/03-6262-5578', '51', '1476180747', '38');
INSERT INTO `ule_net` VALUES ('39', '俄罗斯', '俄罗斯申通', '&quot;STO express&quot; JSC', '海参崴', 'Vladivostok', 'null', '1', '', '俄罗斯滨海边疆区海参崴第一大海街20号', 'Russia, Vladivostok city, 1st Morskaya 20', 'Pergament Matvey Grigorievich 马特为', 'Chen Dmitrii Vladimirovich 蔡雪崐', '0079149623072/0079147037311', '51', '1476180860', '39');
INSERT INTO `ule_net` VALUES ('40', '欧洲', '欧洲申通', 'STO Express Europe LTD.CO', '扎芬特姆市 比利时', 'Zaventem Belgium', 'null', '1', '', '鲁文大道510号/2号楼/信箱5', 'Leuvensesteenweg 510/2/5', '赵柄乾，赵薇', '曹鑫', '0032473288115/003227219140', '51', '1476180947', '40');
INSERT INTO `ule_net` VALUES ('41', '荷兰', '荷兰申通', 'STO Express BV LTD. CO.', '斯希普霍尔', 'Schiphol', 'null', '1', '', '', 'Capronilaan 12-16, 1119 NR Schiphol', '平静', '马晓菲', '0031685338203/008613565818951/008618119251324', '51', '1476181024', '41');
INSERT INTO `ule_net` VALUES ('42', '英国', '英国申通', 'STO Express UK', '伦敦，费尔特姆', 'Feltham', 'null', '1', '', '', 'Unit 2 Nexus Close, Central Way, Feltham, TW 140 AF', '赵柄乾', 'Mars', '004420 8890 2895/004420 3725 6310', '51', '1476181104', '42');
INSERT INTO `ule_net` VALUES ('43', '新西兰', '新西兰申通', '（STO EXPRESS (NEW ZEALAND) LTD', '奥克兰', 'AUCKLAND', 'null', '1', '', '', 'UNIT C, 1 HIGHBROOK DRIVE, AUCKLAND, NEW ZEALAND', '刘毅思', '张子琳', '0064-92710099/0064-2040783450', '51', '1476181175', '43');
INSERT INTO `ule_net` VALUES ('44', 'dsad', 'dsads', 'da', 'dsa', 'dsad', 'null', '1', 'dsadsa', 'sad', 'sadsa', 'dsad', 'dsa', 'dsa', '1', '1492700375', '44');

-- ----------------------------
-- Table structure for `ule_news`
-- ----------------------------
DROP TABLE IF EXISTS `ule_news`;
CREATE TABLE `ule_news` (
  `id` tinyint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `fromid` int(8) unsigned NOT NULL COMMENT '来源ID',
  `copyfrom` varchar(20) NOT NULL,
  `digest` varchar(300) NOT NULL,
  `uid` int(8) unsigned NOT NULL,
  `keyword` varchar(300) NOT NULL,
  `is_comment` tinyint(1) unsigned NOT NULL,
  `content` text NOT NULL,
  `photo` mediumtext NOT NULL,
  `time` int(20) unsigned NOT NULL,
  `sort` int(8) unsigned NOT NULL,
  `userip` varchar(15) NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ule_news
-- ----------------------------
INSERT INTO `ule_news` VALUES ('29', '1231321113334445556666', '3', '13213213', '1321231321111555', '2', '123132123111', '1', '&lt;p&gt;13212313213212312311&lt;/p&gt;', 'null', '1474451613', '12', '::1', '0');
INSERT INTO `ule_news` VALUES ('30', 'dsadsads1111222', '1', 'dsad', 'sadsadsa', '2', 'dsad', '0', '&lt;p&gt;sadsadsadsa&lt;/p&gt;', 'null', '1474442208', '30', '::1', '0');
INSERT INTO `ule_news` VALUES ('36', '2013年4月，申通快递100万救灾物资第一时间运往雅安灾区', '4', '', '4.20雅安地震，申通快递全网积极响应，免费运送寄递物资，100万救灾物资第一时间运往灾区，全网员工纷纷捐款捐物，用申通人的力量去帮助灾区生命度过难关。', '6', '2013年4月，申通快递100万救灾物资第一时间运往雅安灾区', '0', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161010/1476081897393264.jpg&quot; title=&quot;1476081897393264.jpg&quot; alt=&quot;cs8.jpg&quot; style=&quot;white-space: normal;&quot;/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;4.20雅安地震，申通快递全网积极响应，免费运送寄递物资，100万救灾物资第一时间运往灾区，全网员工纷纷捐款捐物，用申通人的力量去帮助灾区生命度过难关。&lt;/p&gt;', 'null', '1476081910', '30', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('52', '国际事业部在申通快递“喜迎国庆 申声不息”歌咏大赛中荣获三等奖', '4', '申通国际事业部', '红歌嘹亮，激情飞扬。为庆祝中华人民共和国成立67周年，9月22日下午，申通快递在青浦区重固镇影剧院隆重举行“喜迎国庆　申声不息”歌咏比赛。', '20', '唱红歌', '0', '&lt;p style=&quot;text-indent: 32px; line-height: 180%; text-align: center;&quot;&gt;&lt;span style=&quot;font-size:16px;line-height:180%;font-family:宋体;color:#4F4F4F&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20160930/1475214049959032.jpg&quot; title=&quot;1475214049959032.jpg&quot; alt=&quot;201692683430415.jpg&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent: 32px;line-height: 180%&quot;&gt;&lt;span style=&quot;font-size:16px;line-height:180%;font-family:宋体;color:#4F4F4F&quot;&gt;红歌嘹亮，激情飞扬。为庆祝中华人民共和国成立&lt;/span&gt;&lt;span style=&quot;font-size:16px;line-height:180%;font-family:&amp;#39;Calibri Light&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#4F4F4F&quot;&gt;67&lt;/span&gt;&lt;span style=&quot;font-size:16px;line-height:180%;font-family:宋体;color:#4F4F4F&quot;&gt;周年，&lt;/span&gt;&lt;span style=&quot;font-size:16px;line-height:180%;font-family:&amp;#39;Calibri Light&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#4F4F4F&quot;&gt;9&lt;/span&gt;&lt;span style=&quot;font-size:16px;line-height:180%;font-family:宋体;color:#4F4F4F&quot;&gt;月&lt;/span&gt;&lt;span style=&quot;font-size:16px;line-height:180%;font-family:&amp;#39;Calibri Light&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#4F4F4F&quot;&gt;22&lt;/span&gt;&lt;span style=&quot;font-size:16px;line-height:180%;font-family:宋体;color:#4F4F4F&quot;&gt;日下午，申通快递在青浦区重固镇影剧院隆重举行“喜迎国庆　申声不息”歌咏比赛。国际事业部与市场营销部组成联合代表队，利用午休时间积极训练彩排，集思广益准备服装道具及配套动作。用一曲“打靶归来”展现了申通人奋勇拼搏，不断进取的精神，用歌声祝福祖国，用行动献礼祖国。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent: 32px; line-height: 180%; text-align: center;&quot;&gt;&lt;span style=&quot;font-size:16px;line-height:180%;font-family:宋体;color:#4F4F4F&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20160930/1475214108708153.jpg&quot; title=&quot;1475214108708153.jpg&quot; alt=&quot;IMG_2073.JPG&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent: 32px; line-height: 180%; text-align: center;&quot;&gt;&lt;span style=&quot;font-size:16px;line-height:180%;font-family:宋体;color:#4F4F4F&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20160930/1475214122396973.jpg&quot; title=&quot;1475214122396973.jpg&quot; alt=&quot;FullSizeRender.jpg&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent: 32px;line-height: 180%&quot;&gt;&lt;span style=&quot;font-size:16px;line-height:180%;font-family:宋体;color:#4F4F4F&quot;&gt;经过激烈角逐，在&lt;/span&gt;&lt;span style=&quot;font-size:16px;line-height:180%;font-family:&amp;#39;Calibri Light&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#4F4F4F&quot;&gt;12&lt;/span&gt;&lt;span style=&quot;font-size:16px;line-height:180%;font-family:宋体;color:#4F4F4F&quot;&gt;支队伍中，国际事业部与市场营销部联合代表队荣获三等奖。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent: 32px;line-height: 180%&quot;&gt;&lt;span style=&quot;font-size:16px;line-height:180%;font-family:宋体;color:#4F4F4F&quot;&gt;国际事业部参赛的人员有：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent: 32px;line-height: 180%&quot;&gt;&lt;span style=&quot;font-size:16px;line-height:180%;font-family:宋体;color:#4F4F4F&quot;&gt;指挥：李怡婷&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent: 32px;line-height: 180%&quot;&gt;&lt;span style=&quot;font-size:16px;line-height:180%;font-family:宋体;color:#4F4F4F&quot;&gt;演唱：张立觉、王文博、边元科、王小明、尹玲、王黎明、姜子杰，贺程&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent: 32px;line-height: 180%&quot;&gt;&lt;span style=&quot;font-size:16px;line-height:180%;font-family:宋体;color:#4F4F4F&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476162347', '51', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('51', '乌克兰EUROFRUIT COMPANY Ltd.董事长陈益强与香港弘亿国际有限公司董事长郑峰拜访申通国际事业部', '4', '申通国际事业部', '2016年9月26日，乌克兰EUROFRUIT COMPANY Ltd.董事长陈益强及香港弘亿国际有限公司董事长郑峰远道而来，拜访了申通国际事业部并参与了我部隆重的乔迁仪式', '20', '申通国际部', '0', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20160929/1475141791368705.jpg&quot; title=&quot;1475141791368705.jpg&quot; alt=&quot;IMG_2123_副本.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;　　2016&lt;span style=&quot;font-family:宋体&quot;&gt;年&lt;/span&gt;9&lt;span style=&quot;font-family:宋体&quot;&gt;月&lt;/span&gt;26&lt;span style=&quot;font-family:宋体&quot;&gt;日，乌克兰&lt;/span&gt;EUROFRUIT COMPANY Ltd.&lt;span style=&quot;font-family:宋体&quot;&gt;董事长陈益强及香港弘亿国际有限公司董事长郑峰远道而来，拜访了申通国际事业部并参与了我部隆重的乔迁仪式，陈董与郑董就乌克兰车厘子进口项目与国际事业部总经理张存伟进行了密切会谈，表达了与我方协同合作的意向并诚挚邀请我方前往乌克兰进行考察访问。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476158296', '53', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('37', '2011年8月，申通慈善助学座谈会现场陈德军董事长向受助学生家长发放助学金。', '4', '', '申通快递表示，“申通慈善助学金“是桐庐县慈善助学金中额度最高的助学金，公司每年向桐庐县家庭困难的大学生捐助10万元，每位受助学生5000元，帮助他们完成学业。', '6', '2011年8月，申通慈善助学座谈会现场陈德军董事长向受助学生家长发放助学金。', '0', '&lt;p style=&quot;text-align: center;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;img src=&quot;/ueditor/php/upload/image/20161010/1476081799314491.jpg&quot; title=&quot;1476081799314491.jpg&quot; alt=&quot;cs7.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;申通快递表示，“申通慈善助学金“是桐庐县慈善助学金中额度最高的助学金，公司每年向桐庐县家庭困难的大学生捐助10万元，每位受助学生5000元，帮助他们完成学业。&lt;/p&gt;', '[\".\\/Uploads\\/min\\/2016-09-26\\/14748539861433580759.png\"]', '1476081806', '37', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('38', '申通快递国际事业部喜迎乔迁', '4', '申通国际事业部', '2016年9月26日，8时18分，申通快递国际事业部举行正式乔迁仪式，申通国际事业部董事长朱群女士、国际事业部董事长助理刘相东先生、国际事业部总经理张存伟先生以及申通国际全体同仁共同参加此次签约仪式。', '20', '申通国际,国际物流', '0', '&lt;p&gt;　　&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20160929/1475120175549433.jpg&quot; style=&quot;&quot; title=&quot;1475120175549433.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20160929/1475120175193587.jpg&quot; style=&quot;&quot; title=&quot;1475120175193587.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20160929/1475120177776764.jpg&quot; style=&quot;&quot; title=&quot;1475120177776764.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20160929/1475120177234508.jpg&quot; style=&quot;&quot; title=&quot;1475120177234508.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20160929/1475120180117581.jpg&quot; style=&quot;&quot; title=&quot;1475120180117581.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　2016年9月26日，8时18分，申通快递国际事业部举行正式乔迁仪式，申通国际事业部董事长朱群女士、国际事业部董事长助理刘相东先生、国际事业部总经理张存伟先生以及申通国际全体同仁共同参加此次签约仪式。&lt;br/&gt;　　仪式上，海外申通分别赠送花篮给予祝贺，共同庆祝乔迁之喜。&lt;/p&gt;', 'null', '1476158314', '53', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('50', '申通快递俄罗斯远东公司正式成立 助力中俄合作新增长', '4', '申通国际事业部', '9月2日，申通快递董事长陈德军受邀参加俄罗斯第二届东方经济论坛，申通国际负责人朱群，总经理张存伟陪同出席。该论坛吸引了来自中国、日本、韩国等28个国家约2500名政商界人士和专家学者与会，已成为俄罗斯大力发展远东地区经济、吸引外国投资的重要平台。', '20', '俄罗斯申通', '0', '&lt;p&gt;&lt;span style=&quot;color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; font-size: 14px; line-height: 22.4px; white-space: pre-wrap; background-color: rgb(255, 255, 255);&quot;&gt; &amp;nbsp; &amp;nbsp;9月2日，申通快递董事长陈德军受邀参加俄罗斯第二届东方经济论坛，申通国际负责人朱群，总经理张存伟陪同出席。该论坛吸引了来自中国、日本、韩国等28个国家约2500名政商界人士和专家学者与会，已成为俄罗斯大力发展远东地区经济、吸引外国投资的重要平台。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important; text-align: center; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20160929/1475135376676448.jpg&quot; title=&quot;1475135376676448.jpg&quot; alt=&quot;0aacae7.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 25.6px; text-align: center; box-sizing: border-box !important; word-wrap: break-word !important; background-color: rgb(255, 255, 255);&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-size: 12px;&quot;&gt;符拉迪沃斯托克举行开业剪彩仪式&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-family: 楷体, 楷体_GB2312, SimKai; font-size: 18px; line-height: 27px; text-indent: 21px; color: inherit;&quot;&gt; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-size: 14px;&quot;&gt;正值论坛召开之际，申通快递俄罗斯远东公司在符拉迪沃斯托克举行开业剪彩仪式，申通快递董事长陈德军亲临开业现场，中国驻俄罗斯海参崴、延边州驻俄办事处、中国银行、俄罗斯邮政等领导出席剪彩仪式。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important; text-align: center; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20160929/1475135386923643.jpg&quot; title=&quot;1475135386923643.jpg&quot; alt=&quot;e5c5b10.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 25.6px; text-align: center; box-sizing: border-box !important; word-wrap: break-word !important; background-color: rgb(255, 255, 255);&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-size: 12px;&quot;&gt;陈德军董事长亲临剪裁现场&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-family: 楷体, 楷体_GB2312, SimKai; font-size: 18px; line-height: 27px; text-indent: 21px; color: inherit;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;section class=&quot;&quot; data-tools=&quot;135编辑器&quot; data-id=&quot;30&quot; data-color=&quot;rgb(255, 129, 36)&quot; data-custom=&quot;rgb(255, 129, 36)&quot; style=&quot;margin: 0px; padding: 0px; max-width: 100%; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 25.6px; white-space: normal; box-sizing: border-box !important; word-wrap: break-word !important; background-color: rgb(255, 255, 255);&quot;&gt;&lt;section style=&quot;margin: 20px 0px 0px; padding: 5px; max-width: 100%; border: 1px solid rgb(204, 204, 204); line-height: 24px; text-align: justify; box-shadow: rgb(165, 165, 165) 5px 5px 2px; box-sizing: border-box !important; word-wrap: break-word !important; background-color: rgb(250, 250, 250);&quot;&gt;&lt;section style=&quot;margin: -18px 0px 0px 20px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; text-align: left;&quot;&gt;&lt;section style=&quot;margin: 0px; padding: 4px 10px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; display: inline-block; border-radius: 0.1em 1.5em; box-shadow: rgb(165, 165, 165) 4px 4px 2px; color: rgb(255, 255, 255); text-align: justify; border: 1px solid rgb(255, 129, 36); background-color: rgb(255, 129, 36);&quot;&gt;&lt;strong class=&quot;&quot; data-brushtype=&quot;text&quot; style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;聚焦&lt;/strong&gt;&lt;/section&gt;&lt;/section&gt;&lt;section class=&quot;&quot; data-style=&quot;margin-top: 2px; margin-bottom: 0px; padding: 0px; max-width: 100%; min-height: 1.5em; line-height: 2em;font-weight:bold;&quot; style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; line-height: 2em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-size: 14px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-size: 14px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 申通快递俄罗斯远东公司是俄罗斯远东地区成立的第一家中国大型快递企业，致力于服务中小企业、电商客户。目前，中国服装、鞋帽、电器、日用品在俄远东地区很受俄罗斯消费者欢迎。同时，远东地区出产的海鲜、巧克力、蜂蜜等商品也很受中国消费者喜爱。申通快递俄罗斯远东公司的成立将为中俄商品互流互通提供便捷的渠道。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-size: 14px;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-size: 14px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 董事长陈德军在接受新华社记者采访时表示，申通快递进入俄远东市场，正是看中了俄远东开发的力度和中俄经贸发展前景。未来，申通将在符拉迪沃斯托克打造中俄贸易货物中转中心，帮助两国货物更方便快捷地进入对方市场。同时，还将在符拉迪沃斯托克建设创意产业园，吸引广大中小企业入驻，并在注册、税收、经营等环节向中小企业提供帮助。&lt;/span&gt;&lt;/p&gt;&lt;/section&gt;&lt;/section&gt;&lt;/section&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-family: 楷体, 楷体_GB2312, SimKai; font-size: 18px; line-height: 27px; text-indent: 21px; color: inherit;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 25.6px; text-align: center; box-sizing: border-box !important; word-wrap: break-word !important; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20160929/1475135391213723.jpg&quot; title=&quot;1475135391213723.jpg&quot; alt=&quot;3fdc130.jpg&quot;/&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-size: 12px;&quot;&gt;陈德军董事长与出席剪彩仪式的嘉宾、以及俄罗斯远东公司员工合影&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;section class=&quot;&quot; data-tools=&quot;135编辑器&quot; data-id=&quot;2185&quot; style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 25.6px; white-space: normal; word-wrap: break-word !important; background-color: rgb(255, 255, 255);&quot;&gt;&lt;section style=&quot;margin: 0px 0px 0px 27px; padding: 5px 10px 0px 35px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; color: inherit; border-left-width: 2px; border-left-style: dotted; border-left-color: rgb(228, 228, 228);&quot;&gt;&lt;section class=&quot;&quot; data-original-title=&quot;&quot; title=&quot;&quot; style=&quot;margin: 23px 0px 0px -53px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; width: 32px; height: 32px; color: rgb(255, 255, 255); text-align: center; line-height: 32px; border-radius: 16px; background-image: initial; background-attachment: initial; background-color: rgb(157, 180, 194); background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;&quot;/&gt;&lt;/section&gt;&lt;section class=&quot;&quot; style=&quot;margin: -30px 0px 0px; padding: 0px 0px 10px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important; color: inherit;&quot;&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; text-indent: 21px; color: inherit;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-family: 楷体, 楷体_GB2312, SimKai; text-indent: 21px; color: inherit;&quot;&gt;&amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-size: 14px;&quot;&gt;自2014年以来，申通快递大力发展国际网络，随着香港、美国、英国公司的建立，申通国际海外版图不断扩大。2016年更是开通了中英、中美、中泰、中加等11条出口专线。未来，申通快递将继续挖掘海外优质合作伙伴，将其吸收到申通大家庭中来，不断完善海外网络平台建设，在坐稳香港、做好北美、完善欧洲的基础上，将目光投向东南亚、中东、南美、非洲等地区，进一步将业务拓展至全球。&lt;/span&gt;&lt;/p&gt;&lt;/section&gt;&lt;/section&gt;&lt;/section&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476323279', '50', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('40', '2010年12月，在重固镇 举行的“蓝天下的至爱”慈善募捐大会上，申通快递捐款5万元。', '4', '', '由上海市慈善基金会青浦分会主办的2010年“蓝天下的至爱”慈善募捐大会在上海青浦举行。青浦区近百家企事业单位的相关负责人参加了会议。申通快递公司负责人在会上代表公司捐款5万元，同时公司工会也捐款7000元。', '6', '2010年12月，在重固镇 举行的“蓝天下的至爱”慈善募捐大会上，申通快递捐款5万元。', '0', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161010/1476081705421877.jpg&quot; title=&quot;1476081705421877.jpg&quot; alt=&quot;cs6.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;由上海市慈善基金会青浦分会主办的2010年“蓝天下的至爱”慈善募捐大会在上海青浦举行。青浦区近百家企事业单位的相关负责人参加了会议。申通快递公司负责人在会上代表公司捐款5万元，同时公司工会也捐款7000元。&lt;/p&gt;', 'null', '1476081712', '40', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('42', '2010年4月，“情系玉树，共抗天灾”申通快递总公司员工向青海玉树地震灾区捐款。', '4', '', '为帮助灾区人民早日重建家园，度过难关，2010年4月22日上午10点，本着“生死不离，共抗天灾”的信念，申通快递总公司动员全体职工进行“爱心捐助青海玉树地震灾区同胞”的捐款活动。', '6', '2010年4月，“情系玉树，共抗天灾”申通快递总公司员工向青海玉树地震灾区捐款。', '0', '&lt;p style=&quot;text-align: center;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;img src=&quot;/ueditor/php/upload/image/20161010/1476081595736119.jpg&quot; title=&quot;1476081595736119.jpg&quot; alt=&quot;cs2.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;为帮助灾区人民早日重建家园，度过难关，2010年4月22日上午10点，本着“生死不离，共抗天灾”的信念，申通快递总公司动员全体职工进行“爱心捐助青海玉树地震灾区同胞”的捐款活动。&lt;/p&gt;', 'null', '1476081602', '42', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('43', ' 2009年7月，申通快递 “申通快递助学资金”，为成都市现代物流专业职教集团物流专业家庭经济困难学生捐赠100万元', '4', '', '申通快递有限公司陈德军董事长，四川省教育厅姜树林副厅长，中国快递协会邵钟林副秘书长，上海市邮政管理局党组成员、纪检组长、工会主席俞燕萍、四川省快递协会沈成华秘书长，申通快递有限公司网点公司代表，职教集团成员学校校长，学生代表120余人参加了捐赠仪式。', '6', ' 2009年7月，申通快递 “申通快递助学资金”，为成都市现代物流专业职教集团物流专业家庭经济困难学生捐赠100万元', '0', '&lt;p style=&quot;text-align: center;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;img src=&quot;/ueditor/php/upload/image/20161010/1476081461930972.jpg&quot; title=&quot;1476081461930972.jpg&quot; alt=&quot;cs5.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;申通快递有限公司陈德军董事长，四川省教育厅姜树林副厅长，中国快递协会邵钟林副秘书长，上海市邮政管理局党组成员、纪检组长、工会主席俞燕萍、四川省快递协会沈成华秘书长，申通快递有限公司网点公司代表，职教集团成员学校校长，学生代表120余人参加了捐赠仪式。&lt;/p&gt;', 'null', '1476081478', '43', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('47', '2009年4月，申通快递“杭商情．青川行”结对助学及捐建村级公共设施用房25万元。', '4', '', '本次“杭商情•青川行”赴川慈善活动，杭州驻沪企业联合会会长倪柏祥、陈德军、王秀春、张义才、马传兴、徐文通等企业家认领了青川县竹园镇、白家乡、建峰乡、金子山乡122名学生的学习和生活费用。另外，上海盛彤实业（申通快递）继去年捐款563万元后再次认捐25万元，这些都将用于青川县建造村级公路。', '6', '2009年4月，申通快递“杭商情．青川行”结对助学及捐建村级公共设施用房25万元。', '0', '&lt;p style=&quot;text-align: center;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;img src=&quot;/ueditor/php/upload/image/20161010/1476081344481077.jpg&quot; title=&quot;1476081344481077.jpg&quot; alt=&quot;cs4.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;本次“杭商情•青川行”赴川慈善活动，杭州驻沪企业联合会会长倪柏祥、陈德军、王秀春、张义才、马传兴、徐文通等企业家认领了青川县竹园镇、白家乡、建峰乡、金子山乡122名学生的学习和生活费用。另外，上海盛彤实业（申通快递）继去年捐款563万元后再次认捐25万元，这些都将用于青川县建造村级公路。&lt;/p&gt;', 'null', '1476081350', '47', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('48', '全国邮政管理系统新闻宣传工作会议举行', '4', '中国邮政快递报', '9月27日，为期两天的全国邮政管理系统新闻宣传工作会议在云南昆明召开，深入学习贯彻习近平总书记关于意识形态和新闻舆论工作重要讲话精神，贯彻落实国家邮政局党组《关于进一步加强邮政业新闻宣传工作的意见》，回顾总结邮政体制改革实施十年来新闻宣传工作取得的成就和经验，部署今后一个时期重点任务。', '22', '邮政管理系统新闻宣传工作会议', '0', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20160929/1475132654638009.jpg&quot; title=&quot;1475132654638009.jpg&quot; alt=&quot;20006171036443867.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;　　9月27日，为期两天的全国邮政管理系统新闻宣传工作会议在云南昆明召开，深入学习贯彻习近平总书记关于意识形态和新闻舆论工作重要讲话精神，贯彻落实国家邮政局党组《关于进一步加强邮政业新闻宣传工作的意见》，回顾总结邮政体制改革实施十年来新闻宣传工作取得的成就和经验，部署今后一个时期重点任务。会前，国家邮政局党组书记、局长马军胜作出重要批示，充分肯定十年来行业新闻宣传工作在传递党组声音、反映人民呼声、凝聚行业力量、展现邮政形象等方面所取得的突出成效，要求认真贯彻习近平总书记关于新闻舆论工作的重要讲话精神，牢固树立党媒姓党意识，把牢政治方向，敢于担当，善于创新，再接再厉，继续奋进，努力开创行业新闻宣传工作新局面。局党组成员、副局长王梅出席会议并讲话。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　王梅指出，十年来，邮政行业新闻宣传工作认真贯彻落实中央各项要求部署，围绕中心、服务大局，以“讲述好行业故事，传播好行业声音，服务好行业发展”为主旨，紧跟中央精神，紧抓行业大事，紧扣发展脉搏，深入践行“走转改”，体制机制更加完善，新闻载体更加丰富，舆论引导更加有效，为邮政管理工作和行业发展营造了良好的舆论氛围，提供了强大的新闻舆论支撑。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　王梅强调，十年来，行业新闻宣传工作实现了从“委托”到“自办”的重大转变，构建起“3+X”的新闻宣传格局，建立起国家局、省局、市局三级工作体制和新闻发布、央媒协同等一系列工作机制，不断推进新闻宣传模式创新，充分发挥支撑保障作用，着力打造坚强有力的行业新闻宣传队伍，得益于坚持党组统一领导、坚持正确舆论导向、坚持紧扣行业发展热点、坚持丰富新闻宣传载体、坚持深化各方联动，成绩值得肯定、经验值得总结。面对中央关于新闻舆论工作的新要求，面对全面建成与小康社会相适应的现代邮政业的新使命，面对国家局党组关于进一步加强行业新闻宣传工作的新部署，全系统要认真学习贯彻习近平总书记系列重要讲话精神，以中央对意识形态和新闻舆论工作的要求为纲领，始终坚持正确政治方向、不断提高新闻宣传工作能力和水平、持续强化行业新闻宣传工作队伍建设、着力加强和改善党对新闻舆论工作的领导，推动行业新闻宣传工作不断取得新突破。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　对于下一步工作，王梅要求，要紧抓机遇，聚焦重点，凝聚共识，形成合力，为行业发展保驾护航。要用心做好行业发展规划、政策、标准，重要法规、规章，邮政普遍服务监督保障，邮政市场监管工作，行业创新驱动转型升级，全系统党建和行业精神文明建设等方面的宣传报道工作，不忘初心、凝神聚力，探索创新、攻坚克难，开拓进取、砥砺奋进，不断开创行业新闻宣传工作的新局面，为全面建成与小康社会相适应的现代邮政业、为邮政业改革发展下一个十年作出应有的贡献。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　会议还对2016年度邮政管理系统先进单位和优秀个人进行了表彰。上海、江苏、湖北、云南等省（市）局记者站交流了工作经验。会上，中国邮政快递报社介绍了今年主要工作和下一阶段重点任务。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　国家邮政局机关各司局和直属各单位、各省（区、市）邮政管理局、副省级市邮政管理局负责同志和相关代表参加会议。&lt;/p&gt;&lt;p style=&quot;text-align: justify; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 14px; color: rgb(51, 51, 51); word-break: break-all; text-indent: 2em; line-height: 28px; width: 600px; font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br/&gt;&lt;/p&gt;', '[\"\\/Uploads\\/thumb\\/2016-09-29\\/57ecbcd0c03a3.jpg\"]', '1475141067', '48', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('49', '第26届万国邮联代表大会确定2017-2020年合作发展新方向', '4', '中国邮政快递报', '第26届万国邮联代表大会确定2017-2020年合作发展新方向', '22', '', '0', '&lt;p&gt;　　近日，正在土耳其伊斯坦布尔举行的第26届万国邮政联盟代表大会审议通过了2017-2020年万国邮联合作发展计划。该计划包括原则、领域、方式和资金四方面内容，将主要致力于使发展合作适应行业的新需求以及邮政监管机构、指定经营者所面临的挑战，帮助受助成员国确保邮政普遍服务的质量、可接入性以及安全性。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　大会同时通过了2017-2020年邮政金融普惠、邮政可持续发展、邮政行业宏观经济以及灾难风险管理计划等系列决议。万国邮联将通过发挥邮政网络优势、深化与区域邮联合作、加强各邮政互助，继续在应对气候变化、对抗贫穷、提升邮政能力建设等方面促进全球邮政的可持续发展。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;邮政可持续发展新目标&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　新通过的邮政可持续发展展望明确了要从环境、经济社会、灾害风险管理三大重点领域推动工作，确定了要实现的总体目标，包括：&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;（一）推出适用于邮政部门的万国邮联温室气体排放在线计算工具，研究向其他邮政部门利益相关方，特别是咨询委员会代表成员，推广该工具的可能性；&lt;/p&gt;&lt;p&gt;（二）完成邮政部门温室气体减排目标的研究，为邮政部门提出一个类似于航空和海洋运输等部门目标的全球目标；&lt;/p&gt;&lt;p&gt;（三）支持邮联成员国各指定经营者在地区发展规划框架下的温室气体减排努力；&lt;/p&gt;&lt;p&gt;（四）研究邮政部门如何实施碳补偿，特别是如何加强万国邮联在邮政部门碳补偿系统中的作用；&lt;/p&gt;&lt;p&gt;（五）将可持续发展融入邮联国际局的日常活动之中；&lt;/p&gt;&lt;p&gt;（六）在落实联合国可持续发展目标的框架内，审视将邮政网络作为基础设施用于覆盖在经济、社会和地理层面被排除在外的地区会带来的具体影响；&lt;/p&gt;&lt;p&gt;（七）与卫生健康专家合作，以邮政雇员或客户为目标，利用邮政网络就卫生健康相关问题开展宣传活动；&lt;/p&gt;&lt;p&gt;（八）通过地区发展规划，开发成员国及其指定运营商在可持续发展领域的能力；&lt;/p&gt;&lt;p&gt;（九）加强和发展合作伙伴关系，弥补万国邮联的专业知识与技能，并实施本决议的目标等。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;目前目标&lt;/p&gt;&lt;p&gt;（一）已经完成。万国邮联已经正式推出温室气体在线计算工具OS·CAR，并正在成员国中推广。根据成员国在线提交的调查数据，该工具能够自动生成统计报告以及相关评估结论，并制定减排方案和目标。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;邮政金融服务新愿景&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　邮政金融是万国邮联及各成员国产品与服务的重要组成部分，近年来受新技术推广与普惠理念的影响，产品种类不断丰富，社会关联性日益增强。邮政金融网络也不再单纯依靠邮政间协议，而演变为多边协议、多元合作的发展模式，并在消除贫困、改善社会均等化方面发挥更加重要的作用。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　为切合时代特征和市场需求，本届大会修正了《邮政支付业务协议》的发展愿景，强调万国邮联应重视和推动发展包容性金融服务，将此纳入自己的职责范围，邮政支付业务依靠对外开放的邮政网络的互联互通，并须遵循万国邮联制定的开放政策。在新愿景的指导下，邮联将逐步开放相关技术平台，以促进邮政指定经营者与非邮企业的网络连通。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;邮政电子业务计划&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　目前，绝大多数的邮政客户可以接入互联网。预计到2020年，有一半以上的发展中国家居民可以使用互联网，70%以上的居民拥有智能手机。为适应时代发展，邮政需要鼓励信息通信技术的发展，通过数字化转型增加收入、改善效率、促进创新和可持续发展。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　万国邮联发展邮政电子业务计划，旨在鼓励信息通信技术的使用，发展电子邮政业务，探索法律框架，鼓励邮政经营者创新，创造更好的电子服务和产品。计划指出了伊斯坦布尔周期邮政电子业务的愿景，即提高能力，更好地获得电子邮政服务；制定国际标准和规则，为数字服务创造安全的法律框架；实现全面数字化转型，将数字化作为经济发展的引擎，实现实体和电子邮政业务更好地融合，以适应市场变化需求。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1475141015', '49', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('71', '申通快递召开2016降低邮政有效申诉率 专项培训会议（第二期）', '6', '', ' 9月13日，申通快递2016年降低邮政有效申诉率专项培训会议（第二期）在浙江杭州隆重召开。国家邮政局邮政业消费者申诉中心王晓楠老师，申通快递副总裁申屠安平、客服管理部副总监王超群等领导以及邮政申诉处理人、各省份邮政申诉对接人共计50余人参加了此次会议。', '20', '', '0', '&lt;p style=&quot;text-align: center;&quot;&gt;会议现场&lt;/p&gt;&lt;p&gt;　　9月13日，申通快递2016年降低邮政有效申诉率专项培训会议（第二期）在浙江杭州隆重召开。国家邮政局邮政业消费者申诉中心王晓楠老师，申通快递副总裁申屠安平、客服管理部副总监王超群等领导以及邮政申诉处理人、各省份邮政申诉对接人共计50余人参加了此次会议。&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161014/1476426444460075.jpg&quot; title=&quot;1476426444460075.jpg&quot; alt=&quot;1476426155558863.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;申通快递副总裁申屠安平作重要讲话&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161014/1476426494557592.jpg&quot; title=&quot;1476426494557592.jpg&quot; alt=&quot;1476426156718928.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;　　副总裁申屠安平在会上作重要讲话。他首先对前来参会的国家邮政局邮政业消费者申诉中心王晓楠老师以及来自各省份邮政申诉对接人员表示欢迎与感谢。他指出，本次会议的目的，一是巩固第一期会议精神，进一步强化各网点对邮政申诉处理工作的重视程度及处理积极性。二是总结目前仍存在的问题，共同讨论改进措施，并制定有效的监督机制。他要求，各省申诉处理人要有主人翁精神，时刻聚焦行业信息，关注同行有效措施，从而及时发现和改进自身不足。各部门要加强联动协作，从网络、客服、技术层面针对目前申通的网点加盟制度、经营管理、技术支持等方面进行优化、改造和创新。&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;国家局申诉中心王晓楠老师分析企业情况&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161014/1476426512601590.jpg&quot; title=&quot;1476426512601590.jpg&quot; alt=&quot;1476426156235665.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;　　国家邮政局邮政业消费者申诉中心王晓楠老师详细分析了目前申通快递邮政业消费者申诉问题以及在申诉中表现的主要特点。她结合实际案例，重点讲解了《邮政业消费者申诉处理办法》、《快递服务》国家标准。同时，对申通邮政申诉工作提出了几点要求及建议，并对现场提问的网点给予一一解答，让此次参会网点对邮政申诉有了更加全面而深刻的认识。&lt;/p&gt;&lt;p&gt;　　会上，客服管理部刘美龄通过实际案例一一深入分析企业服务的薄弱环节，对存在的问题进行了详细讲解。&lt;/p&gt;&lt;p&gt;邮政申诉处理代表经验分享&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161014/1476426531354836.jpg&quot; title=&quot;1476426531354836.jpg&quot; alt=&quot;1476426157539452.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;　　在下午进行的申诉研讨会上，总公司客服邮政申诉专项小组与各省份邮政申诉对接人进行了深入的交流与探讨。成都、北京、合肥、郑州的邮政申诉对接人分享了各自对邮政申诉处理的相关经验。网点代表也积极踊跃发言，参与讨论互动，现场气氛热烈。&lt;/p&gt;&lt;p&gt;　　降低邮政有效申诉率一直是申通快递客服工作的重中之重，面对当前的严峻形式，全网互帮互助，在加强自身的同时积极吸取行业优秀经验，与各管局、国家局进行积极沟通，取长补短，取得了一定效果。后续，客服管理部将会持续通过各种形式来开展专项培训，做好对网点业务指导的同时，进一步提高思想认识，明确各自的工作目标，确保专项培训后的整治成效。&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161014/1476426548506059.jpg&quot; title=&quot;1476426548506059.jpg&quot; alt=&quot;1476426158163711.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;/p&gt;', 'null', '1476426174', '49', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('53', '【9月送橙季】“承诺达”，把爱带回家', '4', '公共事务部', '经多日组织、筹备，九月十三日起申通快递为迎合市场需求，进一步拓展市场空间，抢占优质市场份额，发起了“九月送橙季”橙诺达产品推广活动。', '21', '', '1', '&lt;p&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&amp;nbsp; &amp;nbsp; 经多日组织、筹备，九月十三日起申通快递为迎合市场需求，进一步拓展市场空间，抢占优质市场份额，发起了&lt;/span&gt;“九月送橙季”橙诺达产品推广活动。&lt;/p&gt;&lt;p style=&quot;text-align:center;&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;/ueditor/php/upload/image/20161009/1476001383690779.jpg&quot; isimg=&quot;false&quot;/&gt;&lt;/p&gt;&lt;p&gt;“橙诺达”&lt;span style=&quot;font-family:宋体&quot;&gt;是菜鸟网络&lt;/span&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;联手&lt;/span&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;申通&lt;/span&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;快递推出的物流时效服务产品，分为次日承诺达和隔日承诺；橙诺达即服务覆盖地区内，在当日&lt;/span&gt;24&lt;span style=&quot;font-family:宋体&quot;&gt;点前揽收的快件，承诺在次日&lt;/span&gt;&lt;span style=&quot;font-family:Arial&quot;&gt;24&lt;/span&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;点前完成签收，如超出承诺时间，快递企业将给予商家一定赔偿&lt;/span&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;/ueditor/php/upload/image/20161009/1476001384713178.jpg&quot; isimg=&quot;false&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family:宋体&quot;&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp;本次活动共涉及成熟线路近&lt;/span&gt;7000&lt;span style=&quot;font-family:宋体&quot;&gt;条，百分百完成了对全部省会城市、直辖市、电商产业集中地区的覆盖。此次活动覆盖范围之广，促销力度之大，是申通快递历史上少有的，对此感兴趣的电商商家不容错过。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;/ueditor/php/upload/image/20161009/1476001385562523.jpg&quot; isimg=&quot;false&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476001425', '53', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('54', '申通告客户书', '4', '', '为保障和服务G20峰会，当地政府将实施寄递渠道安全管控、交通管控、区域管制、航空管制等安全举措。受此影响，申通快递从即日起对杭州市部分区域及周边地区的收派服务进行调整', '21', '', '0', '&lt;p&gt;广大新老客户：&lt;/p&gt;&lt;p&gt;你们好！&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　“二十国集团领导人第11次峰会”（以下简称G20峰会）将于2016年9月4-5日在杭州举办。为保障和服务G20峰会，当地政府将实施寄递渠道安全管控、交通管控、区域管制、航空管制等安全举措。受此影响，申通快递从即日起对杭州市部分区域及周边地区的收派服务进行调整，详情请咨询95543或当地网点公司。&lt;/p&gt;&lt;p&gt;　　对峰会期间可能产生的快件延误等情况，请广大客户给予理解，我们亦将努力克服困难，全力做好服务保障。同时，也请广大客户在寄递快件时主动配合工作人员进行物品安全验视，出示有效身份证件如实登记身份信息，给您带来不便我们深表歉意。&lt;/p&gt;&lt;p&gt;　　后期如有更新，我们将及时通过官方网站、官方微博、微信等平台进行公告，敬请关注。感谢您的理解与支持，谢谢！&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;申通快递有限公司&lt;/p&gt;&lt;p&gt;2016年8月9日&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476001500', '54', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('55', '今天寄明天到——申通快递上海市内 “同城次日达”服务产品正式上线', '4', '', '为满足市场及消费者需求，6月1日，经过前期筹备及试运行，申通快递在上海市内正式推出“同城次日达”服务产品。', '21', '', '0', '&lt;p&gt;　　为满足市场及消费者需求，6月1日，经过前期筹备及试运行，申通快递在上海市内正式推出“同城次日达”服务产品。“同城次日达”产品相关事项如下：&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;br/&gt;1、同城次日达：申通在全网推行&amp;quot;同城次日达&amp;quot;的区域，向客户（包括月结和非月结）承诺的时效产品，如服务产品时效超时，则向客户给予退回运费的赔付。&lt;br/&gt;2、服务区域：本次推出上海市内（除崇明、长兴岛）地区。&lt;br/&gt;&lt;br/&gt;3、产品时效：选择”同城次日达“产品服务，在次日22点前务必送达，（周六、周日/法定节假日寄件及部分偏远区域的派送时效会进行相应调整）。&lt;br/&gt;4、超时退费：快件超过承诺时效送达，且经确认不属于《超时退费派送服务保证及免责条款》范围内的情形，运费付款方客户可在快件签收后10天内申请超时退费，详情可致电：上海申通客户服务热线021-39206682。&lt;/p&gt;&lt;p style=&quot;text-align:center;&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;/ueditor/php/upload/image/20161009/1476001534902476.jpg&quot; isimg=&quot;false&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476001551', '55', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('56', '面对灾难，我们只是想做点什么！——申通快递致广大客户的公开信', '4', '', '面对灾难，我们只是想做点什么！——申通快递致广大客户的公开信', '21', '', '0', '&lt;p&gt;亲爱的客户：&lt;/p&gt;&lt;p&gt;您好！&lt;/p&gt;&lt;p&gt;　　昨日，江苏省盐城市阜宁、射阳等地出现强雷电、短时强降雨、冰雹、雷雨大风等强对流天气，局地遭龙卷风袭击。据江苏省民政厅报告，强对流天气已造成78人死亡，近500人受伤，其中重伤近200人。噩耗传来，全体申通人，为之悲痛，为死难者哀悼，为伤者、失联者祈祷。&lt;/p&gt;&lt;p&gt;　　总部相关部门也在第一时间联系盐城地区网点、转运中心，并委派大区负责人赶赴受灾地区，核查员工安全情况。截止23日22时，申通快递员工全部取得联系，并确定安全。各网点也在保证人员安全的情况下，第一时间做好了快件的处理工作，并组织员工在保证安全的情况下，积极地参与到灾区救援工作中。&lt;/p&gt;&lt;p&gt;　　23日，阜宁申通吴滩镇快递员刘标夫妇在处理完收派点工作后，通过官方救援渠道联系上救援队伍，开着送件的面包车前往受灾严重的新沟镇，协助救援队伍做好物资运输，将受灾群众送往安全的地方。&lt;/p&gt;&lt;p&gt;　　灾难无情，人有情。灾难面前，每一个申通人都在用行动支援灾区，希望用自己的绵薄之力帮助灾区人民。就像刘标夫妇说的：“眼看着家园被毁，我们特别难受，我们就是想能做点什么！“&lt;/p&gt;&lt;p&gt;　　申通快递敬请广大客户日常多关注天气预报，及时了解极端天气预警信息，在遇到极端天气时，请您尽量减少出行，并提前做好安全防范工作。同时，我们也希望每一个爱心人士，不要盲目地参加志愿活动，关键时刻，灾区人民更需要专业的支持和帮助，大家一定要通过专业的渠道，跟随专业的队伍，服从指挥，听从安排，避免给灾区救援工作增加负担。&lt;/p&gt;&lt;p&gt;　　一方有难，八方支援，全体申通人与灾区人民同在！愿逝者一路走好，愿伤者早日康复，一切安好！为灾区祈福。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;通快递有限公司&lt;/p&gt;&lt;p&gt;二零一六年六月二十四日&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476001640', '56', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('57', '诚信快递 你我共建', '4', '申通快递', '央视3·15晚会对“刷单”事件的曝光，让我们感到震惊。申通快递作为行业的规模性企业之一，对“刷单”事件中暴露出的管理缺失以及监管不到位的问题有着不可推卸的责任，在此再次向广大消费者和关心申通的各界朋友致以诚挚的歉意。', '21', '', '0', '&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;尊敬的用户及社会各界朋友：&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;央视3·15晚会对“刷单”事件的曝光，让我们感到震惊。申通快递作为行业的规模性企业之一，对“刷单”事件中暴露出的管理缺失以及监管不到位的问题有着不可推卸的责任，在此再次向广大消费者和关心申通的各界朋友致以诚挚的歉意。&lt;/p&gt;&lt;p&gt;申通快递近几年来一直积极协同淘宝、天猫等相关平台严厉打击提供刷单交易的第三方平台（刷单网、刷单公司）和个人。对于不法商家不断变化的虚假交易行为，我司在人力和技术上投入了大量的资金进行管控。事件发生后，公司立即联合各相关部门加大核查和打击力度，在此我们要向公众告知如下：&lt;/p&gt;&lt;p&gt;1、立即启动应急机制，要求网管、信息、监察、运营等多个部门成立专项核查小组，全网联动核查各个环节，对于任何网点和个人参与“刷单”行为，采取“零”容忍态度，情节严重者，我们将取消其加盟资格，移送相关执法部门处理。&lt;/p&gt;&lt;p&gt;2、健全完善监管制度，严厉打击“刷单”炒信行为，发现一起追责到底，从源头上杜绝“刷单”行为，并建立“诚信”黑白名单和“诚信经营”长效机制。&lt;/p&gt;&lt;p&gt;3、加大对信息技术的升级和管理，利用技术手段，严格控制不法第三方平台借用技术手段进行的虚拟交易的行为。&lt;/p&gt;&lt;p&gt;“诚信服务”一直是申通永恒不变的服务主题，我们积极面对和正视目前存在的问题，将不惜一切代价在物流环节上打击“刷单”行为。我们期望和更多的大型电商平台一起，共同致力于建设公平的网上购物诚信体系，维护健康的商业生态。&lt;/p&gt;&lt;p&gt;欢迎广大媒体和消费者继续监督我们的工作，并实时向我们举报。&lt;/p&gt;&lt;p&gt;监督举报电话：021-60374579&lt;/p&gt;&lt;p&gt;申通快递有限公司&lt;/p&gt;&lt;p&gt;2016年3月18日&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476001692', '57', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('58', '关于申通快递网站、域名、Logo的公告', '4', '', '近期在互联网发现有申通快递有限公司各种不同版本的Logo发布。现特此声明，申通快递有限公司已启用最新Logo', '21', '', '0', '&lt;p&gt;各公司客户、合作伙伴、网点公司：&lt;/p&gt;&lt;p&gt;近期在互联网发现有申通快递有限公司各种不同版本的Logo发布。现特此声明，申通快递有限公司已启用最新Logo&lt;span style=&quot;font-family:宋体&quot;&gt;，图标&lt;/span&gt;为&lt;img border=&quot;0&quot; src=&quot;/ueditor/php/upload/image/20161009/1476001731399626.gif&quot; isimg=&quot;false&quot;/&gt;，请已获授权客户、合作伙伴、网点公司及时予以修改、更新，如需授权或获取原图，请邮件联系&lt;a href=&quot;mailto:yuxudi@sto.cn&quot;&gt;yuxudi@sto.cn&lt;/a&gt;。&lt;/p&gt;&lt;p&gt;另发现有部分网站非法使用申通Logo，甚至有冒充使用申通&lt;span style=&quot;font-family:ˎ̥,Verdana,Arial&quot;&gt;Logo&lt;/span&gt;的非法网站等情况，我公司在此严正告知：未经授权的网站不得非法使用，申通快递有限公司官网域名为：www.sto.cn&lt;span style=&quot;font-family:宋体&quot;&gt;、&lt;/span&gt;www.sto-express.cn&lt;span style=&quot;font-family:宋体&quot;&gt;、&lt;/span&gt;&lt;a href=&quot;http://www.sto-express.com.cn/&quot;&gt;www.sto-express.com.cn&lt;/a&gt;，请勿访问非法网站，以免造成不必要的损失。&lt;/p&gt;&lt;p&gt;特此公告。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;申通快递有限公司&lt;/p&gt;&lt;p&gt;二〇一五年十月二十日&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476001748', '58', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('59', '国家邮政局 公安部 国家安全部关于加强二十国集团（G20）峰会期间寄递物品安全管理的通告', '4', '', '国家邮政局 公安部 国家安全部关于加强二十国集团（G20）峰会期间寄递物品安全管理的通告', '21', '', '0', '&lt;p&gt;二十国集团领导人第十一次峰会（以下简称G20峰会）将于2016年9月4日至5日在浙江省杭州市举行。为加强寄递物品安全管理，保障G20峰会顺利举办，现就有关事项通告如下：&lt;/p&gt;&lt;p&gt;　&lt;strong&gt;　一、寄递企业应当加强&lt;span style=&quot;font-family:Calibri&quot;&gt;G20&lt;/span&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;峰会期间寄递物品查验登记 &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;　　邮政企业、快递企业（以下统称寄递企业）是寄递物品安全管理第一责任主体，要按照“谁经营、谁负责”原则，严格遵守国家法律法规，以及禁止、限制寄递物品管理规定，严格执行收寄验视制度，对于国家明令禁止寄递的物品、不能确认安全属性的物品，一律不予收寄；寄件人拒绝验视的，一律不予收寄；根据临时性管理措施要求，8月28日至9月7日期间，严禁收寄寄往浙江省的低空慢速小型航空器及其零件、“遥控地雷”和“炸弹闹钟”玩具等物品。8月20日至9月7日期间，各地寄递企业对收寄寄往浙江省的邮件、快件，要严格执行实名收寄制度，除信件和已有安全保障机制的协议客户以外，一律对寄件人身份进行查验登记和寄递物品信息登记后方可收寄，寄件人拒绝接受身份查验登记，或者填写的身份信息与其有效身份证件信息不相符的，一律不予收寄。要严格执行过机安检制度，8月20日至9月7日期间，各地寄递企业发往浙江省的邮件、快件必须经过X光机安检，并逐件加盖或者粘贴安检标识，载明安检单位和安检省份。浙江省寄递企业对无安检标识的邮件、快件一律给予退回处理，不予转发、投递。&lt;/p&gt;&lt;p&gt;　&lt;strong&gt;　二、社会公众应当遵守&lt;span style=&quot;font-family:Calibri&quot;&gt;G20&lt;/span&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;峰会期间寄递物品管理要求&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;　　确保寄递物品安全是寄递企业和广大用户的共同责任。一切公民、法人和其他组织都应当依法正确使用寄递服务，遵守禁限寄物品管理规定，不得交寄禁止寄递物品。寄件人违反国家规定，在邮件、快件中夹带禁止寄递或者限制寄递物品，尚不构成犯罪的，依法给予治安管理处罚；造成人身伤害或者财产损失的，依法承担赔偿责任；构成犯罪的，依法追究刑事责任。寄件人在交寄邮件、快件时，应当如实填写寄递详情单，并配合寄递企业做好收寄验视、身份查验和身份信息登记工作。对于利用寄递渠道实施的违法犯罪行为，各地寄递企业一经发现应当立即报告当地邮政管理、公安、国家安全等部门，并协助调查处理。&lt;/p&gt;&lt;p&gt;　　&lt;strong&gt;三、有关部门应当加强&lt;span style=&quot;font-family:Calibri&quot;&gt;G20&lt;/span&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;峰会期间寄递渠道安全监管&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;　　各级邮政管理、公安和国家安全等部门要密切沟通协作，加强宣传教育，严格落实责任，加强执法检查，依法严厉查处违反寄递渠道安全管理规定和本通告要求的寄递企业和用户，严防不法分子利用寄递渠道实施危害国家安全、公共安全的违法犯罪活动。本通告期间，对于收寄寄往浙江省的邮件、快件，寄递企业未严格执行寄递物品安全检查或者收寄验视制度的、未严格执行禁止寄递物品管理规定或者用户拒绝安全查验仍予收寄的、未严格执行寄件人身份查验登记和寄递物品信息登记的，邮政管理部门可依据《中华人民共和国反恐怖主义法》《中华人民共和国邮政法》等法律法规，对寄递企业以及有关责任人员给予严肃处罚。对寄递企业、寄件人和有关责任人员的其他违法行为，由有关部门依法追究法律责任。各地寄递企业要积极配合邮政管理、公安、国家安全等部门的安全监管工作，为有关部门实施监督检查提供便利条件。&lt;/p&gt;&lt;p&gt;　　特此通告。&lt;/p&gt;&lt;p&gt;国家邮政局 公安部 国家安全部&lt;/p&gt;&lt;p&gt;2016年7月30日&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476001815', '59', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('60', '中国快递发展指数首次发布----发展规模增速6倍于GDP 服务质量稳中向好', '4', '', '在3月26日召开的2015中国快递论坛上，国家邮政局首次发布了中国快递发展指数。2014年中国快递发展指数达到282.4，比上年增长70.8，2010-2014年中国快递发展指数年均增速29.6%。', '22', '', '0', '&lt;p style=&quot;text-align:justify;padding: 0px; list-style-type: none; margin-top: 0px; margin-bottom: 10px; font-stretch: normal; font-size: 14px; line-height: 27px; font-family: 宋体; white-space: normal; color: rgb(51, 51, 51);&quot;&gt;&amp;nbsp; 在3月26日召开的2015中国快递论坛上，国家邮政局首次发布了中国快递发展指数。2014年中国快递发展指数达到282.4，比上年增长70.8，2010-2014年中国快递发展指数年均增速29.6%。这显示我国快递业保持了持续快速发展的良好态势，行业服务能力、服务水平稳步提高，普及范围进一步扩展，社会影响力全面提升。&lt;/p&gt;&lt;p style=&quot;text-align:justify;padding: 0px; list-style-type: none; margin-top: 0px; margin-bottom: 10px; font-stretch: normal; font-size: 14px; line-height: 27px; font-family: 宋体; white-space: normal; color: rgb(51, 51, 51);&quot;&gt;　　中国快递发展指数（China Express Development \r\nIndex，简称CEDI）是基于中国快递发展的基本特征、规律，对一定时期中国快递发展程度的量化评价，以2010年为基期，基期指数设定为100。中国快递发展指数指标体系包括发展规模、服务质量、发展普及和发展趋势四个方面，共11个指标，数据来源为国家邮政局和国家统计局。该指标体系在广泛征求业内外专家意见基础上由国家邮政局发展研究中心研究建立，并据此对我国快递发展状况进行测算，以全面反映行业发展水平，体现行业运行变化，昭示行业未来发展态势。&lt;/p&gt;&lt;p style=&quot;text-align:justify;padding: 0px; list-style-type: none; margin-top: 0px; margin-bottom: 10px; font-stretch: normal; font-size: 14px; line-height: 27px; font-family: 宋体; white-space: normal; color: rgb(51, 51, 51);&quot;&gt;　　指数显示，我国快递发展规模快速增长。我国快递进入高速增长期，市场需求强劲，业务量和业务收入规模屡创新高，2014年我国已成为全球第一快递大国。2014年发展规模指数为510.0，比2013年提高168.3。2010-2014年发展规模指数年均增速50.3%，是同期国内生产总值增速的6倍以上。&lt;/p&gt;&lt;p style=&quot;text-align:justify;padding: 0px; list-style-type: none; margin-top: 0px; margin-bottom: 10px; font-stretch: normal; font-size: 14px; line-height: 27px; font-family: 宋体; white-space: normal; color: rgb(51, 51, 51);&quot;&gt;　　服务质量稳中向好。我国快递经历规模高速增长后面临着从快递大国向快递强国的转变，在发展中提质效是快递业的趋向，几年来快递服务质量不断改善。2014年服务质量指数为89.2，比2013年增长1.5。2010-2014年我国快递在业务量高位增长的情况下服务质量相对稳定，在88上下波动。&lt;/p&gt;&lt;p style=&quot;text-align:justify;padding: 0px; list-style-type: none; margin-top: 0px; margin-bottom: 10px; font-stretch: normal; font-size: 14px; line-height: 27px; font-family: 宋体; white-space: normal; color: rgb(51, 51, 51);&quot;&gt;　　发展普及保持增长。随着快递服务网络的拓展和服务能力的增强，快递在服务社会经济和普惠民生方面的作用日益显现。2014年发展普及指数为205.4，比2013年增长24。2010-2014年发展普及指数年均增速为19.7%，尤其是近两年的网络普及明显加快。&lt;/p&gt;&lt;p style=&quot;text-align:justify;padding: 0px; list-style-type: none; margin-top: 0px; margin-bottom: 10px; font-stretch: normal; font-size: 14px; line-height: 27px; font-family: 宋体; white-space: normal; color: rgb(51, 51, 51);&quot;&gt;　　发展趋势趋于稳定。我国快递市场潜力巨大，发展空间广阔，快递业继续保持高速增长态势，但增长速度趋于稳定。2014年发展趋势指数为148.4，与2013年持平。2010-2014年发展趋势指数增速在经历2年快速提升后趋于平稳。&lt;/p&gt;&lt;p style=&quot;text-align:center;padding: 0px; list-style-type: none; margin-top: 0px; margin-bottom: 10px; font-stretch: normal; font-size: 14px; line-height: 27px; font-family: 宋体; white-space: normal; color: rgb(51, 51, 51);&quot;&gt;&lt;dd_belatedpng:shape style=&quot;z-index: 0; border: 0px rgb(51, 51, 51); width: 570px; height: 221px; top: 1293px; left: 419px;&quot; coordsize=&quot;570,221&quot; filled=&quot;f&quot; stroked=&quot;f&quot; path=&quot; m0,0 l570,0,570,221,0,221 xe&quot;&gt;&lt;dd_belatedpng:fill&gt;&lt;/dd_belatedpng:fill&gt;&lt;/dd_belatedpng:shape&gt;&lt;dd_belatedpng:shape style=&quot;CLIP: rect(1px 572px 222px 1px); Z-INDEX: 0; WIDTH: 571px; HEIGHT: 222px; TOP: 1293px; LEFT: 419px&quot; coordsize=&quot;571,222&quot; coordorigin=&quot;1,1&quot; filled=&quot;t&quot; fillcolor=&quot;none&quot; stroked=&quot;f&quot; path=&quot; m0,0 l571,0,571,222,0,222 xe&quot;&gt;&lt;dd_belatedpng:fill src=&quot;http://www.spb.gov.cn/dtxx_15079/201503/W020150326656755575465.png&quot; type=&quot;tile&quot; position=&quot;114f,295f&quot;&gt;&lt;/dd_belatedpng:fill&gt;&lt;/dd_belatedpng:shape&gt;&lt;img style=&quot;POSITION: relative; PADDING-BOTTOM: 0px; BORDER-RIGHT-WIDTH: 0px; LIST-STYLE-TYPE: none; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; ZOOM: 1; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; VISIBILITY: hidden; BORDER-LEFT-WIDTH: 0px; PADDING-TOP: 0px; BEHAVIOR: none&quot; alt=&quot;&quot; src=&quot;/ueditor/php/upload/image/20161009/1476001874215908.png&quot; width=&quot;570&quot; height=&quot;221&quot; isimg=&quot;true&quot; vmlinitiated=&quot;true&quot; vmlbg=&quot;http://www.spb.gov.cn/dtxx_15079/201503/W020150326656755575465.png&quot; oldsrc=&quot;W020150326656755575465.png&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;padding: 0px; list-style-type: none; margin-top: 0px; margin-bottom: 10px; font-stretch: normal; font-size: 14px; line-height: 27px; font-family: 宋体; white-space: normal; color: rgb(51, 51, 51);&quot;&gt;&lt;dd_belatedpng:shape style=&quot;z-index: 0; border: 0px rgb(51, 51, 51); width: 570px; height: 315px; top: 1524px; left: 419px;&quot; coordsize=&quot;570,315&quot; filled=&quot;f&quot; stroked=&quot;f&quot; path=&quot; m0,0 l570,0,570,315,0,315 xe&quot;&gt;&lt;dd_belatedpng:fill&gt;&lt;/dd_belatedpng:fill&gt;&lt;/dd_belatedpng:shape&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476001892', '60', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('61', '国家邮政局组织召开快递服务质量提升联席会议', '4', '', '根据中央第十四巡视组巡视反馈的问题意见，为全面落实整改措施，6月23日，国家邮政局在北京组织召开快递服务质量提升联席会议。EMS、顺丰、圆通、申通、中通等22家品牌快递企业，国家邮政局市场监管司、邮政业安全中心、《中国邮政快递报》社和中国快递协会的有关代表参加了会议。', '22', '', '0', '&lt;p style=&quot;text-align:justify;border: 0px none; font-family: 宋体; font-size: 14px; font-stretch: normal; line-height: 27px; margin-top: 0px; margin-bottom: 10px; padding: 0px; vertical-align: baseline; white-space: normal; list-style-type: none; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;span style=&quot;font-size: 16px; font-family: &amp;#39;Microsoft YaHei&amp;#39;;&quot;&gt;根据中央第十四巡视组巡视反馈的问题意见，为全面落实整改措施，6月23日，国家邮政局在北京组织召开快递服务质量提升联席会议。EMS、顺丰、圆通、申通、中通等22家品牌快递企业，国家邮政局市场监管司、邮政业安全中心、《中国邮政快递报》社和中国快递协会的有关代表参加了会议。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:justify;border: 0px none; font-family: 宋体; font-size: 14px; font-stretch: normal; line-height: 27px; margin-top: 0px; margin-bottom: 10px; padding: 0px; vertical-align: baseline; white-space: normal; list-style-type: none; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: &amp;#39;Microsoft YaHei&amp;#39;;&quot;&gt;　　会上，邮政业安全中心通报了各快递企业快递服务质量方面存在的快件丢失损毁、索赔难等主要问题，并提出整改要求。参会快递企业介绍了本企业快件丢失损毁赔偿规定、降低丢失损毁率及提高用户投诉申诉处理满意度的主要措施，并提出意见建议。市场监管司传达了快递市场清理整顿专项行动工作要求，对快递业信用体系建设试点工作进行了部署，明确了品牌快递企业总部承担的工作任务和时间节点。会议还就《快递服务质量提升联席会议制度（征求意见稿）》向与会代表现场征求意见，听取了各企业关于市场监管其他方面工作的建议。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:justify;border: 0px none; font-family: 宋体; font-size: 14px; font-stretch: normal; line-height: 27px; margin-top: 0px; margin-bottom: 10px; padding: 0px; vertical-align: baseline; white-space: normal; list-style-type: none; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: &amp;#39;Microsoft YaHei&amp;#39;;&quot;&gt;　　会议指出，快件丢失损毁和索赔难等快递服务质量问题，成为人民群众高度关注的突出问题。服务质量问题，归根结底是服务能力问题，直接关系到快递企业的生存发展，关系到《邮政法》、《快递服务》国家标准等规定的贯彻落实，关系到快递行业的转型升级和健康发展。会议要求，各品牌快递企业要将思想统一到中央巡视组提出的巡视意见上来，统一到国家邮政局工作部署上来，高度重视快递服务质量工作，紧扣症结，落实整改，采取有效措施降低有效申诉率，着力解决消费者索赔难等问题。会议要求各企业会后20天内提交书面整改报告。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:justify;border: 0px none; font-family: 宋体; font-size: 14px; font-stretch: normal; line-height: 27px; margin-top: 0px; margin-bottom: 10px; padding: 0px; vertical-align: baseline; white-space: normal; list-style-type: none; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: &amp;#39;Microsoft YaHei&amp;#39;;&quot;&gt;　　据了解，国家邮政局组织建立快递服务质量提升联席会议制度，旨在有效整合政府、企业、行业协会和消费者等有关方面的力量，建立快递服务质量提升的长效工作机制，推动服务质量稳步提升。联席会议成员单位主要包括国家邮政局市场监管司、邮政业安全中心、中国快递协会、《中国邮政快递报》社和各主要品牌快递企业总部，必要时，可以邀请工商、消费者权益保护协会、媒体和消费者代表参加。联席会议原则上每季度召开一次，此次会议为2016年第1次会议。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:right;border: 0px none; font-family: 宋体; font-size: 14px; font-stretch: normal; line-height: 27px; margin-top: 0px; margin-bottom: 10px; padding: 0px; vertical-align: baseline; white-space: normal; list-style-type: none; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px; font-family: &amp;#39;Microsoft YaHei&amp;#39;;&quot;&gt;来源：国家邮政局网站&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476002023', '61', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('62', '中国成功当选第26届万国邮联大会新一届行政理事会理事国和邮政经营理事会理事国 2', '4', '', '中国成功当选第26届万国邮联大会新一届行政理事会理事国和邮政经营理事会理事国\r\n2', '22', '', '0', '&lt;p style=&quot;text-align:center;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;/ueditor/php/upload/image/20161009/1476002086845130.jpg&quot; style=&quot;border: 0px;&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br/&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;strong&gt;图为会议现场。&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;text-align:center;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;/ueditor/php/upload/image/20161009/1476002087479582.jpg&quot; style=&quot;border: 0px;&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br/&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;strong&gt;图为竞选成功之后中国代表团合影留念。&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br/&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 当地时间10月6日，在土耳其伊斯坦布尔举行的第26届万国邮联大会上，我国成功当选新一届万国邮联行政理事会和邮政经营理事会理事国，这对于推动我国邮政深度参与国际&lt;/span&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;邮政事务，扩大我国在邮政领域影响，推动我国邮政业发展走出去战略实施和加强我国“一路一带”建设、“中欧班列”实施，将具有重要的作用。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 据悉，万国邮联行政理事会理事国当选两届之后必须休一届，方能继续竞选。这次高票当选之后，我国再次获得“双料”理事国地位，将大大提高中国在国际邮政合作事务中的话语权。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476002088', '62', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('63', '马军胜出席第26届万国邮联大会部长级会议', '4', '', ' 就邮政帮助中小微企业发展、邮件进出平衡、深化邮关合作以及推动中欧铁路运邮项目建设等议题，马军胜还与各国嘉宾进行了交流。', '22', '', '0', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;2016年10月4日，第26届万国邮联大会部长级会议在土耳其伊斯坦布尔召开。土耳其交通海事和通信部部长阿尔斯兰、万国邮联总局长比沙尔·侯赛因、大会联席主席科特迪瓦邮政与信息通信技术部部长布鲁诺·纳巴涅·科内出席开幕式并致辞。国家邮政局局长马军胜率中国代表团应邀出席会议，并作主旨发言。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 来自西班牙、肯尼亚、俄罗斯、中国、印度、瑞士、南非、日本、马来西亚、厄瓜多尔、萨摩亚、格鲁吉亚、布基纳法索13个国家主管邮政事务的部长以及国际电信联盟秘书长赵厚麟、世界海关组织副秘书长塞尔吉奥·穆希卡参加会议并做主题发言。本次会议围绕“实现可持续发展，连接公民、企业、和领土”主题，从社会包容与金融普惠、贸易便利化、释放邮政在数字经济中的潜力、未来展望四个方面探讨了邮政行业在促进全球经济社会发展中的作用和趋势。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 土耳其总统雷杰普·塔伊普·埃尔多安来电中对本届万国邮联大会通过2017-2020年全球邮政战略表示祝贺，并祝愿部长级会议取得圆满成功。土耳其交通海事和通信部部长阿尔斯兰在致辞中充分肯定邮政服务为保障社会生活和促进经济发展做出的贡献。提出邮政今后应深化与电子商务的联动发展，推动邮政网络转型升级，加快适应外部环境的不断变化。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 万国邮联总局长比沙尔·侯赛因指出，技术和业务环境的变化为邮政业带来了严峻挑战，也为提升邮政影响力，更好地连接公民、企业和领土提供了机遇。第26届万国邮联大会刚刚审议通过的伊斯坦布尔世界邮政战略，确定了“提升邮政网络基础设施的互联互通、提供可持续和现代化的产品、促进市场和行业的良好运作”三大发展目标，确立了“创新、整合、包容”的2020发展愿景，为今后四年世界邮政发展描绘了蓝图。他强调，邮政业作为社会经济发展的重要组成部分，其发展目标应与各国政府战略保持一致，为实现经济社会可持续发展和包容性做出贡献。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 中国代表团团长、国家邮政局局长马军胜作了“推动流通转型、促进消费升级”为主要内容的主旨发言。他指出，过去的四年是中国寄递业发展最快的四年，也是推动流通转型，促进消费升级作用发挥最为明显的四年，推动网购零售额超过7000亿美元，是4年前的3.5倍，占社会商品零售总额的比重15%左右，比四年前提高了7个百分点，寄递业已成为囯家发展最快的服务业，中国邮政市场已成为全球最大的邮政市场。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 他强调，中国寄递业之所以取得如此佳绩，关键在于包裏快递与网购电商通过创新实现了联动融合发展，线上线下相结合的新型流通模式己成为经济发展的新动能。在发展中坚持政策创新、业务创新、科技创新和网络创新，不断整合邮政资源，不断释放发展潜力，不断扩大覆盖范围和提高供给能力，丰富垂直服务功能，着力构建覆盖广泛、时限精准、服务优质、智慧弹性的运行网络。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 他指出，今年是中国第十三个五年规划的开局之年，也是万国邮联2017-2020伊斯坦布尔全球邮政战略启航之年，中国愿意和全球邮政业同仁携起手来，共同构建一个创新、活力、联动、包容的全球邮政业，为促进贸易便利化、增进人民福祉做出更大贡献。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 就邮政帮助中小微企业发展、邮件进出平衡、深化邮关合作以及推动中欧铁路运邮项目建设等议题，马军胜还与各国嘉宾进行了交流。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476002118', '63', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('64', '广西自治区政府常务会议审议通过《关于促进广西快递业发展的实施意见》', '4', '', '广西局表示，将与相关部门共同抓好落实工作，为行业发展创造良好的政策环境，更好地服务地方经济社会发展。', '22', '', '0', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;9月28日,广西自治区政府召开第81次常务会议，审议并原则通过了由广西自治区邮政管理局代拟的《关于促进广西快递业发展的实施意见》（简称《实施意见》）。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 《实施意见》明确了到2020年，基本建成普惠城乡、技术先进、服务优质、安全高效、绿色节能的快递服务体系，基本实现“市市有快递物流园区、县县有快件集散中心、乡乡有网点、村村通快递”，年均新增就业岗位约4500个，全区快递年业务量突破4亿件，年业务收入达到62亿元，年服务全区用户15亿人次以上，年支撑全区网络零售交易额突破600亿元，有效降低商品流通成本。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 针对广西区快递基础设施建设滞后、产业集中度不高、企业竞争力不强、产品体系单一、同质化竞争严重，与电子商务、现代农业、先进制造业、金融业等关联产业协同发展不足，服务全区电商发展、农村经济、工业生产等方面还有待提升，快递车辆通行难、运输效率不高，安全形势严峻，贷款融资渠道单一成本较高等问题，《实施意见》明确了8项重点任务：加强快递基础网络建设,培育若干大型骨干快递企业,推动行业转型升级,推进创新协同发展,推进快递与交通运输系统的融合衔接,加强监管力量建设,落实安全监管责任。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 《实施意见》还围绕重点任务和快递行业发展中的瓶颈问题提出7项政策支持措施：加强快递用地保障的措施,支持快递车辆便捷通行与停靠,保障快件收寄和投递便利,深入推进简政放权的措施,加大财政税收扶持力度,改善融资环境,加强快递人才培养的措施。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 广西局表示，将与相关部门共同抓好落实工作，为行业发展创造良好的政策环境，更好地服务地方经济社会发展。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476002154', '64', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('65', '安徽局出台办法促政企之间“清”上加“亲”', '4', '', '安徽局出台办法促政企之间“清”上加“亲”', '22', '', '0', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;为加强邮政普遍服务工作的沟通联系，安徽省邮政管理局结合“放管服”工作具体要求，于近日出台了《安徽省邮政普遍服务工作政企会商办法》（简称《会商办法》），通过会商机制制度化，使政企之间“清”上加“亲”。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 《会商办法》明确了政企会商的具体范围、召开形式、参加人员范围和级别、落实措施。《会商办法》的出台有利于全省邮政业更好地贯彻落实国家邮政局和省委省政府对邮政发展的重大决策部署，更好地推动邮政普遍服务业务创新发展，加强与邮政企业的协调和沟通，进一步促进安徽省邮政普遍服务事业发展。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;text-align:right;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;安徽省邮政管理局&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476002173', '65', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('66', '福建局全员全力迎战台风“鲇鱼”', '4', '', ' 今年第17号台风“鲇鱼”在福建泉州惠安沿海登陆，一定程度上影响了寄递企业生产经营和寄递服务，为切实做好台风来临期间全省寄递渠道防范应对和安全生产工作，福建省邮政管理局部署全员全力迎战,并指导各市局全面部署抗击台风工作。', '22', '', '0', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;今年第17号台风“鲇鱼”在福建泉州惠安沿海登陆，一定程度上影响了寄递企业生产经营和寄递服务，为切实做好台风来临期间全省寄递渠道防范应对和安全生产工作，福建省邮政管理局部署全员全力迎战,并指导各市局全面部署抗击台风工作。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 一是做好台风过境前防范应对工作。下发《福建省邮政管理局关于做好2016年第17号强台风“鲇鱼”安全生产防范应对工作的通知》，在局官网上发布“消费警示”，并借助“福建省寄递业实名收寄验视监管系统”、微信群等渠道发送提示，提前做好预警和消费警示。福建局领导高度重视，对台风可能登陆地区逐一部署，要求吸取“莫兰蒂”台风经验，加强防范应对，防止灾害叠加效应。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 二是开展台风登陆期间指导防范工作。实行领导带班制度，24小时值班值守，及时进行调度和处置，全面指导抢修设备及受损场地，重点关注网点的运营正常化。密切与媒体沟通，正面宣传报道，引导舆论方向。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 三是着手台风过境后灾后生产恢复工作。积极部署各市局实时跟踪，强调妥善处理积压延误邮件快件和损毁邮件快件理赔工作，做好灾后清理、指导恢复生产，防止大面积投诉。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 下一步，福建局将持续跟踪寄递企业的灾后重建和生产运营恢复情况，协助企业尽快恢复正常生产工作。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;&lt;/span&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;text-align:right;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: SimHei;&quot;&gt;福建省邮政管理局&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476002204', '66', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('67', '2008年6月，申通快递为四川汶川大地震捐款，共达到600余万人民币。', '4', '', '同时申通快递与淘宝网联合吹响的6.1赈灾集结号，5.12汶川大地震过去后的第20天,第58个六一国际儿童节，很多孩子变成了孤儿，更多孩子要在帐篷里度过他们的节日…由淘宝网、申通快递举办的六一爱心特别活动——.爱心礼物.直达灾区，让所有幸存的小生命不再孤独，不再寂寞。', '6', '2008年6月，申通快递为四川汶川大地震捐款，共达到600余万人民币。', '0', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;color: rgb(63, 63, 63);&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;img src=&quot;/ueditor/php/upload/image/20161010/1476080643145679.jpg&quot; title=&quot;1476080643145679.jpg&quot; alt=&quot;cs3.jpg&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(63, 63, 63);&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;同时申通快递与淘宝网联合吹响的6.1赈灾集结号，5.12汶川大地震过去后的第20天,第58个六一国际儿童节，很多孩子变成了孤儿，更多孩子要在帐篷里度过他们的节日…由淘宝网、申通快递举办的六一爱心特别活动——.爱心礼物.直达灾区，让所有幸存的小生命不再孤独，不再寂寞。&lt;/span&gt;&lt;/p&gt;', 'null', '1476080652', '67', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('68', '2007年3月，申通快递向上海市慈善基金会捐助贫困大学生10万元。', '4', '', '向上海市慈善基金会捐赠10万元，用以资助贫困大学生。申通快递还委托上海高校图书情报工作委员会，向全国百所大学捐赠了图书。', '6', '2007年3月，申通快递向上海市慈善基金会捐助贫困大学生10万元。', '0', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161010/1476080330447263.jpg&quot; title=&quot;1476080330447263.jpg&quot; alt=&quot;cs1.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;color: rgb(63, 63, 63);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 向上海市慈善基金会捐赠10万元，用以资助贫困大学生。申通快递还委托上海高校图书情报工作委员会，向全国百所大学捐赠了图书。&lt;/span&gt;&lt;/p&gt;', '[\"\\/Uploads\\/thumb\\/2016-10-10\\/57fb326294d31.jpg\"]', '1476080451', '68', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('69', '中欧农业发展有限公司与申通快递有限公司签约战略合作协议', '5', '申通国际事业部', '9月23日，中欧农业发展有限公司与申通快递有事公司签约战略合作协议', '20', '9月23日', '0', '&lt;p style=&quot;text-align: left;&quot;&gt;&lt;span style=&quot;color: rgb(63, 63, 63); font-family: 宋体;&quot;&gt;&amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(63, 63, 63);&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;9月&lt;/span&gt;&lt;span style=&quot;font-family: Calibri;&quot;&gt;23&lt;/span&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;日，中欧农业发展有限公司执行董事刘奂鳞、总裁刘庭嘉、销售事业部总经理吴峥嵘莅临申通快递有限公司，申通国际董事长助理刘向东，总经理张存伟，总经理助理赵小操等人接待了刘董事一行，在申通快递总公司进行了战略合作协议签约仪式，仪式上双方交换了合作意向并明确了未来合作方向。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;;font-family:宋体;font-size:14px&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161011/1476156325108691.png&quot; title=&quot;1476156325108691.png&quot; alt=&quot;su01.png&quot;/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', 'null', '1476162101', '52', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('72', '【护航G20】申通快递董事长陈德军亲临杭州慰问一线员工', '6', '', '8月26日，申通快递董事长陈德军带着慰问品和总公司的关怀，先后来到申通快递上海客服管理部，申通快递滨江公司、南星桥公司和萧山公司，对一线员工进行慰问。申通快递副总裁邵知路、申屠安平、王明利，总裁助理周培生，申通快递浙江片区总经理江鑫勇等领导随行陪同。', '20', '', '0', '&lt;p&gt;　　8月26日，申通快递董事长陈德军带着慰问品和总公司的关怀，先后来到申通快递上海客服管理部，申通快递滨江公司、南星桥公司和萧山公司，对一线员工进行慰问。申通快递副总裁邵知路、申屠安平、王明利，总裁助理周培生，申通快递浙江片区总经理江鑫勇等领导随行陪同。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　在上海客服管理部，陈德军董事长详细询问了客服工作开展情况，当看到大家忙碌而又不失耐心地解答客户问题时，他对客服工作的良好局面感到欣慰。他指出，客服是申通对外展示形象的重要窗口，它起到公司和客户之间缓解矛盾、增进感情、加深了解进而提高服务的重要作用。他要求，大家要进一步加强自身管理，发挥好释疑、解答、咨询等职能，为客户提供更加优质的服务。期间，陈德军董事长还特地看望了孕妇女员工，对她们的奉献和付出表示感谢，最后，他还再三叮嘱这些孕妈妈们一定要注意身体，并同她们合影留念。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　在申通快递滨江公司、南星桥公司和萧山公司等地，陈德军董事长亲自为一线员工分发了慰问品，对他们在高温下的坚持和为G20杭州峰会保驾护航所做的不懈努力表示感谢。他勉励大家要再接再厉，时刻保持警惕，加强安全防范意识，认真贯彻落实各项安全制度，用扎实的工作赢得G20杭州峰会护航战的最终胜利。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　最后，陈德军董事长在讲话中强调，“行百里者半九十”，大家为G20杭州峰会的顺利举办做了大量的工作，同时也面临着许多困难和不便。他要求，大家要发扬申通精神，努力克服一切困难，严格落实快件收寄三个100%制度，筑牢G20杭州峰会安全防线，确保无任何安全隐患流入，为G20杭州峰会创造可靠、安全的快件寄递通道，确保G20杭州峰会期间快件寄递平稳运行。&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161014/1476426980569888.jpg&quot; style=&quot;&quot; title=&quot;1476426980569888.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161014/1476426980800301.jpg&quot; style=&quot;&quot; title=&quot;1476426980800301.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161014/1476426980784042.jpg&quot; style=&quot;&quot; title=&quot;1476426980784042.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161014/1476426981863765.jpg&quot; style=&quot;&quot; title=&quot;1476426981863765.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476426989', '48', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('73', '国家邮政局局长马军胜率全国邮政系统相关领导莅临申通快递贵州分拨中心视察指导工作', '6', '', ' 9月10日,国家邮政局局长马军胜率全国邮政系统相关领导莅临申通快递贵州分拨中心考察指导工作。这已经是马局长第三次来到贵阳申通，申通的小伙伴备受鼓舞！', '20', '', '0', '&lt;p&gt;　　9月10日,国家邮政局局长马军胜率全国邮政系统相关领导莅临申通快递贵州分拨中心考察指导工作。这已经是马局长第三次来到贵阳申通，申通的小伙伴备受鼓舞！&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161014/1476427127862840.jpg&quot; title=&quot;1476427127862840.jpg&quot; alt=&quot;201691285859136.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;马军胜局长一行考察申通快递贵州分拨中心&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　9月10日晚，国家邮政局局长马军胜率全国邮政系统相关领导莅临申通快递贵州分拨中心考察指导工作。马局长一行看流水线、进监控中心、访产品，深入分拨中心一线，详细了解了申通快递贵州分拨中心运营、贵州省乡镇覆盖率、以及贵州省快递市场等情况。申通快递贵阳公司总经理叶樟荣，副总经理范从庆向马局长一行详细介绍了贵州快递市场相关情况。&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161014/1476427172769868.jpg&quot; title=&quot;1476427172769868.jpg&quot; alt=&quot;2016912909373.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161014/1476427191360702.jpg&quot; title=&quot;1476427191360702.jpg&quot; alt=&quot;201691285955862.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;　　马局长一行详细询问和查看分拨中心运营情况，特别询问了贵州的乡镇覆盖率、电子面单普及率以及寄递安全等方 面的情况，尤其是对贵阳申通在吸引规模电商企业到贵阳设区域仓配中心的举措，马局长给予了高度赞赏和认可。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161014/1476427226726484.jpg&quot; title=&quot;1476427226726484.jpg&quot; alt=&quot;2016912910374.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;马局长详细询问贵州快递市场情况&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;　　截至目前，贵阳申通电子面单使用率已经突破70%，相比2015年增长了50%，电子面单普及率得到大幅提升。马局长一行来到快件安检区并仔细询问了目前贵州省快件寄递安全情况，贵州申通副总经理范从庆向马局长一行介绍了贵阳申通在快递安全方面所做的工作，尤其是G20峰会期间，分拨中心根据机场安检标准执行快件安检，确保寄递渠道顺畅安全。其次，分拨中心安检工作由专业的航空安检人员担任，此举得到了马局长的高度赞赏。&lt;/p&gt;&lt;p&gt;　　根据西南快递市场情况，贵阳申通吸引多家“宠物食品”电商企业进驻贵阳，将贵阳作为西南、华南的仓配中心，目前每天发往西南、华南地区的快件已达到7吨，在帮助电商企业做好全程快递服务链的同时，大大提升和保障了快递时效。马局长说道：“快递企业不仅要主动走出去，更要在立足市场的情况下，整合资源吸引更多电商企业进驻贵阳，这样的方式既可以节约企业成本，更是缩小西部地区收派件比例的重要举措，是改善和提升西部地区快递市场环境及市场份额的一条出路”。&lt;/p&gt;&lt;p&gt;　　据悉，此次贵州之行是马局长第三次来到贵阳申通，对于近年来贵州快递市场的发展，马局长给予了高度评价和认可，对于贵阳申通快递在开拓市场、信息化以及快递安全等方面所做的努力和成绩，更是给予厚望，希望贵阳申通再接再厉，能够充分理由地域和资源优势，吸引更多电商企业进驻贵阳，进一步推动贵州乃至整个西部地区的快递发展。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476427267', '47', '120.25.202.160', '0');
INSERT INTO `ule_news` VALUES ('74', '申通快递组织复转军人参观上海解放纪念馆、炮台湾湿地森林公园', '6', '', '为庆祝中国民解放军建军89周年，感谢复转军人对公司发展所做的贡献。申通快递党委、工会于8月1日下午组织公司复转军人参观了上海解放纪念馆，公司党委副书记、工会主席、总裁助理李永顺，党委委员、工会副主席张焕明和复转军人代表共计30余人参加了活动。', '20', '', '0', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161014/1476427467150283.jpg&quot; title=&quot;1476427467150283.jpg&quot; alt=&quot;201682175214743.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;　　为庆祝中国民解放军建军89周年，感谢复转军人对公司发展所做的贡献。申通快递党委、工会于8月1日下午组织公司复转军人参观了上海解放纪念馆，公司党委副书记、工会主席、总裁助理李永顺，党委委员、工会副主席张焕明和复转军人代表共计30余人参加了活动。&lt;/p&gt;&lt;p&gt;　　在上海解放纪念馆，青松翠柏环绕的纪念广场庄严肃穆，16米高的烈士纪念碑上，陈毅元帅手书的“革命烈士永垂不朽”八个大字在阳光下熠熠生辉。环绕纪念碑的烈士英名墙上，镌刻着为解放上海而牺牲的8000余位烈士英名。公司复转军人们迈着沉重步伐，提着纪念革命先烈的花篮，来到了雄伟壮观的纪念碑前，在“国际歌”歌声中，以深深的三鞠躬寄托无限崇敬之情与无尽哀思。逝者已逝，但他们用血肉筑起的丰碑将永垂不朽！&lt;/p&gt;&lt;p&gt;　　纪念馆内分为序厅、主展厅和大型多媒体主题情景剧场三个部分，以“钳击吴淞、解放上海”的战役决策为主线，重点展示解放军将国民党守军主力吸引到郊区并将其歼灭，从而保全上海市区的主要史迹。一幅幅图片、一张张图表、一件件实物、一段段视频，吸引了老兵们的目光。他们时而驻足、时而凝视，仔细观看，认真听取工作人员讲解，并不时询问有关情况。纪念馆同时借以光、声、电多媒体先进设备，准确还原了当时硝烟弥漫的解放战争场景，让在场的老兵们重温了那段跌宕起伏的历史和鼓舞人心的岁月，再次感受到了革命先烈为民族独立和解放，为人民自由与幸福浴血奋战、舍生忘死的革命精神。&lt;/p&gt;&lt;p&gt;　　参观完上海解放纪念馆，复转军人们又来到第二站--炮台湾湿地森林公园继续参观。锈迹斑驳的老炮、绿色的重型担克、两侧的小炮，这些特殊的军事“符号”，这正是炮台湾湿地森林公园与其它公园的不同之处，它的背后承载了一段难以磨灭的历史。鸦片战争，清军在此抗击英国侵略者；淞沪抗战，中国军队在此抗击日本侵略者。自清朝在此修筑炮台以来，炮台湾发生大大小小战斗不下十几次，坐落在公园中心的炮台代表了这里曾经发生的一切，老兵们在炮台下合影留念，纪念英勇奋斗过的先烈们，感谢他们用生命和鲜血换来我们今天的幸福生活。&lt;/p&gt;&lt;p&gt;　　回眸历史，轻轻地走近那已远去的战争；聆听回音，深深地缅怀那中华民族不屈忠魂。为期半天的考察学习已经圆满结束，留在大家心中的是作为复转军人的那份沉甸甸的的责任与使命。大家纷纷表示，要继续保持和发扬人民军队的光荣传统，退役不褪志，退伍不褪色，在部队勇当尖兵，在企业争做表率，做守纪律的表率、做敢担当的表率、做听指挥的表率、做重情义的表率，发扬复转军人特别能吃苦、特别能战斗的精神，努力工作，主动作为，在本职岗位上发挥模范带头作用，为申通快递持续健康发展做出积极的贡献。&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161014/1476427477177159.jpg&quot; style=&quot;&quot; title=&quot;1476427477177159.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20161014/1476427477323955.jpg&quot; style=&quot;&quot; title=&quot;1476427477323955.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'null', '1476427495', '57', '120.25.202.160', '0');

-- ----------------------------
-- Table structure for `ule_page`
-- ----------------------------
DROP TABLE IF EXISTS `ule_page`;
CREATE TABLE `ule_page` (
  `id` tinyint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` tinyint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `zhai` varchar(400) NOT NULL,
  `content` text NOT NULL,
  `time` int(40) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ule_page
-- ----------------------------
INSERT INTO `ule_page` VALUES ('34', '43', '联系我们1', '联系我们', '联系iwomen', '&lt;p&gt;联系我们1&lt;/p&gt;', '1492005278');
INSERT INTO `ule_page` VALUES ('35', '38', '使用帮助', '使用帮助', '使用帮助', '&lt;p&gt;使用帮助&lt;/p&gt;', '1491921380');
INSERT INTO `ule_page` VALUES ('36', '39', '网站地图', '网站地图', '网站地图', '&lt;p&gt;网站地图&lt;/p&gt;', '1491921394');
INSERT INTO `ule_page` VALUES ('41', '40', '版权声明', '版权声明', '版权声明', '&lt;p&gt;1. 当您在&lt;a href=&quot;http://www.u-le.net/&quot; target=&quot;_self&quot; title=&quot;悠乐&quot;&gt;悠乐&lt;/a&gt;（u-le.net）进行个人用户注册、参加网上或论坛等各种活动时，在您的同意及确认下，本网站将通过注册表格等形式要求您提供一些个人资料。您有权在任何时候拒绝提供这些信息，您在本站点上所提供的所有信息都是基于自愿的原则。&lt;br style=&quot;margin: 0px auto; padding: 0px; color: rgb(127, 127, 127); font-family: &amp;quot;microsoft yahei&amp;quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;　　&lt;br style=&quot;margin: 0px auto; padding: 0px; color: rgb(127, 127, 127); font-family: &amp;quot;microsoft yahei&amp;quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;2. 企业会员所提供的资料将会被本网站统计、汇总，本网站会不定期地通过企业会员留下的信息资料同该企业会员保持联系。&lt;br style=&quot;margin: 0px auto; padding: 0px; color: rgb(127, 127, 127); font-family: &amp;quot;microsoft yahei&amp;quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;　　&lt;br style=&quot;margin: 0px auto; padding: 0px; color: rgb(127, 127, 127); font-family: &amp;quot;microsoft yahei&amp;quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;3. 在未经访问者授权同意的情况下，本网站不会将访问者的个人资料、企业资料泄露给第三方。以下情况除外：&lt;br style=&quot;margin: 0px auto; padding: 0px; color: rgb(127, 127, 127); font-family: &amp;quot;microsoft yahei&amp;quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;（1）根据执法单位之要求或为公共之目的向相关单位提供个人资料；&amp;nbsp;&lt;br style=&quot;margin: 0px auto; padding: 0px; color: rgb(127, 127, 127); font-family: &amp;quot;microsoft yahei&amp;quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;（2）由于访问者将用户密码告知他人或与他人共享注册帐户，由此导致的任何个人资料泄露；&amp;nbsp;&lt;br style=&quot;margin: 0px auto; padding: 0px; color: rgb(127, 127, 127); font-family: &amp;quot;microsoft yahei&amp;quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;（3）由于黑客攻击、计算机病毒侵入或发作、因政府管制而造成的暂时性关闭等影响网络正常经营之不可抗力而造成的个人资料泄露、丢失、被盗用或被窜改等；&lt;br style=&quot;margin: 0px auto; padding: 0px; color: rgb(127, 127, 127); font-family: &amp;quot;microsoft yahei&amp;quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;（4）由于与本网站链接的其他网站所造成之个人资料泄露及由此而导致的任何法律争议和后果；&amp;nbsp;&lt;br style=&quot;margin: 0px auto; padding: 0px; color: rgb(127, 127, 127); font-family: &amp;quot;microsoft yahei&amp;quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;（5）为免除访问者在生命、身体或财产方面之急迫危险。&lt;br style=&quot;margin: 0px auto; padding: 0px; color: rgb(127, 127, 127); font-family: &amp;quot;microsoft yahei&amp;quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;　　&lt;br style=&quot;margin: 0px auto; padding: 0px; color: rgb(127, 127, 127); font-family: &amp;quot;microsoft yahei&amp;quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;4. 本站点所提供的服务会自动收集有关访问者的信息，这些信息包括访问者人数、访问时间、访问页面、来访地址等，本站点使用这些信息来对我们的服务器进行分析和对网站进行管理。&lt;br style=&quot;margin: 0px auto; padding: 0px; color: rgb(127, 127, 127); font-family: &amp;quot;microsoft yahei&amp;quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;　　&lt;br style=&quot;margin: 0px auto; padding: 0px; color: rgb(127, 127, 127); font-family: &amp;quot;microsoft yahei&amp;quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;5. cookie是一个标准的互联网技术，它可以使我们存储和获得用户登录信息。本站点使用cookie 来确保您不会重复浏览到相同的内容并可以获得最新的信息，并确认您是站酷（u-le.net）的成员之一。我们并不使用cookie来跟踪任何个人信息。&lt;/p&gt;', '1492003327');
INSERT INTO `ule_page` VALUES ('38', '37', '新手上路', '新手上路', '新手上路', '&lt;p&gt;新手上路&lt;/p&gt;', '1491921424');
INSERT INTO `ule_page` VALUES ('40', '36', '关于悠乐', '关于悠乐', '关于悠乐111', '&lt;p&gt;&lt;a href=&quot;http://www.u-le.net/&quot; target=&quot;_blank&quot; title=&quot;悠乐&quot;&gt;悠乐&lt;/a&gt;的目标再与为那些想要自由行出国，又不想跟团，想找个留学生或者当地&lt;a href=&quot;http://www.u-le.net/&quot; target=&quot;_blank&quot; title=&quot;悠乐&quot;&gt;地接&lt;/a&gt;，为你提供旅游相关设备以及提供翻译，陪吃陪玩等等...&lt;/p&gt;', '1492004099');

-- ----------------------------
-- Table structure for `ule_site`
-- ----------------------------
DROP TABLE IF EXISTS `ule_site`;
CREATE TABLE `ule_site` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_name` varchar(40) NOT NULL COMMENT '站点名称',
  `site_keywords` varchar(200) NOT NULL COMMENT '站点关键字',
  `site_description` text NOT NULL COMMENT '站点描述',
  `site_admin_name` varchar(40) NOT NULL DEFAULT '悠乐cms' COMMENT '管理系统名称',
  `site_admin_version` varchar(10) NOT NULL COMMENT '版本号',
  `site_admin_info` text NOT NULL COMMENT '页脚信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ule_site
-- ----------------------------
INSERT INTO `ule_site` VALUES ('1', '申通国际', '申通国际物流', '申通国际物流', '申通国际cms管理系统', '1.0.1', '<p>感谢jQuery、layer、laypage、Validform、UEditor、My97DatePicker、iconfont、Datatables、WebUploaded、icheck、highcharts、bootstrap-Switch<br>\n			Copyright ©2015 u-le.net All Rights Reserved.<br></p>');

-- ----------------------------
-- Table structure for `ule_system`
-- ----------------------------
DROP TABLE IF EXISTS `ule_system`;
CREATE TABLE `ule_system` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL COMMENT '网站名称',
  `keyword` varchar(100) NOT NULL COMMENT '关键词',
  `description` varchar(200) NOT NULL COMMENT '描述',
  `coryright` varchar(200) NOT NULL COMMENT '版权',
  `icp` varchar(100) NOT NULL COMMENT '备案号',
  `count` text NOT NULL COMMENT '统计代码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='网站前台系统设置';

-- ----------------------------
-- Records of ule_system
-- ----------------------------
INSERT INTO `ule_system` VALUES ('1', '申通国际', '国际物流', '申通快递有限公司', '版权所有@申通快递有限公司', '沪ICP备13037807号-1', '');

-- ----------------------------
-- Table structure for `ule_tags`
-- ----------------------------
DROP TABLE IF EXISTS `ule_tags`;
CREATE TABLE `ule_tags` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL COMMENT '标签名',
  `pid` int(8) unsigned NOT NULL COMMENT '在悠乐帮中所属的问题',
  `user_id` int(8) unsigned NOT NULL COMMENT '所属会员',
  `count` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '计数',
  `add_time` int(40) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 COMMENT='悠乐帮里的标签统计';

-- ----------------------------
-- Records of ule_tags
-- ----------------------------
INSERT INTO `ule_tags` VALUES ('79', '地接社', '28', '3', '0', '1493122254');
INSERT INTO `ule_tags` VALUES ('78', '刷新', '27', '3', '0', '1493122249');
INSERT INTO `ule_tags` VALUES ('77', '地接社', '27', '3', '0', '1493122249');
INSERT INTO `ule_tags` VALUES ('76', '积分', '26', '3', '0', '1493121718');
INSERT INTO `ule_tags` VALUES ('75', '地接社', '26', '3', '0', '1493121718');
INSERT INTO `ule_tags` VALUES ('74', '操作日志', '25', '3', '0', '1493121544');
INSERT INTO `ule_tags` VALUES ('73', '用户积分', '25', '3', '0', '1493121544');
INSERT INTO `ule_tags` VALUES ('72', '地接社', '25', '3', '0', '1493121544');
INSERT INTO `ule_tags` VALUES ('71', '欧洲地接', '24', '5', '0', '1493044119');
INSERT INTO `ule_tags` VALUES ('70', '黑猪哇', '24', '5', '0', '1493044119');
INSERT INTO `ule_tags` VALUES ('69', '地接社', '24', '5', '0', '1493044119');
INSERT INTO `ule_tags` VALUES ('68', '大撒旦', '23', '3', '0', '1493043200');
INSERT INTO `ule_tags` VALUES ('67', '大撒旦撒', '23', '3', '0', '1493043200');
INSERT INTO `ule_tags` VALUES ('66', '打的撒', '23', '3', '0', '1493043200');
INSERT INTO `ule_tags` VALUES ('64', '地接社', '23', '3', '0', '1493043200');
INSERT INTO `ule_tags` VALUES ('65', '大大', '23', '3', '0', '1493043200');
INSERT INTO `ule_tags` VALUES ('90', '地接社', '32', '3', '0', '1493122577');
INSERT INTO `ule_tags` VALUES ('89', '地接', '32', '3', '0', '1493122577');
INSERT INTO `ule_tags` VALUES ('88', '悠乐地接', '31', '3', '0', '1493122564');
INSERT INTO `ule_tags` VALUES ('87', '地接社', '31', '3', '0', '1493122564');
INSERT INTO `ule_tags` VALUES ('86', '地接', '31', '3', '0', '1493122564');
INSERT INTO `ule_tags` VALUES ('85', '大撒旦', '30', '3', '0', '1493122423');
INSERT INTO `ule_tags` VALUES ('84', '地接社', '30', '3', '0', '1493122423');
INSERT INTO `ule_tags` VALUES ('83', '悠乐地接', '29', '3', '0', '1493122365');
INSERT INTO `ule_tags` VALUES ('82', '地接社', '29', '3', '0', '1493122365');
INSERT INTO `ule_tags` VALUES ('81', '地接', '29', '3', '0', '1493122365');
INSERT INTO `ule_tags` VALUES ('80', '刷新', '28', '3', '0', '1493122254');
INSERT INTO `ule_tags` VALUES ('91', '悠乐地接', '32', '3', '0', '1493122577');
INSERT INTO `ule_tags` VALUES ('92', '地接', '33', '3', '0', '1493122922');
INSERT INTO `ule_tags` VALUES ('93', '地接社', '33', '3', '0', '1493122922');
INSERT INTO `ule_tags` VALUES ('94', '悠乐地接', '33', '3', '0', '1493122922');
INSERT INTO `ule_tags` VALUES ('95', '地接社', '34', '3', '0', '1493122981');
INSERT INTO `ule_tags` VALUES ('96', '父即刷', '34', '3', '0', '1493122981');
INSERT INTO `ule_tags` VALUES ('97', '地接', '35', '3', '0', '1493123029');
INSERT INTO `ule_tags` VALUES ('98', '地接社', '35', '3', '0', '1493123029');
INSERT INTO `ule_tags` VALUES ('99', '悠乐地接', '35', '3', '0', '1493123029');
INSERT INTO `ule_tags` VALUES ('100', '地接社', '36', '3', '0', '1493124085');
INSERT INTO `ule_tags` VALUES ('101', '黑猪娃', '36', '3', '0', '1493124085');
INSERT INTO `ule_tags` VALUES ('102', '地接', '37', '5', '0', '1493126184');
INSERT INTO `ule_tags` VALUES ('103', '地接社', '37', '5', '0', '1493126184');
INSERT INTO `ule_tags` VALUES ('104', '悠乐地接', '37', '5', '0', '1493126184');
INSERT INTO `ule_tags` VALUES ('105', '地接社', '38', '5', '0', '1493207885');
INSERT INTO `ule_tags` VALUES ('106', '增加积分', '38', '5', '0', '1493207885');
INSERT INTO `ule_tags` VALUES ('107', '地接社', '39', '5', '0', '1493216170');
INSERT INTO `ule_tags` VALUES ('108', '测试', '39', '5', '0', '1493216170');
INSERT INTO `ule_tags` VALUES ('109', '地接', '40', '5', '0', '1493216546');
INSERT INTO `ule_tags` VALUES ('110', '地接社', '40', '5', '0', '1493216546');
INSERT INTO `ule_tags` VALUES ('111', '悠乐地接', '40', '5', '0', '1493216546');
INSERT INTO `ule_tags` VALUES ('112', '地接', '41', '5', '0', '1493216628');
INSERT INTO `ule_tags` VALUES ('113', '地接社', '41', '5', '0', '1493216628');
INSERT INTO `ule_tags` VALUES ('114', '悠乐地接', '41', '5', '0', '1493216628');
INSERT INTO `ule_tags` VALUES ('115', '地接', '42', '5', '0', '1493430900');
INSERT INTO `ule_tags` VALUES ('116', '地接社', '42', '5', '0', '1493430900');
INSERT INTO `ule_tags` VALUES ('117', '悠乐地接', '42', '5', '0', '1493430900');
INSERT INTO `ule_tags` VALUES ('118', '地接', '43', '5', '0', '1493431392');
INSERT INTO `ule_tags` VALUES ('119', '地接社', '43', '5', '0', '1493431392');
INSERT INTO `ule_tags` VALUES ('120', '悠乐地接', '43', '5', '0', '1493431392');
INSERT INTO `ule_tags` VALUES ('121', '地接', '44', '3', '0', '1493439036');
INSERT INTO `ule_tags` VALUES ('122', '地接社', '44', '3', '0', '1493439036');
INSERT INTO `ule_tags` VALUES ('123', '悠乐地接', '44', '3', '0', '1493439036');
INSERT INTO `ule_tags` VALUES ('124', '地接', '45', '5', '0', '1493475575');
INSERT INTO `ule_tags` VALUES ('125', '地接社', '45', '5', '0', '1493475575');
INSERT INTO `ule_tags` VALUES ('126', '悠乐地接', '45', '5', '0', '1493475575');
INSERT INTO `ule_tags` VALUES ('127', '地接', '46', '5', '0', '1493475789');
INSERT INTO `ule_tags` VALUES ('128', '地接社', '46', '5', '0', '1493475789');
INSERT INTO `ule_tags` VALUES ('129', '悠乐地接', '46', '5', '0', '1493475789');
INSERT INTO `ule_tags` VALUES ('130', '地接', '47', '5', '0', '1493475790');
INSERT INTO `ule_tags` VALUES ('131', '地接社', '47', '5', '0', '1493475790');
INSERT INTO `ule_tags` VALUES ('132', '悠乐地接', '47', '5', '0', '1493475790');
INSERT INTO `ule_tags` VALUES ('133', '地接社', '48', '5', '0', '1493475816');
INSERT INTO `ule_tags` VALUES ('134', 'dd', '48', '5', '0', '1493475816');
INSERT INTO `ule_tags` VALUES ('135', '地接', '49', '5', '0', '1493476317');
INSERT INTO `ule_tags` VALUES ('136', '地接社', '49', '5', '0', '1493476317');
INSERT INTO `ule_tags` VALUES ('137', '悠乐地接', '49', '5', '0', '1493476317');
