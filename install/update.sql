ALTER TABLE `users` ADD `surname` VARCHAR(255) NULL DEFAULT NULL AFTER `name`, ADD `phone` VARCHAR(255) NULL DEFAULT NULL AFTER `surname`;

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

