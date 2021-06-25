import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: view
    width: 1920
    height: 800
//    Image {
//        id: image
//        source: "qrc:///images/main-bg.png"
//        anchors.centerIn: parent
//        transform: [
//            Rotation {
//                origin.x: image.width / 2
//                origin.y: image.height / 2
//                angle: 0
//            }
//        ]
//    }

    Image {
        id: powerState
        source: "qrc:///images/Power-state.png"
        anchors.top: view.top
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
    }

    LeftArea {
        id: leftArea
        anchors.left: view.left
        anchors.leftMargin: 20
        anchors.top: powerState.bottom
        anchors.topMargin: 20
    }

    BottomArea {
        anchors.left: parent.left
        anchors.bottom: parent.bottom
    }

    RightArea {
        id: right
        anchors.top: powerState.bottom
        anchors.left: centerArea.right
        anchors.leftMargin: 20
    }

    CenterArea {
        id: centerArea
        anchors.left: leftArea.right
//        anchors.leftMargin: 40
//        anchors.top: right.bottom
    }
}
