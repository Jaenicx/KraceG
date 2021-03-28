import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    width: 900

    Rectangle {
        id: rectangle
        color: "#191414"
        anchors.fill: parent

        Label {
            id: label
            x: 21
            y: 21
            width: 213
            height: 40
            color: "#ffffff"
            text: qsTr("Montego Bay Weather")
            font.pointSize: 16
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
