# create `nba` database
CREATE DATABASE `nba`;
SHOW DATABASES;
USE `nba`;

# create entity's tables
CREATE TABLE `player`(
	`player_id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50),
    `height` INT,
    `birth_date` DATE,
    `team_id` INT
);
DESCRIBE `player`;
# DROP TABLE `player`;

CREATE TABLE `shoes`(
	`shoes_id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50),
    `price` INT,
    `endorser_id` INT
);
DESCRIBE `shoes`;
# DROP TABLE `shoes`;

CREATE TABLE `referee`(
	`ref_id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50),
    `birth_date` DATE
);
DESCRIBE `referee`;
# DROP TABLE `referee`;

CREATE TABLE `coach`(
	`coach_id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50),
    `birth_date` DATE
);
DESCRIBE `coach`;
# DROP TABLE `coach`;

CREATE TABLE `team`(
	`team_id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(30),
    `city` VARCHAR(30),
    `establish_year` INT,
    `coach_id` INT,
    `leader_id` INT
);
DESCRIBE `team`;
# DROP TABLE `team`;

CREATE TABLE `competition`(
	`comp_id` INT PRIMARY KEY AUTO_INCREMENT,
    `date` DATE,
    `host_id` INT,
    `guest_id` INT,
    `host_score` INT,
    `guest_score` INT,
    `ref1_id` INT,
    `ref2_id` INT,
    `ref3_id` INT,
    `host_player1_id` INT,
    `host_player2_id` INT,
    `host_player3_id` INT,
    `host_player4_id` INT,
    `host_player5_id` INT,
    `guest_player1_id` INT,
    `guest_player2_id` INT,
    `guest_player3_id` INT,
    `guest_player4_id` INT,
    `guest_player5_id` INT
);
DESCRIBE `competition`;
# DROP TABLE `competition`;