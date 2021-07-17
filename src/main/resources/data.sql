# CREATE DATABASE `usedb_2021`;

DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `roles`;
DROP TABLE IF EXISTS `users_roles`;
TRUNCATE TABLE `users_roles`;
CREATE TABLE `users`(
                        `id` INT(20) AUTO_INCREMENT,
                        `name` VARCHAR(20),
                        `lastname` VARCHAR(20),
                        `age` INT(4),
                        `email` VARCHAR(20),
                        `username` VARCHAR(30),
                        `password` VARCHAR(30),



                        PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `roles` (
                                       `id` int(20) ,
                                       `role` varchar(20),
                                       PRIMARY KEY (`id`)
);
CREATE TABLE IF NOT EXISTS `users_roles` (
                                             `user_id` int(20),
                                             `role_id` int(20),
                                             PRIMARY KEY (`user_id`,`role_id`)

);
INSERT INTO `users` VALUES
(1,'kemp','kemp',10, 'kemp@mail.ru', 'kemp', '1234'),
(2,'kemp','kemp',10, 'ben@mail.ru', 'ben', '1234')


INSERT INTO `roles` (`id`, `role`) VALUES
(1,'ROLE_ADMIN'),
(2,'ROLE_USER');

insert into users_roles
values
(1, 1),
(1, 2),
(2, 2);