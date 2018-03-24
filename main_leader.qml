import QtQuick 2.0

Rectangle {

    property string _strFamily: "微软雅黑";

    width:1024;
    height:600;
    color:"black";

    Image {
        id: imglogo;
        source: "/images/logo@2x.png";
        x: 20;
        y: 20;
        width:sourceSize.width;
        height:sourceSize.height;
    }

    Image {
        id: imgClose;
        source: "/images/close.png";
        width:sourceSize.width;
        height:sourceSize.height;
        anchors {
            top: parent.top;
            right:parent.right;
            topMargin: 30;
            rightMargin: 30;
        }
        MouseArea {
            anchors.fill: parent;
            onClicked: {
                Qt.quit();
            }
        }
    }

    Item {
        id:itemCover;
        width: parent.width;
        height: parent.height;

        Row {
           x:80;
           y:100;
           spacing: 20;
           Repeater {
               model: 4;
               Rectangle {
                   width: 200;
                   height:300;

                   MouseArea {
                       anchors.fill: parent;
                       onClicked: {

                       }
                   }
               }
           }
        }

        Text {
            text: qsTr("请用USB数据线连接手机与汽车使用此功能")
            color:"white";
            opacity: 0.5;
            font {
                pixelSize: 25;
                family: _strFamily;
            }
            anchors {
                bottom: parent.bottom;
                bottomMargin: 100;
                horizontalCenter: parent.horizontalCenter;
            }
        }
    }
}
