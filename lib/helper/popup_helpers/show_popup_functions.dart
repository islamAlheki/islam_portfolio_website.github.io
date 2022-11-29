import 'package:flutter/material.dart';
import 'package:islam_portfolio/widgets/custome_pop_up_widget/custom_popup_widget.dart';

class ShowPopUpFunctions{


  ShowPopUpFunctions._();

  static showDefaultAlert({
    required BuildContext context,
    required bool hideWhenTap,
    required bool withCloseButton,
    required String titleText,
    required String descriptionText,
    required bool withTwoButton,
    required String oneButtonName,
    required String twoButtonName,
    required void Function() oneOnTap,
    required void Function() twoOnTap,
  }){

    return showDialog(
      context: context,
      barrierDismissible: hideWhenTap,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: ()async{
            return hideWhenTap;
          },
          child:CustomPopUpWidget(
            titleText: titleText,
            descriptionText:descriptionText,
            oneButtonName:oneButtonName ,
            oneOnTap:oneOnTap ,
            twoButtonName: twoButtonName,
            twoOnTap:twoOnTap,
            withTwoButton: withTwoButton,
            withCloseButton: withCloseButton,
          ),
        );
      },
    );
  }


}


