import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.5

import "../../components"

Item {
    id: root
    Layout.fillWidth: true
    Layout.fillHeight: true

    Flickable {
        id: flickable
        flickableDirection: Flickable.VerticalFlick
        anchors.fill: parent
        anchors.bottomMargin: 90
        ColumnLayout {
            id: columnList
            spacing: 25
            width: flickable.width
            Rectangle {
                height: 40
                color: "transparent"
            }



            Rectangle {
                id: profileSection
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: parent.width - 40
                height: profileSection.childrenRect.height + 30
                radius: 50
                color: Qt.rgba(255, 255, 255, 0.61)
                border.color: "black"
                border.width: 4

                Image {
                    id: profileImage
                    width: height
                    height: 100
                    anchors.top: profileSection.top
                    anchors.topMargin: 10
                    anchors.left: profileSection.left
                    anchors.leftMargin: 10
                    source: "../../assets/profImg.png"
                }

                Label {
                    id: label
                    width: 65
                    height: 15
                    text: qsTr("Username: ")
                    wrapMode: Text.NoWrap
                    font.pixelSize: 12
                    verticalAlignment: Text.AlignVCenter
                    anchors.left: profileImage.right
                    anchors.leftMargin: 0
                    anchors.top: profileImage.top
                    anchors.topMargin: 10
                }

                Label {
                    id: usersZip
                    text: qsTr("13450")
                    font.pixelSize: 12
                    anchors.right: parent.right
                    anchors.rightMargin: 50
                    anchors.verticalCenter: zipLabel.verticalCenter
                    anchors.left: usersHouseno.left
                    anchors.leftMargin: 0
                }

                Label {
                    id: zipLabel
                    width: 60
                    height: 15
                    text: qsTr("Postcode:")
                    anchors.top: stateLabel.bottom
                    anchors.topMargin: 7
                    font.pixelSize: 12
                    anchors.left: stateLabel.left
                    anchors.leftMargin: 0
                }

                Label {
                    id: usersState
                    width: 100
                    height: 15
                    text: qsTr("Washington DC")
                    font.pixelSize: 12
                    anchors.verticalCenter: stateLabel.verticalCenter
                    anchors.left: usersHouseno.left
                    anchors.leftMargin: 0
                }

                Label {
                    id: usernameLabel
                    text: qsTr("USER NAME HERE")
                    font.pixelSize: 12
                    anchors.right: parent.right
                    anchors.rightMargin: 50
                    anchors.left: label.right
                    anchors.leftMargin: 5
                    anchors.verticalCenter: label.verticalCenter
                }

                Label {
                    id: label1
                    width: 60
                    height: 15
                    text: qsTr("Balance: ")
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignRight
                    anchors.top: label.bottom
                    anchors.topMargin: 7
                    anchors.left: label.left
                    anchors.leftMargin: 0
                }

                Label {
                    id: label2
                    text: qsTr("$ 00.00")
                    font.pixelSize: 12
                    anchors.right: parent.right
                    anchors.rightMargin: 50
                    anchors.left: label1.right
                    anchors.leftMargin: 5
                    anchors.verticalCenter: label1.verticalCenter
                }

                Label {
                    id: addrSecLbl
                    width: 75
                    height: 20
                    text: qsTr("Address:")
                    font.underline: true
                    font.bold: true
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    anchors.top: profileImage.bottom
                    anchors.topMargin: 10
                }

                Label {
                    id: housenoLabel
                    width: 70
                    height: 15
                    text: qsTr("House no:")
                    font.pixelSize: 12
                    anchors.left: addrSecLbl.left
                    anchors.leftMargin: 10
                    anchors.top: addrSecLbl.bottom
                    anchors.topMargin: 10
                }

                Label {
                    id: usersHouseno
                    width: 55
                    height: 15
                    text: qsTr("1A-30-3A")
                    font.pixelSize: 12
                    anchors.verticalCenter: housenoLabel.verticalCenter
                    anchors.left: housenoLabel.right
                    anchors.leftMargin: 9
                }

                Label {
                    id: streetLabel
                    width: 40
                    height: 15
                    text: qsTr("Street:")
                    font.pixelSize: 12
                    anchors.top: aptnameLabel.bottom
                    anchors.topMargin: 7
                    anchors.left: housenoLabel.left
                    anchors.leftMargin: 0
                }

                Label {
                    id: usersStreet
                    text: qsTr("Persiaran manilia 4")
                    font.pixelSize: 12
                    anchors.right: parent.right
                    anchors.rightMargin: 50
                    anchors.verticalCenter: streetLabel.verticalCenter
                    anchors.left: usersHouseno.left
                    anchors.leftMargin: 0
                }

                Label {
                    id: stateLabel
                    width: 35
                    height: 15
                    color: "#2a2626"
                    text: qsTr("State:")
                    font.pixelSize: 12
                    anchors.top: cityLabel.bottom
                    anchors.topMargin: 7
                    anchors.left: cityLabel.left
                    anchors.leftMargin: 0
                }

                Label {
                    id: cityLabel
                    width: 30
                    height: 15
                    text: qsTr("City:")
                    font.pixelSize: 12
                    anchors.left: townLabel.left
                    anchors.leftMargin: 0
                    anchors.top: townLabel.bottom
                    anchors.topMargin: 7
                }

                Label {
                    id: usersCity
                    height: 15
                    text: qsTr("Kuala Lumpur")
                    font.pixelSize: 12
                    anchors.right: parent.right
                    anchors.rightMargin: 50
                    anchors.verticalCenter: cityLabel.verticalCenter
                    anchors.left: usersHouseno.left
                    anchors.leftMargin: 0
                }

                Label {
                    id: usersTown
                    height: 15
                    color: "#26282a"
                    text: qsTr("Alor Star")
                    font.pixelSize: 12
                    anchors.right: parent.right
                    anchors.rightMargin: 50
                    anchors.verticalCenter: townLabel.verticalCenter
                    anchors.left: usersHouseno.left
                    anchors.leftMargin: 0
                }

                Label {
                    id: townLabel
                    height: 15
                    text: qsTr("Town:")
                    font.pixelSize: 12
                    anchors.left: streetLabel.left
                    anchors.leftMargin: 0
                    anchors.top: streetLabel.bottom
                    anchors.topMargin: 7
                }

                Label {
                    id: usersAptName
                    text: qsTr("The Bark Residences")
                    font.pixelSize: 12
                    anchors.verticalCenter: aptnameLabel.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 50
                    anchors.left: usersHouseno.left
                    anchors.leftMargin: 0
                }

                Label {
                    id: aptnameLabel
                    height: 15
                    color: "#2b2626"
                    text: qsTr("House Name:")
                    anchors.top: housenoLabel.bottom
                    anchors.topMargin: 7
                    font.pixelSize: 12
                    anchors.left: housenoLabel.left
                    anchors.leftMargin: 0
                }
            }

            Rectangle {
                id: iceSection
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: parent.width - 40
                Layout.preferredHeight: childrenRect.height + 40
                radius: 50
                color: Qt.rgba(255, 255, 255, 0.61)
                border.color: "black"
                border.width: 4

                Label {
                    id: iceSectionLbl
                    width: 85
                    height: 20
                    color: "#2b2626"
                    text: qsTr("I.C.E Details")
                    font.underline: true
                    font.bold: true
                    font.pixelSize: 14
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    anchors.top: parent.top
                    anchors.topMargin: 30
                }
                CustomButton {
                    id: delIceBtn
                    width: root.width / 6
                    height: 50
                    btnColor: "white"
                    btnFontSize: 15
                    btnText: "Delete"
                    anchors.top: parent.top
                    anchors.topMargin: 30
                    anchors.right: parent.right
                    anchors.rightMargin: 30
                }
                CustomButton {
                    id: addIceBtn
                    width: root.width / 6
                    height: 50
                    btnColor: "white"
                    btnFontSize: 15
                    btnText: "Add"
                    anchors.top: parent.top
                    anchors.topMargin: 30
                    anchors.right: delIceBtn.left
                    anchors.rightMargin: 20
                }

                ListView {
                    id: icelist
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    anchors.top: addIceBtn.bottom
                    anchors.topMargin: 10
                    height: icelist.childrenRect.height
                    model: IceModel {
                    }
                    delegate: IceDelegate {
                        iceProfileImage: "../assets/profImg.png"
                        iceFullname: fullnameICE
                        iceMobile: mobileICE
                        icePhrase: phraseICE
                    }
                }
            }
        } // columnList

        contentHeight: columnList.height + 20
        contentWidth: flickable.width
        clip: true
    } // flickable
    clip: true
} // root












/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
