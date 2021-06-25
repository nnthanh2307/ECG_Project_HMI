import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    width: 600
    height: 600

    property real xScale: 1
    property real yScale: 1
    property real sign: 1

    property real threshold: 0.07
    property real lungsOpacity: 1
    property real opacityStep: 0.1

    Timer {
        id: lungsScaler
        running: true
        repeat: true
        interval: 33

        onTriggered: {
            root.xScale += sign * 0.001
            root.yScale += sign * 0.001

            if (root.xScale > 1 + threshold) {
                sign = -1
                // opacity decreases
            }

            if (root.xScale < 1 - threshold) {
                sign = 1
                // opacity increases
            }

            lungsOpacity = 4.28571 * root.xScale - 3.58571
        }
    }

    Column {
        id: col
        anchors.fill: parent
        anchors.topMargin: 40
        spacing: 38

        Item {
            height: 212
            width: 602
            Image {
                id: staticGraph
                anchors.fill: parent
                source: "qrc:///images/static-graph.png"
            }
        }

        Item {
            height: 382
            width: 602

            Image {
                id: dots
                width: 32
                height: 8
                source: "qrc:///images/change-view.png"
                //                anchors.top: staticGraph.bottom
                //                anchors.right: col.right
            }

            Item {
                width: 345
                height: 300
                anchors.top: dots.bottom
                anchors.left: extraData.right
                anchors.leftMargin: 70
                x: 100
                Image {
                    id: center
                    source: "qrc:///images/center.png"
                    anchors.centerIn: parent
                }
                Image {
                    id: left
                    source: "qrc:///images/left.png"
                    y: 85
                    anchors {
                        rightMargin: -80
                        right: center.left
                    }

                    opacity: root.lungsOpacity
                    transform: Scale {
                        yScale: root.yScale
                        xScale: root.xScale
                        origin.x: left.implicitWidth / 2
                        origin.y: left.implicitHeight / 2
                    }
                }

                Image {
                    id: right
                    x: -100
                    y: 85
                    source: "qrc:///images/right.png"
                    anchors {
                        left: center.right
                        leftMargin: -80
                    }
                    //                    anchors.verticalCenter: parent
                    opacity: root.lungsOpacity
                    transform: Scale {
                        yScale: root.yScale
                        xScale: root.xScale
                        origin.x: right.implicitWidth / 2
                        origin.y: right.implicitHeight / 2
                    }
                }
            }

            Image {
                id: extraData
                source: "qrc:///images/extra-data.png"
                anchors.left: parent.left
                anchors.bottom: parent.bottom
            }
        }
    }
}
