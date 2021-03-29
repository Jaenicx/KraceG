# This Python file uses the following encoding: utf-8
import sys
import os
import requests
import smtplib

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject, Slot, Signal
from PySide2.QtSql import QSqlDatabase, QSqlQuery


class Main(QObject):
    def __init__(self):
        QObject.__init__(self)

        c = ""
        def database():
            try:
                conn = QSqlDatabase
                db = conn.addDatabase('kraceg')
                db.setHostName('localhost')
                db.setDatabaseName("kraceg")
                db.setUserName('root')
                db.open()
            except:
                print("DB not online")

        setTemp = Signal(int)
        @Slot(int)
        def setTempText(self, temp):
            api = "http://api.openweathermap.org/data/2.5/weather?id=3489854&appid=0c8ec92740cd099599c43f836abae567"
            json_data = requests.get(api).json()
            c = json_data['weather'][0]['main']
            temp = int(json_data['main']['temp'] - 273.15)
            self.setTemp.emit(temp)


        setCond = Signal(str)
        @Slot(str)
        def setCondText(self, c):
            api = "http://api.openweathermap.org/data/2.5/weather?id=3489854&appid=0c8ec92740cd099599c43f836abae567"
            json_data = requests.get(api).json()
            c = json_data['weather'][0]['main']
            temp = int(json_data['main']['temp'] - 273.15)
            self.setCond.emit(c)
            return c

        def emailfiter():
            email = queryE.value(str)
            sender = "jaenicholas@gmail.com"
            password = "#Superjae123"
            server = smtplib.SMTP('smtp@gmail.com', 465, )
            server.login(sender, password)
            message1 = "Due to company regulations you are therefore required to Stay Home"
            message2 = "Due to company regulations you are therefore required to work for 4 hours"
            message3 = "Have a Productive Day"
            cond = setCond

            queryR = QSqlQuery
            queryR.exec_("SELECT role from EMPLOYEES")
            queryE= QSqlQuery
            queryE.exec_("SELECT email from EMPLOYEES")
            if c == "Rain":
                server.sendmail(sender,email,message1)
            else:
                sender.sendmail(sender, email, message3)







if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    main = Main()
    engine.rootContext().setContextProperty("backend", main)
    engine.load(os.path.join(os.path.dirname(__file__), "qml/main.qml"))
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
