-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2019-04-13 19:20:54
-- 服务器版本： 5.5.60-log
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL COMMENT '菜单id',
  `module` varchar(50) NOT NULL COMMENT '模块名',
  `controller` varchar(50) NOT NULL COMMENT '控制器名',
  `action` varchar(50) NOT NULL COMMENT '方法名',
  `number` smallint(6) NOT NULL COMMENT '菜单顺序',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `is_delete` tinyint(4) NOT NULL COMMENT '是否删除',
  `icon` varchar(50) NOT NULL COMMENT '图标类',
  `description` varchar(50) NOT NULL COMMENT '菜单文字'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `menu`
--

INSERT INTO `menu` (`id`, `module`, `controller`, `action`, `number`, `create_time`, `update_time`, `is_delete`, `icon`, `description`) VALUES
(1, 'admin', 'Index', 'index', 0, '2019-04-11 16:00:00', '2019-04-11 16:00:00', 0, 'home', '主页'),
(2, 'admin', 'Index', 'title', 1, '2019-04-11 16:00:00', '2019-04-11 16:00:00', 0, 'file', '修改标题'),
(3, 'admin', 'Index', 'userInfo', 2, '2019-04-11 16:00:00', '2019-04-11 16:00:00', 0, 'users', '查看用户'),
(4, 'admin', 'Index', 'place_one', 3, '2019-04-11 16:00:00', '2019-04-11 16:00:00', 0, 'bar-chart-2', '占位1'),
(5, 'admin', 'Index', 'place_two', 4, '2019-04-11 16:00:00', '2019-04-11 16:00:00', 0, 'layers', '占位2');

-- --------------------------------------------------------

--
-- 表的结构 `title`
--

CREATE TABLE `title` (
  `id` int(11) NOT NULL COMMENT '标题id',
  `title` varchar(100) NOT NULL COMMENT '标题内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `is_delete` tinyint(4) NOT NULL COMMENT '是否删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `title`
--

INSERT INTO `title` (`id`, `title`, `create_time`, `update_time`, `is_delete`) VALUES
(1, 'aaa', '2019-04-13 10:20:48', '2019-04-13 10:20:48', 0);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '用户密码',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `is_delete` tinyint(4) NOT NULL COMMENT '是否删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `create_time`, `update_time`, `is_delete`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2019-04-11 16:00:00', '2019-04-11 16:00:00', 0),
(2, 'adc', '202cb962ac59075b964b07152d234b70', '2019-04-12 07:42:26', '2019-04-12 07:42:26', 0),
(3, 'kkk', '202cb962ac59075b964b07152d234b70', '2019-04-12 09:35:44', '2019-04-12 09:35:44', 0),
(4, '123', '202cb962ac59075b964b07152d234b70', '2019-04-13 03:22:36', '2019-04-13 03:22:36', 0),
(5, 'fgb', 'd436adeaeb56e877a12226260dede661', '2019-04-13 03:23:23', '2019-04-13 03:23:23', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单id', AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `title`
--
ALTER TABLE `title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标题id', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
