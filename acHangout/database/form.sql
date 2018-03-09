/*
Created: 2018-03-02
Modified: 2018-03-07
Model: MySQL 5.7
Database: MySQL 5.7
*/


-- Create tables section -------------------------------------------------

-- Table users

CREATE TABLE `users`
(
  `id` Bigint NOT NULL AUTO_INCREMENT,
  `username` Char(20) NOT NULL,
  `password` Char(255) NOT NULL,
  `date` Datetime NOT NULL,
  `level` Int(8) NOT NULL,
  PRIMARY KEY (`id`)
)
;

ALTER TABLE `users` ADD UNIQUE `username` (`username`)
;

-- Table profile

CREATE TABLE `profile`
(
  `id` Bigint NOT NULL AUTO_INCREMENT,
  `firstname` Char(20) NOT NULL,
  `lastname` Char(20) NOT NULL,
  `email` Char(20) NOT NULL,
  `phone` Char(20),
  `sex` Char(20),
  PRIMARY KEY (`id`),
 INDEX `IX_Relationship6` (`id`)
)
;

-- Table post

CREATE TABLE `post`
(
  `id` Bigint NOT NULL AUTO_INCREMENT,
  `content` Char(255) NOT NULL,
  `date` Datetime NOT NULL,
  `topic` Bigint,
  `author` Bigint,
  PRIMARY KEY (`id`)
)
;

CREATE INDEX `IX_Relationship4` ON `post` (`author`)
;

CREATE INDEX `IX_Relationship5` ON `post` (`topic`)
;

-- Table topics

CREATE TABLE `topics`
(
  `id` Bigint NOT NULL AUTO_INCREMENT,
  `subject` Varchar(50) NOT NULL,
  `date` Datetime NOT NULL,
  `cat` Bigint,
  `author` Bigint,
  PRIMARY KEY (`id`)
)
;

CREATE INDEX `IX_Relationship2` ON `topics` (`cat`)
;

CREATE INDEX `IX_Relationship3` ON `topics` (`author`)
;

-- Table categories

CREATE TABLE `categories`
(
  `id` Bigint NOT NULL,
  `name` Varchar(50) NOT NULL,
  `description` Varchar(50) NOT NULL
)
;

ALTER TABLE `categories` ADD PRIMARY KEY (`id`)
;

ALTER TABLE `categories` ADD UNIQUE `name` (`name`)
;

-- Create foreign keys (relationships) section ------------------------------------------------- 


ALTER TABLE `topics` ADD CONSTRAINT `category` FOREIGN KEY (`cat`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `topics` ADD CONSTRAINT `usertopic` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `post` ADD CONSTRAINT `userpost` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `post` ADD CONSTRAINT `posttopic` FOREIGN KEY (`topic`) REFERENCES `topics` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `profile` ADD CONSTRAINT `userprofile` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


