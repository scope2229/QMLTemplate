import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

//import "components"

Rectangle{
    id: background
    Image {
        id: backImage
        anchors.fill: parent
        source: "../assets/bkgrndimg.png"
        fillMode: Image.PreserveAspectCrop
    }
}
