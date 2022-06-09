import mysql.connector

class Database:
    def __init__(self):
        self.connection = mysql.connector.connect(
            host='localhost',
            user='root',
            passwd='A142536',
            database='nba'
        )
        self.cursor = self.connection.cursor()
        self.cursor.execute('SET SQL_SAFE_UPDATES = 0;')

if __name__ == '__main__':
    db = Database()
    db.cursor.execute('SELECT * FROM `player`')
    for row in db.cursor:
        print(row, end='\n')
