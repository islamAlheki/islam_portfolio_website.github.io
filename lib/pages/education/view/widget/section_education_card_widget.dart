import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_decorations_config.dart';
import 'package:islam_portfolio/pages/education/view/widget/education_item_step_widget.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class SectionEducationCardWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final List<EducationItemModel>educationList;

  const SectionEducationCardWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.educationList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(SizeConfig.isMobile(context)?SizeConfig.height*0.035:SizeConfig.height*0.05),
      margin: EdgeInsets.only(
        top: SizeConfig.isMobile(context)?SizeConfig.height*0.02:SizeConfig.height*0.05,
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // title
          Text(
            title,
            textAlign: TextAlign.start,
            maxLines: 2,
            style: Theme.of(context).textTheme.headline2!.copyWith(
              fontWeight: FontWeight.w600,
              color: ColorConfig().fontBlackColor(1),
            ),
          ),

          SizedBox(
            height: SizeConfig.height*0.01,
          ),
          // sub title
          Text(
            subTitle,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline5!.copyWith(
              fontWeight: FontWeight.w600,
              color: ColorConfig().fontBlackColor(1),
            ),
          ),

          SizedBox(
            height: SizeConfig.height*0.03,
          ),

          SizedBox(
            height: educationList.length*(SizeConfig.isMobile(context)?SizeConfig.height*0.184:SizeConfig.height*0.2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // line and circle
                      Expanded(
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            // line
                            Container(
                              margin: EdgeInsets.only(
                                left: SizeConfig.height*0.0125,
                                top: SizeConfig.height*0.02,
                                bottom: SizeConfig.height*0.02,
                              ),
                              width: SizeConfig.height*0.005,
                              color: ColorConfig().cardGrey1Color(1),
                            ),

                            //dots circles
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //
                                for(int index = 0; index < educationList.length; index++)
                                Expanded(
                                  child: EducationItemStepWidget(
                                    educationName:educationList[index].educationName ,
                                    educationAddress: educationList[index].educationAddress,
                                    graduatedIn:educationList[index].graduatedIn ,
                                    color: educationList[index].color,
                                    description: educationList[index].description,
                                  ),
                                ),


                              ],
                            ),

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

class EducationItemModel {
  final String educationName;
  final String educationAddress;
  final String graduatedIn;
  final String description;
  final Color color;


  const EducationItemModel({
    required this.educationName,
    required this.educationAddress,
    required this.graduatedIn,
    required this.description,
    required this.color,
  });
}

