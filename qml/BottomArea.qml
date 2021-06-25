import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    width: 950
    height: 100

    readonly property int buttonHeight: 225
    property int selected: 0

    Row {
        anchors.fill: parent
        spacing: 8
        anchors.leftMargin: 40

        Button {
            height: 100
            width: buttonHeight

            contentItem: Item {
                Image {
                    visible: selected === 3
                    source: "qrc:///images/btn-system-on.png"
                }
                Image {
                    visible: selected !== 3
                    source: "qrc:///images/btn-system-normal.png"
                }
            }

            onClicked: {
                selected = 3
            }
        }
        Button {
            height: 100
            width: buttonHeight

            contentItem: Item {
                Image {
                    visible: selected === 2
                    source: "qrc:///images/btn-system-on.png"
                }
                Image {
                    visible: selected !== 2
                    source: "qrc:///images/btn-system-normal.png"
                }
            }

            onClicked: {
                selected = 2
            }
        }
        Button {
            height: 100
            width: buttonHeight

            contentItem: Item {
                Image {
                    visible: selected === 1
                    source: "qrc:///images/btn-tools-on.png"
                }
                Image {
                    visible: selected !== 1
                    source: "qrc:///images/btn-tools-normal.png"
                }
            }

            onClicked: {
                selected = 1
            }
        }
        Button {
            height: 100
            width: buttonHeight

            contentItem: Item {
                Image {
                    visible: selected === 0
                    source: "qrc:///images/btn-Monitoring-on.png"
                }
                Image {
                    visible: selected !== 0
                    source: "qrc:///images/btn-Monitoring-normal.png"
                }
            }

            onClicked: {
                selected = 0
            }
        }
    }
}

