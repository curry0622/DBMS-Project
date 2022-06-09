# 1 SELECT-FROM-WHERE
# 顯示所有 team_id 為 1 的球員名字
SELECT `name` FROM `player` WHERE `team_id` = 1;

# DELETE
# 刪除名為 Ed Malloy 的裁判
SET SQL_SAFE_UPDATES = 0;
DELETE FROM `referee` WHERE `name` = 'Ed Malloy';
SELECT * FROM `referee`;

# INSERT
# 新增一雙鞋名為 LeBron XIX EP，價格為 3512 元，代言人 id 為 6
INSERT INTO `shoes`(`name`, `price`, `endorser_id`) VALUES('LeBron XIX EP', 3512, 6);
SELECT * from `shoes`;

# UPDATE
# 將名為 LeBron 19 的這雙鞋價格更新為 1900 元
UPDATE `shoes` SET `price` = 1900 WHERE `name` = 'LeBron 19';
SELECT * from `shoes`;

# IN
# 顯示出 team_id = (1, 2) 的所有球員名字
SELECT `name` FROM `player` WHERE `team_id` IN (1, 2);

# NOT IN
SELECT `name` FROM `player` WHERE `team_id` NOT IN (1, 2);

# EXISTS
# 若 team 中存在 team_id = 2 則顯示出所有球員的名字
SELECT `name` FROM `player` WHERE EXISTS (SELECT * FROM `team` WHERE `team`.team_id = 2);

# NOT EXISTS
# 若 team 中不存在 team_id = 2 則顯示出所有球員的名字
SELECT `name` FROM `player` WHERE NOT EXISTS (SELECT * FROM `team` WHERE `team`.team_id = 2);

# COUNT
# 顯示代言人 id 為 1 的人所代言的鞋子總數
SELECT COUNT(`name`) FROM `shoes` WHERE `endorser_id` = 1;

# SUM
# 顯示代言人 id 為 1 所代言的鞋子總價
SELECT SUM(`price`) FROM `shoes` WHERE `endorser_id` = 1;

# MAX
# 顯示價格最高的鞋子價格
SELECT MAX(`price`) FROM `shoes`;

# MIN
# 顯示價格最低的鞋子價格
SELECT MIN(`price`) FROM `shoes`;

# AVG
# 顯示所有鞋子的平均價格
SELECT AVG(`price`) FROM `shoes`;

# HAVING
# 找出代言鞋子平均價格小於 4500 元的代言人，顯示出代言人 id 和平均價格
SELECT `endorser_id`, AVG(`price`) FROM `shoes` GROUP BY `endorser_id` HAVING AVG(`price`) < 4500;