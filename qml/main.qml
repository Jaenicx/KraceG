import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.15

import "../qml/control"
import QtGraphicalEffects 1.0

Window {
    id: mainWindow
    width: 1000
    height: 560
    visible: true
    title: qsTr("KG")
    flags: Qt.Window | Qt.FramelessWindowHint

    Rectangle {
        id: background
        color: "#191414"
        anchors.fill: parent

        Rectangle {
            id: appContainer
            color: "#00000000"
            anchors.fill: parent
            anchors.rightMargin: 0

            Rectangle {
                id: topBar
                height: 70
                color: "#252323"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0


                Rectangle {
                    id: appDsec
                    y: 36
                    height: 34
                    color: "#424141"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0

                    Label {
                        id: label1
                        color: "#a6a8aa"
                        text: qsTr("Email Automation Software")
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        anchors.leftMargin: 10
                        font.pointSize: 11
                    }
                }

                Rectangle {
                    id: titleBar
                    height: 35
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 105
                    anchors.leftMargin: 0
                    anchors.topMargin: 0

                    Label {
                        id: label
                        color: "#ffffff"
                        text: qsTr("Krace Gennedy Weather App")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 12
                        anchors.rightMargin: 55
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 15
                        anchors.topMargin: 0
                    }
                }

                Row {
                    id: rowBtns
                    height: 35
                    anchors.left: titleBar.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.rightMargin: 0

                    MinimizeButton{
                        width: 35
                        height: 35
                        onClicked: mainWindow.showMinimized()
                    }

                    MaximizeButton {
                        width: 35
                        height: 35
                        onClicked: mainWindow.showMaximized()
                    }

                    CloseButton {
                        width: 35
                        height: 35
                        onClicked: mainWindow.close()
                    }

                }
            }

            Rectangle {
                id: content
                x: 0
                y: 560
                color: "#00000000"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: topBar.bottom
                anchors.bottom: parent.bottom
                anchors.topMargin: 0

                Rectangle {
                    id: sideMenu
                    width: 100
                    color: "#252323"
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0

                    Column {
                        id: column
                        width: 100
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                    }

                    Button {
                        id: kingstonBtn
                        x: 0
                        y: 87
                        text: qsTr("Kingston")
                        clip: false
                        onClicked: {
                                stackView.push(Qt.resolvedUrl("pages/Kingston.qml"))
                        }

                        Button {
                            id: mobayBtn
                            x: 0
                            y: 243
                            text: qsTr("Montego Bay")
                            onClicked:{
                                stackView.push(Qt.resolvedUrl("pages/MontegoBay.qml"))
                            }
                        }
                    }

                }

                Rectangle {
                    id: contentPages
                    color: "#00000000"
                    anchors.left: sideMenu.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    clip: true
                    anchors.leftMargin: 0

                    StackView {
                        id: stackView
                        anchors.fill: parent
                        initialItem: Qt.resolvedUrl("pages/Kingston.qml")
                    }
                }

            }
        }
    }
}
