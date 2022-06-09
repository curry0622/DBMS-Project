from PyQt5 import QtWidgets, QtGui, QtCore

from UI import Ui_MainWindow
from database import Database

class MainWindow_controller(QtWidgets.QMainWindow):
    def __init__(self):
        super().__init__()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.setup_control()
        self.db = Database()

    def setup_control(self):
        self.ui.select_choose.currentIndexChanged.connect(self.handle_select_change)
        self.ui.btn_sql.clicked.connect(self.handle_sql_query)
        return

    def handle_select_change(self, i):
        self.ui.label_exec.setText('Execute:\n' + self.sql_exec(i))
        return

    def handle_sql_query(self):
        query_str = self.ui.input_sql.text()
        self.ui.label_exec.setText('Execute:\n' + query_str)
        self.db.cursor.execute(self.ui.input_sql.text())
        print('[query executed] -> ', query_str)
        if query_str.find('SELECT') != -1:
            for row in self.db.cursor:
                print(row)
        if query_str.find('INSERT') != -1 or query_str.find('UPDATE') != -1 or query_str.find('DELETE') != -1:
            self.db.connection.commit()
        print()
        return

    def sql_exec(self, i):
        if(i == 1):
            # 1 SELECT-FROM-WHERE
            # 顯示所有 team_id 為 1 的球員名字
            print('---SELECT-FROM-WHERE---')
            self.db.cursor.execute('SELECT `name` FROM `player` WHERE `team_id` = 1;')
            for row in self.db.cursor:
                print(row, end='\n')
            print()
            return 'SELECT `name` FROM `player` WHERE `team_id` = 1;'
        elif(i == 2):
            # DELETE
            # 刪除名為 James Williams 的裁判
            print('---DELETE---')
            self.db.cursor.execute('DELETE FROM `referee` WHERE `name` = \'James Williams\';')
            self.db.connection.commit()
            return 'DELETE FROM `referee` WHERE `name` = \'James Williams\';'
        elif(i == 3):
            # INSERT
            # 新增一雙鞋名為 Curry TEN，價格為 4500 元，代言人 id 為 1
            print('---INSERT---')
            self.db.cursor.execute('INSERT INTO `shoes`(`name`, `price`, `endorser_id`) VALUES(\'Curry TEN\', 4500, 1);')
            self.db.connection.commit()
            return 'INSERT INTO `shoes`(`name`, `price`, `endorser_id`) VALUES(\'Curry TEN\', 4500, 1);'
        elif(i == 4):
            # UPDATE
            # 將名為 LeBron 19 的這雙鞋價格更新為 1800 元
            print('---UPDATE---')
            self.db.cursor.execute('UPDATE `shoes` SET `price` = 1800 WHERE `name` = \'LeBron 19\';')
            self.db.connection.commit()
            return 'UPDATE `shoes` SET `price` = 1800 WHERE `name` = \'LeBron 19\';'
        elif(i == 5):
            # IN
            # 顯示出 team_id = (1, 2) 的所有球員名字
            print('---IN---')
            self.db.cursor.execute('SELECT `name` FROM `player` WHERE `team_id` IN (1, 2);')
            for row in self.db.cursor:
                print(row, end='\n')
            print()
            return 'SELECT `name` FROM `player` WHERE `team_id` IN (1, 2);'
        elif(i == 6):
            # NOT IN
            # 顯示出 team_id != (1, 2) 的所有球員名字
            print('---NOT IN---')
            self.db.cursor.execute('SELECT `name` FROM `player` WHERE `team_id` NOT IN (1, 2);')
            for row in self.db.cursor:
                print(row, end='\n')
            print()
            return 'SELECT `name` FROM `player` WHERE `team_id` NOT IN (1, 2);'
        elif(i == 7):
            # EXISTS
            # 若 team 中存在 team_id = 2 則顯示出所有球員的名字
            print('---EXISTS---')
            self.db.cursor.execute('SELECT `name` FROM `player` WHERE EXISTS (SELECT * FROM `team` WHERE `team`.team_id = 2);')
            for row in self.db.cursor:
                print(row, end='\n')
            print()
            return 'SELECT `name` FROM `player` WHERE EXISTS (SELECT * FROM `team` WHERE `team`.team_id = 2);'
        elif(i == 8):
            # NOT EXISTS
            # 若 team 中不存在 team_id = 2 則顯示出所有球員的名字
            print('---NOT EXISTS---')
            self.db.cursor.execute('SELECT `name` FROM `player` WHERE NOT EXISTS (SELECT * FROM `team` WHERE `team`.team_id = 2);')
            for row in self.db.cursor:
                print(row, end='\n')
            print()
            return 'SELECT `name` FROM `player` WHERE NOT EXISTS (SELECT * FROM `team` WHERE `team`.team_id = 2);'
        elif(i == 9):
            # COUNT
            # 顯示代言人 id 為 1 的人所代言的鞋子總數
            print('---COUNT---')
            self.db.cursor.execute('SELECT COUNT(`name`) FROM `shoes` WHERE `endorser_id` = 1;')
            for row in self.db.cursor:
                print(row, end='\n')
            print()
            return 'SELECT COUNT(`name`) FROM `shoes` WHERE `endorser_id` = 1;'
        elif(i == 10):
            # SUM
            # 顯示代言人 id 為 1 所代言的鞋子總價
            print('---SUM---')
            self.db.cursor.execute('SELECT SUM(`price`) FROM `shoes` WHERE `endorser_id` = 1;')
            for row in self.db.cursor:
                print(row, end='\n')
            print()
            return 'SELECT SUM(`price`) FROM `shoes` WHERE `endorser_id` = 1;'
        elif(i == 11):
            # MAX
            # 顯示價格最高的鞋子價格
            print('---MAX---')
            self.db.cursor.execute('SELECT MAX(`price`) FROM `shoes`;')
            for row in self.db.cursor:
                print(row, end='\n')
            print()
            return 'SELECT MAX(`price`) FROM `shoes`;'
        elif(i == 12):
            # MIN
            # 顯示價格最低的鞋子價格
            print('---MIN---')
            self.db.cursor.execute('SELECT MIN(`price`) FROM `shoes`;')
            for row in self.db.cursor:
                print(row, end='\n')
            print()
            return 'SELECT MIN(`price`) FROM `shoes`;'
        elif(i == 13):
            # AVG
            # 顯示所有鞋子的平均價格
            print('---AVG---')
            self.db.cursor.execute('SELECT AVG(`price`) FROM `shoes`;')
            for row in self.db.cursor:
                print(row, end='\n')
            print()
            return 'SELECT AVG(`price`) FROM `shoes`;'
        elif(i == 14):
            # HAVING
            # 找出代言鞋子平均價格低於 4500 元的代言人，顯示出代言人 id 和平均價格
            print('---HAVING---')
            self.db.cursor.execute('SELECT `endorser_id`, AVG(`price`) FROM `shoes` GROUP BY `endorser_id` HAVING AVG(`price`) < 4500;')
            for row in self.db.cursor:
                print(row, end='\n')
            print()
            return 'SELECT `endorser_id`, AVG(`price`) FROM `shoes` GROUP BY `endorser_id` HAVING AVG(`price`) < 4500;'
        return ''
