-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-04-24 05:42:56
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
(2, 11, 1, 0, NULL, '2017-04-24 04:08:00', 1, '第二篇通过管理后台增加的版本', '\n                \n                <p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>\n            </p><p><br></p>', 1, 0),
(2, 12, 1, 0, NULL, '2017-04-24 04:08:06', 1, '第二篇通过管理后台增加的版本', '\n                \n                \n                <p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p><br></p>\n            ', 1, 0),
(2, 13, 1, 0, NULL, '2017-04-24 04:08:12', 1, '第二篇通过管理后台增加的版本', '\n                \n                \n                \n                <p>第二篇通过管理后台增加的版本 第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p>第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本第二篇通过管理后台增加的版本</p><p><br></p>\n            \n            ', 1, 0),
(2, 14, 1, 0, NULL, '2017-04-24 04:08:27', 1, '第二篇通过管理后台增加的版本', '\n                \n                \n                \n                \n                <p>1 2 3 4 5 6 7 8 9 10</p><p><br></p>\n            \n            \n            ', 1, 0),
(2, 15, 1, 0, NULL, '2017-04-24 04:08:41', 1, '第二篇通过管理后台增加的版本', '\n                \n                \n                \n                \n                \n                <p>1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p><br></p>\n            \n            \n            \n            ', 1, 0),
(2, 16, 1, 0, NULL, '2017-04-24 04:08:46', 1, '第二篇通过管理后台增加的版本', '\n                \n                \n                \n                \n                \n                \n                <p>1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p><br></p><p><br></p><p>1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p><br></p><p>1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p><br></p>\n            \n            \n            \n            \n            <p><br></p>', 1, 0),
(2, 17, 1, 0, NULL, '2017-04-24 04:09:29', 1, '第二篇通过管理后台增加的版本', '\n                \n                \n                \n                \n                \n                \n                \n                <p>1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p>我 爱 李芳悦</p>\n            <p><br></p>', 1, 0),
(2, 18, 1, 0, NULL, '2017-04-24 04:09:32', 1, '第二篇通过管理后台增加的版本', '\n                \n                \n                \n                \n                \n                \n                \n                \n                <p>1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p>我 爱 李芳悦 1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p>我 爱 李芳悦</p>\n            <p><br></p>\n            ', 1, 0),
(2, 19, 1, 0, NULL, '2017-04-24 04:09:35', 1, '第二篇通过管理后台增加的版本', '\n                \n                \n                \n                \n                \n                \n                \n                \n                \n                <p>1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p>我 爱 李芳悦 1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p>我 爱 李芳悦 1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p>我 爱 李芳悦</p>\n            <p><br></p>\n            \n            ', 1, 0),
(2, 20, 1, 0, NULL, '2017-04-24 04:09:39', 1, '第二篇通过管理后台增加的版本', '\n                \n                \n                \n                \n                \n                \n                \n                \n                \n                \n                <p>1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p>我 爱 李芳悦 1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p>我 爱 李芳悦 1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p>我 爱 李芳悦</p><p><br></p><p>1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p></p><p>我 爱 李芳悦</p>\n            <p><br></p>\n            \n            \n            ', 1, 0),
(2, 21, 1, 0, NULL, '2017-04-24 04:09:48', 1, '第二篇通过管理后台增加的版本', '\n                \n                \n                \n                \n                \n                \n                \n                \n                \n                \n                \n                <p>最新 1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p>我 爱 李芳悦</p>\n            <p><br></p>\n            \n            \n            \n            ', 1, 0),
(2, 22, 1, 0, NULL, '2017-04-24 05:31:00', 0, '第二篇通过管理后台增加的版本', '\n                \n                \n                \n                \n                \n                \n                \n                \n                \n                \n                \n                \n                <p>最新 1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p>我 爱 李芳悦</p>\n            <p><br></p>\n            \n            \n            \n            \n            ', 1, 0),
(2, 23, 1, 0, NULL, '2017-04-24 05:37:59', 0, '第二篇通过管理后台增加的版本', '\n                \n                \n                \n                \n                \n                \n                \n                \n                \n                \n                \n                \n                \n                <p>最新 1 2 3 4 5 6 7 8 9 10</p><p>1 2 3 4 5 6 7 8 9 10</p><p>我 爱 李芳悦</p>\n            <p><br></p>\n            \n            \n            \n            \n            \n            ', 1, 1);

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
