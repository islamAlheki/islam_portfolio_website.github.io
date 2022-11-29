import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/widgets/chart/line_chart_widget.dart';

class TodayPlatformCard extends StatelessWidget {
  final int iosAppsCount;
  final int androidAppsCount;
  final String title;
  final String icon;


  const TodayPlatformCard({
    Key? key,
    required this.iosAppsCount,
    required this.androidAppsCount,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Container(
        height: SizeConfig.height*0.09,
        padding: EdgeInsets.only(
          left: SizeConfig.height*0.01,
          right: SizeConfig.height*0.01,
          top: SizeConfig.height*0.01,
          bottom: SizeConfig.height*0.01,
        ),
        margin: EdgeInsets.only(
          top: SizeConfig.height*0.015,
          bottom: SizeConfig.height*0.015,
          right: SizeConfig.height*0.03,
        ),
        decoration: BoxDecoration(
          color:ColorConfig().cardGrey1Color(1),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: ColorConfig().cardGrey1Color(0.1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            // icon
            Expanded(
              child: Row(
                children: [
                  // icon
                  Container(
                    height: SizeConfig.height*0.033,
                    width: SizeConfig.height*0.033,
                    decoration: BoxDecoration(
                      color:ColorConfig().cardBlueColor(1),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: ColorConfig().cardBlueColor(0.1),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/$icon.svg',
                        color: ColorConfig().iconWhiteColor(0.8),
                        width:SizeConfig.height*0.018,
                        height:SizeConfig.height*0.018 ,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.height*0.01,
                  ),
                  /// count and title
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //count and unit
                      Text(
                        title.toString(),
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: ColorConfig().fontBlackColor(1),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.height*0.001,
                      ),
                      // fullUnit
                      Row(
                        children: [
                          Text(
                            iosAppsCount.toString(),
                            textAlign: TextAlign.left,
                            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.normal,
                              color: ColorConfig().fontBlueColor(1),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.height*0.002,
                          ),
                          // unit
                          Text(
                            'p',
                            textAlign: TextAlign.left,
                            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.normal,
                              color: ColorConfig().fontBlueColor(1),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),
            // android
            Container(
              padding: EdgeInsets.only(left: SizeConfig.height*0.01),
              child: Row(
                children: [
                  // icon
                  Container(
                    height: SizeConfig.height*0.033,
                    width: SizeConfig.height*0.033,
                    decoration: BoxDecoration(
                      color:ColorConfig().cardBlueColor(1),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: ColorConfig().cardBlueColor(0.1),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/$icon.svg',
                        color: ColorConfig().iconWhiteColor(0.8),
                        width:SizeConfig.height*0.018,
                        height:SizeConfig.height*0.018 ,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.height*0.01,
                  ),
                  /// count and title
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //count and unit
                      Text(
                        title.toString(),
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: ColorConfig().fontBlackColor(1),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.height*0.001,
                      ),
                      // fullUnit
                      Row(
                        children: [
                          Text(
                            androidAppsCount.toString(),
                            textAlign: TextAlign.left,
                            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.normal,
                              color: ColorConfig().fontBlueColor(1),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.height*0.002,
                          ),
                          // unit
                          Text(
                            'p',
                            textAlign: TextAlign.left,
                            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.normal,
                              color: ColorConfig().fontBlueColor(1),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
