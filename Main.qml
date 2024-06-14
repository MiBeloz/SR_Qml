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
                text: qsTr("Increase Font")
                shortcut: StandardKey.ZoomIn
                //onTriggered: editor.text.font.pixelSize += 1
            }
            Action {
                text: qsTr("Decrease Font")
                shortcut: StandardKey.ZoomOut
                //onTriggered: editor.text.font.pixelSize -= 1
            }
            Action {
                //text: root.showLineNumbers ? qsTr("Toggle Line Numbers OFF")
                //                           : qsTr("Toggle Line Numbers ON")
                shortcut: "Ctrl+L"
                //onTriggered: root.showLineNumbers = !root.showLineNumbers
            }
            Action {
                //text: root.expandPath ? qsTr("Toggle Short Path")
                //                      : qsTr("Toggle Expand Path")
                //enabled: root.currentFilePath
                //onTriggered: root.expandPath = !root.expandPath
            }
            Action {
                text: qsTr("Reset Filesystem")
                //enabled: sidebar.currentTabIndex === 1
                //onTriggered: fileSystemView.rootIndex = undefined
            }
            Action {
                text: qsTr("Exit")
                onTriggered: Qt.exit(0)
                shortcut: StandardKey.Quit
            }
        }

        SR_Menu {
            title: qsTr("Edit")

            Action {
                text: qsTr("Cut")
                shortcut: StandardKey.Cut
                //enabled: editor.text.selectedText.length > 0
                //onTriggered: editor.text.cut()
            }
            Action {
                text: qsTr("Copy")
                shortcut: StandardKey.Copy
                //enabled: editor.text.selectedText.length > 0
                //onTriggered: editor.text.copy()
            }
            Action {
                text: qsTr("Paste")
                shortcut: StandardKey.Paste
                //enabled: editor.text.canPaste
                //onTriggered: editor.text.paste()
            }
            Action {
                text: qsTr("Select All")
                shortcut: StandardKey.SelectAll
                //enabled: editor.text.length > 0
                //onTriggered: editor.text.selectAll()
            }
            Action {
                text: qsTr("Undo")
                shortcut: StandardKey.Undo
                //enabled: editor.text.canUndo
                //onTriggered: editor.text.undo()
            }
        }
    }
}
