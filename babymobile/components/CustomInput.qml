import QtQuick 2.12
import QtQuick.Controls 2.5
import QtGraphicalEffects 1.12

/*!

  \qmltype CustomInput

  \target CustomInput

  \breif A custom designed user input component.

  CustomInput inherits all members from TextField & TextInput
  Consists of a root Rectangle with a nested TextField.
  The Glow effect has been attached to the baseOutline.

  \note Bellow is a basic example of the component.

  \qml
    CustomInput {
        id: componentID
        width: 200
        height: 50

        userInputPlaceholderText: qsTr("Username!")
        userInputPlaceholderTextColor: "black"
        userInputFontpixelSize: 20
        userInputGlowColor: "blue"
        userInputRadius: 15
        userInputBaseColor: "white"
        userInputEchoMode: TextInput.Normal

    }
  \endqml


*/

Item {
    id: root

    /*!
      \qmlproperty string CustomInput::userInputText

       This property contains the text that is used to pass to the network request.
    */
    property alias userInputText: userInput.text

    /*!
      \qmlproperty string CustomInput::userInputPlaceholderText

       This property contains the text that is shown in the text field when the
       text field is empty.
    */
    property string userInputPlaceholderText

    /*!
      \qmlproperty string CustomInput::userInputPlaceholderTextColor

       This property sets the color of text that is shown in the text field when the
       text field is empty.
    */
    property string userInputPlaceholderTextColor

    /*!
      \qmlproperty int CustomInput::userInputFontpixelSize

       Sets the size of the font using pixels.
    */
    property int userInputFontpixelSize

    /*!
      \qmlproperty string CustomInput::userInputGlowColor

       Used to set the outer glow of the userInput
    */
    property color userInputGlowColor

    /*!
      \qmlproperty int CustomInput::userInputRadius

       Used to created a radius on the userInput.
    */
    property int userInputRadius

    /*!
      \qmlproperty string CustomInput::userInputBaseColor

       Sets the background color of the userInput.
    */
    property string userInputBaseColor

    /*!
      \qmlproperty enumeration CustomInput::userInputEchoMode

        Specifies how the text should be displayed in the
        TextField.

        The possible modes are:
        \list
            \li TextInput.Normal - Displays the text as it is. (Default)
            \li TextInput.Password - Displays asterisks instead of characters.
            \li TextInput.NoEcho - Displays nothing.
            \li TextInput.PasswordEchoOnEdit - Displays characters as they are
                entered while editing, otherwise displays asterisks.
        \endlist
    */
    property int userInputEchoMode

    Rectangle {
        id: baseOutline
        anchors.fill: parent
        color: root.userInputBaseColor
        radius: root.userInputRadius

        TextField {
            id: userInput
            placeholderText: root.userInputPlaceholderText
            placeholderTextColor: root.userInputPlaceholderTextColor
            font.pixelSize: root.userInputFontpixelSize
            horizontalAlignment: TextInput.AlignHCenter
            verticalAlignment: TextInput.AlignVCenter

            echoMode: root.userInputEchoMode

            background: Rectangle {
                implicitHeight: root.height
                implicitWidth: root.width
                color: "transparent"
                border.color: "black"
                border.width: 1
                radius: baseOutline.radius
            }
        }
    }
    Glow {
        anchors.fill: baseOutline
        radius: baseOutline.radius
        samples: 17
        color: root.userInputGlowColor
        source: baseOutline
    }
}






/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
