import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root

    property int vt: 340
    property int peep: 10
    property int oxy: 21

    Column {
        anchors.fill: parent
        height: parent.height
        spacing: 22

        Image {
            id: currentMode
            width: 232
            height: 86
            source: "qrc:///images/current-mode.png"
        }

        Rectangle {
            id: menu1
            width: 270
            height: 70
            Row {
                anchors.fill: parent
                anchors.leftMargin: 5

                Button {
                    id: btnVTPlus
                    height: 60
                    width: 60
                    contentItem: Image {
                        source: btnVTPlus.pressed ?
                            "qrc:///images/btn-add-down.png" :
                            "qrc:///images/btn-add-normal.png"

                    }
                    onClicked: root.vt++;
                }

                Rectangle {
                    id: vt
                    width: 270 - 120
                    height: 70

                    Text {
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        text: root.vt.toString()
                        color: "#5BCEBD"
                        font.pixelSize: 50
                    }
                    Image {
                        source: "qrc:///images/Vt-title.png"
                    }
                }

                Button {
                    id: btnVTMinus
                    height: 60
                    width: 60
                    contentItem: Image {
                        source: btnVTMinus.pressed ?
                            "qrc:///images/btn-remove-down.png":
                            "qrc:///images/btn-remove-normal.png"

                    }
                    onClicked: root.vt--;
                }
            }
        }

        Rectangle {
            id: menu2
            width: 270
            height: 70
            Row {
                anchors.fill: parent
                anchors.leftMargin: 5

                Button {
                    id: peepPlus
                    width: 60
                    height: 60
                    contentItem: Image {
                        source: peepPlus.pressed ?
                            "qrc:///images/btn-add-down.png":
                            "qrc:///images/btn-add-normal.png"

                    }
                    onClicked: root.peep++;
                }

                Item {
                    id: peep
                    width: 270 - 120
                    height: 70

                    Text {
                        text: root.peep.toString()
                        anchors.fill: parent
                        color: "#5BCEBD"
                        font.pixelSize: 50
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        transform: [
                            Rotation {
                                origin.x: peep.width / 2
                                origin.y: peep.height / 2
                                angle: 0
                            }
                        ]
                    }
                    Image {
                        source: "qrc:///images/peepcpap-title.png"
                    }
                }

                Button {
                    id: peepMinus
                    width: 60
                    height: 60
                    contentItem: Image {
                        source: peepMinus.pressed ?
                            "qrc:///images/btn-remove-down.png":
                            "qrc:///images/btn-remove-normal.png"

                    }
                    onClicked: root.peep--;
                }
            }
        }

        Rectangle {
            width: 270
            height: 70
            Row {
                anchors.fill: parent
                anchors.leftMargin: 5

                Button {
                    id: btnOxyPlus
                    width: 60
                    height: 60
                    contentItem: Image {
                        source: btnOxyPlus.pressed ?
                            "qrc:///images/btn-add-down.png":
                            "qrc:///images/btn-add-normal.png"

                    }
                    onClicked: root.oxy++;
                }

                Item {
                    id: oxy
                    width: 270 - 120
                    height: 60

                    Text {
                        text: root.oxy.toString()
                        color: "#5BCEBD"
                        font.pixelSize: 50
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                    Image {
                        source: "qrc:///images/Oxygen-title.png"
                    }
                }

                Button {
                    id: btnOxyMinus
                    width: 60
                    height: 60
                    contentItem: Image {
                        source: btnOxyMinus.pressed ?
                           "qrc:///images/btn-remove-down.png":
                            "qrc:///images/btn-remove-normal.png"

                    }
                    onClicked: root.oxy--;
                }
            }
        }
    }
}

