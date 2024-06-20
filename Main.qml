import QtQuick
import QtQuick.Controls.Basic
import SR_Qml

ApplicationWindow {
    id: root

    width: 900
    height: 600
    minimumWidth: 600
    minimumHeight: 400
    color: SR_Colors.background
    visible: true
    title: qsTr("Scorpion Resume")
    flags: Qt.Window | Qt.FramelessWindowHint

    menuBar: SR_MenuBar {
        dragWindow: root
        //infoText: root.getInfoText()
        SR_Menu {
            title: qsTr("File")

            Action {
                text: qsTr("Open File")
                shortcut: "Ctrl+O"
                onTriggered: text === qsTr("Open File") ? text = qsTr("Opened")
                                                        : text = qsTr("Open File")
            }
            Action {
                text: qsTr("Close File")
                shortcut: "Ctrl+W"
                onTriggered: text === qsTr("Close File") ? text = qsTr("Closed")
                                                         : text = qsTr("Close File")
            }
            // Action {
            //     text: qsTr("Increase Font")
            //     shortcut: StandardKey.ZoomIn
            //     //onTriggered: editor.text.font.pixelSize += 1
            // }
            // Action {
            //     text: qsTr("Decrease Font")
            //     shortcut: StandardKey.ZoomOut
            //     //onTriggered: editor.text.font.pixelSize -= 1
            // }
            // Action {
            //     //text: root.expandPath ? qsTr("Toggle Short Path")
            //     //                      : qsTr("Toggle Expand Path")
            //     //enabled: root.currentFilePath
            //     //onTriggered: root.expandPath = !root.expandPath
            // }
            // Action {
            //     text: qsTr("Reset Filesystem")
            //     //enabled: sidebar.currentTabIndex === 1
            //     //onTriggered: fileSystemView.rootIndex = undefined
            // }
            Action {
                text: qsTr("Exit")
                shortcut: StandardKey.Quit
                onTriggered: Qt.exit(0)
            }
        }

        SR_Menu {
            title: qsTr("Help")

            Action {
                text: qsTr("About")
                onTriggered: {
                    aboutQtWindow.visible = !aboutQtWindow.visible

                }
            }
        }
    }

    SR_About {
        id: aboutQtWindow
        visible: false
    }



    ListView {
        id: editor
        width: 180
        height: 200

        anchors.left: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 20

        model: SR_ContactModel {}
        delegate: Text {
            color: "white"
            text: name + ": " + number
        }
    }
}
