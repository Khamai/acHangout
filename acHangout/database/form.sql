 CREATE DATABASE form;
 use form;

/*
Created: 2018-03-02
Modified: 2018-04-11
Model: MySQL 5.7
Database: MySQL 5.7
*/


-- Create tables section -------------------------------------------------

-- Table users

CREATE TABLE `users`
(
  `id` Bigint NOT NULL AUTO_INCREMENT,
  `username` Char(50) NOT NULL,
  `password` Char(50) NOT NULL,
  `date` Datetime NOT NULL,
  `level` Int(10) NOT NULL,
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
  `email` Char(200) NOT NULL,
  `numpost` Bigint NOT NULL,
  `phone` Char(20),
  `sex` Char(20),
  PRIMARY KEY (`id`),
 INDEX `IX_Relationship6` (`id`)
)
;

ALTER TABLE `profile` ADD UNIQUE `email` (`email`)
;

-- Table post

CREATE TABLE `post`
(
  `id` Bigint NOT NULL AUTO_INCREMENT,
  `topic` Char(100) NOT NULL,
  `content` Char(255) NOT NULL,
  `date` Datetime NOT NULL,
  `author` Bigint NOT NULL,
  `subcatid` Bigint,
  PRIMARY KEY (`id`)
)
;

CREATE INDEX `IX_Relationship4` ON `post` (`author`)
;

CREATE INDEX `IX_Relationship2` ON `post` (`subcatid`)
;

-- Table categories

CREATE TABLE `categories`
(
  `id` Bigint NOT NULL AUTO_INCREMENT,
  `name` Char(80) NOT NULL,
  `description` Char(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE `id` (`id`)
)
;

ALTER TABLE `categories` ADD UNIQUE `name` (`name`)
;

-- Table poll

CREATE TABLE `poll`
(
  `id` Bigint NOT NULL AUTO_INCREMENT,
  `question` Char(255) NOT NULL,
  `option1` Char(255) NOT NULL,
  `option2` Char(255) NOT NULL,
  `option3` Char(255),
  `option4` Char(255),
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
  `option1` Bigint,
  `option2` Bigint,
  `option3` Bigint,
  `option4` Bigint,
  `pollid` Bigint,
  PRIMARY KEY (`id`),
  UNIQUE `id` (`id`)
)
;

CREATE INDEX `IX_Relationship3` ON `poll_results` (`pollid`)
;

-- Table poll_answer

CREATE TABLE `poll_answer`
(
  `id` Bigint NOT NULL AUTO_INCREMENT,
  `awnserid` Bigint,
  `pollid` Bigint,
  PRIMARY KEY (`id`)
)
;

CREATE INDEX `IX_Relationship4` ON `poll_answer` (`pollid`)
;

-- Table answers

CREATE TABLE `answers`
(
  `id` Bigint NOT NULL,
  `answers` Char(255),
  `pollaid` Bigint
)
;

CREATE INDEX `IX_Relationship5` ON `answers` (`pollaid`)
;

ALTER TABLE `answers` ADD PRIMARY KEY (`id`)
;

-- Table reply

CREATE TABLE `reply`
(
  `id` Bigint NOT NULL AUTO_INCREMENT,
  `content` Char(255),
  `date` Datetime,
  `author` Char(50),
  `postid` Bigint,
  PRIMARY KEY (`id`)
)
;

CREATE INDEX `IX_Relationship2` ON `reply` (`postid`)
;

-- Table rating

CREATE TABLE `rating`
(
  `id` Bigint NOT NULL,
  `liked` Bigint,
  `disliked` Bigint,
  `postid` Bigint
)
;

CREATE INDEX `IX_Relationship1` ON `rating` (`postid`)
;

ALTER TABLE `rating` ADD PRIMARY KEY (`id`)
;

-- Table uservotes

CREATE TABLE `uservotes`
(
  `id` Bigint NOT NULL AUTO_INCREMENT,
  `userid` Bigint,
  `rateid` Bigint,
  `pick` Bigint NOT NULL,
  PRIMARY KEY (`id`)
)
;

CREATE INDEX `IX_Relationship2` ON `uservotes` (`userid`)
;

CREATE INDEX `IX_Relationship4` ON `uservotes` (`rateid`)
;

-- Table pollvotes

CREATE TABLE `pollvotes`
(
  `id` Bigint NOT NULL AUTO_INCREMENT,
  `userid` Bigint,
  `pollid` Bigint,
  PRIMARY KEY (`id`)
)
;

CREATE INDEX `IX_Relationship1` ON `pollvotes` (`pollid`)
;

CREATE INDEX `IX_Relationship2` ON `pollvotes` (`userid`)
;

-- Table subcategories

CREATE TABLE `subcategories`
(
  `id` Bigint NOT NULL AUTO_INCREMENT,
  `name` Char(80) NOT NULL,
  `description` Char(50) NOT NULL,
  `catid` Bigint NOT NULL,
  `author` Bigint NOT NULL,
  PRIMARY KEY (`id`)
)
;

CREATE INDEX `IX_Relationship2` ON `subcategories` (`catid`)
;

CREATE INDEX `IX_Relationship1` ON `subcategories` (`author`)
;

-- Create foreign keys (relationships) section ------------------------------------------------- 


ALTER TABLE `post` ADD CONSTRAINT `userpost` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `profile` ADD CONSTRAINT `userprofile` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `poll` ADD CONSTRAINT `userpoll` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `poll_results` ADD CONSTRAINT `pollresults` FOREIGN KEY (`pollid`) REFERENCES `poll` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `poll_answer` ADD CONSTRAINT `pollanswer` FOREIGN KEY (`pollid`) REFERENCES `poll` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `answers` ADD CONSTRAINT `answers` FOREIGN KEY (`pollaid`) REFERENCES `poll_answer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `reply` ADD CONSTRAINT `postreply` FOREIGN KEY (`postid`) REFERENCES `post` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `rating` ADD CONSTRAINT `postrate` FOREIGN KEY (`postid`) REFERENCES `post` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `uservotes` ADD CONSTRAINT `uservote` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `uservotes` ADD CONSTRAINT `ratevote` FOREIGN KEY (`rateid`) REFERENCES `rating` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `pollvotes` ADD CONSTRAINT `pollvote` FOREIGN KEY (`pollid`) REFERENCES `poll` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `pollvotes` ADD CONSTRAINT `userpollvote` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `post` ADD CONSTRAINT `subpost` FOREIGN KEY (`subcatid`) REFERENCES `subcategories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `subcategories` ADD CONSTRAINT `catsub` FOREIGN KEY (`catid`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `subcategories` ADD CONSTRAINT `usersub` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;
