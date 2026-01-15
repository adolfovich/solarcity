ALTER TABLE  `users` ADD `surname` VARCHAR(255) NULL DEFAULT NULL AFTER `name`, ADD `phone` VARCHAR(255) NULL DEFAULT NULL AFTER `surname`;

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

TRUNCATE TABLE `profiles`;

INSERT INTO `profiles` (`id`, `name`, `access`, `stat_access`, `change_ticket_status`, `is_del`, `edit_education`, `edit_finance`, `edit_objects`, `change_close_tickets`, `delete_tickets`, `accepted_ticket_statuses`) VALUES
                                                                                                                                                                                                                            (2, 'Пользователь', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20', NULL, 1, 0, 1, 1, 1, 1, 1, '0');
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

--
-- Очистить таблицу перед добавлением данных `cian_categories`
--

TRUNCATE TABLE `cian_categories`;
--
-- Дамп данных таблицы `cian_categories`
--
INSERT INTO `cian_categories` (`id`, `name`, `cian_code`, `category`, `object_type`, `ordering`) VALUES
(1, 'Квартира (аренда)', 'flatRent', 2, 1, 1),
(2, 'Койко-место (аренда)', 'bedRent', 2, 0, 2),
(3, 'Комната (аренда)', 'roomRent', 2, 0, 3),
(4, 'Квартира (продажа)', 'flatSale', 1, 1, 4),
(5, 'Дом (продажа)', 'houseSale', 1, 2, 5),
(6, 'Участок (продажа)', 'landSale', 1, 3, 6),
(7, 'Гараж (продажа)', 'garageSale', 1, 0, 7),
(8, 'Коммерческая недвижимость', 'commerce', 0, 4, 8);


ALTER TABLE `objects` ADD `publishCian` INT NOT NULL DEFAULT '0' AFTER `is_del`, ADD `publishAvito` INT NOT NULL DEFAULT '0' AFTER `publishCian`;