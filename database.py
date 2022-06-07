import mysql.connector

class Database:
    def __init__(self):
        self.db = mysql.connector.connect(
            host='localhost',
            user='root',
            passwd='',
            # database=''
        )
        self.cursor = self.db.cursor()
