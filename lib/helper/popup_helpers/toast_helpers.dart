import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class ShowToastFunctions{

  static late Flushbar flush ;

  ShowToastFunctions._();



  static showToast({required BuildContext context,required String msg,double? margin=0}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            msg,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5!.copyWith(color: ColorConfig().fontWhiteColor(1),fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 3,
        backgroundColor: ColorConfig().appMainGreen1Color(1),
        behavior: SnackBarBehavior.floating,
        padding: EdgeInsets.all(SizeConfig.height*0.022),
        margin: EdgeInsets.only(bottom:(margin!)!=0?margin:MediaQuery.of(context).viewPadding.bottom>0?SizeConfig.height*0.08:SizeConfig.height*0.11,left:SizeConfig.height * 0.0148,right: SizeConfig.height * 0.0148 ),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25),),),
      ),
    );

  }

  static showPublicConnectionToast({required BuildContext context,required String msg,required bool connected,double? margin=0}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: SizeConfig.height*0.015,
              ),
              Icon(
                connected?Icons.wifi:Icons.wifi_off_sharp,
                color:ColorConfig().iconWhiteColor(1),
              ),
              SizedBox(
                width: SizeConfig.height*0.015,
              ),

              Expanded(
                child: Text(
                  msg,
                  textAlign:TextAlign.start,
                  style: Theme.of(context).textTheme.headline5!.copyWith(color: ColorConfig().fontWhiteColor(1),fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        elevation: 3,
        backgroundColor:connected? ColorConfig().appMainGreen1Color(1):ColorConfig().iconRedColor(1),
        behavior: SnackBarBehavior.floating,
        padding: EdgeInsets.all(SizeConfig.height*0.01),
        margin: EdgeInsets.only(
          bottom:SizeConfig.height*0.04+(margin!),
          left:(connected?SizeConfig.height * 0.02:SizeConfig.height * 0.06),
          right:(connected?SizeConfig.height * 0.02:SizeConfig.height * 0.06),
        ),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25),),),
      ),
    );
  }

  static showChatConnectionToast({required BuildContext context,required String msg,required bool connected,}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Padding(
          padding: EdgeInsets.all(SizeConfig.height*0.006),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: SizeConfig.height*0.015,
              ),
              Icon(
                connected?Icons.wifi:Icons.wifi_off_sharp,
                color:ColorConfig().iconWhiteColor(1),
              ),
              SizedBox(
                width: SizeConfig.height*0.015,
              ),
              Text(
                msg,
                textAlign:TextAlign.center,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: ColorConfig().fontWhiteColor(1),
                  fontWeight: FontWeight.w500,
                  height: SizeConfig.height*0.0015,
                ),
              ),
              SizedBox(
                width: SizeConfig.height*0.015,
              ),
            ],
          ),
        ),
        elevation: 3,
        dismissDirection: DismissDirection.up,
        backgroundColor:connected? ColorConfig().appMainGreen1Color(1):ColorConfig().iconRedColor(1),
        behavior: SnackBarBehavior.floating,
        padding: const EdgeInsets.all(0),
        margin: EdgeInsets.only(
          bottom:SizeConfig.height*0.79,
          left:(connected?SizeConfig.height * 0.04:SizeConfig.height * 0.06),
          right:(connected?SizeConfig.height * 0.04:SizeConfig.height * 0.06),
        ),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25),),),
      ),
    );
  }

}
