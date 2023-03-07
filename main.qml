import QtQuick 
import QtQuick.Controls 2.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    
    
    Rectangle {
        id: left
        anchors {
            left: parent.left
            top: parent.top
            bottom: parent.bottom
        }
        width: 100
        color: "lightsteelblue"
        
        ListView {
            id: authMenu
            anchors.fill: parent
            model: ["NTLM", "Kerberos", "Negotiate"]
            width: parent.width
            highlight: Rectangle { color: "darkcyan"; radius: 5 } 
            delegate: Rectangle {
                color: "transparent"
                height: 100
                width: height
                Text {
                    id: text
                    anchors.centerIn: parent
                    text: modelData
                    color: "white"
                }
                border.color: "white"
                border.width: 1
                radius: 2
                
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        authMenu.currentIndex = index
                        
                    }
                }
                
            }
        }
    }
    
    Rectangle {
        id: right
        anchors {
            left: left.right
            right: parent.right
            top: parent.top
            bottom: parent.bottom
        }
        
        
        Loader {
            anchors.fill: parent
            source: "qrc:///qml/WinNegotiate.qml"
        }
    }
    
}
