-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-06-04 08:14:39
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
(1, 'ben', 1, '第一篇貼文是什麼哈哈ㄏ嗚嗚', '1748831129.jpg', '2025-05-26 14:25:07', '2025-06-02 10:25:29', NULL, 1),
(2, 'aben', 1, '第二篇貼文', '1748490578.jpg', '2025-05-26 14:25:07', '2025-05-29 11:49:38', NULL, 0),
(3, 'su', NULL, '今天下雨了', NULL, '2025-05-26 14:25:07', NULL, '2025-05-27 11:14:55', 1),
(4, 'mandy', 1, '對啊你還感冒', '1748827126.jpg', '2025-05-26 14:25:07', '2025-06-02 09:18:46', NULL, 1),
(5, 'emily', 1, '嗚嗚嗚嗚嗚嗚好累', NULL, '2025-05-26 14:25:07', '2025-06-02 10:24:41', NULL, 1),
(6, 'ben', 1, '想睡覺了', NULL, '2025-05-26 14:25:07', '2025-05-28 10:17:09', NULL, 1),
(7, 'ashley', 1, '昨天星期天還要上課 QQ', NULL, '2025-05-26 14:25:07', '2025-05-28 10:17:19', NULL, 1),
(8, 'ash', 1, '真沒道理', NULL, '2025-05-26 14:25:07', '2025-05-28 10:17:24', NULL, 1),
(9, 'ben', 1, '我沒有淋到雨~~~', NULL, '2025-05-26 14:26:27', '2025-06-02 11:19:04', NULL, 1),
(10, 'hubert', 1, '開會中 勿擾', NULL, '2025-05-26 14:26:27', '2025-05-28 10:17:30', NULL, 1),
(11, 'ben', 1, '寫成功自動導頁', NULL, '2025-05-26 14:26:27', '2025-05-28 10:17:44', NULL, 1),
(12, 'aben', 1, 'sleep超難用', NULL, '2025-05-26 14:26:27', '2025-05-28 10:17:49', NULL, 1),
(13, 'susu', 1, '用js做增加成功後的轉跳時間 會印出echo', NULL, '2025-05-26 14:26:27', '2025-05-28 10:17:55', NULL, 1),
(14, 'suxing', 1, '成功新增修改頁面', NULL, '2025-05-26 16:02:14', '2025-05-28 10:18:02', NULL, 1),
(15, 'ashley', 1, '開始檢查欄位', NULL, '2025-05-26 16:18:41', '2025-05-28 10:18:07', NULL, 1),
(19, 'suxing', 1, '今天搭早一班的車', NULL, '2025-05-28 09:39:05', '2025-05-28 10:18:12', NULL, 1),
(20, 'suxing', 2, '買了藍莓乳酪的早餐', NULL, '2025-05-28 09:39:05', NULL, NULL, 1),
(21, 'suxing', 4, '每天都靠志摩君療癒!', NULL, '2025-05-28 09:39:05', '2025-05-28 10:18:23', NULL, 1),
(22, 'mandy', 2, '想吃居酒屋', NULL, '2025-05-28 09:50:55', '2025-05-28 10:18:18', NULL, 1),
(23, 'suxu', 2, '得正新品好好喝 蜜桃烏龍&gt;&lt;', NULL, '2025-05-28 10:19:19', NULL, NULL, 1),
(24, 'suxing', 1, 'GU跟吉伊卡哇聯名了!', NULL, '2025-05-28 10:21:30', NULL, NULL, 1),
(25, 'MANDY', 1, '買了新的電動牙刷~~', NULL, '2025-05-28 10:21:30', NULL, NULL, 1),
(26, 'ash', 1, '每天都要上課 好快樂...', NULL, '2025-05-28 10:21:30', NULL, NULL, 1),
(27, 'EMILY', 1, '也感冒了', NULL, '2025-05-28 10:21:30', NULL, NULL, 1),
(28, 'xing', 2, '今天午餐吃八方', NULL, '2025-05-28 11:21:57', NULL, NULL, 1),
(29, 'bb', 2, '好想吃品都的馬鈴薯', NULL, '2025-05-28 11:21:57', NULL, NULL, 1),
(30, 'huhu', 2, 'barweekend好難訂位~~', NULL, '2025-05-28 11:21:57', NULL, NULL, 1),
(31, 'mandi', 2, '早餐喝中冰拿', NULL, '2025-05-28 11:25:53', NULL, NULL, 1),
(32, 'emily', 2, '午餐想吃玉米水餃 也想吃鮮蝦鍋貼', NULL, '2025-05-28 11:25:53', NULL, NULL, 1),
(33, 'ashley', 2, '配無糖豆漿也不錯', NULL, '2025-05-28 11:25:53', NULL, NULL, 1),
(34, 'Hubert', 2, '晚餐要跟同事去吃居酒屋 放棄主管請的pizza ~~', NULL, '2025-05-28 11:25:53', NULL, NULL, 1),
(35, 'ben', 2, '肚子好餓~~~', NULL, '2025-05-28 11:26:19', NULL, NULL, 1),
(36, 'susu', 2, '快要可以吃午餐了', NULL, '2025-05-28 11:26:19', NULL, NULL, 1),
(37, 'suxing', 1, '貓貓好可愛', '1748488979.jpg', '2025-05-29 11:22:59', NULL, NULL, 1),
(38, 'ashley', 1, 'cute cat', '1748488980.jpg', '2025-05-29 11:22:59', NULL, NULL, 1),
(39, 'suxing', 1, '貓咪們', '1748489033.jpg', '2025-05-29 11:23:53', NULL, NULL, 1),
(41, 'suxing', 4, 'jojo第二季快看完了', NULL, '2025-05-29 11:29:12', NULL, NULL, 1),
(42, 'suxing', 1, '沒道理', NULL, '2025-05-29 11:29:37', NULL, NULL, 1),
(43, 'ashley', 1, '貓咪貓咪', '1748489378.jpg', '2025-05-29 11:29:37', NULL, NULL, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `msgs`
--
ALTER TABLE `msgs`
  ADD CONSTRAINT `msgs_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
