import QtQuick 2.12

Item {
    id: button

    /*!
      /breif Set the buttons text (String).
      \code btnText: "Example!"
      \endcode
    */
    property string btnText

    /*!
      /breif Set the buttons color (String).
      \code btnColor: "#ffffff"
      \endcode
    */
    property string btnColor

    /*!
      /breif Set the buttons font size (Int).
      \code btnText: "Example!"
      \endcode
    */
    property int btnFontSize

    /*!
      /breif Signal emitted when the button is clicked.
    */
    signal btnClicked

    Image {
        id: buttonImage
        anchors.fill: parent
        source: "../assets/btnbkgrnd.png"
        fillMode: Image.PreserveAspectCrop
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: btnClicked();
    }
    Text {
        id: buttonText
        color: button.btnColor
        text: button.btnText
        anchors.fill: parent
        font.bold: true
        font.pixelSize: button.btnFontSize
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
}







/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
