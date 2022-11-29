import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_decorations_config.dart';
import 'package:islam_portfolio/pages/home/model/contacts_model.dart';
import 'package:islam_portfolio/pages/home/provider/helper/intro_card_helper.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/widgets/buttons.dart';
import 'package:provider/provider.dart';

class SectionIntroCardWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String bioText;
  final String buttonName;
  final bool buttonEnable;
  final VoidCallback downloadCvOnPress;
  final List<ContactItemItem> contactList;

  const SectionIntroCardWidget({
    Key? key,
    required this.buttonEnable,
    required this.downloadCvOnPress,
    required this.title,
    required this.subTitle,
    required this.bioText,
    required this.buttonName,
    required this.contactList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final introCardHelper=Provider.of<IntroCardHelper>(context);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height:SizeConfig.isMobile(context)?SizeConfig.height*0.45:SizeConfig.height*0.55,
      padding: EdgeInsets.all(SizeConfig.isMobile(context)?SizeConfig.height*0.03:SizeConfig.height*0.05),
      margin: EdgeInsets.only(
        top: SizeConfig.height*0.0,
        right:SizeConfig.isDesktop(context)?SizeConfig.height*0.04:SizeConfig.height*0.02,
        left:SizeConfig.isDesktop(context)?SizeConfig.height*0.04:SizeConfig.height*0.02,
      ),
      decoration: mainCardDecoration.copyWith(
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/background_circle.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // left side content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                // texts and button
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // title
                      Text(
                        title,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: ColorConfig().fontBlackColor(1),
                        ),
                      ),

                      SizedBox(
                        height: SizeConfig.height*0.005,
                      ),
                      // sub title
                      Text(
                        subTitle,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: ColorConfig().fontBlackColor(1),
                        ),
                      ),

                      SizedBox(
                        height: SizeConfig.height*0.01,
                      ),
                      // sub sub title
                      Text(
                        bioText,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: ColorConfig().fontBlackColor(1),
                        ),
                      ),

                      SizedBox(
                        height: SizeConfig.height*0.03,
                      ),

                      // download CV button
                      SizedBox(
                        width:SizeConfig.height*0.13 ,
                        child: CustomButtonWithoutIcon(
                          buttonText: buttonName,
                          onPress: downloadCvOnPress,
                          showLoading: buttonEnable,
                          onPressColor: ColorConfig().buttonWhiteColor(1),
                          loadingColor: ColorConfig().buttonBoldOrangeColor(1),
                          backgroundColor: ColorConfig().buttonOrangeColor(1),
                          borderColor: ColorConfig().buttonOrangeColor(1),
                          shadowColor: ColorConfig().buttonOrangeColor(0.5),
                          style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: ColorConfig().fontWhiteColor(1),
                          ),
                          borderWidth: 0,
                          elevation: 2,
                        ),
                      ),
                    ],
                  ),
                ),

                /// Lets talk buttons
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Lets talk',
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: ColorConfig().fontBlackColor(1),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.height*0.01,
                    ),
                    /// lets talk buttons list
                    SizedBox(
                      height: SizeConfig.height*0.05,
                      child: Row(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              itemCount: contactList.length,
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              padding: EdgeInsets.only(left: SizeConfig.height * 0.0,right:SizeConfig.height * 0.02, ),
                              itemBuilder: (context, index){
                                return Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right:SizeConfig.height * 0.015,),
                                      child: SizedBox(
                                        width:SizeConfig.isDesktop(context)?SizeConfig.height*0.04:SizeConfig.isTablet(context)?SizeConfig.height*0.03:SizeConfig.height*0.04,
                                        height:SizeConfig.isDesktop(context)?SizeConfig.height*0.04:SizeConfig.isTablet(context)?SizeConfig.height*0.03:SizeConfig.height*0.04,
                                        child: ContactCircleButton(
                                          onPress: (){
                                            introCardHelper.socialOnTap(
                                              context: context,
                                              buttonType: contactList[index].type,
                                              url: contactList[index].url,
                                            );

                                          },
                                          icon: contactList[index].icon,
                                          backgroundColor: contactList[index].backgroundColor,
                                          iconColor: contactList[index].iconColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),


          // animation
          Visibility(
            visible: !SizeConfig.isMobile(context),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: SizeConfig.height*0.45,
                    height: SizeConfig.height*0.45,
                    child:Lottie.asset(
                      "assets/gif/intro.json",
                      fit: BoxFit.contain,
                      width: SizeConfig.height*0.45,
                      height: SizeConfig.height*0.45,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
