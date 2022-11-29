import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_decorations_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class SectionWhoAmCardWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String mySummary;
  final String aboutVectorImg;

  const SectionWhoAmCardWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.mySummary,
    required this.aboutVectorImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(SizeConfig.height*0.05),
      margin: EdgeInsets.only(
        top: SizeConfig.height*0.04,
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
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // left side content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // title
                    Text(
                      title,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: ColorConfig().fontBlackColor(1),
                      ),
                    ),

                    SizedBox(
                      height: SizeConfig.height*0.02,
                    ),
                    // sub title
                    Text(
                      subTitle,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: ColorConfig().fontBlackColor(1),
                      ),
                    ),

                    SizedBox(
                      height: SizeConfig.height*0.01,
                    ),


                    // sub sub title
                    Text(
                      mySummary,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: ColorConfig().fontBlackColor(1),
                      ),
                    ),
                  ],
                ),
              ),

              /// vector mobile responsive
              Visibility(
                visible: !SizeConfig.isMobile(context),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: SizeConfig.height*0.28,
                        height: SizeConfig.height*0.28,
                        child:SvgPicture.asset(
                          "assets/images/$aboutVectorImg.svg",
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),

          /// vector mobile responsive
          Visibility(
            visible: SizeConfig.isMobile(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: SizeConfig.height*0.02,
                ),
                SizedBox(
                  width: SizeConfig.height*0.28,
                  height: SizeConfig.height*0.28,
                  child:SvgPicture.asset(
                    "assets/images/$aboutVectorImg.svg",
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
