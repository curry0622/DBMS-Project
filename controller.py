from PyQt5 import QtWidgets, QtGui, QtCore

from UI import Ui_MainWindow

class MainWindow_controller(QtWidgets.QMainWindow):
    def __init__(self):
        super().__init__()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.setup_control()

    def setup_control(self):
        self.ui.select_choose.currentIndexChanged.connect(self.handle_select_change)
        self.ui.btn_sql.clicked.connect(self.handle_sql_query)
        return

    def handle_select_change(self, i):
        self.ui.label_result.setText('Result:\n' + self.ui.select_choose.currentText())
        print(i, self.ui.select_choose.currentText())
        return

    def handle_sql_query(self):
        self.ui.label_result.setText('Result:\n' + self.ui.input_sql.text())
        print(self.ui.input_sql.text())
        return
