import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/experience/view/widget/circle_experience_step_widget.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class ExperienceItemStepWidget extends StatelessWidget {
  final bool leftSide;
  final double size;
  final String startYear;
  final String endYear;
  final String companyName;
  final String companyLogoUrl;
  final String position;
  final bool freelance;
  final String freelanceDate;
  final Color indicatorColor;

  const ExperienceItemStepWidget({Key? key,
    required this.leftSide,
    required this.size,
    required this.startYear,
    required this.endYear,
    required this.companyName,
    required this.companyLogoUrl,
    required this.position,
    required this.freelance,
    required this.freelanceDate,
    required this.indicatorColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        /// left side
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: leftSide ? <Widget>[

              //start Year - end Year or freelance date
              Text(
                freelance?freelanceDate:'$startYear - $endYear',
                textAlign: TextAlign.end,
                maxLines: 2,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: ColorConfig().fontOrangeColor(1),
                ),
              ),

              //companyName
              Text(
                companyName,
                textAlign: TextAlign.end,
                maxLines: 2,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: ColorConfig().fontBlackColor(1),
                ),
              ),

              SizedBox(
                height: SizeConfig.height*0.01,
              ),

              //position
              SizedBox(
                child: Text(
                  position,
                  textAlign: TextAlign.end,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.normal,
                    color: ColorConfig().fontBlackColor(1),
                  ),
                ),
              ),

            ]: [],
          ),
        ),

        /// logo
        CircleExperienceStepWidget(
          size: size,
          companyLogoUrl: companyLogoUrl,
          indicatorColor: indicatorColor,
        ),

        /// right side
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: !leftSide ? <Widget>[

              //start Year - end Year or freelance date
              Text(
                freelance?freelanceDate:'$startYear - $endYear',
                textAlign: TextAlign.left,
                maxLines: 2,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: ColorConfig().fontOrangeColor(1),
                ),
              ),

              //companyName
              Text(
                companyName,
                textAlign: TextAlign.left,
                maxLines: 2,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: ColorConfig().fontBlackColor(1),
                ),
              ),

              SizedBox(
                height: SizeConfig.height*0.01,
              ),

              //position
              SizedBox(
                child: Text(
                  position,
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.normal,
                    color: ColorConfig().fontBlackColor(1),
                  ),
                ),
              ),

            ] : [],
          ),
        ),
      ],
    );
  }

}
