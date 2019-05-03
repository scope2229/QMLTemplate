import QtQuick 2.12
import QtQuick.Controls 2.5

Item {
    id: root
    height: 70
//    width: root.childrenRect.width + 20

    // access to the CheckBox.
    property alias iceCheckBox: iceCheckBox

    //set the image
    property string iceProfileImage

    // set the full name
    property string iceFullname

    // set the mobile
    property string iceMobile

    // set the passphrase
    property string icePhrase

    CheckBox {
        id: iceCheckBox
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        checked: false
        width: 20
        height: width

        indicator: Rectangle {
            id: rectangle
            implicitWidth: 17
            implicitHeight: 17
            radius: 3
            border.color: iceCheckBox.down ? "#17a81a" : "#21be2b"

            Rectangle {
                width: 9
                height: 9

                radius: 2
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                color: iceCheckBox.down ? "#17a81a" : "#21be2b"
                visible: iceCheckBox.checked
            }
        }
    }

    Image {
        id: imageICE
        width: 65
        height: width
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: iceCheckBox.right
        anchors.leftMargin: 5
        source: root.iceProfileImage
        fillMode: Image.PreserveAspectCrop
    }

    Grid {
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
        anchors.top: parent.top
        anchors.topMargin: 5
        rows: 3
        anchors{
            left: imageICE.right
            leftMargin: 2
            right: parent.right
        }
        columns: 2
        spacing: 2
        Label {
            id: label
            text: qsTr("Full name: ")
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
        }
        Label {
            id: iceName
            text: "Bob Smith"
            font.pixelSize: 12
        }
        Label {
            id: label2
            text: qsTr("Pass phrase: ")
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
        }
        Label {
            id: icePhrase
            color: "#26292b"
            text: "test phrase"
            font.pixelSize: 12
        }
        Label {
            id: label3
            text: qsTr("Mobile: ")
            font.pixelSize: 12
            horizontalAlignment: Text.AlignRight
        }



        Label {
            id: iceMobile
            width: 120
            height: 17
            text: "04488376453"
            font.pixelSize: 12
        }

    }

}























































