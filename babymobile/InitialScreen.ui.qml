import QtQuick 2.12
import QtQuick.Layouts 1.12

import "components"

Item {
    id: root
    Layout.fillWidth: true
    Layout.fillHeight: true


    /*!
      \breif Allows the parent-component to listen for the sitterBtn.
    */
    property alias guardBTN: guardBtn


    /*!
      \breif Allows the parent-compoment to listen for the sitterBtn.
    */
    property alias sitterBTN: sitterBtn

    Image {
        id: logo
        width: 150
        height: 150
        anchors.verticalCenterOffset: -50
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        source: "assets/logo.png"
    }

    CustomButton {
        id: guardBtn
        height: 50
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: logo.bottom
        anchors.topMargin: 20
        width: 250

        btnColor: "#ffffff"
        btnFontSize: 20
        btnText: "Parents!"
    }
    CustomButton {
        id: sitterBtn
        height: 50
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: guardBtn.bottom
        anchors.topMargin: 20
        width: 250

        btnColor: "#ffffff"
        btnFontSize: 20
        btnText: "Sitters!"
    }
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
