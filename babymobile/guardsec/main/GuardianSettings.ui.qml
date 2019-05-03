import QtQuick 2.12
import QtQuick.Controls 2.5

import "../../components"

Item {

    property alias enLang: enLang

    property alias myLang: myLang

    property alias cnLang: cnLang

    property alias frLang: frLang
    property alias spLang: spLang

    Flickable {
        id: flickable
        //clip: true
        anchors.fill: parent
        contentHeight: 1500
        Rectangle {
            id: settingsBase
            height: childrenRect.height + 20
            color: "#ffffff"
            radius: 20
            border.width: 2
            anchors.right: parent.right
            anchors.rightMargin: 15
            anchors.left: parent.left
            anchors.leftMargin: 15
            anchors.top: parent.top
            anchors.topMargin: 30

            Label {
                id: sec1
                height: 20
                text: "Update user password"
                opacity: 0.9
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.top: parent.top
                anchors.topMargin: 10
                font.underline: true
                font.bold: true
                font.pixelSize: 13
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            TextField {
                id: currentPassword
                anchors.right: parent.right
                anchors.rightMargin: 15
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                placeholderText: "Current Password"
                anchors.left: parent.left
                anchors.leftMargin: 15
                anchors.top: sec1.bottom
                anchors.topMargin: 20
            }

            TextField {
                id: newPassword
                x: 2
                y: 7
                anchors.rightMargin: 15
                placeholderText: "New Password"
                font.pixelSize: 12
                anchors.left: parent.left
                anchors.topMargin: 10
                anchors.top: currentPassword.bottom
                anchors.right: parent.right
                anchors.leftMargin: 15
                horizontalAlignment: Text.AlignHCenter
            }

            TextField {
                id: confirmPassword
                x: 9
                y: -6
                anchors.rightMargin: 15
                placeholderText: "Confirm Password"
                font.pixelSize: 12
                anchors.left: parent.left
                anchors.topMargin: 10
                anchors.top: newPassword.bottom
                anchors.right: parent.right
                anchors.leftMargin: 15
                horizontalAlignment: Text.AlignHCenter
            }

            CustomButton {
                id: updateNewPass
                width: 100
                height: 30
                btnText: "Update"
                btnFontSize: 12
                btnColor: "white"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: confirmPassword.bottom
                anchors.topMargin: 10
            }

            Rectangle {
                id: divider1
                height: 2
                color: "#000000"
                anchors.right: parent.right
                anchors.rightMargin: 30
                anchors.left: parent.left
                anchors.leftMargin: 30
                anchors.top: updateNewPass.bottom
                anchors.topMargin: 10
            }

            Label {
                id: sec3
                height: 20
                text: "Card Settings"
                font.underline: true
                font.bold: true
                font.pixelSize: 14
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.top: divider1.bottom
                anchors.topMargin: 15
            }

            ListView {
                id: cardlistView
                height: 160
                anchors.right: parent.right
                anchors.rightMargin: 10
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.top: sec3.bottom
                anchors.topMargin: 10
                model: ListModel {
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }

                    ListElement {
                        name: "Red"
                        colorCode: "red"
                    }

                    ListElement {
                        name: "Blue"
                        colorCode: "blue"
                    }

                    ListElement {
                        name: "Green"
                        colorCode: "green"
                    }
                }
                delegate: Item {
                    x: 5
                    width: 80
                    height: 40
                    Row {
                        id: row1
                        Rectangle {
                            width: 40
                            height: 40
                            color: colorCode
                        }

                        Text {
                            text: name
                            font.bold: true
                            anchors.verticalCenter: parent.verticalCenter
                        }
                        spacing: 10
                    }
                }
            }

            CustomButton {
                id: addCard
                width: 70
                height: 30
                btnText: "Add"
                btnFontSize: 12
                btnColor: "white"
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.top: cardlistView.bottom
                anchors.topMargin: 15
            }
            CustomButton {
                id: delCard
                width: 70
                height: 30
                anchors.right: parent.right
                anchors.rightMargin: 20
                anchors.top: cardlistView.bottom
                anchors.topMargin: 20
                btnText: "Delete"
                btnFontSize: 12
                btnColor: "white"
            }

            Rectangle {
                id: divider3
                height: 2
                color: "#000000"
                anchors.right: parent.right
                anchors.rightMargin: 30
                anchors.left: parent.left
                anchors.leftMargin: 30
                anchors.top: addCard.bottom
                anchors.topMargin: 20
            }
            Label {
                id: sec4
                height: 20
                text: "Account Settings"
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.top: divider3.bottom
                anchors.topMargin: 20
                font.underline: true
                font.bold: true
                font.pixelSize: 15
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            CustomButton {
                id: deleteAccount
                width: 120
                height: 30
                btnText: "Delete Account"
                btnFontSize: 12
                btnColor: "white"
                anchors.top: sec4.bottom
                anchors.topMargin: 15
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Rectangle {
                id: rectangle
                height: 2
                color: "#000000"
                anchors.right: parent.right
                anchors.rightMargin: 15
                anchors.left: parent.left
                anchors.leftMargin: 15
                anchors.top: deleteAccount.bottom
                anchors.topMargin: 20
            }

            Label {
                id: sec5
                height: 20
                color: "#2a2626"
                text: qsTr("Customer Support")
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.top: rectangle.bottom
                anchors.topMargin: 15
                font.underline: true
                font.bold: true
                font.pixelSize: 14
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }

            CustomButton {
                id: contactButton
                width: 120
                height: 30
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: sec5.bottom
                anchors.topMargin: 10
                btnText: "Contact Us"
                btnFontSize: 12
                btnColor: "white"
            }

            Rectangle {
                id: divider5
                height: 2
                color: "#000000"
                border.width: 2
                anchors.right: parent.right
                anchors.rightMargin: 10
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.top: contactButton.bottom
                anchors.topMargin: 10
            }

            Label {
                id: sec6
                height: 20
                text: qsTr("Application Language")
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.top: divider5.bottom
                anchors.topMargin: 15
                font.underline: true
                font.bold: true
                font.pixelSize: 14
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }

            Grid {
                id: grid
                height: childrenRect.height + 20
                spacing: 15
                rows: 4
                columns: 4
                anchors.right: parent.right
                anchors.rightMargin: 15
                anchors.left: parent.left
                anchors.leftMargin: 15
                anchors.top: sec6.bottom
                anchors.topMargin: 10
                horizontalItemAlignment: Grid.AlignHCenter
                Image {
                    id: engLanguage
                    width: 50
                    height: 30
                    source: "../../assets/enFlag.png"
                    fillMode: Image.PreserveAspectFit
                    MouseArea {
                        id: enLang
                        anchors.fill: parent
                    }
                }

                Image {
                    id: malayLanguage
                    width: 50
                    height: 30
                    source: "../../assets/myFlag.png"
                    fillMode: Image.PreserveAspectFit
                    MouseArea {
                        id: myLang
                        anchors.fill: parent
                    }
                }

                Image {
                    id: chineseLanguage
                    width: 50
                    height: 30
                    source: "../../assets/cnFlag.png"
                    fillMode: Image.PreserveAspectFit
                    MouseArea {
                        id: cnLang
                        anchors.fill: parent
                    }
                }

                Image {
                    id: frenchLanguage
                    width: 50
                    height: 30
                    source: "../../assets/frFlag.png"
                    fillMode: Image.PreserveAspectFit
                    MouseArea {
                        id: frLang
                        anchors.fill: parent
                    }
                }

                Image {
                    id: spanishLanguage
                    width: 50
                    height: 30
                    source: "../../assets/spFlag.png"
                    fillMode: Image.PreserveAspectFit
                    MouseArea {
                        id: spLang
                        anchors.fill: parent
                    }
                }
            }
        }
    }
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:23;anchors_width:200}D{i:25;anchors_width:200}
D{i:26;anchors_width:200}D{i:28;anchors_width:200}D{i:30;anchors_width:400}D{i:1;anchors_height:300;anchors_width:300;anchors_x:95;anchors_y:40}
}
 ##^##*/
