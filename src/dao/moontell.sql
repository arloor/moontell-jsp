-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-04-24 18:12:50
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
(1, 0, 0, 0, NULL, '2017-02-23 13:58:55', 1, '1夫人入驻(访客可见)', '<p>这是夫人入驻后写的第一篇文章。\n\n夫人将要学习的内容有\n\nPS\n\nHtml\n\n消费者心理学\n\nSway\n\nCRM\n\nSEO、SEM</p>\n\n......\n\n眼下想开始看VBA......\n\n啦啦啦我爱欢欢 欢欢爱我啦啦啦~~', 1, 0),
(2, 0, 1, 0, NULL, '2017-04-19 11:14:49', 1, '2我爱你悦悦', '我爱悦悦', 1, 0),
(2, 1, 1, 0, NULL, '2017-04-19 11:38:10', 1, '我爱你悦悦2222', '<p>悦悦好好休息哦</p>', 1, 1),
(2, 2, 1, 0, NULL, '2017-04-23 16:37:35', 0, '2222222222', '2222222222', 1, 0),
(2, 3, 1, 0, NULL, '2017-04-23 16:37:35', 0, '3333333333', '333333333333333', 1, 0),
(2, 4, 1, 0, NULL, '2017-04-23 16:37:58', 0, '44444444', '444444444444444444444444', 1, 0),
(2, 5, 1, 0, NULL, '2017-04-23 16:37:58', 0, '25', '25', 1, 0),
(2, 6, 1, 0, NULL, '2017-04-23 16:38:32', 0, '26', '26', 1, 0),
(2, 7, 1, 0, NULL, '2017-04-23 16:38:32', 0, '27', '27', 1, 0),
(2, 8, 1, 0, NULL, '2017-04-24 04:02:00', 1, '第二篇通过管理后台增加的版本', '<p>第二篇通过管理后台增加的版本</p><p><br></p>', 1, 0),
(2, 9, 1, 0, NULL, '2017-04-24 04:07:22', 1, '第二篇通过管理后台增加的版本', '\n                <p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>', 1, 0),
(2, 10, 1, 0, NULL, '2017-04-24 04:07:47', 1, '第二篇通过管理后台增加的版本', '<p>', 1, 0),
(2, 11, 1, 0, NULL, '2017-04-24 17:30:51', 1, '第二篇通过管理后台增加的版本', '\n                <p>\n            </p><p>asdas', 1, 0),
(2, 12, 1, 0, NULL, '2017-04-24 17:31:26', 1, '第二篇通过管理后台增加的版本', '\n                \n                <p>\n            </p><p>这是通过管理后台增加的一个版本</p><p><br></p>', 1, 0),
(3, 0, 1, 0, NULL, '2017-04-24 17:34:29', 0, 'MoonTell1.0完工笔记', '\n                <p>html 简单css 简单js（包括部分ajax和部分jquery） jsp servlet</p><p>跟之前的mailsender比这个更加完整一点吧。</p><p>以后要加的功能是图片上传</p>\n            <p><br></p>', 0, 0),
(3, 2, 1, 0, NULL, '2017-04-24 17:36:09', 1, 'MoonTell1.0完工笔记', '\n                \n                \n                <p>html 简单css 简单js（包括部分ajax和部分jquery） jsp servlet ', 0, 0),
(3, 3, 1, 0, NULL, '2017-04-24 17:36:59', 1, 'MoonTell1.0完工笔记', '\n                \n                \n                \n                <p>html 简单css 简单js（包括部分ajax和部分jquery） jsp servlet 后台使用了wangEditor富文本编辑器，总之就是抄抄抄</p><p>跟之前的mailsender比这个更加完整一点吧。</p><p></p><p>以后要加的功能是图片上传</p><p><br></p>', 0, 0),
(3, 1, 1, 0, NULL, '2017-04-24 17:34:42', 1, 'MoonTell1.0完工笔记', '\n                \n                <p>html 简单css 简单js（包括部分ajax和部分jquery） jsp servlet</p><p>跟之前的mailsender比这个更加完整一点吧。</p><p>以后要加的功能是图片上传</p>\n            <p><br></p>\n            ', 0, 0);

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
  `ccontent` longtext CHARACTER SET utf8 NOT NULL,
  `cpicture` varchar(20) NOT NULL DEFAULT 'image/header.jpg',
  `withPicture` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `mt_cover`
--

INSERT INTO `mt_cover` (`cID`, `ctime`, `ctitle`, `ccontent`, `cpicture`, `withPicture`) VALUES
(2, '2017-04-20 03:05:34', '悦悦小站', '<h2 style="text-align: center;">欢迎加我qq</h2><p align="right" style="text-align: right;"><img src="https://www.arloor.com/wordpress/wp-content/uploads/2017/04/qq.jpg" class="img-responsive" alt="<p>顶部图片显示失败</p>" style="text-align: center; max-width: 325px;margin: auto;">', 'image/header.jpg', 1);

-- --------------------------------------------------------

--
-- 表的结构 `mt_souvenir`
--

CREATE TABLE IF NOT EXISTS `mt_souvenir` (
  `sID` int(11) NOT NULL,
  `stitle` varchar(60) NOT NULL,
  `stext` longtext,
  `icon` varchar(30) NOT NULL DEFAULT 'image/cd-icon-location.svg',
  `icontheme` varchar(20) NOT NULL COMMENT 'movie红      picture绿',
  `sdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `guest_visible` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mt_souvenir`
--

INSERT INTO `mt_souvenir` (`sID`, `stitle`, `stext`, `icon`, `icontheme`, `sdate`, `guest_visible`) VALUES
(28, '在一起', '\n                哈哈，这个作为纪念日必须第一个加<p><br></p>', 'image/cd-icon-picture.svg', 'picture', '2015-12-26 04:00:00', 1),
(29, 'MoonTell1.0完工', '<p>在20周岁生日后的第四天完成1.0的功能还是很开心哒。</p><p>尽管界面还是很丑（界面以后就交给悦悦），但是功能上比较齐全喽，算是比较完整的一个web项目了。</p><p>嗯，至少在这打字是有用的</p>\n            <p><br></p>', 'image/cd-icon-movie.svg', 'picture', '2017-04-24 17:23:12', 1),
(30, '网站', '\n                <p>请输入内容...</p>\n            <p>欢欢为我做了网站moontell</p>', 'image/cd-icon-location.svg', 'picture', '2017-04-24 17:45:05', 0);

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
  MODIFY `sID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
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
