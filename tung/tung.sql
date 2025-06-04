-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-06-04 08:22:59
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `my_db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `msgs`
--

CREATE TABLE `msgs` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `img` varchar(50) DEFAULT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `is_valid` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `msgs`
--

INSERT INTO `msgs` (`id`, `name`, `category_id`, `content`, `img`, `create_at`, `update_at`, `end_at`, `is_valid`) VALUES
(1, 'aaaa', 3, '123', NULL, '2025-05-26 13:15:45', '2025-05-28 10:18:43', '2025-06-03 16:44:45', 0),
(2, 'bbb', 3, '345', NULL, '2025-05-26 13:15:45', '2025-05-28 10:18:53', NULL, 1),
(3, '0209', NULL, '哈?', NULL, '2025-05-26 14:09:55', NULL, '2025-05-27 11:14:59', 1),
(4, '1019', 4, '西西', NULL, '2025-05-26 14:09:55', '2025-05-28 11:56:56', NULL, 0),
(5, '0217', NULL, '水好喝', NULL, '2025-05-26 14:17:44', NULL, '2025-05-27 11:15:02', 1),
(6, '1020', 1, '顆顆', NULL, '2025-05-26 14:17:44', '2025-05-28 10:19:20', NULL, 1),
(7, '1021', 2, '嘿嘿', NULL, '2025-05-26 20:11:42', '2025-05-28 11:55:02', NULL, 1),
(8, '1022', 3, '哀哀', NULL, '2025-05-26 20:27:04', '2025-05-28 11:56:51', NULL, 1),
(9, '嘿嘿', 4, '0827', NULL, '2025-05-26 20:27:32', '2025-05-28 11:55:12', NULL, 1),
(10, '嘿嘿', NULL, '0827', NULL, '2025-05-26 20:39:54', NULL, NULL, 1),
(11, '1022', 4, '批批', NULL, '2025-05-26 20:39:57', '2025-05-28 11:53:58', NULL, 1),
(15, 'brn', 2, 'j我\r\n', NULL, '2025-05-28 09:35:55', '2025-05-29 11:25:32', '2025-06-03 16:42:35', 1),
(16, '哈哈0954', 3, '好吃', NULL, '2025-05-28 09:55:58', NULL, NULL, 1),
(17, '哈哈1016', NULL, 'vu vu ', NULL, '2025-05-28 10:17:01', NULL, NULL, 1),
(18, '1114', NULL, 'c8 c8\r\n', NULL, '2025-05-28 11:14:09', NULL, NULL, 1),
(19, '1115', NULL, '哈哈', NULL, '2025-05-28 11:14:26', NULL, NULL, 1),
(20, '1121', NULL, 'c8 c8 ', NULL, '2025-05-28 11:21:26', NULL, NULL, 1),
(21, '1123', NULL, '1123', NULL, '2025-05-28 11:23:40', NULL, NULL, 1),
(22, '1153', 1, '1153', NULL, '2025-05-28 11:53:35', '2025-05-28 11:53:45', NULL, 1),
(23, '1155', NULL, '喜歡動漫的', NULL, '2025-05-28 11:56:10', NULL, NULL, 1),
(24, '1156', NULL, '，喜歡動漫的', NULL, '2025-05-28 11:56:10', NULL, NULL, 1),
(25, '. 至巴哈商城頁面右上', NULL, '1156', NULL, '2025-05-28 11:56:10', NULL, NULL, 1),
(26, '1157', 3, '： 2016年1月6日，​9年前', NULL, '2025-05-28 11:56:10', '2025-05-28 11:57:11', NULL, 1),
(27, 'ben', NULL, '121', NULL, '2025-05-28 14:11:33', NULL, NULL, 1),
(28, 'BEN', NULL, '11', NULL, '2025-05-28 14:11:49', NULL, NULL, 1),
(29, 'ben', 1, '公公公', NULL, '2025-05-29 11:23:10', '2025-05-29 11:25:15', NULL, 1),
(30, 'ben', NULL, '咚咚', NULL, '2025-05-29 11:23:49', NULL, NULL, 1),
(31, 'ben', NULL, '剛剛', NULL, '2025-05-29 11:23:49', NULL, NULL, 1),
(32, 'ben', NULL, '吃餅乾', NULL, '2025-05-29 11:29:48', NULL, NULL, 1),
(33, 'jay', NULL, '有圖', NULL, '2025-05-29 11:29:48', NULL, NULL, 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `msgs`
--
ALTER TABLE `msgs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `msgs`
--
ALTER TABLE `msgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `msgs`
--
ALTER TABLE `msgs`
  ADD CONSTRAINT `msgs_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
