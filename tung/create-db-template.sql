CREATE TABLE imgs (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `msg_id` INT NOT NULL,
  `file` VARCHAR(50) NOT NULL,
  `is_valid` TINYINT NOT NULL DEFAULT '1',
  FOREIGN KEY (`msg_id`) REFERENCES msgs(`id`)
);

DESC imgs;

SELECT * FROM `msgs` ;

SELECT * FROM `msgs` WHERE `id` = 1;

SELECT * FROM `imgs` WHERE `msg_id` = 1;

SELECT
 `msgs`.*,
 GROUP_CONCAT(`imgs`.`file` SEPARATOR ',') AS `imgs`
FROM `msgs` 
LEFT JOIN `imgs`
ON `msgs`.`id` = `imgs`.`msg_id`
WHERE `msgs`.`id` = 1
GROUP BY `msgs`.`id`;

CREATE TABLE `replies`(
  `id` INT AUTO_INCREMENT PRIMARY KEY,
 `text` VARCHAR(200),
  `msg_id` INT
);



DESC `replies`;
DROP TABLE `actives`;

CREATE TABLE `actives`(
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(20) NOT NULL,
  `msg_id` VARCHAR(20) NOT NULL,
  `start_at` DATE NOT NULL,
  `end_at` INT NOT NULL
);
ALTER TABLE `actives`
MODIFY COLUMN start_at DATETIME,
MODIFY COLUMN end_at DATETIME;

DESC `actives`;


SET FOREIGN_KEY_CHECKS =0;

SET FOREIGN_KEY_CHECKS =1;
DROP TABLE `users`;


USE my_db;



CREATE TABLE `users` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  `email` VARCHAR(50) NOT NULL, 
  `password` VARCHAR(100) NOT NULL, 
  `name` VARCHAR(30) NOT NULL,
  `img` VARCHAR(30),
  `create_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `is_valid` TINYINT NOT NULL DEFAULT 1
);  

DESC `users`;

SELECT * FROM `users`;



SELECT  COUNT(*) as count  FROM `users` WHERE `email` = 'ben@ben.com'


SELECT * FROM `users`;

-- CREATE Table `tags`(
--   `id` INT AUTO_INCREMENT PRIMARY KEY,
-- `name` VARCHAR(20) NOT NULL,
-- `is_valid` TINYINT NOT NULL DEFAULT 1
-- );
 
--  SELECT * FROM `tags`;
----------------------------------------------------------
CREATE DATABASE `topics`;

USE `topics`; 
DROP TABLE IF EXISTS coupons;
DROP TABLE IF EXISTS usage_scopes;
DROP TABLE IF EXISTS coupon_status;
DROP TABLE IF EXISTS discount_types;




-- 折扣類型表
CREATE TABLE discount_types (
  id TINYINT AUTO_INCREMENT PRIMARY KEY COMMENT '折價類型編號',
  name VARCHAR(50) NOT NULL COMMENT '範例：1 = cash（現金）、2 = percent（百分比）'
);
INSERT INTO discount_types (name) VALUES
('cash'),     -- id = 1
('percent');  -- id = 2

SELECT * FROM  discount_types;

-- 優惠券狀態表
CREATE TABLE coupon_status (
  id TINYINT AUTO_INCREMENT PRIMARY KEY COMMENT '優惠劵狀態編號',
  name VARCHAR(50) NOT NULL COMMENT '範例：0 = inactive、1 = active、2 = expired'
);


INSERT INTO coupon_status (name) VALUES
('inactive'),  -- id = 1
('active'),    -- id = 2
('expired');   -- id = 3

SELECT * FROM coupon_status;

-- 使用範圍表
CREATE TABLE usage_scopes (
  id TINYINT AUTO_INCREMENT PRIMARY KEY COMMENT '使用範圍編號',
  name VARCHAR(50) NOT NULL COMMENT '範例：1 = 全站通用、2 = 行程活動、3 = 各式票卷...'
);

INSERT INTO usage_scopes (name) VALUES
('全站通用'),     -- id = 1
('行程活動'),     -- id = 2
('各式票卷');     -- id = 3

SELECT * FROM usage_scopes;


-- 優惠券主表
CREATE TABLE coupons (
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT '優惠券編號',
  name VARCHAR(100) NOT NULL COMMENT '優惠券名稱',
  discount_code VARCHAR(50) NOT NULL UNIQUE COMMENT '折扣碼代碼',
  discount DECIMAL(8,2) NOT NULL COMMENT '折扣數值（如：100元 或 10%）',
  discount_type_id TINYINT NOT NULL COMMENT '折扣類型',
  quantity INT DEFAULT 0 COMMENT '發行數量max',
  start_date DATETIME NULL COMMENT '開始日期',
  end_date DATETIME NULL COMMENT '截止日期',
  status_id TINYINT DEFAULT NULL COMMENT '狀態（未啟用、啟用中、已過期）',
  usage_scope_id TINYINT DEFAULT NULL COMMENT '使用範圍（依活動類型）',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '建立時間',
  updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最後更新時間',
  is_valid TINYINT DEFAULT 1 COMMENT '軟刪除，刪除資料',
  FOREIGN KEY (discount_type_id) REFERENCES discount_types(id),
  FOREIGN KEY (status_id) REFERENCES coupon_status(id),
  FOREIGN KEY (usage_scope_id) REFERENCES usage_scopes(id)
);

INSERT INTO coupons
(
  name, discount_code, discount, discount_type_id, 
  quantity, start_date, end_date, status_id, usage_scope_id
) VALUES
("超級折價劵1", "A01", 1000, 1, 100, "2025-05-11", "2025-05-19", 2, 1),
("超級折價劵2", "A02", 20, 2, 10, "2025-05-20", "2025-05-22", 2, 1),
("超級折價劵3", "A03", 30, 2, 20, "2025-05-11", "2026-05-11", 2, 1),

("超級折價劵4", "A04", 10, 2, 20, "2025-01-14", "2025-02-18", 3, 1),
("超級折價劵5", "A05", 3000, 1, 20, "2025-06-01", "2025-06-03", 2, 1),
("超級折價劵6", "A06", 3000, 1, 20, "2025-06-15", "2025-06-20", 3, 1),
("超級折價劵7", "A07", 3000, 1, 20, "2025-07-02", "2025-07-13", 2, 1),
("超級折價劵8", "A08", 50, 2, 100, "2025-08-07", "2025-08-18", 2, 2),
("超級折價劵9", "A09", 1500, 1, 50, "2025-09-09", "2025-12-31", 1, 3),
("超級折價劵10", "A10", 2500, 1, 30, "2024-10-13", "2025-02-01", 2, 2),
("超級折價劵11", "A11", 1000, 1, 200, "2025-11-19", "2025-11-25", 3, 1),
("超級折價劵12", "A12", 1200, 1, 150, "2025-12-01", "2025-12-08", 2, 3),
("超級折價劵13", "A13", 2000, 1, 80, "2024-05-19", "2024-06-22", 3, 1);

SELECT * FROM `coupons`;
SHOW WARNINGS;