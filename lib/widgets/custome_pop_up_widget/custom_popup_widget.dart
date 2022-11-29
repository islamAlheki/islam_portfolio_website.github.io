import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/widgets/buttons.dart';

class CustomPopUpWidget extends StatelessWidget {
  final String titleText;
  final String descriptionText;

  final bool withTwoButton;
  final bool withCloseButton;

  final String oneButtonName;
  final String twoButtonName;

  final void Function() oneOnTap;
  final void Function() twoOnTap;


  const CustomPopUpWidget({
    Key? key,
    required this.titleText,
    required this.descriptionText,
    required this.withTwoButton,
    required this.oneButtonName,
    required this.twoButtonName,

    required this.oneOnTap,
    required this.twoOnTap,
    required this.withCloseButton,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(top: SizeConfig.height * 0.15,bottom:SizeConfig.height * 0.15,),
      child: Align(
        alignment: Alignment.topCenter,
        child: Material(
          color: Colors.transparent,
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(SizeConfig.height * 0.02773),
                  width:SizeConfig.height * 0.398,
                  decoration: BoxDecoration(
                    color: ColorConfig().appScaffoldBackgroundColor(1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Visibility(
                            visible: withCloseButton,
                            child: CustomIconButton(
                              icon: 'close',
                              size: SizeConfig.height*0.034,
                              onTap: (){
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height:SizeConfig.height * 0.01 ,
                      ),
                      /// title
                      Text(
                        titleText,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline2!.copyWith(color:ColorConfig().fontBlackColor(1),fontWeight: FontWeight.bold),

                      ),
                      SizedBox(
                        height:SizeConfig.height * 0.04 ,
                      ),
                      /// description
                      Text(
                        descriptionText,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline5!.copyWith(color:ColorConfig().fontBlackColor(1),fontWeight: FontWeight.w400),

                      ),
                      SizedBox(
                        height:SizeConfig.height * 0.03 ,
                      ),

                      /// one button
                      Container(
                        height: SizeConfig.height*0.055,
                        margin: EdgeInsets.symmetric(horizontal: SizeConfig.height * 0.0463),
                        child:CustomButtonWithoutIcon(
                          onPress: oneOnTap,
                          backgroundColor:ColorConfig().mainOrangeColor(1) ,
                          borderColor: ColorConfig().mainOrangeColor(1),
                          shadowColor:ColorConfig().mainOrangeColor(1) ,
                          onPressColor: ColorConfig().mainOrangeColor(1),
                          buttonText:oneButtonName,
                          showLoading:false ,
                          loadingColor: ColorConfig().loadingWhiteColor(1),
                          style: Theme.of(context).textTheme.headline5!.copyWith(color: ColorConfig().buttonWhiteColor(1)),
                          borderWidth: 2,
                          elevation: 2,

                        ),
                      ),
                      SizedBox(
                        height:SizeConfig.height * 0.02 ,
                      ),
                      /// two button
                      Visibility(
                        visible: withTwoButton,
                        child:  Container(
                          height: SizeConfig.height*0.055,
                          margin: EdgeInsets.symmetric(horizontal: SizeConfig.height * 0.0463),
                          child:CustomButtonWithoutIcon(
                            onPress: twoOnTap,
                            style: Theme.of(context).textTheme.headline5!.copyWith(color: ColorConfig().appMainGreen1Color(1)),
                            borderColor: ColorConfig().mainOrangeColor(1),
                            backgroundColor:ColorConfig().appScaffoldBackgroundColor(1) ,
                            shadowColor:ColorConfig().mainOrangeColor(0.2) ,
                            onPressColor: ColorConfig().mainOrangeColor(1),
                            buttonText:twoButtonName,
                            showLoading:false,
                            loadingColor: ColorConfig().loadingWhiteColor(1),
                            borderWidth: 2,
                            elevation: 2,
                          ),
                        ),
                      ),
                      SizedBox(
                        height:SizeConfig.height * 0.01 ,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




