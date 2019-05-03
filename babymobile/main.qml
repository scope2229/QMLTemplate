import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Styles 1.4

import "guardsec/main"

/*!
  \target mainGui

  \brief Handles the three core components using a loader.
         Each core Component consists of multiple StackView's
         for handling the various different pages for each of
         the core components.

  \note The separate ui components have been organized like so: Guardian in guardsec Sitter in sittersec. Globally used components are inside components.

  \table
    \row
      \li \l {welcomeStack} {WelcomeStack.}
      \li Allows user to choose if they are a parent or
          sitter. Each section opens with a coresponding login
          page with two buttons.
          Register and Login
      \li The register button will send the user to the coresponding
          register page for them to fill out.
      \li If the user is authorized the coresponding Stack will be loaded.
          This uses the loader in the main.qml file.

    \row
       \li \l GuardianStack.
       \li The start page for the guardian contains the users profile
           details. These attributes can also be updated.
       \li It will have tabs that can switch between pages
       \li TO BE UPDATED
    \row
       \li \l SitterStack.
       \li The start page for the sitter contains the users profile
           details. These attributes can also be updated.
       \li It will have tabs that can switch between pages
       \li TO BE UPDATED
  \endtable

 */

ApplicationWindow {
    id: root
    visible: true
    width: Screen.width
    height: Screen.height
    title: qsTr("Baby sitting app.")

    Component{
        id: welcomeStackView
        WelcomeStack {
        }
    }
    Component{
        id: guardianStack
        GuardianStack{

        }
    }

    Loader{
        id: pageLoader
        anchors.fill: parent
        sourceComponent: welcomeStackView
    }
}
