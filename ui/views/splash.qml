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
        color: "#fffde7"
    }

    ProgressBar {
        value: slider.value
        style: ProgressBarStyle {
            background: Rectangle {
                radius: 2
                color: "lightgray"
                border.color: "gray"
                border.width: 1
                implicitWidth: 200
                implicitHeight: 24
            }
            progress: Rectangle {
                color: "lightsteelblue"
                border.color: "steelblue"
            }
        }
    }
}
