import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class SkillItemWidget extends StatelessWidget {
  final Color skillColor;
  final String skillTitle;
  final double skillPercent;
  const SkillItemWidget({
    Key? key,
    required this.skillColor,
    required this.skillPercent,
    required this.skillTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(SizeConfig.height*0.0),
      margin: EdgeInsets.only(
        right: SizeConfig.height*0.0,
        left: SizeConfig.height*0.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //skill title
          Row(
            children: [
              Expanded(
                child: Text(
                  skillTitle.toString(),
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: ColorConfig().fontBlackColor(1),
                  ),
                ),
              ),
            ],
          ),

          // skill Percent

          Container(
            margin: EdgeInsets.only(right: SizeConfig.height*0.02),
            height: SizeConfig.height*0.06,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    Positioned(
                      bottom: SizeConfig.height*0.0, // you can adjust this through negatives to raise your child widget
                      left: (constraints.maxWidth * skillPercent) - (50 / 2), // child width / 2 (this is to get the center of the widget),
                      child: Container(
                        margin: EdgeInsets.only(left:SizeConfig.height*0.025 ),
                        alignment: Alignment.center,
                        child: Text(
                          '${skillPercent * 100}%',
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: ColorConfig().fontBlackColor(1),
                          ),),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      bottom: 0,
                      child: LinearPercentIndicator(
                        padding: EdgeInsets.zero,
                        addAutomaticKeepAlive: true,
                        animation: true,
                        animateFromLastPercent: true,
                        animationDuration: 2000,
                        lineHeight: SizeConfig.height*0.008,
                        width: constraints.maxWidth,
                        backgroundColor: ColorConfig().cardGrey1Color(1),
                        percent: skillPercent,
                        progressColor: skillColor,
                        barRadius:const Radius.circular(50),
                        widgetIndicator:Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: skillColor,
                            shape: BoxShape.circle,
                          ),
                          width: SizeConfig.height*0.015,
                          height: SizeConfig.height*0.015,
                        ),
                        curve: Curves.easeInOutCirc,
                      ),
                    ),
                  ],
                );
              },
            ),
          )

        ],
      ),
    );
  }
}
