import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "components"
import "guardsec/auth"

Background {
    id: background
    anchors.fill: parent
    color: "red"

    StackLayout {
        id: stackView
        anchors.fill: parent
        currentIndex: 0
        InitialScreen{
            guardBTN.onBtnClicked: {
                console.log("HI TESTING CUSTOM BUTTON")
                stackView.currentIndex = 1
            }
            sitterBTN.onBtnClicked: {
                console.log("Hi FROM SITTERS!!!!!")
            }
        }
        GuardianLogin{
            loginBTN.onBtnClicked: {
                console.log("login btn clicked :: " + userInput.toString())
                pageLoader.sourceComponent = guardianStack
            }
            registerBTN.onBtnClicked: {
                console.log("Regsiter btn clicked" + passInput.toString())
                stackView.currentIndex = 2
            }
        }
        GuardianRegister {
            regBTN.onBtnClicked: {

            }
            cancelBTN.onBtnClicked: {
                stackView.currentIndex = 1
            }
        }
    }
}
