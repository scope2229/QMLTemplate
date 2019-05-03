import QtQuick 2.12
import QtQuick.Controls 2.5

import "../../components"

Item {
    property alias userBalanceText: userBalance.text
    property alias userTransCountText: userTransCount.text
    property alias bookinglistView: bookinglistView
    property alias userDueBalanceText: userDueBalance.text

    Flickable {
        id: flickable
        anchors.fill: parent

        Rectangle {
            id: balanceSection
            height: childrenRect.height + 20
            color: "#ffffff"
            radius: 20
            border.width: 2
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.topMargin: 33

            Label {
                id: headerLbl
                height: 20
                color: "#2b2626"
                text: qsTr("Account history")
                anchors.top: parent.top
                anchors.topMargin: 10
                anchors.left: parent.left
                anchors.leftMargin: 10
                font.underline: true
                font.bold: true
                font.pixelSize: 14
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }

            Grid {
                id: grid
                spacing: 10
                rows: 2
                columns: 4
                anchors.right: parent.right
                anchors.rightMargin: 5
                anchors.left: parent.left
                anchors.leftMargin: 5
                anchors.top: headerLbl.bottom
                anchors.topMargin: 10

                Label {
                    id: balanceLbl
                    color: "#2b2626"
                    text: qsTr("Balance: ")
                    font.pixelSize: 12
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }

                Label {
                    id: userBalance
                    color: "#292a26"
                    text: qsTr("$ 00.00")
                    font.pixelSize: 12
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
                Label {
                    id: dueLbl
                    color: "#2b2626"
                    text: qsTr("Balance Due: ")
                    font.pixelSize: 12
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }

                Label {
                    id: userDueBalance
                    color: "#ff0000"
                    text: qsTr("$ 00.00")
                    styleColor: "#ff0000"
                    font.pixelSize: 12
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }

                Label {
                    id: label
                    text: qsTr("Transactions: ")
                    font.pixelSize: 12
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }

                Label {
                    id: userTransCount
                    text: qsTr("0")
                }
            }
        }

        // End of Balance Section
        Rectangle {
            id: historyDetailsSection
            height: 170
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: balanceSection.bottom
            anchors.topMargin: 30
            border.color: "black"
            border.width: 2
            radius: 20

            ListView {
                id: bookinglistView
                clip: true
                highlightRangeMode: ListView.NoHighlightRange
                snapMode: ListView.SnapToItem
                orientation: ListView.Vertical
                spacing: 0
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                anchors.bottomMargin: 10
                anchors.topMargin: 20
                anchors.fill: parent
                model: BookingHistoryModel {
                }
                delegate: Item {
                    anchors.topMargin: 10
                    width: 80
                    height: 80
                    Row {
                        id: row1

                        CheckBox {
                            id: userhistoryChkBx
                            anchors.verticalCenter: parent.verticalCenter
                            indicator: Rectangle {
                                implicitWidth: 26
                                implicitHeight: 26
                                x: userhistoryChkBx.leftPadding
                                y: parent.height / 2 - height / 2
                                radius: 3
                                border.color: userhistoryChkBx.down ? "#17a81a" : "#21be2b"

                                Rectangle {
                                    width: 14
                                    height: 14
                                    x: 6
                                    y: 6
                                    radius: 2
                                    color: userhistoryChkBx.down ? "#17a81a" : "#21be2b"
                                    visible: userhistoryChkBx.checked
                                }
                            }
                        }

                        Rectangle {
                            id: pImg
                            width: 30
                            height: 30
                            anchors.verticalCenter: parent.verticalCenter
                            Image {
                                id: profileImge
                                source: sitterImage
                                anchors.fill: parent
                                fillMode: Image.PreserveAspectCrop
                            }
                        }
                        Grid {
                            id: userDetailsHis

                            spacing: 5
                            rows: 2
                            columns: 2

                            Text {
                                text: "User: " + sittername
                                font.pixelSize: 12
                            }
                            Text {
                                text: "Cost: " + total
                                font.pixelSize: 12
                            }
                            Text {
                                text: "Duration: " + duration
                                font.pixelSize: 12
                            }
                            Text {
                                text: "Paid: " + paid
                                font.pixelSize: 12
                            }
                        }

                        spacing: 10
                    }
                }
            }
        }

        Rectangle {
            id: rectangle
            height: 100
            color: "#00000000"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: historyDetailsSection.bottom
            anchors.topMargin: 30

            CustomButton {
                id: paySelected
                width: 100
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                btnText: "Pay out standing"
                btnFontSize: 12
                btnColor: "white"
            }

            CustomButton {
                id: exportHistory
                width: 100
                height: 40
                anchors.right: parent.right
                anchors.rightMargin: 10
                anchors.verticalCenter: parent.verticalCenter
                btnColor: "white"
                btnFontSize: 12
                btnText: "Export history"
            }
        }
    }
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
