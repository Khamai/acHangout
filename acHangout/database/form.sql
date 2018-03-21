CREATE DATABASE form;
use form;

/*
Created: 2018-03-02
Modified: 2018-03-09
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
  `id` Bigint NOT NULL PRIMARY KEY auto_increment,
  `name` Varchar(50) NOT NULL,
  `description` Varchar(50) NOT NULL
)
;

ALTER TABLE `categories` ADD UNIQUE `name` (`name`)
;

-- Table poll

CREATE TABLE `poll`
(
  `id` Bigint NOT NULL AUTO_INCREMENT,
  `question` Char(255) NOT NULL,
  `optionA` Char(255) NOT NULL,
  `optionB` Char(255) NOT NULL,
  `optionC` Char(255),
  `optionD` Char(255),
  `answerid` Char(20),
  `author` Bigint,
  PRIMARY KEY (`id`),
  UNIQUE `id` (`id`)
)
;

CREATE INDEX `IX_Relationship2` ON `poll` (`author`)
;

-- Table poll_results

CREATE TABLE `poll_results`
(
  `id` Bigint NOT NULL AUTO_INCREMENT,
  `a` Bigint,
  `b` Bigint,
  `c` Bigint,
  `d` Bigint,
  PRIMARY KEY (`id`),
  UNIQUE `id` (`id`),
 INDEX `IX_Relationship3` (`id`)
)
;

-- Table poll_answer

CREATE TABLE `poll_answer`
(
  `id` Bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
 INDEX `IX_Relationship4` (`id`)
)
;

-- Table answers

CREATE TABLE `answers`
(
  `id` Bigint NOT NULL,
  `answers` Char(255)
)
;

CREATE INDEX `IX_Relationship5` ON `answers` (`id`)
;

ALTER TABLE `answers` ADD PRIMARY KEY (`id`)
;

-- Table reply

CREATE TABLE `reply`
(
  `id` Bigint NOT NULL,
  `content` Char(255) NOT NULL,
  `date` Datetime NOT NULL,
  `author` Char(20) NOT NULL
)
;

CREATE INDEX `IX_Relationship2` ON `reply` (`id`)
;

ALTER TABLE `reply` ADD PRIMARY KEY (`id`)
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


ALTER TABLE `poll` ADD CONSTRAINT `userpoll` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `poll_results` ADD CONSTRAINT `pollresults` FOREIGN KEY (`id`) REFERENCES `poll` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `poll_answer` ADD CONSTRAINT `pollanswer` FOREIGN KEY (`id`) REFERENCES `poll` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `answers` ADD CONSTRAINT `answers` FOREIGN KEY (`id`) REFERENCES `poll_answer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `reply` ADD CONSTRAINT `postreply` FOREIGN KEY (`id`) REFERENCES `post` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;