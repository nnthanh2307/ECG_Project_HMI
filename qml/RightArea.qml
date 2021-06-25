import QtQuick 2.15
import QtQuick.Controls 2.15


Item {
    id: root
    width: 720
    height: parent.height

    readonly property int buttonHeight: 225
    property int selected: -1


    Column {
        anchors.fill: parent
        Button {
            id: button
            height: 90
            width: 270

            contentItem: Item {
                Image {
                    source: root.selected === 0 ?
                                "qrc:///images/btn-Modes-on.png" :
                                "qrc:///images/btn-modes-normal.png"
                }
            }

            onClicked: {
                if ( selected === 0) {
                    selected = -1
                } else {
                    selected = 0
                }
            }
        }

        ModesWidget {
            id: modesWidget
            opacity: selected === 0 ? 1 : 0
            width: selected === 0 ? 430 : 0
            height: 400
            Behavior on height { NumberAnimation { duration: 200} }
            Behavior on opacity { NumberAnimation { duration: 200} }
        }

        Button {
            id: controlsButton
            width: 270
            height: 90

            contentItem: Item {
                Image {
                    source: root.selected === 1 ?
                                "qrc:///images/btn-controls-on.png" :
                                "qrc:///images/btn-controls-normal.png"
                }
            }
            onClicked: {
                if (selected === 1) {
                    selected = -1
                } else {
                    selected = 1
                }
            }
        }

        Item {
            id: controlsWidget
            opacity: selected === 1 ? 1 : 0
            height: selected === 1 ? 200 : 0
            width: 270
            Behavior on height { NumberAnimation { duration: 200 } }
            Behavior on height { NumberAnimation { duration: 200 } }
        }

        Button {
            id: alarmsButton
            width: 270
            height: 90
            contentItem: Item {
                Image {
                    source: alarmsButton.pressed ?
                                "qrc:///images/btn-Modes-on.png" :
                                "qrc:///images/btn-modes-normal.png"
                }
            }
            onClicked: {
                selected = 2
            }
        }
    }
}


