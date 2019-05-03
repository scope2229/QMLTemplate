import QtQuick 2.12

import "../../components"

Item {
    id: element

    property alias userInput: usernameInput.userInputText

    property alias passInput: passwordInput.userInputText

    property alias loginBTN: loginBtn

    property alias registerBTN: registerBtn

    CustomInput {
        id: usernameInput
        width: 200
        height: 50
        userInputGlowColor: "blue"
        anchors.verticalCenterOffset: -50
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        userInputPlaceholderText: qsTr("Username!")
        userInputPlaceholderTextColor: "black"
        userInputFontpixelSize: 20
        userInputRadius: 15
        userInputBaseColor: "white"
        userInputEchoMode: TextInput.Normal
    }
    CustomInput {
        id: passwordInput
        width: 200
        height: 50
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: usernameInput.bottom
        anchors.topMargin: 30

        userInputPlaceholderText: qsTr("Password")
        userInputPlaceholderTextColor: "black"
        userInputFontpixelSize: 20
        userInputGlowColor: "blue"
        userInputRadius: 15
        userInputBaseColor: "white"
        userInputEchoMode: TextInput.Password
    }
    CustomButton {
        id: loginBtn
        width: 200
        height: 40
        anchors.top: passwordInput.bottom
        anchors.topMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter
        btnColor: "white"
        btnFontSize: 15
        btnText: "Login"
    }
    CustomButton {
        id: registerBtn
        width: 200
        height: 40
        btnText: "Register"
        btnFontSize: 15
        btnColor: "white"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: loginBtn.bottom
        anchors.topMargin: 20
    }
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_height:50;anchors_width:200}
}
 ##^##*/
