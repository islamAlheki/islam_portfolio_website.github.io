import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_decorations_config.dart';
import 'package:islam_portfolio/pages/experience/view/widget/experience_item_step_widget.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class SectionExperienceCardWidget extends StatelessWidget {
  final String title;
  final List<ExperienceItemModel>experienceList;

  const SectionExperienceCardWidget({
    Key? key,
    required this.title,
    required this.experienceList,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(SizeConfig.isMobile(context)?SizeConfig.height*0.02:SizeConfig.height*0.04),
      margin: EdgeInsets.only(
        top:SizeConfig.isMobile(context)?SizeConfig.height*0.02: SizeConfig.height*0.04,
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
        crossAxisAlignment: CrossAxisAlignment.center,
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
            height: SizeConfig.height*0.04,
          ),

          SizedBox(
            height: experienceList.length*(SizeConfig.isMobile(context)?SizeConfig.height*0.17:SizeConfig.height*0.15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      /// line and circle
                      Expanded(
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            for (var i = 0; i < experienceList.length; i++)
                              ExperienceItemStepWidget(
                                leftSide: i.isEven,
                                size: SizeConfig.height*0.1,
                                indicatorColor: ColorConfig().cardGrey1Color(1),
                                startYear:experienceList[i].startYear,
                                endYear: experienceList[i].endYear,
                                freelance: experienceList[i].freelance,
                                freelanceDate: experienceList[i].freelanceDate,
                                position:experienceList[i].position ,
                                companyName: experienceList[i].companyName,
                                companyLogoUrl:experienceList[i].companyLogoUrl ,
                              )
                          ],
                        ),
                      ),


                    ],
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExperienceItemModel {
  final String startYear;
  final String endYear;
  final String companyName;
  final String companyLogoUrl;
  final String position;
  final bool freelance;
  final String freelanceDate;

  const ExperienceItemModel({
    required this.startYear,
    required this.endYear,
    required this.companyName,
    required this.companyLogoUrl,
    required this.position,
    required this.freelance,
    required this.freelanceDate,
  });
}

