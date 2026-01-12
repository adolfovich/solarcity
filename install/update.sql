-- Добавление колонок в users (если их еще нет)
SET @sql = IF((SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'users' AND COLUMN_NAME = 'surname') = 0, 'ALTER TABLE `users` ADD `surname` VARCHAR(255) NULL DEFAULT NULL AFTER `name`', 'SELECT 1');
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;
SET @sql = IF((SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'users' AND COLUMN_NAME = 'phone') = 0, 'ALTER TABLE `users` ADD `phone` VARCHAR(255) NULL DEFAULT NULL AFTER `surname`', 'SELECT 1');
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `access` varchar(255) NOT NULL DEFAULT '0',
  `stat_access` varchar(255) DEFAULT '0',
  `change_ticket_status` int NOT NULL DEFAULT '0',
  `is_del` int NOT NULL DEFAULT '0',
  `edit_education` int NOT NULL DEFAULT '0',
  `edit_finance` int NOT NULL DEFAULT '0',
  `edit_objects` int NOT NULL DEFAULT '0',
  `change_close_tickets` int NOT NULL DEFAULT '0',
  `delete_tickets` tinyint(1) NOT NULL DEFAULT '0',
  `accepted_ticket_statuses` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

DELETE FROM `profiles` WHERE 1;

INSERT INTO `profiles` (`id`, `name`, `access`, `stat_access`, `change_ticket_status`, `is_del`, `edit_education`, `edit_finance`, `edit_objects`, `change_close_tickets`, `delete_tickets`, `accepted_ticket_statuses`) VALUES
(2, 'Пользователь', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20', NULL, 1, 0, 1, 1, 1, 1, 1, '0')
ON DUPLICATE KEY UPDATE `name`=VALUES(`name`), `access`=VALUES(`access`), `stat_access`=VALUES(`stat_access`), `change_ticket_status`=VALUES(`change_ticket_status`), `is_del`=VALUES(`is_del`), `edit_education`=VALUES(`edit_education`), `edit_finance`=VALUES(`edit_finance`), `edit_objects`=VALUES(`edit_objects`), `change_close_tickets`=VALUES(`change_close_tickets`), `delete_tickets`=VALUES(`delete_tickets`), `accepted_ticket_statuses`=VALUES(`accepted_ticket_statuses`);

COMMIT;

CREATE TABLE IF NOT EXISTS `cian_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `cian_code` VARCHAR(50),
  `category` int NOT NULL DEFAULT '100',
  `object_type` int NOT NULL DEFAULT '100',
  `ordering` int NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `cian_categories` WHERE 1;

INSERT INTO `cian_categories` (`id`, `name`, `cian_code`, `category`, `object_type`, `ordering`) VALUES
(1, 'Квартира (аренда)', 'flatRent', 2, 1, 1),
(2, 'Койко-место (аренда)', 'bedRent', 2, 0, 2),
(3, 'Комната (аренда)', 'roomRent', 2, 0, 3),
(4, 'Квартира (продажа)', 'flatSale', 1, 1, 4),
(5, 'Дом (продажа)', 'houseSale', 1, 2, 5),
(6, 'Участок (продажа)', 'landSale', 1, 3, 6),
(7, 'Гараж (продажа)', 'garageSale', 1, 0, 7),
(8, 'Коммерческая недвижимость', 'commerce', 0, 4, 8)
ON DUPLICATE KEY UPDATE `name`=VALUES(`name`), `cian_code`=VALUES(`cian_code`), `category`=VALUES(`category`), `object_type`=VALUES(`object_type`), `ordering`=VALUES(`ordering`);

CREATE TABLE IF NOT EXISTS `avito_params` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int NOT NULL,
  `rooms` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Количество комнат: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 и более, Свободная планировка',
  `property_rights` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Право собственности: Собственник, Посредник',
  `object_type_avito` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Вид объекта: Дом, Дача, Коттедж, Таунхаус',
  `floors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Этажей в доме: 1, 2, 3, 4 и более',
  `walls_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Материал стен: Кирпич, Брус, Бревно, Газоблоки, Металл, Пеноблоки, Сэндвич-панели, Ж/б панели, Экспериментальные материалы',
  `land_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Статус участка: Индивидуальное жилищное строительство (ИЖС), Садовое некоммерческое товарищество (СНТ), Дачное некоммерческое партнёрство (ДНП), Фермерское хозяйство, Личное подсобное хозяйство (ЛПХ)',
  `renovation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Ремонт: Требуется, Косметический, Евро, Дизайнерский',
  PRIMARY KEY (`id`),
  UNIQUE KEY `object_id` (`object_id`),
  KEY `object_id_idx` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
