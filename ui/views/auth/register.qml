import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.12

Item {
    id: it_register
    width: parent.width
    height: parent.height

    Loader {
        // position the Loader in the center
        // of the parent
        anchors.centerIn: parent
        sourceComponent: cp_register
    }

    Component {
        id: cp_register
        Rectangle {
            id: rect_background
            width: it_register.width - 80
            height: it_register.height - 25
            radius: 30
            Material.theme: Material.Light
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#fc466b"
                }
                GradientStop {
                    position: 1
                    color: "#3f5efb"
                }
            }

            Loader {
                // position the Loader in the center
                // of the parent
                anchors.centerIn: parent
                sourceComponent: cp_register_foreground
            }

            Component {
                id: cp_register_foreground

                ColumnLayout {
                    spacing: 8

                    Text {
                        id: txt_login_title
                        text: qsTr("Create an account.")
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        font.bold: true
                        font.pointSize: 24
                        color: "#fffde7"
                    }
                    Text {
                        id: txt_login_title_summary
                        text: qsTr("Enter your details.")
                        Layout.alignment: Qt.AlignLeft
                        font.bold: true
                        font.pointSize: 8
                        color: "#fffde7"
                    }
                    TextField {
                        Layout.fillWidth: true
                        id: txt_username
                        Layout.alignment: Qt.AlignLeft
                        placeholderText: qsTr("Username")
                        background: Rectangle {
                            implicitWidth: 200
                            implicitHeight: 40
                            radius: 5
                            color: txt_email_address.enabled ? "#fffde7" : "#353637"
                            border.color: txt_email_address.enabled ? "#21be2b" : "transparent"
                        }
                    }
                    TextField {
                        Layout.fillWidth: true
                        id: txt_email_address
                        Layout.alignment: Qt.AlignLeft
                        placeholderText: qsTr("Email address")
                        background: Rectangle {
                            implicitWidth: 200
                            implicitHeight: 40
                            radius: 5
                            color: txt_email_address.enabled ? "#fffde7" : "#353637"
                            border.color: txt_email_address.enabled ? "#21be2b" : "transparent"
                        }
                    }
                    TextField {
                        id: txt_password
                        Layout.alignment: Qt.AlignLeft
                        Layout.fillWidth: true
                        placeholderText: qsTr("Password")
                        echoMode: TextInput.PasswordEchoOnEdit
                        background: Rectangle {
                            implicitWidth: 200
                            implicitHeight: 40
                            radius: 5
                            color: txt_password.enabled ? "#fffde7" : "#353637"
                            border.color: txt_password.enabled ? "#21be2b" : "transparent"
                        }
                    }
                    TextField {
                        id: txt_password_confirm
                        Layout.alignment: Qt.AlignLeft
                        Layout.fillWidth: true
                        placeholderText: qsTr("Confirm Password")
                        echoMode: TextInput.PasswordEchoOnEdit
                        background: Rectangle {
                            implicitWidth: 200
                            implicitHeight: 40
                            radius: 5
                            color: txt_password.enabled ? "#fffde7" : "#353637"
                            border.color: txt_password.enabled ? "#21be2b" : "transparent"
                        }
                    }
                    RowLayout {

                        CheckBox {
                            id: chb_data_privacy
                            indicator: Rectangle {
                                implicitWidth: 26
                                implicitHeight: 26
                                x: chb_data_privacy.leftPadding
                                y: parent.height / 2 - height / 2
                                radius: 3
                                border.color: chb_data_privacy.down ? "#17a81a" : "#21be2b"

                                Rectangle {
                                    width: 14
                                    height: 14
                                    x: 6
                                    y: 6
                                    radius: 2
                                    color: chb_data_privacy.down ? "#17a81a" : "#21be2b"
                                    visible: chb_data_privacy.checked
                                }
                            }
                        }

                        Text {
                            Layout.alignment: Qt.AlignRight
                            id: txt_forgot_password
                            text: qsTr("I accept to")
                            font.bold: true
                            font.pointSize: 8
                            color: "#fffde7"
                        }
                        Text {
                            Layout.alignment: Qt.AlignRight
                            id: txt_data_privacy
                            text: qsTr("Data and Privacy terms.")
                            font.underline: true
                            font.bold: true
                            font.pointSize: 8
                            color: "#fffde7"
                            MouseArea {
                                anchors.fill: parent
                                onClicked: console.log(
                                               "[ # ] Data and privacy terms clicked .")
                            }
                        }
                    }

                    Button {
                        id: btn_login
                        text: qsTr("REGITER")
                        Layout.fillWidth: true
                        contentItem: Text {
                            text: btn_login.text
                            font: btn_login.font
                            opacity: enabled ? 1.0 : 0.3
                            color: btn_login.down ? "#17a81a" : "#21be2b"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            elide: Text.ElideRight
                        }
                        background: Rectangle {
                            implicitWidth: 100
                            implicitHeight: 40
                            radius: 5
                            opacity: enabled ? 1 : 0.3
                            border.color: btn_login.down ? "#17a81a" : "#21be2b"
                            border.width: 1
                        }
                    }
                }
            }
        }
    }
}
