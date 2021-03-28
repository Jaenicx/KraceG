import QtQuick 2.13
import QtQuick.Controls 2.13
import QtGraphicalEffects 1.0

Button{
    id: closeButton
    implicitWidth: 75
    implicitHeight: 75

    background: Rectangle{
        id: bgBtn
        color: "#252323"
    }

    Image {
        id: closeIcon
        x: -177
        y: -201
        source: "../../img/svg_images/close_icon.svg"

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        height: 30
        width: 30
        fillMode: Image.PreserveAspectFit
        visible: false
    }

    ColorOverlay{
               anchors.fill: closeIcon
               source: closeIcon
               color: "#ffffff"
               antialiasing: false
           }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
