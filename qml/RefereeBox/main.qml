// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import "Views"

Rectangle {
    id: main_window
    width: 800
    height: 600

    Rectangle {
        id: menuBarRect
        x: 0
        width: parent.width
        height: 30
        radius: 1
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#ffffff"
            }

            GradientStop {
                position: 0.610
                color: "#ffffff"
            }

            GradientStop {
                position: 1
                color: "#000000"
            }
        }
        clip: false
        smooth: true
        border.width: 3
        border.color: "#000000"
        transformOrigin: Item.Center
        anchors.top: parent.top
        anchors.topMargin: 0

        Text {
            id: text1
            x: 11
            y: 7
            text: qsTr("Menu Bar")
            font.pixelSize: 12
        }
    }

    Rectangle {
        id: mainPanelRect
        x: 0
        y: 30
        width: parent.width
        height: (parent.height-30)
        color: "#ffffff"

        Rectangle {
            id: leftPanelRect
            x: 0
            y: 0
            width: 180
            color: "#ffffff"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            border.width: 2
            border.color: "#000000"

            TeamListView{
                anchors.fill: parent
            }



        }

        Rectangle {
            id: rightPanelRect
            x: 620
            width: 180
            color: "#ffffff"
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            border.color: "#000000"
            Rectangle {
                id: devicePanelRect
                width: parent.width
                height: parent.height*0.5
                color: "#ffffff"
                anchors.top: parent.top
                border.color: "#000000"
                border.width: 2

                DeviceListView{}
            }

            Rectangle {
                id: timePanelRect
                x: 0
                y: 279
                width: parent.width
                height: 130
                color: "#ffffff"
                anchors.top: devicePanelRect.bottom
                anchors.topMargin: -6
                border.color: "#000000"
                Text {
                    id: text2
                    x: 62
                    y: 52
                    text: qsTr("10:00")
                    font.pixelSize: 22
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                border.width: 2
            }

            Rectangle {
                id: contorlPanelRect
                x: 0
                width: parent.width
                color: "#ffffff"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.top: timePanelRect.bottom
                anchors.topMargin: 0
                border.color: "#000000"
                border.width: 2

                Rectangle {
                    id: rectangle1
                    x: 10
                    y: 14
                    width: 160
                    height: 24
                    color: "#ffffff"
                    border.width: 2
                    border.color: "#000000"

                    Text {
                        id: text3
                        x: 30
                        y: 4
                        text: qsTr("Send TaskSpec")
                        font.bold: true
                        font.pixelSize: 14
                    }
                }

                Rectangle {
                    id: rectangle2
                    x: 10
                    y: 50
                    width: 160
                    height: 24
                    color: "#ffffff"
                    border.color: "#000000"
                    Text {
                        id: text4
                        x: 60
                        y: 4
                        text: qsTr("Pause")
                        font.pixelSize: 14
                        font.bold: true
                    }
                    border.width: 2
                }

                Rectangle {
                    id: rectangle3
                    x: 10
                    y: 88
                    width: 160
                    height: 24
                    color: "#ffffff"
                    border.color: "#000000"
                    Text {
                        id: text5
                        x: 60
                        y: 4
                        text: qsTr("")
                        font.pixelSize: 14
                        font.bold: true
                    }
                    border.width: 2
                }
            }

            border.width: 2
        }

        Rectangle {
            id: centerPanelRect
            x: 180
            y: 0
            height: parent.height
            color: "#ffffff"
            anchors.right: rightPanelRect.left
            anchors.rightMargin: 0
            anchors.left: leftPanelRect.right
            anchors.leftMargin: 0

            Rectangle {
                id: centerBottomPanelRect
                x: 0
                y: 285
                width: 440
                height: parent.height*0.45
                color: "#ffffff"
                border.color: "#000000"
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0

                Text {
                    id: text6
                    x: 171
                    y: 115
                    text: qsTr("Task Spec")
                    font.pixelSize: 22
                }
            }

            Rectangle {
                id: centerTopPanelRect
                x: 0
                y: 1
                width: 440
                height: parent.height*0.55
                color: "#ffffff"
                border.color: "#000000"
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.rightMargin: 0
                anchors.right: parent.right
                anchors.leftMargin: 0
                anchors.left: parent.left

                Rectangle {
                    id: mapPanelRect
                    x: 0
                    y: 0
                    color: "#ffffff"
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    border.color: "#000000"
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0

                    Image {
                        id: mapPlaceholder
                        width: 439
                        height: 314
                        fillMode: Image.PreserveAspectFit
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 0
                        anchors.top: parent.top
                        anchors.topMargin: 0
                        source: "Map.png"
                    }
                }
            }
        }
    }



}
