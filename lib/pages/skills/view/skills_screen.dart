import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/skills/view/widget/section_skills_card.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({Key? key}) : super(key: key);

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Skills
        SectionSkillsCardWidget(
          title: 'My Skills',
          skillsList: [
            SkellItemModel(
              skillColor: ColorConfig().iconRedColor(1),
              skillPercent:1 ,
              skillTitle:'Cross-platform' ,
            ),

            SkellItemModel(
              skillColor: ColorConfig().cardBlueColor( 1),
              skillPercent:0.5 ,
              skillTitle:'Quality' ,
            ),

            SkellItemModel(
              skillColor: ColorConfig().cardGreenColor(1),
              skillPercent:0.6 ,
              skillTitle:'Cross-platform' ,
            ),

            SkellItemModel(
              skillColor: ColorConfig().iconYellowColor(1),
              skillPercent:0.8 ,
              skillTitle:'Cross-platform' ,
            ),

            SkellItemModel(
              skillColor: ColorConfig().iconRedColor(1),
              skillPercent:0.9 ,
              skillTitle:'Cross-platform' ,
            ),

            SkellItemModel(
              skillColor: ColorConfig().iconRedColor(1),
              skillPercent:0.1 ,
              skillTitle:'Cross-platform' ,
            ),
            SkellItemModel(
              skillColor: ColorConfig().iconYellowColor(1),
              skillPercent:0.8 ,
              skillTitle:'Cross-platform' ,
            ),
            SkellItemModel(
              skillColor: ColorConfig().iconYellowColor(1),
              skillPercent:0.8 ,
              skillTitle:'Cross-platform' ,
            ),
            SkellItemModel(
              skillColor: ColorConfig().iconYellowColor(1),
              skillPercent:0.8 ,
              skillTitle:'Cross-platform' ,
            ),
            SkellItemModel(
              skillColor: ColorConfig().iconYellowColor(1),
              skillPercent:0.8 ,
              skillTitle:'Cross-platform' ,
            ),
            SkellItemModel(
              skillColor: ColorConfig().iconYellowColor(1),
              skillPercent:0.8 ,
              skillTitle:'Cross-platform' ,
            ),
            SkellItemModel(
              skillColor: ColorConfig().iconYellowColor(1),
              skillPercent:0.8 ,
              skillTitle:'Cross-platform' ,
            ),
            SkellItemModel(
              skillColor: ColorConfig().iconYellowColor(1),
              skillPercent:0.8 ,
              skillTitle:'Cross-platform' ,
            ),
            SkellItemModel(
              skillColor: ColorConfig().iconYellowColor(1),
              skillPercent:0.8 ,
              skillTitle:'Cross-platform' ,
            ),
            SkellItemModel(
              skillColor: ColorConfig().iconYellowColor(1),
              skillPercent:0.8 ,
              skillTitle:'Cross-platform' ,
            ),
          ],
        ),

      ],
    );
  }
}
