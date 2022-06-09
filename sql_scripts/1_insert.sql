# insert into `player`
INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('Stephen Curry', 188, '1988-03-14', 1);
INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('Jason Tatum', 203, '1998-03-03', 2);
INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('Jimmy Butler', 201, '1989-09-14', 3);
INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('Luka Doncic', 198, '1999-02-28', 4);
INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('Ja Morant', 191, '1999-08-10', 5);
INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('LeBron James', 206, '1984-12-30', 6);
INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('Kevin Durant', 208, '1988-09-29', 7);
INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('DeMar DeRozan', 206, '1989-08-07', 8);
INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('Giannis Antetokounmpo', 211, '1994-12-06', 9);
INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('Devin Booker', 204, '1996-10-30', 10);

INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('Klay Thompson', 198, '1990-02-08', 1);
INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('Draymond Green', 198, '1990-03-04', 1);
INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('Andrew Wiggins', 201, '1995-02-03', 1);
INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('Kevin Looney', 206, '1996-02-06', 1);
INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('Jaylen Brown', 198, '1996-10-24', 2);
INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('Marcus Smart', 191, '1994-03-06', 2);
INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('Alfred Horford', 206, '1986-06-03', 2);
INSERT INTO `player`(`name`, `height`, `birth_date`, `team_id`) VALUES('Robert Williams', 208, '1997-10-17', 2);
SELECT * from `player`;

# insert into `team`
INSERT INTO `team`(`name`, `city`, `establish_year`, `coach_id`, `leader_id`) VALUES('Warriors', 'Golden State', 1946, 1, 1);
INSERT INTO `team`(`name`, `city`, `establish_year`, `coach_id`, `leader_id`) VALUES('Celtics', 'Boston', 1946, 2, 2);
INSERT INTO `team`(`name`, `city`, `establish_year`, `coach_id`, `leader_id`) VALUES('Heat', 'Miami', 1988, 3, 3);
INSERT INTO `team`(`name`, `city`, `establish_year`, `coach_id`, `leader_id`) VALUES('Mavericks', 'Dallas', 1980, 4, 4);
INSERT INTO `team`(`name`, `city`, `establish_year`, `coach_id`, `leader_id`) VALUES('Grizzlies', 'Memphis', 1995, 5, 5);
INSERT INTO `team`(`name`, `city`, `establish_year`, `coach_id`, `leader_id`) VALUES('Lakers', 'Los Angeles', 1947, 6, 6);
INSERT INTO `team`(`name`, `city`, `establish_year`, `coach_id`, `leader_id`) VALUES('Nets', 'Brooklyn', 1967, 7, 7);
INSERT INTO `team`(`name`, `city`, `establish_year`, `coach_id`, `leader_id`) VALUES('Bulls', 'Chicago', 1966, 8, 8);
INSERT INTO `team`(`name`, `city`, `establish_year`, `coach_id`, `leader_id`) VALUES('Bucks', 'Milwaukee', 1968, 9, 9);
INSERT INTO `team`(`name`, `city`, `establish_year`, `coach_id`, `leader_id`) VALUES('Suns', 'Phoenix', 1968, 10, 10);
SELECT * from `team`;

# insert into `coach`
INSERT INTO `coach`(`name`, `birth_date`) VALUES('Steve Kerr', '1965-09-27');
INSERT INTO `coach`(`name`, `birth_date`) VALUES('Ime Udoka', '1977-08-09');
INSERT INTO `coach`(`name`, `birth_date`) VALUES('Erik Spoelstra', '1970-11-01');
INSERT INTO `coach`(`name`, `birth_date`) VALUES('Jason kidd', '1973-03-23');
INSERT INTO `coach`(`name`, `birth_date`) VALUES('Taylor Jenkins', '1984-09-12');
INSERT INTO `coach`(`name`, `birth_date`) VALUES('Darvin Ham', '1973-07-23');
INSERT INTO `coach`(`name`, `birth_date`) VALUES('Steve Nash', '1974-02-07');
INSERT INTO `coach`(`name`, `birth_date`) VALUES('Billy Donovan', '1965-05-30');
INSERT INTO `coach`(`name`, `birth_date`) VALUES('Mike Budenholzer', '1969-08-06');
INSERT INTO `coach`(`name`, `birth_date`) VALUES('Monty Williams', '1971-10-08');
SELECT * from `coach`;

# insert into `shoes`
INSERT INTO `shoes`(`name`, `price`, `endorser_id`) VALUES('Curry 1 Dub Nation', 5280, 1);
INSERT INTO `shoes`(`name`, `price`, `endorser_id`) VALUES('CURRY HOVR SPLASH', 3980, 1);
INSERT INTO `shoes`(`name`, `price`, `endorser_id`) VALUES('CURRY 9 For the W', 5280, 1);
INSERT INTO `shoes`(`name`, `price`, `endorser_id`) VALUES('HOVR 4 Clone NM4', 5280, NULL);
INSERT INTO `shoes`(`name`, `price`, `endorser_id`) VALUES('HOVR Havoc4 Clone NM3', 4480, NULL);
INSERT INTO `shoes`(`name`, `price`, `endorser_id`) VALUES('CURRY 9 We Believe', 5280, 1);
INSERT INTO `shoes`(`name`, `price`, `endorser_id`) VALUES('LeBron 19', 6600, 6);
INSERT INTO `shoes`(`name`, `price`, `endorser_id`) VALUES('LeBron Witness 6 EP', 3200, 6);
INSERT INTO `shoes`(`name`, `price`, `endorser_id`) VALUES('LeBron 18 Dynasty', 6600, 6);
INSERT INTO `shoes`(`name`, `price`, `endorser_id`) VALUES('LeBron IX', 5039, 6);
SELECT * from `shoes`;

# insert into `referee`
INSERT INTO `referee`(`name`, `birth_date`) VALUES('Scott Foster', '1967-04-08');
INSERT INTO `referee`(`name`, `birth_date`) VALUES('David Guthrie', '1974-05-21');
INSERT INTO `referee`(`name`, `birth_date`) VALUES('Courtney Kirkland', '1974-10-22');
INSERT INTO `referee`(`name`, `birth_date`) VALUES('Zach Zarba', '1975-04-29');
INSERT INTO `referee`(`name`, `birth_date`) VALUES('Tony Brothers', '1964-09-14');
INSERT INTO `referee`(`name`, `birth_date`) VALUES('Josh Tiven', '1978-03-12');
INSERT INTO `referee`(`name`, `birth_date`) VALUES('Marc Davis', '1967-12-13');
INSERT INTO `referee`(`name`, `birth_date`) VALUES('John Goble', '1978-11-25');
INSERT INTO `referee`(`name`, `birth_date`) VALUES('James Williams', '1979-05-23');
INSERT INTO `referee`(`name`, `birth_date`) VALUES('Ed Malloy', '1971-03-17');
SELECT * from `referee`;

# insert into `competition`
INSERT INTO `competition`(`date`, `host_id`, `guest_id`, `host_score`, `guest_score`, `ref1_id`, `ref2_id`, `ref3_id`, `host_player1_id`, `host_player2_id`, `host_player3_id`, `host_player4_id`, `host_player5_id`, `guest_player1_id`, `guest_player2_id`, `guest_player3_id`, `guest_player4_id`, `guest_player5_id`) VALUES(
	'2022-06-20', 1, 2, 121, 120, 7, 8, 9, 1, 11, 12, 13, 14, 2, 15, 16, 17, 18
);
INSERT INTO `competition`(`date`, `host_id`, `guest_id`, `host_score`, `guest_score`, `ref1_id`, `ref2_id`, `ref3_id`, `host_player1_id`, `host_player2_id`, `host_player3_id`, `host_player4_id`, `host_player5_id`, `guest_player1_id`, `guest_player2_id`, `guest_player3_id`, `guest_player4_id`, `guest_player5_id`) VALUES(
	'2022-06-17', 2, 1, 83, 97, 1, 2, 3, 2, 15, 16, 17, 18, 1, 11, 12, 13, 14
);
INSERT INTO `competition`(`date`, `host_id`, `guest_id`, `host_score`, `guest_score`, `ref1_id`, `ref2_id`, `ref3_id`, `host_player1_id`, `host_player2_id`, `host_player3_id`, `host_player4_id`, `host_player5_id`, `guest_player1_id`, `guest_player2_id`, `guest_player3_id`, `guest_player4_id`, `guest_player5_id`) VALUES(
	'2022-06-14', 1, 2, 113, 116, 4, 5, 6, 1, 11, 12, 13, 14, 2, 15, 16, 17, 18
);
INSERT INTO `competition`(`date`, `host_id`, `guest_id`, `host_score`, `guest_score`, `ref1_id`, `ref2_id`, `ref3_id`, `host_player1_id`, `host_player2_id`, `host_player3_id`, `host_player4_id`, `host_player5_id`, `guest_player1_id`, `guest_player2_id`, `guest_player3_id`, `guest_player4_id`, `guest_player5_id`) VALUES(
	'2022-06-11', 2, 1, 99, 101, 7, 8, 9, 2, 15, 16, 17, 18, 1, 11, 12, 13, 14
);
INSERT INTO `competition`(`date`, `host_id`, `guest_id`, `host_score`, `guest_score`, `ref1_id`, `ref2_id`, `ref3_id`, `host_player1_id`, `host_player2_id`, `host_player3_id`, `host_player4_id`, `host_player5_id`, `guest_player1_id`, `guest_player2_id`, `guest_player3_id`, `guest_player4_id`, `guest_player5_id`) VALUES(
	'2022-06-09', 2, 1, 116, 100, 1, 2, 3, 2, 15, 16, 17, 18, 1, 11, 12, 13, 14
);
INSERT INTO `competition`(`date`, `host_id`, `guest_id`, `host_score`, `guest_score`, `ref1_id`, `ref2_id`, `ref3_id`, `host_player1_id`, `host_player2_id`, `host_player3_id`, `host_player4_id`, `host_player5_id`, `guest_player1_id`, `guest_player2_id`, `guest_player3_id`, `guest_player4_id`, `guest_player5_id`) VALUES(
	'2022-06-05', 1, 2, 107, 88, 4, 5, 6, 1, 11, 12, 13, 14, 2, 15, 16, 17, 18
);
INSERT INTO `competition`(`date`, `host_id`, `guest_id`, `host_score`, `guest_score`, `ref1_id`, `ref2_id`, `ref3_id`, `host_player1_id`, `host_player2_id`, `host_player3_id`, `host_player4_id`, `host_player5_id`, `guest_player1_id`, `guest_player2_id`, `guest_player3_id`, `guest_player4_id`, `guest_player5_id`) VALUES(
	'2022-06-02', 1, 2, 108, 120, 7, 8, 9, 1, 11, 12, 13, 14, 2, 15, 16, 17, 18
);
INSERT INTO `competition`(`date`, `host_id`, `guest_id`, `host_score`, `guest_score`, `ref1_id`, `ref2_id`, `ref3_id`, `host_player1_id`, `host_player2_id`, `host_player3_id`, `host_player4_id`, `host_player5_id`, `guest_player1_id`, `guest_player2_id`, `guest_player3_id`, `guest_player4_id`, `guest_player5_id`) VALUES(
	'2022-04-19', 1, 2, 101, 90, 7, 8, 9, 1, 11, 12, 13, 14, 2, 15, 16, 17, 18
);
INSERT INTO `competition`(`date`, `host_id`, `guest_id`, `host_score`, `guest_score`, `ref1_id`, `ref2_id`, `ref3_id`, `host_player1_id`, `host_player2_id`, `host_player3_id`, `host_player4_id`, `host_player5_id`, `guest_player1_id`, `guest_player2_id`, `guest_player3_id`, `guest_player4_id`, `guest_player5_id`) VALUES(
	'2022-03-09', 1, 2, 120, 119, 4, 5, 6, 1, 11, 12, 13, 14, 2, 15, 16, 17, 18
);
INSERT INTO `competition`(`date`, `host_id`, `guest_id`, `host_score`, `guest_score`, `ref1_id`, `ref2_id`, `ref3_id`, `host_player1_id`, `host_player2_id`, `host_player3_id`, `host_player4_id`, `host_player5_id`, `guest_player1_id`, `guest_player2_id`, `guest_player3_id`, `guest_player4_id`, `guest_player5_id`) VALUES(
	'2022-02-28', 2, 1, 108, 113, 1, 2, 3, 2, 15, 16, 17, 18, 1, 11, 12, 13, 14
);
SELECT * from `competition`;