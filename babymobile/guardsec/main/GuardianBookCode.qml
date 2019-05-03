import QtQuick 2.12
import QtPositioning 5.12

GuardianBook {
    currentAddrChkBx.onCheckStateChanged: {
        // First check if its checked
        if (currentAddrChkBx.checked == true){
            // Set addressSelection visibility to true but false if not checked
            // This is also a repeat check if true maybe update to remove
            currentAddrChkBx.checked? addressSelection.visible = true : addressSelection.visible = false

            // myAddrChkBx should also be false just in case.
            if(myAddrChkBx.checked == true){
                myAddrChkBx.checked = false
            }
        }

        if (currentAddrChkBx.checked == false){
            addressSelection.visible = false

        }
    }
    myAddrChkBx.onCheckStateChanged: {
        if (myAddrChkBx.checked == true) {
            // set addressSelection visibility to false
            addressSelection.visible = false
            currentAddrChkBx.checked = false


        }
    }
    // Booking time logic
    bookNowChkBx.onCheckStateChanged: {
        if (bookNowChkBx.checked == true ) {
            bookLaterChkBx.checked = false
            dateTimePart.visible = false

        }
    }
    bookLaterChkBx.onCheckStateChanged: {
        if ( bookLaterChkBx.checked == true){
            bookNowChkBx.checked = false
            dateTimePart.visible = true

        }
        if (bookLaterChkBx.checked == false){
            dateTimePart.visible = false

        }
    }
    userLocationMap.center: QtPositioning.coordinate(59.91, 10.75) // Oslo

}

