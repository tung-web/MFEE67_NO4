-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-06-04 08:14:40
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `msgs`
--

INSERT INTO `msgs` (`id`, `name`, `category_id`, `content`, `img`, `create_at`, `update_at`, `end_at`, `is_valid`) VALUES
(1, '盧', 1, '多多', '1748827137.png', '2025-05-26 11:49:43', '2025-06-02 09:18:57', NULL, 1),
(3, '盧', 2, '建丞', NULL, '2025-05-26 11:54:59', '2025-05-28 10:30:13', NULL, 1),
(4, '王', NULL, 'weq', NULL, '2025-05-26 11:55:01', NULL, '2025-05-27 11:15:16', 0),
(5, 'Joshss', 3, 'kong wen ping', NULL, '2025-05-26 14:09:14', '2025-05-28 10:30:40', NULL, 0),
(6, 'BEN', NULL, '現在要寫成功自動導頁', NULL, '2025-05-26 14:09:46', NULL, '2025-05-27 11:15:41', 1),
(7, 'Harry', 4, '優打走', NULL, '2025-05-26 14:10:28', '2025-05-28 10:30:47', NULL, 1),
(8, 'Lu', 3, 'chien-heng', NULL, '2025-05-26 14:16:30', '2025-05-28 10:30:52', NULL, 1),
(12, 'BEN', 3, '開始檢查欄位', NULL, '2025-05-26 16:18:40', '2025-05-28 10:31:37', NULL, 1),
(14, 'Lee', 1, 'wennnn', NULL, '2025-05-27 10:47:53', '2025-05-28 10:30:59', NULL, 1),
(15, '', NULL, '', NULL, '2025-05-28 09:30:00', NULL, '2025-05-28 09:30:06', 1),
(16, '', NULL, '', NULL, '2025-05-28 09:31:24', NULL, '2025-05-28 09:31:29', 1),
(17, '', NULL, '', NULL, '2025-05-28 09:31:24', NULL, '2025-05-28 09:31:32', 1),
(18, 'BEN', 4, '我獨很好看', NULL, '2025-05-28 09:35:30', NULL, NULL, 1),
(19, 'adimin', 3, '全知很好看', NULL, '2025-05-28 09:35:30', NULL, NULL, 1),
(20, 'BEN', 4, '全知修真', NULL, '2025-05-28 09:36:46', NULL, NULL, 1),
(21, 'BEN', 1, '王道', NULL, '2025-05-28 09:36:46', NULL, NULL, 1),
(22, 'BEN', 2, '惡魔雞排', NULL, '2025-05-28 09:51:14', NULL, NULL, 1),
(23, 'BEN', 1, '123', NULL, '2025-05-28 11:21:18', NULL, NULL, 1),
(24, 'BEN', 1, '456', NULL, '2025-05-28 11:21:18', NULL, NULL, 1),
(25, 'good', 1, 'as', NULL, '2025-05-28 11:21:49', NULL, NULL, 1),
(26, 'aa123', 1, 'wwwww', NULL, '2025-05-28 11:21:49', NULL, NULL, 1),
(27, 'BEN', 1, 'weqeqweq', NULL, '2025-05-28 11:21:49', NULL, NULL, 1),
(28, 'aa123', 1, 'eqweqweqwe', NULL, '2025-05-28 11:22:07', NULL, NULL, 1),
(29, 'harry', 1, '123456789', NULL, '2025-05-28 11:22:07', NULL, NULL, 1),
(30, 'a', 1, 'qqwe', NULL, '2025-05-28 11:22:17', NULL, NULL, 1),
(31, 'BEN', 1, '5566', NULL, '2025-05-28 11:23:26', NULL, NULL, 1),
(32, 'qwee', 1, '55688', NULL, '2025-05-28 11:23:50', NULL, NULL, 1),
(33, 'BEN', 1, '個', NULL, '2025-05-28 14:28:00', NULL, NULL, 1),
(34, 'BEN', 1, '98999', NULL, '2025-05-28 14:28:00', NULL, NULL, 1),
(35, 'BEN', 1, '55555', NULL, '2025-05-28 14:28:00', NULL, NULL, 1),
(36, 'BEN', 2, '13213', '1748489005.jpg', '2025-05-29 11:23:25', NULL, NULL, 1),
(37, 'BEN', 1, '654654', '1748827095.jpg', '2025-05-29 11:23:25', '2025-06-02 09:18:15', NULL, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

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
