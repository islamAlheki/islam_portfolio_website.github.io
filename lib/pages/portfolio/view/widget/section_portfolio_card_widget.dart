import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/routes_handler/material_navigation.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_decorations_config.dart';
import 'package:islam_portfolio/pages/portfolio/model/project_item_model.dart';
import 'package:islam_portfolio/pages/portfolio/view/widget/project_section_widget.dart';
import 'package:islam_portfolio/pages/single_app/view/single_app_screen.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class SectionPortfolioCardWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final List<ProjectItemModel>projectsList;

  const SectionPortfolioCardWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.projectsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(SizeConfig.isMobile(context)?SizeConfig.height*0.035:SizeConfig.height*0.05),
      margin: EdgeInsets.only(
        top: SizeConfig.isMobile(context)?SizeConfig.height*0.02:SizeConfig.height*0.04,
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
            height: SizeConfig.height*0.04,
          ),

          // project section
          Column(
            children: List.generate(projectsList.length, (index) {
              return ProjectSectionWidget(
                appMainColor: projectsList[index].appMainColor,
                iconUrl: projectsList[index].iconUrl,
                appName:projectsList[index].appName ,
                appBio: projectsList[index].appBio,
                futureList: projectsList[index].futureList,
                mainPreviewImage:projectsList[index].mainPreviewImage ,
                platformsList:projectsList[index].platformsList ,
                onTap: (){
                  customPushNavigator(context, SingleAppScreen(appId: 1,appColor: projectsList[index].appMainColor,));
                },
              );
            },
            ),
          )
        ],
      ),
    );
  }
}


