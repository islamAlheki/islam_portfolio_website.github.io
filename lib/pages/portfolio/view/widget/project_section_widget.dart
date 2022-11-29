import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/portfolio/model/project_item_model.dart';
import 'package:islam_portfolio/pages/portfolio/view/widget/app_icon_name_bio_widget.dart';
import 'package:islam_portfolio/pages/portfolio/view/widget/app_main_preview_card.dart';
import 'package:islam_portfolio/pages/portfolio/view/widget/features_item_widget.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/widgets/buttons.dart';

class ProjectSectionWidget extends StatelessWidget {
  final Color appMainColor;
  final String iconUrl;
  final String appName;
  final String appBio;
  final String mainPreviewImage;
  final List<ProjectFutureItemModel> futureList;
  final List<PlatformItemModel> platformsList;
  final VoidCallback onTap;

  const ProjectSectionWidget({
    Key? key,
    required this.appMainColor,
    required this.iconUrl,
    required this.appName,
    required this.appBio,
    required this.futureList,
    required this.mainPreviewImage,
    required this.platformsList,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: SizeConfig.height*0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // app details card
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    /// app logo and name and bio
                    AppIconNameBioWidget(
                      appColor:appMainColor ,
                      iconUrl: iconUrl,
                      appName: appName,
                      appBio:appBio,
                      onTap: onTap,
                    ),
                    SizedBox(
                      height: SizeConfig.height*0.03,
                    ),
                    /// futures
                    Column(
                      children: List.generate(futureList.length, (index) {
                        return FeatureItemWidget(
                          color: appMainColor,
                          futureName:futureList[index].future ,
                        );
                      }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: SizeConfig.height*0.01,
              ),
              // app cardImage
              Visibility(
                visible: !SizeConfig.isMobile(context),
                child: Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: AppMainPreviewCardWidget(
                          appMainColor: appMainColor,
                          mainPreviewImage: mainPreviewImage,
                          platformsList:platformsList,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // if mobile will show app review under the futures
          Visibility(
            visible: SizeConfig.isMobile(context),
            child: SizedBox(
              height: SizeConfig.height*0.02,
            ),
          ),
          Visibility(
            visible: SizeConfig.isMobile(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: AppMainPreviewCardWidget(
                    appMainColor: appMainColor,
                    mainPreviewImage: mainPreviewImage,
                    platformsList:platformsList,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: SizeConfig.isMobile(context)?SizeConfig.height*0.03:SizeConfig.height*0.02,
          ),

          // details button
          Row(
            mainAxisAlignment:SizeConfig.isMobile(context)?MainAxisAlignment.center:MainAxisAlignment.start,
            children: [
              SizedBox(
                width:SizeConfig.height*0.14,
                child: CustomButtonWithIcon(
                  buttonText: 'Get the app',
                  iconIsLeft: true,
                  radius: 1000,
                  iconWidget: Icon(
                    Icons.arrow_back,
                    color: ColorConfig().buttonWhiteColor(1),
                    size: SizeConfig.height*0.015,
                  ),
                  onPress: onTap,
                  showLoading: false,
                  onPressColor: appMainColor.withOpacity(0.5),
                  loadingColor: ColorConfig().buttonBoldOrangeColor(1),
                  backgroundColor: appMainColor,
                  borderColor: appMainColor,
                  shadowColor: appMainColor.withOpacity(0.5),
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: ColorConfig().fontWhiteColor(1),
                  ),
                  borderWidth: 0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



