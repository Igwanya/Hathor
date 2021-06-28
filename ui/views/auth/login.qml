import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.12

Item {
    id: it_login
    width: parent.width
    height: parent.height

    Loader {
        // position the Loader in the center
        // of the parent
        anchors.centerIn: parent
        sourceComponent: cp_login
    }

    Component {
        id: cp_login
        Rectangle {
            id: rect_background
            width: it_login.width - 80
            height: it_login.height - 25
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
                sourceComponent: cp_login_foreground
            }

            Component {
                id: cp_login_foreground

                ColumnLayout {
                    spacing: 8

                    Text {
                        id: txt_login_title
                        text: qsTr("Welcome Back")
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        font.bold: true
                        font.pointSize: 24
                        color: "#fffde7"
                    }
                    Text {
                        id: txt_login_title_summary
                        text: qsTr("Log in to manage your account.")
                        Layout.alignment: Qt.AlignLeft
                        font.bold: true
                        font.pointSize: 8
                        color: "#fffde7"
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
                        echoMode: TextField.PasswordEchoOnEdit
                        background: Rectangle {
                            implicitWidth: 200
                            implicitHeight: 40
                            radius: 5
                            color: txt_password.enabled ? "#fffde7" : "#353637"
                            border.color: txt_password.enabled ? "#21be2b" : "transparent"
                        }
                    }
                    Text {
                        Layout.alignment: Qt.AlignRight
                        id: txt_forgot_password
                        text: qsTr("forgot your password?")
                        font.bold: true
                        font.pointSize: 8
                        font.underline: true
                        color: "#fffde7"
                    }
                    Button {
                        id: btn_login
                        text: qsTr("LOGIN")
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
                            implicitHeight: 5
                            radius: 5
                            opacity: enabled ? 1 : 0.3
                            border.color: btn_login.down ? "#17a81a" : "#21be2b"
                            border.width: 1
                        }
                    }

                    RowLayout {
                        Rectangle {
                            implicitWidth: 100
                            implicitHeight: 2
                            border.color: "white"
                            border.width: 1
                        }
                        Text {
                            id: txt_continue
                            text: qsTr("or continue with")
                            color: "#fffde7"
                            font.pointSize: 8
                            font.bold: true
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            elide: Text.ElideRight
                        }
                        Rectangle {
                            implicitWidth: 100
                            implicitHeight: 2
                            border.color: "white"
                            border.width: 1
                        }
                    }

                    //                    social icons
                    RowLayout {
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        spacing: 6
                        Button {
                            icon.source: "qrc:/icons/facebook.svg"
                            Layout.alignment: Qt.AlignLeft
                            background: Rectangle {
                                implicitWidth: 40
                                implicitHeight: 40
                                radius: 50
                                opacity: enabled ? 1 : 0.3
                                border.color: btn_login.down ? "#17a81a" : "#21be2b"
                                border.width: 1
                            }
                        }
                        Button {
                            icon.source: "qrc:/icons/google.svg"
                            Layout.alignment: Qt.AlignVCenter
                            background: Rectangle {
                                implicitWidth: 40
                                implicitHeight: 40
                                radius: 50
                                opacity: enabled ? 1 : 0.3
                                border.color: btn_login.down ? "#17a81a" : "#21be2b"
                                border.width: 1
                            }
                        }
                        Button {
                            icon.source: "qrc:/icons/instagram.svg"
                            Layout.alignment: Qt.AlignRight
                            background: Rectangle {
                                implicitWidth: 40
                                implicitHeight: 40
                                radius: 50
                                opacity: enabled ? 1 : 0.3
                                border.color: btn_login.down ? "#17a81a" : "#21be2b"
                                border.width: 1
                            }
                        }
                    }

                    RowLayout {
                        Text {
                            id: txt_reg_details
                            text: qsTr("If you dont have an account")
                            color: "#fffde7"
                            font.pointSize: 8
                            font.bold: true
                        }
                        Button {
                            text: qsTr("Register here.")
                            font.underline: true
                            font.pointSize: 8
                            font.bold: true
                            background: Rectangle {
                                implicitWidth: 100
                                implicitHeight: 40
                                color: "#3f5efb"
                                opacity: 0.2
                                border.color: "transparent"
                            }
                        }
                    }
                }
            }
        }
    }
}
