import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "../../components"

Item {
    id: root
    Layout.fillHeight: true
    Layout.fillWidth: true

    property var regObject: ({
                                 "mobile": mobileInput.userInputText,
                                 "email": emailInput.userInputText,
                                 "username": usernameInput.userInputText,
                                 "password": passwordInput.userInputText,
                                 "passconf": passwordConfInput.userInputText,
                                 "firstname": firstNameInput.userInputText,
                                 "surname": surnameInput.userInputText,
                                 "dob": ddDOB.currentText + mmDOB.currentText + yyyyDOB.currentText,
                                 "houseno": housenoInput.userInputText,
                                 "aptname": aptnameInput.userInputText,
                                 "street": streetInput.userInputText,
                                 "town": townInput.userInputText,
                                 "city": cityInput.userInputText,
                                 "state": stateInput.userInputText,
                                 "zip": zipInput.userInputText,
                                 "country": countryInput.userInputText
                             })

    property var regArray: [mobileInput.userInputText, emailInput.userInputText, usernameInput.userInputText, passwordInput.userInputText, passwordConfInput.userInputText, firstNameInput.userInputText, surnameInput.userInputText]

    property alias regBTN: registerBtn

    property alias cancelBTN: cancelBtn

    Flickable {
        id: flickable
        flickableDirection: Flickable.VerticalFlick
        anchors {
            top: root.top
            topMargin: 40
            bottom: root.bottom
            bottomMargin: 40
            left: root.left
            right: root.right
        }

        ColumnLayout {
            id: columnList
            spacing: 25
            width: flickable.width
            Rectangle {
                height: 20
                color: "transparent"
            }
            CustomInput {
                id: mobileInput
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: flickable.width - 50
                Layout.preferredHeight: 40

                userInputPlaceholderText: "Mobile"
                userInputFontpixelSize: 15
                userInputGlowColor: "blue"
                userInputBaseColor: "white"
                userInputRadius: 15
            }

            CustomInput {
                id: emailInput
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: flickable.width - 50
                Layout.preferredHeight: 40

                userInputPlaceholderText: "Email"
                userInputFontpixelSize: 15
                userInputGlowColor: "blue"
                userInputBaseColor: "white"
                userInputRadius: 15
            }

            CustomInput {
                id: usernameInput
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: flickable.width - 50
                Layout.preferredHeight: 40

                userInputPlaceholderText: "Username"
                userInputFontpixelSize: 15
                userInputGlowColor: "blue"
                userInputBaseColor: "white"
                userInputRadius: 15
            }
            CustomInput {
                id: passwordInput
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: flickable.width - 50
                Layout.preferredHeight: 40

                userInputPlaceholderText: "Password"
                userInputFontpixelSize: 15
                userInputGlowColor: "blue"
                userInputBaseColor: "white"
                userInputRadius: 15
                userInputEchoMode: TextInput.Password
            }
            CustomInput {
                id: passwordConfInput
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: flickable.width - 50
                Layout.preferredHeight: 40

                userInputPlaceholderText: "Confirm password"
                userInputFontpixelSize: 15
                userInputGlowColor: "blue"
                userInputBaseColor: "white"
                userInputRadius: 15
                userInputEchoMode: TextInput.Password
            }
            CustomInput {
                id: firstNameInput
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: flickable.width - 50
                Layout.preferredHeight: 40

                userInputPlaceholderText: "First Name"
                userInputFontpixelSize: 15
                userInputGlowColor: "blue"
                userInputBaseColor: "white"
                userInputRadius: 15
            }
            CustomInput {
                id: surnameInput
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: flickable.width - 50
                Layout.preferredHeight: 40

                userInputPlaceholderText: "Surname"
                userInputFontpixelSize: 15
                userInputGlowColor: "blue"
                userInputBaseColor: "white"
                userInputRadius: 15
            }
            Rectangle {
                id: dobContainer
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: flickable.width
                Layout.preferredHeight: 100
                color: "#00000000"
                Layout.fillWidth: true

                Text {
                    id: dobLabel
                    text: qsTr("Date of birth")
                    anchors.top: parent.top
                    anchors.topMargin: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                RowLayout {
                    id: dobddmmyy
                    anchors.top: dobLabel.bottom
                    anchors.topMargin: 10
                    anchors.right: parent.right
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.rightMargin: 10
                    spacing: 5

                    ComboBox {
                        id: ddDOB
                        width: 80
                        Layout.leftMargin: 10
                        Layout.rightMargin: 0
                        Layout.preferredHeight: 40
                        Layout.preferredWidth: 80
                        currentIndex: 1
                        displayText: currentText
                        model: ["Day", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
                    }
                    ComboBox {
                        id: mmDOB
                        width: 120
                        Layout.preferredHeight: 40
                        Layout.preferredWidth: 120
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        currentIndex: 0
                        displayText: currentText
                        model: ["Month", "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
                    }
                    ComboBox {
                        id: yyyyDOB
                        width: 100
                        Layout.rightMargin: 10
                        Layout.preferredHeight: 40
                        Layout.preferredWidth: 100
                        Layout.alignment: Qt.AlignRight
                        currentIndex: 0
                        displayText: currentText
                        model: ["Year", 2020, 2019, 2018, 2017, 2016, 2015, 2014, 2013, 2012, 2011, 2010, 2009, 2008, 2007, 2006, 2005, 2004, 2003, 2002, 2001, 2000, 1999, 1998, 1997, 1996, 1995, 1994, 1993, 1992, 1991, 1990, 1989, 1988, 1987, 1986, 1985, 1984, 1983, 1982, 1981, 1980, 1979, 1978, 1977, 1976, 1975, 1974, 1973, 1972, 1971, 1970, 1969, 1968, 1967, 1966, 1965, 1964, 1963, 1962, 1961, 1960, 1959, 1958, 1957, 1956, 1955, 1954, 1953, 1952, 1951, 1950, 1949, 1948, 1947, 1946, 1945, 1944, 1943, 1942, 1941, 1940, 1939, 1938, 1937, 1936, 1935, 1934, 1933, 1932, 1931, 1930, 1929, 1928, 1927, 1926, 1925, 1924, 1923, 1922, 1921, 1920, 1919, 1918, 1917, 1916, 1915, 1914, 1913, 1912, 1911, 1910, 1909, 1908, 1907, 1906, 1905, 1904, 1903, 1902, 1901, 1900]
                    }
                }
            }
            RowLayout {

                spacing: 10

                CustomInput {
                    id: housenoInput
                    Layout.leftMargin: 20
                    Layout.alignment: Qt.AlignLeft
                    Layout.preferredWidth: 80
                    Layout.preferredHeight: 40

                    userInputPlaceholderText: "House no"
                    userInputFontpixelSize: 15
                    userInputGlowColor: "blue"
                    userInputBaseColor: "white"
                    userInputRadius: 15
                }
                CustomInput {
                    id: aptnameInput
                    Layout.leftMargin: 20
                    Layout.fillWidth: true

                    Layout.rightMargin: 20
                    Layout.preferredHeight: 40

                    userInputPlaceholderText: "Condo name"
                    userInputFontpixelSize: 15
                    userInputGlowColor: "blue"
                    userInputBaseColor: "white"
                    userInputRadius: 15
                }
            }
            CustomInput {
                id: streetInput
                Layout.preferredHeight: 40
                Layout.rightMargin: 20
                Layout.leftMargin: 20
                Layout.fillWidth: true

                userInputPlaceholderText: "Street"
                userInputFontpixelSize: 15
                userInputGlowColor: "blue"
                userInputBaseColor: "white"
                userInputRadius: 15
            }
            CustomInput {
                id: townInput
                Layout.rightMargin: 20
                Layout.fillWidth: true
                Layout.leftMargin: 20
                Layout.alignment: Qt.AlignCenter
                Layout.preferredHeight: 40

                userInputPlaceholderText: "Town"
                userInputFontpixelSize: 15
                userInputGlowColor: "blue"
                userInputBaseColor: "white"
                userInputRadius: 15
            }
            CustomInput {
                id: cityInput
                Layout.rightMargin: 20
                Layout.fillWidth: true
                Layout.leftMargin: 20
                Layout.alignment: Qt.AlignCenter
                Layout.preferredHeight: 40

                userInputPlaceholderText: "City"
                userInputFontpixelSize: 15
                userInputGlowColor: "blue"
                userInputBaseColor: "white"
                userInputRadius: 15
            }
            CustomInput {
                id: stateInput
                Layout.rightMargin: 20
                Layout.fillWidth: true
                Layout.leftMargin: 20
                Layout.alignment: Qt.AlignCenter
                Layout.preferredHeight: 40

                userInputPlaceholderText: "State"
                userInputFontpixelSize: 15
                userInputGlowColor: "blue"
                userInputBaseColor: "white"
                userInputRadius: 15
            }
            CustomInput {
                id: zipInput
                Layout.fillWidth: true
                Layout.rightMargin: 20
                Layout.leftMargin: 20
                Layout.alignment: Qt.AlignCenter
                Layout.preferredHeight: 40

                userInputPlaceholderText: "Postcode / zip"
                userInputFontpixelSize: 15
                userInputGlowColor: "blue"
                userInputBaseColor: "white"
                userInputRadius: 15
            }
            CustomInput {
                id: countryInput
                Layout.rightMargin: 20
                Layout.fillWidth: true
                Layout.leftMargin: 20
                Layout.alignment: Qt.AlignCenter
                Layout.preferredHeight: 40

                userInputPlaceholderText: "Country"
                userInputFontpixelSize: 15
                userInputGlowColor: "blue"
                userInputBaseColor: "white"
                userInputRadius: 15
            }
            RowLayout {
                Layout.alignment: Qt.AlignCenter
                spacing: 25
                CustomButton {
                    id: registerBtn

                    width: 150
                    height: 40
                    btnText: "Register"
                    btnColor: "white"
                    btnFontSize: 15
                }
                CustomButton {
                    id: cancelBtn

                    width: 150
                    height: 40

                    btnText: "Cancel"
                    btnColor: "white"
                    btnFontSize: 15
                }
            }
        }
        contentHeight: columnList.height + 20
        contentWidth: flickable.width
        clip: true
    }
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2;anchors_height:100;anchors_width:100}
}
 ##^##*/
