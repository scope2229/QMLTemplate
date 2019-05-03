import QtQuick 2.12
import QtQuick.Controls 2.5


Item {
    id: root

    property alias dayTumbler: dayTumbler
    property alias monthTumbler: monthTumbler
    property alias yearTumbler: yearTumbler
    property alias hoursTumbler: hoursTumbler
    property alias minutesTumbler: minutesTumbler

    property alias dayTumblerCurrentIndex: dayTumbler.currentIndex
    property alias monthTumblerCurrentIndex: monthTumbler.currentIndex
    property alias yearTumblerCurrentIndex: yearTumbler.currentIndex
    property alias hoursTumblerCurrentIndex: hoursTumbler.currentIndex
    property alias minutesTumblerCurrentIndex: minutesTumbler.currentIndex

    Rectangle {
        id: baseRec
        height: root.height
        color: "#ffffff"
        radius: 20
        border.width: 2
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.left: parent.left
        anchors.leftMargin: 10

        Rectangle {
            id: topBorderLine
            height: 3
            color: "#000000"
            anchors.top: parent.top
            anchors.topMargin: 50
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
        }

        Tumbler {
            id: dayTumbler
            anchors.right: divider.left
            anchors.rightMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            anchors.top: topBorderLine.bottom
            anchors.topMargin: 5
            font.bold: true
            font.pixelSize: 14
            visibleItemCount: 1

            model: ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"]

        }

        Tumbler {
            id: monthTumbler
            anchors.right: divider2.left
            anchors.rightMargin: 5
            anchors.left: divider.right
            anchors.leftMargin: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            anchors.top: topBorderLine.bottom
            anchors.topMargin: 5
            font.bold: true
            font.pixelSize: 14
            visibleItemCount: 1

            model: ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"]

        }
        Tumbler {
            id: yearTumbler
            anchors.right: divider3.left
            anchors.rightMargin: 5
            anchors.left: divider2.right
            anchors.leftMargin: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            anchors.top: topBorderLine.bottom
            anchors.topMargin: 5
            font.bold: true
            font.pixelSize: 12
            visibleItemCount: 1

            model: ["2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028"]

        }


            Tumbler {
                id: hoursTumbler
            anchors.right: divider4.left
            anchors.rightMargin: 5
            font.bold: true
            font.pixelSize: 12
            visibleItemCount: 1
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            anchors.left: divider3.right
            anchors.leftMargin: 5
            anchors.top: topBorderLine.bottom
            anchors.topMargin: 5

            model: ["00", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21","22","23"]
        }
        Tumbler {
            id: minutesTumbler
            width: (baseRec.width / 4) / 3
            anchors.right: parent.right
            anchors.rightMargin: 5
            font.bold: true
            font.pixelSize: 12
            visibleItemCount: 1
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            anchors.left: divider4.right
            anchors.leftMargin: 5
            anchors.top: topBorderLine.bottom
            anchors.topMargin: 5

            model: ["00", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21","22","23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51","52","53", "54", "55", "56", "57", "58", "59"]
        }

        Rectangle {
            id: divider
            width: 3
            color: "#000000"
            anchors.left: parent.left
            anchors.leftMargin: baseRec.width / 4
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
        }

        Rectangle {
            id: divider2
            width: 3
            color: "#000000"
            anchors.left: divider.right
            anchors.leftMargin: baseRec.width / 4
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0

        }

        Rectangle {
            id: divider3
            width: 3
            color: "#000000"
            anchors.left: divider2.right
            anchors.leftMargin: baseRec.width / 4
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
        }

        Rectangle {
            id: divider4
            width: 3
            color: "#000000"
            anchors.left: divider3.right
            anchors.leftMargin: (baseRec.width / 4) / 2
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: topBorderLine.bottom
            anchors.topMargin: 0
        }

        Text {
            id: yearLbl
            text: qsTr("Year")
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.bottom: topBorderLine.top
            anchors.bottomMargin: 5
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.right: divider3.left
            anchors.rightMargin: 5
            anchors.left: divider2.right
            anchors.leftMargin: 5
            font.pixelSize: 14
        }

        Text {
            id: timeLbl
            text: qsTr("Time (24hr)")
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.left: divider3.right
            anchors.leftMargin: 5
            anchors.bottom: topBorderLine.top
            anchors.bottomMargin: 5
            anchors.top: parent.top
            anchors.topMargin: 5
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 14
        }

        Text {
            id: monthLbl
            text: qsTr("Month")
            anchors.right: divider2.left
            anchors.rightMargin: 5
            anchors.left: divider.right
            anchors.leftMargin: 5
            anchors.bottom: topBorderLine.top
            anchors.bottomMargin: 5
            anchors.top: parent.top
            anchors.topMargin: 5
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 14
        }

        Text {
            id: dayLbl
            text: qsTr("Day")
            anchors.right: divider.left
            anchors.rightMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.bottom: topBorderLine.top
            anchors.bottomMargin: 5
            anchors.top: parent.top
            anchors.topMargin: 5
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 13
        }




    }



}





























/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:6;anchors_width:77.5}D{i:9;anchors_y:0}
}
 ##^##*/
