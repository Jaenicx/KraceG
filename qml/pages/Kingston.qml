import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    Connections{
        target: backend

       function setTemp(temp){
        tempText.text = temp
    }
}
    Component.onCompleted:{
        backend.sendTempText(tempText.text)
        backend.setCondText(condText.text)

    }
    width: 900


    Rectangle {
        id: kinPage
        color: "#191414"
        anchors.fill: parent

        Label {
            id: label
            x: 21
            y: 21
            width: 213
            height: 40
            color: "#ffffff"
            text: qsTr("Kingston Weather")
            font.pointSize: 16
        }

        Rectangle {
            id: currentday
            x: 14
            y: 114
            width: 120
            height: 220
            color: "#1e1d1d"

            Label {
                id: current
                x: 25
                y: 16
                width: 71
                height: 30
                color: "#ffffff"
                text: qsTr("Current")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12

            }

            Label {
                id: tempText
                x: 34
                y: 74
                width: 53
                height: 49
                color: "#ffffff"
                text: qsTr("")
                font.pixelSize: 40
            }

            Label {
                id: condText
                x: 19
                y: 137
                width: 82
                height: 49
                color: "#ffffff"
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: nextDay1
            x: 160
            y: 114
            width: 120
            height: 220
            color: "#1e1d1d"
        }

        Rectangle {
            id: nextDay2
            x: 307
            y: 114
            width: 120
            height: 220
            color: "#1e1d1d"
        }

        Rectangle {
            id: nextDay3
            x: 446
            y: 114
            width: 120
            height: 220
            color: "#1e1d1d"
        }

        Rectangle {
            id: nextDay4
            x: 589
            y: 114
            width: 120
            height: 220
            color: "#1e1d1d"
        }

        Rectangle {
            id: nextDay5
            x: 730
            y: 114
            width: 120
            height: 220
            color: "#1e1d1d"
        }
    }


}
