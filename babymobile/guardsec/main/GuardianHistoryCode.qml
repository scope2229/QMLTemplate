import QtQuick 2.0

GuardianHistory {
    userBalanceText: calculateTotal(bookinglistView)
    userTransCountText: bookinglistView.model.count
    userDueBalanceText: calculateSubTotal(bookinglistView)

    function calculateTotal(myModel){
      var result = 00.00;
      var textresult = "";
      for(var i = 0; i < myModel.model.count; i++){
          if(myModel.model.get(i).paid === "Yes"){
            result += myModel.model.get(i).total;
          }
      }
      textresult = "$ " + result
      return textresult;
    }
    function calculateSubTotal(myModel){
      var result = 00.00;
      var textresult = "";
      for(var i = 0; i < myModel.model.count; i++){
          if(myModel.model.get(i).paid === "No"){
            result += myModel.model.get(i).total;
          }
      }
      textresult = "$ -" + result
      return textresult;
    }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
