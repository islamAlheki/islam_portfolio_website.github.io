import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/education/view/widget/step_circle_widget.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class EducationItemStepWidget extends StatelessWidget {
  final String educationName;
  final String educationAddress;
  final String graduatedIn;
  final String description;
  final Color color;
  const EducationItemStepWidget({
    Key? key,
    required this.educationName,
    required this.educationAddress,
    required this.graduatedIn,
    required this.description,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const StepCircleWidget(active: true,),
            // empty item
            SizedBox(
              width: SizeConfig.height*0.03,
              height:SizeConfig.height*0.03 ,
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.height*0.01,
              right: SizeConfig.height*0.01,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //educationName
                Text(
                    educationName,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: ColorConfig().fontBlackColor(1),
                    ),
                  ),
                SizedBox(
                  height: SizeConfig.height*0.005,
                ),
                //educationAddress
                Text(
                  educationAddress,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: color,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.isMobile(context)?SizeConfig.height*0.015:SizeConfig.height*0.02,
                ),
                //graduatedIn
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        graduatedIn,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.normal,
                          color: ColorConfig().fontBlackColor(1),
                        ),
                      ),
                    ),
                  ],
                ),

                //description
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          description,
                          textAlign: TextAlign.start,
                          maxLines: 3,
                          style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.normal,
                            color: ColorConfig().fontBlackColor(1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.height*0.02,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

