0. CREATE DATABASE form;
 use form;

/*
Created: 2018-03-02
Modified: 2018-03-29
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
  `content` Char(255) NOT NULL,
  `topic` Char(255) NOT NULL,
  `date` Datetime NOT NULL,
  `author` Bigint NOT NULL,
  `catid` Bigint,
  PRIMARY KEY (`id`)
)
;

CREATE INDEX `IX_Relationship4` ON `post` (`author`)
;

CREATE INDEX `IX_Relationship2` ON `post` (`catid`)
;

-- Table categories

CREATE TABLE `categories`
(
  `id` Bigint NOT NULL AUTO_INCREMENT,
  `name` Char(100) NOT NULL,
  `description` Char(255) NOT NULL,
  PRIMARY KEY (`id`)
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
  PRIMARY KEY (`id`)
)
;

CREATE INDEX `IX_Relationship4` ON `poll_answer` (`awnserid`)
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
  PRIMARY KEY (`id`)
)
;

CREATE INDEX `IX_Relationship2` ON `uservotes` (`userid`)
;

CREATE INDEX `IX_Relationship4` ON `uservotes` (`rateid`)
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


ALTER TABLE `poll_answer` ADD CONSTRAINT `pollanswer` FOREIGN KEY (`awnserid`) REFERENCES `poll` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `answers` ADD CONSTRAINT `answers` FOREIGN KEY (`id`) REFERENCES `poll_answer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `reply` ADD CONSTRAINT `postreply` FOREIGN KEY (`postid`) REFERENCES `post` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `post` ADD CONSTRAINT `Catpost` FOREIGN KEY (`catid`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `rating` ADD CONSTRAINT `postrate` FOREIGN KEY (`postid`) REFERENCES `post` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `uservotes` ADD CONSTRAINT `uservote` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `uservotes` ADD CONSTRAINT `ratevote` FOREIGN KEY (`rateid`) REFERENCES `rating` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;





