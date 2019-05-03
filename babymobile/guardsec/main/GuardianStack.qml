import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.12
import QtPositioning 5.12

import "../../components"

Background {
    id: background

    StackLayout {
        id: stackview
        currentIndex: tabbar.currentIndex
        anchors.fill: parent

        //Main Page
        GuardianMain{ id: guardianMain }

        //Booking page
        GuardianBookCode {
            id: guardianBook
        }

        //History Page
        GuardianHistoryCode{ id: guardianHistory }

        //Settings Page
        GuardianSettingsCode { id: guardianSettings }
    }

    Rectangle {
        id: tabbarBorder
        width: root.width - 40
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: tabbar.top
        height: 2
        color: "blue"
    }

    TabBar {
        id: tabbar
        height: 85
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        currentIndex: stackview.currentIndex

        background: Rectangle {
            color: "transparent"
        }

        TabButton {
            id: hmIcon
            height: 80
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0

            background: Rectangle {
                implicitWidth: root.width / 4
                color: "transparent"

                Image {
                    id: homeImg
                    source: "../../assets/homeIcon.png"
                    height: parent.height - 10
                    width: height
                    anchors.centerIn: parent
                }
                Glow {
                    anchors.fill: homeImg
                    radius: 25
                    color: tabbar.currentIndex === 0 ? "blue" : "transparent"
                    source: homeImg

                }
            }



        }
        TabButton {
            id: bkIcon
            height: 80
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0

            background: Rectangle {
                implicitWidth: root.width / 4
                color: "transparent"

                Image {
                    id: bookImg
                    source: "../../assets/bookIcon.png"
                    height: parent.height - 10
                    width: height
                    anchors.centerIn: parent
                }
                Glow {
                    anchors.fill: bookImg
                    radius: 25
                    color: tabbar.currentIndex === 1 ? "blue" : "transparent"
                    source: bookImg

                }
            }
        }
        TabButton {
            id: hisIcon
            height: 80
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0

            background: Rectangle {
                implicitWidth: root.width / 4
                color: "transparent"

                Image {
                    id: historyImg
                    source: "../../assets/historyIcon.png"
                    height: parent.height - 10
                    width: height
                    anchors.centerIn: parent
                }
                Glow {
                    anchors.fill: historyImg
                    radius: 25
                    color: tabbar.currentIndex === 2 ? "blue" : "transparent"
                    source: historyImg

                }
            }
        }
        TabButton {
            id: settIcon
            height: 80
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0

            background: Rectangle {
                implicitWidth: root.width / 4
                color: "transparent"

                Image {
                    id: settImg
                    source: "../../assets/settingsIcon.png"
                    height: parent.height - 10
                    width: height
                    anchors.centerIn: parent
                }
                Glow {
                    anchors.fill: settImg
                    radius: 25
                    color: tabbar.currentIndex === 3 ? "blue" : "transparent"
                    source: settImg

                }
            }
        }
    }
}



























/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
