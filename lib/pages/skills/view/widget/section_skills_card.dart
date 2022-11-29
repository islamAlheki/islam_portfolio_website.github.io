import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_decorations_config.dart';
import 'package:islam_portfolio/pages/skills/view/widget/skill_item_widget.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class SectionSkillsCardWidget extends StatelessWidget {
  final String title;
  final List<SkellItemModel>skillsList;

  const SectionSkillsCardWidget({
    Key? key,
    required this.title,
    required this.skillsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(SizeConfig.isMobile(context)?SizeConfig.height*0.04:SizeConfig.height*0.05),
      margin: EdgeInsets.only(
        top: SizeConfig.isMobile(context)?SizeConfig.height*0.02:SizeConfig.height*0.04,
        right:SizeConfig.isDesktop(context)?SizeConfig.height*0.04:SizeConfig.height*0.02,
        left:SizeConfig.isDesktop(context)?SizeConfig.height*0.04:SizeConfig.height*0.02,
      ),
      decoration: mainCardDecoration.copyWith(),
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


          // skills items

          Row(
            children: [
              Expanded(
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: skillsList.length,
                  padding: EdgeInsets.only(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: SizeConfig.height*006 /SizeConfig.height*0.2,
                    crossAxisSpacing: SizeConfig.height * 0.08,
                    mainAxisSpacing: SizeConfig.height * 0.02,
                    mainAxisExtent: SizeConfig.height * 0.082,
                    crossAxisCount:SizeConfig.isMobile(context)?1:2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return SkillItemWidget(
                      skillColor:skillsList[index].skillColor ,
                      skillPercent: skillsList[index].skillPercent,
                      skillTitle: skillsList[index].skillTitle,
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SkellItemModel {
  final Color skillColor;
  final String skillTitle;
  final double skillPercent;


  const SkellItemModel({
    required this.skillColor,
    required this.skillPercent,
    required this.skillTitle,
  });
}

