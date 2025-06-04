-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-06-04 08:18:28
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
  `is_valid` tinyint(4) DEFAULT 1,
  `update_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `msgs`
--

INSERT INTO `msgs` (`id`, `name`, `category_id`, `content`, `img`, `create_at`, `is_valid`, `update_at`, `end_at`) VALUES
(1, 'Mary', 1, '今天又下雨了QQ~', '1748834314.jpg', '2025-05-28 10:32:15', 1, '2025-06-02 11:18:34', NULL),
(2, 'Amy', 2, '今天無條件珍奶!!!', NULL, '2025-05-28 10:34:39', 1, NULL, NULL),
(3, 'John', 1, '拜託不要再下雨了~~好嗎!!!', NULL, '2025-05-28 10:59:48', 1, NULL, NULL),
(4, 'Maria', 3, 'Harry Potter全集入手!!耶~ 讚啦', NULL, '2025-05-28 11:02:29', 1, '2025-05-28 11:16:10', NULL),
(5, 'Robert', 1, '好難~~~~~~~~&#039;_&#039;', NULL, '2025-05-28 11:18:52', 1, NULL, NULL),
(6, 'Kelly', 4, '火鳳燎原還會不會繼續出阿~~~~~', NULL, '2025-05-28 11:21:58', 1, NULL, NULL),
(7, ' Mary', 2, '今天好燒腦，我要大吃特吃，吃牛排吧!!!!', NULL, '2025-05-28 11:30:00', 1, NULL, NULL),
(8, 'John', 3, '新小說集數下個月要出來了嗎?', NULL, '2025-05-28 11:31:21', 1, NULL, NULL),
(9, 'Robert', 1, '不出門，窩在家裡玩電動XD', NULL, '2025-05-28 11:38:03', 1, NULL, NULL),
(10, 'Kelly', 2, '在夜市大吃特吃~蚵仔煎、QQ球、烤玉米、豬血糕、花生捲冰淇淋、烤串...', NULL, '2025-05-28 11:42:09', 1, NULL, NULL),
(11, 'Amy', 4, '夢幻遊戲出復刻版了!!', NULL, '2025-05-28 12:02:53', 1, NULL, NULL),
(12, 'Tony', 2, '明天星期五是麥當勞日~~~', NULL, '2025-05-28 13:29:40', 1, NULL, NULL),
(13, 'Amy', 4, '美少女戰士漫畫會不會出什麼電影特別版呢?', NULL, '2025-05-28 13:30:52', 1, NULL, NULL),
(14, 'Oscar', 1, '線條小狗出特別版扭蛋了!!!', NULL, '2025-05-28 13:40:15', 1, NULL, NULL),
(15, 'Kelly', 1, '今天繼續學PHP', NULL, '2025-05-28 13:48:45', 1, NULL, NULL),
(16, 'Tony', 1, '腦子是很好用的東西，知道嗎-.-', NULL, '2025-05-28 13:50:20', 1, NULL, NULL),
(17, 'Robert', 1, 'PS出新射擊遊戲了，下班立馬去買!!', NULL, '2025-05-28 14:26:21', 1, NULL, NULL),
(18, 'John', 1, '週末了 迫不及待下班 哈哈~', NULL, '2025-05-28 14:56:22', 1, NULL, NULL),
(19, 'Tony', 1, '非常無聊可以用本身博士爸爸金屬在此緊急已被先生', NULL, '2025-05-28 14:57:10', 1, NULL, NULL),
(20, 'Amy', 1, '導演宜蘭努力睡覺這一點收費，官方機票，', NULL, '2025-05-28 14:57:33', 1, NULL, NULL),
(21, 'Robert', 3, '口氣表演足球兩年電視台氣息，環境', NULL, '2025-05-28 14:58:05', 1, NULL, NULL),
(22, 'Maria', 1, '取消郵件等方面，也許並不是是這樣一段時間', NULL, '2025-05-29 10:00:52', 1, NULL, NULL),
(23, 'John', 2, '合理把它預測飛機我這尺寸開關，標題英雄生氣試試，建築全球請您高度並非財政女友一半，球隊你沒有返回平衡郵箱你自己存儲', NULL, '2025-05-29 17:10:15', 1, NULL, NULL),
(24, 'Robert', 4, '合理把它預測飛機我這尺寸開關，標題英雄生氣試試', NULL, '2025-05-30 12:36:05', 1, NULL, NULL),
(25, 'Amy', 1, '建築全球請您高度並非財政女友一半，球隊你沒有返回平衡郵箱你自己存儲沒事你沒有範圍歲月事故', NULL, '2025-05-30 21:22:45', 1, NULL, NULL),
(26, 'Maria', 3, '廣泛知識考慮工具，可以說專題參加一方面留言板存儲收到保證感動經過商標日本詳', NULL, '2025-06-01 08:15:44', 1, NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
