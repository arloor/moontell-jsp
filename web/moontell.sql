-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-04-22 03:05:40
-- 服务器版本： 5.5.52-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moontell`
--

-- --------------------------------------------------------

--
-- 表的结构 `mt_blogs`
--

CREATE TABLE IF NOT EXISTS `mt_blogs` (
  `ID` bigint(20) unsigned NOT NULL,
  `version` int(10) NOT NULL,
  `post_author` int(11) NOT NULL DEFAULT '1',
  `term` int(4) NOT NULL DEFAULT '0' COMMENT '用于标记是什么类型，比如图片1和文章0',
  `address` varchar(60) DEFAULT NULL COMMENT '图片的地址',
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `guest_visible` int(1) NOT NULL DEFAULT '0',
  `post_title` varchar(200) NOT NULL,
  `post_content` longtext NOT NULL,
  `commentable` int(1) NOT NULL DEFAULT '1',
  `isdeleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mt_blogs`
--

INSERT INTO `mt_blogs` (`ID`, `version`, `post_author`, `term`, `address`, `post_time`, `guest_visible`, `post_title`, `post_content`, `commentable`, `isdeleted`) VALUES
(1, 0, 0, 0, NULL, '2017-02-23 13:58:55', 1, '夫人入驻(访客可见)', '<p>这是夫人入驻后写的第一篇文章。\n\n夫人将要学习的内容有\n\nPS\n\nHtml\n\n消费者心理学\n\nSway\n\nCRM\n\nSEO、SEM</p>\n\n......\n\n眼下想开始看VBA......\n\n啦啦啦我爱欢欢 欢欢爱我啦啦啦~~', 1, 0),
(3, 0, 0, 0, NULL, '2017-02-23 17:48:01', 0, '介绍策划（访客不可见）', '<h2>背景：</h2>\n\n2016年移动互联网进入下半段，计算机成为每个人生活中的必要工具。对于大学生来说，掌握计算机的使用技巧是一项必要的技能，能够熟练使用计算机如今已经成为求职、工作和生活各个方面的一种优势。\n\n南京大学为计算机课程专门开设了大学计算机应用和大学计算机信息技术两门课程，还为软件学院计算机科学外的很多专业开设c语言和c++课程。借助学校开设的课程，我们能够使用计算机的一些常用软件，但是想要更好更有效的使用计算机，学校课程之外还需要个人更多的摸索和实践，为此南京大学宿舍自主管理委员会策划组织一项计算机应用知识的课程，课程主要讲解课程中没有而对大学生有所助益的内容，减少同学们的爬坑时间而让同学们掌握更多的知识。设想课程内容有：windows系统优化、重装windows和双系统安装、博客搭建等等。\n\n<h2>项目策划</h2>\n\n<h4>宣传和报名：</h4>\n\n4.15-4.26 在四月底前完成宣传和报名\n\n报名方式：<strong><span style="color: #008000;">秘书部</span></strong>负责建立咨询qq群，并且在海报贴出之前预先发布正式报名方式（报名信息需要包含：姓名 学号 院系完整名称 专业完整名称 <strong><span style="color: #800080;">想要学习的计算机应用知识</span></strong>）4.26日统计报名信息，考察同学们<strong><span style="color: #800080;">想要学习的计算机应用知识</span></strong><span style="color: #000000;">，并且发送给公益部相关同学</span>\n\n海报横幅宣传：<strong><span style="color: #008000;">宣传部</span></strong>在4.18之前完成海报和横幅设计;4.18晚贴出海报横幅。横幅和海报上都张贴咨询qq二维码\n\n院系宣传：<strong><span style="color: #008000;">主席</span></strong>请学工处联系各个院系辅导员宣传活动，宣传方式建议是邮箱或者课前通知（<strong><span style="color: #800080;">一定要提到咨询qq群群号</span></strong>）\n\n<h4>招募授课志愿者：</h4>\n\n4.15-4.26\n\n<strong><span style="color: #008000;">公益部</span></strong><span style="color: #008000;"><span style="color: #000000;">：负责建立志愿者qq群，招募志愿者、志愿者分组、授课内容审核筛选、志愿者相关通知和管理</span></span>\n\n部门内部协调：首先<strong><span style="color: #800080;">4.13日</span></strong>部员报名此项活动志愿者管理的负责人，<strong><span style="color: #800080;">4.14日</span></strong>负责部员完成工作分工，<span style="color: #800080;"><strong>向部长提交工作计划</strong></span>（主要就是各项工作的时间节点，比如上面说到秘书部在4.26整理出报名同学想要了解的知识，那么工作计划中应该有“4.26 催秘书部。。” ）。\n\n招募工作：活动确认可行即开始招募志愿者。建立志愿者qq群（并且预先发布公告），并由负责同学在青协网站提交申请，申请上注明要加入qq群和向相关同学发送短信（内容包括：姓名 学号 院系完整名称 专业完整名称 <strong><span style="color: #800080;">想要</span><span style="color: #800080;">讲授的计算机应用知识</span></strong>）。4.26统计报名信息，4.27<strong><span style="color: #800080;">根据统计的志愿者能够讲授的内容</span></strong>进行志愿者分组（按授课时间），每组不超过四人，并且阅读秘书部发的<strong><span style="color: #800080;">同学</span><span style="color: #800080;">想要学习的计算机应用知识</span></strong>，形成对志愿者授课内容的建议（4.28志愿者培训时告知志愿者）\n\n&nbsp;\n\n<h4>志愿者培训：</h4>\n\n4.28：\n\n主要就是让志愿者知道同学们想知道哪些知识，并且让志愿者分组讨论内容。还有告知志愿者之后的各项工作，就是以下的：<strong><span style="color: #800080;">课程内容确定流程，授课和考勤</span></strong>\n\n&nbsp;\n\n<h4>课程内容确定：</h4>\n\n4.29-5.7（包括志愿者提交课程内容和社团审核筛选内容）5.4前志愿者提交授课ppt和<strong><span style="color: #800080;">授课计划</span></strong>（可以理解上课的策划，比如考勤部分提到的签到签退，问题设置，还有是否进行实践等）5.5日公益部同学审核各组ppt和授课计划，<strong><span style="color: #800080;">给出修改意见并保存至网盘</span></strong><span style="color: #800080;"><span style="color: #000000;">, 5.6日审核修改 5.7日正式确定授课ppt和授课计划，将各组授课ppt和授课计划发到<strong><span style="color: #800080;">志愿者qq群群文件</span></strong></span></span>\n\n<h4>授课：</h4>\n\n5.14 5.21 5.28 6.4（连续四周的周末）每次两小时\n\n这里按照授课计划来即可。注意，在每次授课前的周4提醒志愿者本周授课\n\n<h4>考勤：</h4>\n\n<ol>\n    <li>实行积分制度，讲师上课前携带报名同学花名册，用于记录积分信息</li>\n    <li>执行签到签退制度，课程开始进行签到，课程结束进行签退，当日签到签退完整则加2分</li>\n    <li>在授课过程中讲师应该穿插一些问题，回答者视答案正确与否加2-3分</li>\n    <li>在授课内容结束后讲师应带同学复习一遍所讲授的内容，其中穿插一些问题，回答同学视答案正确与否加2-3分</li>\n    <li>授课内容结束后可以视课程内容进行简单的实践，实践成功者加3分。</li>\n    <li>活动完全结束后，参加同学提交学习感想（500字左右），视内容加0-5分。</li>\n</ol>\n\n&nbsp;\n\n&nbsp;', 1, 0),
(2, 0, 1, 0, NULL, '2017-04-19 11:14:49', 1, '我爱你悦悦', '<p>悦悦好好休息哦</p>', 1, 0),
(2, 1, 1, 0, NULL, '2017-04-19 11:38:10', 1, '我爱你悦悦2222', '<p>悦悦好好休息哦</p>', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `mt_comments`
--

CREATE TABLE IF NOT EXISTS `mt_comments` (
  `ID` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` int(4) NOT NULL,
  `comment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_parent` bigint(20) DEFAULT '0',
  `comment_content` varchar(60) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mt_comments`
--

INSERT INTO `mt_comments` (`ID`, `post_id`, `user_id`, `comment_time`, `comment_parent`, `comment_content`) VALUES
(1, 1, 0, '2017-02-23 13:55:05', 0, '测试评论');

-- --------------------------------------------------------

--
-- 表的结构 `mt_cover`
--

CREATE TABLE IF NOT EXISTS `mt_cover` (
  `cID` int(10) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ctitle` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ccontent` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `cpicture` varchar(20) NOT NULL DEFAULT 'image/header.jpg',
  `withPicture` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `mt_cover`
--

INSERT INTO `mt_cover` (`cID`, `ctime`, `ctitle`, `ccontent`, `cpicture`, `withPicture`) VALUES
(1, '2017-04-20 03:05:22', '1111111111', '11111111111111111111', 'image/header.jpg', 1),
(2, '2017-04-20 03:05:34', '2222222222', '2222222222222222222222222222', 'image/header.jpg', 1);

-- --------------------------------------------------------

--
-- 表的结构 `mt_souvenir`
--

CREATE TABLE IF NOT EXISTS `mt_souvenir` (
  `sID` int(11) NOT NULL,
  `stitle` varchar(60) NOT NULL,
  `stext` varchar(100) DEFAULT NULL,
  `icon` varchar(30) NOT NULL DEFAULT 'image/cd-icon-location.svg',
  `icontheme` varchar(20) NOT NULL COMMENT 'movie红      picture绿',
  `sdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `guest_visible` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mt_souvenir`
--

INSERT INTO `mt_souvenir` (`sID`, `stitle`, `stext`, `icon`, `icontheme`, `sdate`, `guest_visible`) VALUES
(1, '1.HTML5+CSS3实现的响应式垂直时间轴', '<p>HTML5+CSS3实现的响应式垂直时间轴</p>', 'image/cd-icon-location.svg', 'movie', '2017-02-28 22:29:02', 1),
(3, '2.HTML5+CSS3实现的响应式垂直时间轴', '<p>HTML5+CSS3实现的响应式垂直时间轴</p>', 'image/cd-icon-picture.svg', 'picture', '2017-04-19 17:37:08', 1);

-- --------------------------------------------------------

--
-- 表的结构 `mt_terms`
--

CREATE TABLE IF NOT EXISTS `mt_terms` (
  `ID` int(10) unsigned NOT NULL,
  `term_name` varchar(200) NOT NULL,
  `term_slug` varchar(200) NOT NULL COMMENT '分类的英文名称'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mt_terms`
--

INSERT INTO `mt_terms` (`ID`, `term_name`, `term_slug`) VALUES
(1, '小秘密', 'litle_secret'),
(2, '大秘密', 'large_secret'),
(3, '测试目录', 'test');

-- --------------------------------------------------------

--
-- 表的结构 `mt_users`
--

CREATE TABLE IF NOT EXISTS `mt_users` (
  `ID` int(10) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL DEFAULT '怪力乱神，无所不能，芝麻开门'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mt_users`
--

INSERT INTO `mt_users` (`ID`, `user_login`, `password`) VALUES
(1, 'yue', '怪力乱神，无所不能，芝麻开门');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mt_blogs`
--
ALTER TABLE `mt_blogs`
  ADD PRIMARY KEY (`ID`,`version`);

--
-- Indexes for table `mt_comments`
--
ALTER TABLE `mt_comments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mt_cover`
--
ALTER TABLE `mt_cover`
  ADD PRIMARY KEY (`cID`);

--
-- Indexes for table `mt_souvenir`
--
ALTER TABLE `mt_souvenir`
  ADD PRIMARY KEY (`sID`);

--
-- Indexes for table `mt_terms`
--
ALTER TABLE `mt_terms`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `term_name` (`term_name`),
  ADD UNIQUE KEY `term_slug` (`term_slug`);

--
-- Indexes for table `mt_users`
--
ALTER TABLE `mt_users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mt_blogs`
--
ALTER TABLE `mt_blogs`
AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mt_comments`
--
ALTER TABLE `mt_comments`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mt_cover`
--
ALTER TABLE `mt_cover`
  MODIFY `cID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mt_souvenir`
--
ALTER TABLE `mt_souvenir`
  MODIFY `sID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mt_terms`
--
ALTER TABLE `mt_terms`
  MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mt_users`
--
ALTER TABLE `mt_users`
  MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
