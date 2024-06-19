// Copyright (C) 2023 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

import QtQuick
import QtQuick.Controls.Basic
import SR_Qml

ApplicationWindow {
    id: root
    width: 350
    height: 350
    flags: Qt.Window | Qt.FramelessWindowHint
    color: SR_Colors.surface1

    menuBar: SR_MenuBar {
        id: menuBar

        dragWindow: root
        implicitHeight: 30
        infoText: "About Scorpion Resume"
        minimizeEnabled: false
        maximizeEnabled: false
    }

    Image {
        id: logo

        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: 20

        source: "../icons/logo.png"
        sourceSize.width: 80
        sourceSize.height: 80
        fillMode: Image.PreserveAspectFit

        smooth: true
        antialiasing: true
        asynchronous: true
    }

    ScrollView {
      anchors.top: logo.bottom
      anchors.left: parent.left
      anchors.right: parent.right
      anchors.bottom: parent.bottom
      anchors.margins: 20

      TextArea {
          selectedTextColor: SR_Colors.textFile
          selectionColor: SR_Colors.selection
          horizontalAlignment: Text.AlignHCenter
          textFormat: Text.RichText

          text: qsTr("<h3>About Scorpion Resume</h3>"
                   + "<p>Scorpion Resume<br/>"
                   + "Version: %1</p>"
                   + "<p>Designed to resume 'Scorpion' machine<br/>"
                   + "programs from a specific frame</p>"
                   + "<p>Belozerov Mikhail<br/>"
                   + "2024</p>")
                   .arg(Application.version)
          color: SR_Colors.textFile
          wrapMode: Text.WordWrap
          readOnly: true
          antialiasing: true
          background: null

          // onLinkActivated: function(link) {
          //     Qt.openUrlExternally(link)
          // }
      }
    }
}
