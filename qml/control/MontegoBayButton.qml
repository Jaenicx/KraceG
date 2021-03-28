import QtQuick 2.13
import QtQuick.Controls 2.13
import QtGraphicalEffects 1.0

Button{
    id: mobayButton
    implicitWidth: 75
    implicitHeight: 75

    background: Rectangle{
        id: bgBtn
        color: "#252323"
    }

    ColorOverlay{
               anchors.fill: mobayButton
               source: mobayButton
               color: "#ffffff"
               antialiasing: false
           }
}

