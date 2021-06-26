import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.2
import QtQml 2.12
import QtQml.Models 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Universal 2.12
import QtQuick.Controls.Styles 1.4

Window {
    id: splash
    visible: true
    width: 500
    height: 300
    Material.theme: Material.Light
    title: qsTr("Splash")
    modality: Qt.ApplicationModal
    flags: Qt.SplashScreen

    Text {
        text: "Hathor"
        font.bold: true
        font.family: "Helvetica"
        font.pointSize: 24
        color: "red"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    Text {
        text: "Initiliasing components ..."
        font.bold: true
        font.family: "Helvetica"
        font.pointSize: 9
        color: "red"
        anchors.left: parent.left
        anchors.bottom: control.top
        anchors.leftMargin: 5
    }

    ProgressBar {
        id: control
        value: 0.9
        padding: 2
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom

        background: Rectangle {
            implicitWidth: 200
            implicitHeight: 6
            color: "#e6e6e6"
            radius: 3
        }

        contentItem: Item {
            implicitWidth: 200
            implicitHeight: 4

            Rectangle {
                width: control.visualPosition * parent.width
                height: parent.height
                radius: 2
                color: "#17a81a"
            }
        }
    }
}
