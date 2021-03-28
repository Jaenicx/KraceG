import QtQuick 2.13
import QtQuick.Controls 2.13
import QtGraphicalEffects 1.0

Button{
    id: toggleButton
    implicitWidth: 75
    implicitHeight: 75

    background: Rectangle{
        id: bgBtn
        color: "#252323"
    }

    Image {
        id: menuIcon
        x: -177
        y: -201
        source: "../../img/svg_images/menu_icon.svg"

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        height: 30
        width: 30
        fillMode: Image.PreserveAspectFit
        visible: false
    }

    ColorOverlay{
               anchors.fill: menuIcon
               source: menuIcon
               color: "#ffffff"
               antialiasing: false
           }
}
