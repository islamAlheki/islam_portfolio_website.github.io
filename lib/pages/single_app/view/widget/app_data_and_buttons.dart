import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/single_app/view/widget/top_divider_widget.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/widgets/buttons.dart';
import 'package:islam_portfolio/widgets/custom_image_network.dart';

class AppDataAndButtonsWidget extends StatelessWidget {
  final Color appColor;
  final String iconUrl;
  final String appName;
  final String appBio;
  final VoidCallback appleStoreOnTap;
  final VoidCallback playStoreOnTap;
  const AppDataAndButtonsWidget({
    Key? key,
    required this.appColor,
    required this.iconUrl,
    required this.appName,
    required this.appBio,
    required this.appleStoreOnTap,
    required this.playStoreOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment:SizeConfig.isDesktop(context)? CrossAxisAlignment.center:CrossAxisAlignment.start,
          children: [
            /// app icon
            Container(
              width: SizeConfig.height*0.09,
              height: SizeConfig.height*0.09,
              decoration: BoxDecoration(
                color:appColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: appColor.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: const Offset(0, 10), // changes position of shadow
                  ),
                ],
              ),
              child:ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CustomImageNetwork(
                  image:iconUrl.toString(),
                  fit: BoxFit.cover,
                  loadingColor: appColor,
                  errorBackground: appColor,
                  errorImage: 'image_null.png',
                  errorFit: BoxFit.cover,
                  errorImageSize: SizeConfig.height*0.04,
                  errorPadding: EdgeInsets.only(bottom: SizeConfig.height * 0.0),
                ),
              ),
            ),

            SizedBox(
              width: SizeConfig.height*0.02,
            ),
            /// app name and bio
            Expanded(
              child: Column(
                crossAxisAlignment:SizeConfig.isDesktop(context)? CrossAxisAlignment.start:CrossAxisAlignment.start,
                children: [
                  // app name
                  Text(
                    appName,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: ColorConfig().fontBlackColor(1),
                    ),
                  ),

                  SizedBox(
                    height: SizeConfig.height*0.005,
                  ),
                  // appBio
                  Text(
                    appBio,
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: ColorConfig().fontBlackColor(0.7),
                    ),
                  ),
                ],
              ),
            ),

            /// buttons responsive  desktop
            Visibility(
              visible: SizeConfig.isDesktop(context),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // apple store
                    SizedBox(
                      width:SizeConfig.height*0.18,
                      height:SizeConfig.height*0.045,
                      child: CustomButtonWithIcon(
                        buttonText: 'Apple Store',
                        radius: 10,
                        iconIsLeft: false,
                        iconWidget: const PlatformButtonIcon(
                          icon: 'apple_store_card',
                        ),
                        onPress: appleStoreOnTap,
                        showLoading: false,
                        onPressColor: ColorConfig().cardGrey1Color(0.5),
                        loadingColor: ColorConfig().cardGrey1Color(1),
                        backgroundColor: ColorConfig().buttonWhiteColor(1),
                        borderColor: ColorConfig().cardBlackColor(0.2),
                        shadowColor: ColorConfig().cardGrey1Color(0.5),
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: ColorConfig().fontBlackColor(1),
                        ),
                        borderWidth: 0.5,
                      ),
                    ),

                    SizedBox(
                      height: SizeConfig.height*0.01,
                    ),
                    // play store
                    SizedBox(
                      width:SizeConfig.height*0.18,
                      height:SizeConfig.height*0.045,
                      child: CustomButtonWithIcon(
                        buttonText: 'Play Store',
                        radius: 10,
                        iconIsLeft: false,
                        iconWidget: const PlatformButtonIcon(
                          icon: 'play_store_card',
                        ),
                        onPress: playStoreOnTap,
                        showLoading: false,
                        onPressColor: ColorConfig().cardGrey1Color(0.5),
                        loadingColor: ColorConfig().cardGrey1Color(1),
                        backgroundColor: ColorConfig().buttonWhiteColor(1),
                        borderColor: ColorConfig().cardBlackColor(0.2),
                        shadowColor: ColorConfig().cardGrey1Color(0.5),
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: ColorConfig().fontBlackColor(1),
                        ),
                        borderWidth: 0.5,
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),

        Visibility(
          visible: !SizeConfig.isDesktop(context),
          child: TopDividerWidget(
            appColor: appColor,
          ),
        ),

        Visibility(
          visible: !SizeConfig.isDesktop(context),
          child: SizedBox(
            height: SizeConfig.height*0.02,
          ),
        ),

        /// buttons responsive  mobile and tablet
        Visibility(
          visible: !SizeConfig.isDesktop(context),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // apple store
              SizedBox(
                width:SizeConfig.isMobile(context)?SizeConfig.height*0.15:SizeConfig.height*0.16,
                height:SizeConfig.height*0.04,
                child: CustomButtonWithIcon(
                  buttonText: 'Apple Store',
                  radius: 10,
                  iconIsLeft: false,
                  iconWidget: const PlatformButtonIcon(
                    icon: 'apple_store_card',
                  ),
                  onPress: appleStoreOnTap,
                  showLoading: false,
                  onPressColor: ColorConfig().cardGrey1Color(0.5),
                  loadingColor: ColorConfig().cardGrey1Color(1),
                  backgroundColor: ColorConfig().buttonWhiteColor(1),
                  borderColor: ColorConfig().cardBlackColor(0.2),
                  shadowColor: ColorConfig().cardGrey1Color(0.5),
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: ColorConfig().fontBlackColor(1),
                  ),
                  borderWidth: 0.5,
                ),
              ),

              SizedBox(
                width:SizeConfig.isMobile(context)?SizeConfig.height*0.01:SizeConfig.height*0.015,
              ),
              // play store
              SizedBox(
                width:SizeConfig.isMobile(context)?SizeConfig.height*0.15:SizeConfig.height*0.16,
                height:SizeConfig.height*0.04,
                child: CustomButtonWithIcon(
                  buttonText: 'Play Store',
                  radius: 10,
                  iconIsLeft: false,
                  iconWidget: const PlatformButtonIcon(
                    icon: 'play_store_card',
                  ),
                  onPress: playStoreOnTap,
                  showLoading: false,
                  onPressColor: ColorConfig().cardGrey1Color(0.5),
                  loadingColor: ColorConfig().cardGrey1Color(1),
                  backgroundColor: ColorConfig().buttonWhiteColor(1),
                  borderColor: ColorConfig().cardBlackColor(0.2),
                  shadowColor: ColorConfig().cardGrey1Color(0.5),
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: ColorConfig().fontBlackColor(1),
                  ),
                  borderWidth: 0.5,
                ),
              ),

            ],
          ),
        ),

      ],
    );
  }
}

class PlatformButtonIcon extends StatelessWidget {
  final String icon;
  const PlatformButtonIcon({Key? key,required this.icon,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: SizeConfig.height*0.01),
      child: SvgPicture.asset(
        'assets/icons/$icon.svg',
        width:SizeConfig.isMobile(context)?SizeConfig.height*0.02:SizeConfig.height*0.03,
        height:SizeConfig.isMobile(context)?SizeConfig.height*0.02:SizeConfig.height*0.03,
       fit: BoxFit.contain,

      ),
    );
  }
}
