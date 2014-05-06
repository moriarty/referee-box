// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

ListView {
    id: deviceListView
    spacing: 3
    snapMode: ListView.SnapOneItem
    keyNavigationWraps: true
    cacheBuffer: 0
    boundsBehavior: Flickable.StopAtBounds
    flickableDirection: Flickable.AutoFlickDirection
    highlightRangeMode: ListView.ApplyRange
    smooth: false


    anchors.fill: parent
    delegate: Item {
        x: 10
        height: 30
        width: parent.width
        Row {
            spacing: 10
            Rectangle {
                width: 20
                height:20
                radius: width*0.5
                color: colorCode
            }

            Text {
                text: name
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 12
            }
        }

        MouseArea {
            id: deviceItemMouseArea
            anchors.fill: parent
            onClicked: console.log("clicked: "+index);
        }
    }

    model: deviceListModel
 }
