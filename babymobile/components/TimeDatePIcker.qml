import QtQuick 2.12
import QtQuick.Controls 2.5

Item {
    id: root

    property alias yearTumblerCurrentIndex: yearTumbler.currentIndex
    property alias monthTumblerCurrentIndex: monthTumbler.currentIndex
    property alias monthTumbler: monthTumbler
    property alias dayTumblerCurrentIndex: dayTumbler.currentIndex
    property alias dayTumbler: dayTumbler
    property alias minutesTumblerCurrentIndex: minutesTumbler.currentIndex
    property alias minutesTumbler: minutesTumbler
    property alias hoursTumblerCurrentIndex: hoursTumbler.currentIndex
    property alias hoursTumbler: hoursTumbler

    Rectangle {
        id: timePart
        width: root.width / 3
        color: "#ffffff"
        radius: 15
        border.width: 2
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 2
        anchors.left: parent.left
        anchors.leftMargin: 2
        anchors.top: parent.top
        anchors.topMargin: 2

        Rectangle {
            id: timeTopBaseLine
            width: parent.width
            height: 3
            color: "#000000"
            anchors.top: parent.top
            anchors.topMargin:  parent.height / 3.5
        }

        Text {
            id: timeLbl
            text: qsTr("Time 24hr")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.right: parent.right
            anchors.rightMargin: 2
            anchors.left: parent.left
            anchors.leftMargin: 2
            anchors.bottom: timeTopBaseLine.top
            anchors.bottomMargin: 2
            anchors.top: parent.top
            anchors.topMargin: 2
            font.pixelSize: 12
        }

        Rectangle {
            id: dividerT
            width: 2
            color: "#000000"
            anchors.left: parent.left
            anchors.leftMargin: parent.width / 2
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: timeTopBaseLine.bottom
            anchors.topMargin: 0
        }

        Tumbler {
                                    id: hoursTumbler
                                    anchors.right: dividerT.left
                                    anchors.rightMargin: 3
                                    anchors.left: parent.left
                                    anchors.leftMargin: 3
                                    anchors.bottom: parent.bottom
                                    anchors.bottomMargin: 3
                                    anchors.top: timeTopBaseLine.bottom
                                    anchors.topMargin: 3
                                    visibleItemCount: 1
                                    model: ["00", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"]
                                } // Hours Tumbler

        Tumbler {
                                    id: minutesTumbler
                                    anchors.left: dividerT.right
                                    anchors.leftMargin: 3
                                    anchors.right: parent.right
                                    model: ["00", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"]
                                    anchors.bottom: parent.bottom
                                    anchors.bottomMargin: 3
                                    anchors.top: timeTopBaseLine.bottom
                                    anchors.rightMargin: 3
                                    visibleItemCount: 1
                                    anchors.topMargin: 3
        } // Minutes Tumbler
    }

    Rectangle {
        id: datePart
        color: "#ffffff"
        radius: 15
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 2
        anchors.top: parent.top
        anchors.topMargin: 2
        border.width: 2
        anchors.left: timePart.right
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 2

        Rectangle {
            id: dateTopBaseLine
            height: 2
            color: "#000000"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: parent.height / 3.5
        }

        Rectangle {
            id: divider1
            width: 2
            color: "#000000"
            anchors.left: parent.left
            anchors.leftMargin: parent.width / 3
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
        }

        Rectangle {
            id: divider2
            width: 2
            color: "#000000"
            anchors.left: divider1.right
            anchors.leftMargin: parent.width / 3
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
        }

        Text {
            id: dayLbl
            text: qsTr("Day")
            anchors.right: divider1.left
            anchors.rightMargin: 2
            anchors.left: parent.left
            anchors.leftMargin: 2
            anchors.bottom: dateTopBaseLine.top
            anchors.bottomMargin: 2
            anchors.top: parent.top
            anchors.topMargin: 2
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 12
        }

        Text {
            id: monthLbl
            text: qsTr("Month")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.right: divider2.left
            anchors.rightMargin: 2
            anchors.left: divider1.right
            anchors.leftMargin: 2
            anchors.bottom: dateTopBaseLine.top
            anchors.bottomMargin: 2
            anchors.top: parent.top
            anchors.topMargin: 2
            font.pixelSize: 12
        }

        Text {
            id: yearLbl
            text: qsTr("Year")
            anchors.right: parent.right
            anchors.rightMargin: 2
            anchors.left: divider2.right
            anchors.leftMargin: 2
            anchors.bottom: dateTopBaseLine.top
            anchors.bottomMargin: 2
            anchors.top: parent.top
            anchors.topMargin: 2
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 12
        }

        Tumbler {
            id: dayTumbler
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 3
            anchors.top: dateTopBaseLine.bottom
            anchors.topMargin: 3
            anchors.right: divider1.left
            anchors.rightMargin: 3
            anchors.left: parent.left
            anchors.leftMargin: 3
            visibleItemCount: 1
            model: ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"]
        } // Day Tumbler
        Tumbler {
                                    id: monthTumbler
                                    anchors.bottom: parent.bottom
                                    anchors.bottomMargin: 3
                                    anchors.top: dateTopBaseLine.bottom
                                    anchors.topMargin: 3
                                    anchors.right: divider2.left
                                    anchors.rightMargin: 3
                                    anchors.left: divider1.right
                                    anchors.leftMargin: 3
                                    visibleItemCount: 1
                                    model: ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"]
                                } // Month Tumbler

        Tumbler {
                                    id: yearTumbler
                                    anchors.bottom: parent.bottom
                                    anchors.bottomMargin: 3
                                    anchors.right: parent.right
                                    anchors.rightMargin: 3
                                    anchors.left: divider2.right
                                    anchors.leftMargin: 3
                                    anchors.top: dateTopBaseLine.bottom
                                    anchors.topMargin: 3
                                    visibleItemCount: 1
                                    model: ["2025", "2024", "2023", "2022", "2021", "2020", "2019"]
                                } // Year Tumbler
    }


}

























/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2;anchors_width:200;anchors_x:106;anchors_y:122}
D{i:4;anchors_height:200}D{i:5;anchors_width:66.66666666666667}D{i:6;anchors_width:66.66666666666667}
D{i:1;anchors_height:200;anchors_width:426.66666666666663}
}
 ##^##*/
