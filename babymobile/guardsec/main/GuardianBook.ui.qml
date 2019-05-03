import QtQuick 2.12

import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtLocation 5.12
import QtPositioning 5.12

import "../../components"

Item {
    id: element
    signal selectionHeightChanged

    property alias bookingFlick: bookingFlick

    // Used for the date and time tumblers
    property alias timedatepickerDayTumblerCurrentIndex: timedatepicker.dayTumblerCurrentIndex
    property alias timedatepickerHoursTumblerCurrentIndex: timedatepicker.hoursTumblerCurrentIndex
    property alias timedatepickerMinutesTumblerCurrentIndex: timedatepicker.minutesTumblerCurrentIndex
    property alias timedatepickerMonthTumblerCurrentIndex: timedatepicker.monthTumblerCurrentIndex
    property alias timedatepickerYearTumblerCurrentIndex: timedatepicker.yearTumblerCurrentIndex

    //Used for the booking selection section.
    property alias addressSelection: addressSelection

    property alias myAddrChkBx: myAddrChkBx
    property alias currentAddrChkBx: currentAddrChkBx
    property alias bookNowChkBx: bookNowChkBx
    property alias bookLaterChkBx: bookLaterChkBx
    property alias dateTimePart: dateTimePart

    // Used for the map section of the ui.
    property alias userLocationMap: userLocationMap
    height: 480

    Flickable {
        id: bookingFlick
        flickableDirection: Flickable.VerticalFlick
        anchors.fill: parent
        anchors.bottomMargin: 0

        Rectangle {
            id: selectionSection
            height: childrenRect.height + 20
            color: "#ffffff"
            radius: 20
            border.width: 2
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.topMargin: 20

            ColumnLayout {
                id: columnLayout
                spacing: 10
                anchors.top: parent.top
                anchors.topMargin: 10
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: 10
                Layout.preferredHeight: childrenRect.height
                Grid {
                    id: selectionChecks
                    Layout.rightMargin: 20
                    Layout.leftMargin: 0
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    rows: 2
                    columns: 2

                    CheckBox {
                        id: myAddrChkBx
                        text: qsTr("My address")
                    }

                    CheckBox {
                        id: currentAddrChkBx
                        text: qsTr("Current address")
                    }

                    CheckBox {
                        id: bookNowChkBx
                        text: qsTr("Book now")
                    }

                    CheckBox {
                        id: bookLaterChkBx
                        text: qsTr("Book later")
                    }
                } // Grid Selection checks
                ColumnLayout {
                    id: addressSelection
                    spacing: 0
                    visible: false
                    Layout.fillWidth: true
                    Layout.preferredHeight: childrenRect.height + 30
                    Row {
                        id: noaptbook
                        spacing: 20
                        Layout.rightMargin: 10
                        Layout.leftMargin: 10
                        Layout.topMargin: 0
                        Layout.fillWidth: true
                        CustomInput {
                            id: housenoBook
                            width: noaptbook.width / 3
                            height: 30
                            userInputRadius: 15
                            userInputPlaceholderText: "House no."
                            userInputGlowColor: "#0000ff"
                            userInputFontpixelSize: 12
                            userInputBaseColor: "white"
                        }
                        CustomInput {
                            id: aptnameBook
                            width: noaptbook.width - housenoBook.width - 20
                            height: 30
                            userInputRadius: 15
                            userInputPlaceholderText: "Condo name / Hotel"
                            userInputGlowColor: "#0000ff"
                            userInputFontpixelSize: 12
                            userInputBaseColor: "white"
                        }
                    }

                    Row {
                        id: streetsec
                        Layout.rightMargin: 10
                        Layout.leftMargin: 10
                        Layout.fillWidth: true
                        Layout.topMargin: 0
                        CustomInput {
                            id: streetBook
                            width: streetsec.width
                            height: 30
                            userInputRadius: 15
                            userInputPlaceholderText: "Street name"
                            userInputGlowColor: "#0000ff"
                            userInputFontpixelSize: 12
                            userInputBaseColor: "white"
                        }
                    }

                    Row {
                        id: zipsec
                        Layout.rightMargin: 10
                        Layout.leftMargin: 10
                        Layout.fillWidth: true
                        Layout.topMargin: 0
                        CustomInput {
                            id: zipBook
                            width: zipsec.width / 3
                            height: 30
                            userInputRadius: 15
                            userInputPlaceholderText: "Postcode"
                            userInputGlowColor: "#0000ff"
                            userInputFontpixelSize: 12
                            userInputBaseColor: "white"
                        }
                    }
                } // Column Layout for address part

                Row {
                    id: dateTimePart
                    visible: false
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.fillWidth: true
                    Layout.bottomMargin: 0
                    Layout.preferredHeight: 110

                    TimeDatePIcker {
                        id: timedatepicker
                        width: parent.width
                        height: 100
                    }
                } // RowLayout date and time section
            } // Column Layout for entire section
        } //Selection Layout

        Rectangle {
            id: mapSection
            height: 200
            color: "#ffffff"
            radius: 20
            border.width: 2
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: selectionSection.bottom
            anchors.topMargin: 30

            Plugin {
                id: mapPlugin
                name: "osm" // "mapboxgl", "esri", ...
                // specify plugin parameters if necessary
                // PluginParameter {
                //     name:
                //     value:
                // }
            }

            Map {
                id: userLocationMap
                color: "#0000ff"
                anchors.rightMargin: 15
                anchors.leftMargin: 15
                anchors.bottomMargin: 15
                anchors.topMargin: 15
                anchors.fill: parent
                plugin: mapPlugin
                copyrightsVisible: false

                //center: QtPositioning.coordinate(59.91, 10.75) // Oslo
                zoomLevel: 14
            }
        } //MapSection

        Row {
            id: row
            height: 50
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.top: mapSection.bottom
            anchors.topMargin: 30

            CustomButton {

                id: bookBtn
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width / 3
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                btnText: "Book Now"
                btnFontSize: 12
                btnColor: "white"
            }
        }

        contentHeight: 1000
        contentWidth: bookingFlick.width
        clip: true
    } // FLickable
} // Item






/*##^## Designer {
    D{i:22;anchors_height:400;anchors_width:200}
}
 ##^##*/
