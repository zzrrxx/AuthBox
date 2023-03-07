import QtQuick 2.15
import QtQuick.Controls 2.0

Item {
    id: root
    
    Grid {
        id: form
        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
        }

        leftPadding: 20
        rightPadding: 20
        height: 150
        
        columns: 2
        spacing: 10
       
        Text {
            text: "Domain: "
        }
        TextField {
           
        }
       
       Text {
           text: "User: "
       }
       TextField {
           
       }
       
       Text {
           text: "Password: "
       }
       TextField {
           
       }
       
       Button {
           text: "Authenticate"
       }
       
       Rectangle {}
       
    }
    
    ScrollView {
        id: logsScrollView
        anchors {
            top: form.bottom
            right: parent.right
            left: parent.left
            bottom: parent.bottom
        }
   
        TextArea {
            id: logs
            anchors.fill: parent
            placeholderText: "Log"
            readOnly: true
        }
    }
    
}
