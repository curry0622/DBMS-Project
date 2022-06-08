import mysql.connector

class Database:
    def __init__(self):
        self.db = mysql.connector.connect(
            host='localhost',
            user='root',
            passwd='A142536',
            database='sql_test'
        )
        self.cursor = self.db.cursor()

if __name__ == '__main__':
    db = Database()
    db.cursor.execute('SELECT * FROM `student`')
    print(db.cursor.fetchall())
