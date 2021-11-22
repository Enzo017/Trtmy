-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-11-15 02:15:20
-- 伺服器版本： 10.4.14-MariaDB
-- PHP 版本： 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `1101`
--

DELIMITER $$
--
-- 程序
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_multi_sets` ()  begin
        select user() as first_col;
        select user() as first_col, now() as second_col;
        select user() as first_col, now() as second_col, now() as third_col;
        end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- 資料表結構 `guestbook`
--

CREATE TABLE `guestbook` (
  `id` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `msg` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `likes` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `guestbook`
--

INSERT INTO `guestbook` (`id`, `title`, `msg`, `name`, `status`, `likes`) VALUES
(15, 'me', 'like', 'you', 0, 9),
(9, 'n', 'n', 'n', 0, 2),
(13, 'grggfgf', 'ggggg', 'gggg', 0, 6);

-- --------------------------------------------------------

--
-- 資料表結構 `response`
--

CREATE TABLE `response` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `msg` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `response`
--

INSERT INTO `response` (`id`, `mid`, `msg`) VALUES
(4, 13, 'yuyty'),
(5, 13, 'yyy'),
(6, 13, 'yyyyyy'),
(7, 13, 'jjj'),
(8, 12, 'd'),
(9, 12, 'ffff'),
(10, 13, '113'),
(11, 13, 'yjuyu'),
(19, 15, 'rsrfgregre'),
(20, 15, 'gdfgdfg'),
(21, 15, 'dfgdfg'),
(22, 15, 'ggg'),
(23, 15, 'ggg'),
(24, 13, 'ddd'),
(25, 13, 'ddd'),
(26, 13, 'ddd');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `loginID` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(5) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`uid`, `loginID`, `password`, `role`, `level`) VALUES
(0, 'Me', '12345', 'admin', 0),
(1, 'test', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', 'user', 1),
(2, 'myGod', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', 'admin', 5),
(4, 'Ts', '*97E7471D816A37E38510728AEA47440F9C6E2585', 'admin', 5);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `guestbook`
--
ALTER TABLE `guestbook`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `guestbook`
--
ALTER TABLE `guestbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `response`
--
ALTER TABLE `response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
