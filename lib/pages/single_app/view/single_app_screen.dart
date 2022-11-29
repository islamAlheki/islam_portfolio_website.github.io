import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_decorations_config.dart';
import 'package:islam_portfolio/pages/single_app/model/project_item_model.dart';
import 'package:islam_portfolio/pages/single_app/provider/helper/single_app_helper.dart';
import 'package:islam_portfolio/pages/single_app/view/widget/app_data_and_buttons.dart';
import 'package:islam_portfolio/pages/single_app/view/widget/single_features_list_widget.dart';
import 'package:islam_portfolio/pages/single_app/view/widget/full_description_widget.dart';
import 'package:islam_portfolio/pages/single_app/view/widget/top_divider_widget.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:provider/provider.dart';

class SingleAppScreen extends StatefulWidget {
  final int appId;
  final Color appColor;
  const SingleAppScreen({Key? key,required this.appId,required this.appColor}) : super(key: key);

  @override
  State<SingleAppScreen> createState() => _SingleAppScreenState();
}

class _SingleAppScreenState extends State<SingleAppScreen> {
  @override
  Widget build(BuildContext context) {
    final singleAppHelper=Provider.of<SingleAppHelper>(context);
   String appStoreId= '1602869931';
   String androidAppBundleId= 'com.tshtri.tshtri';

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          alignment: SizeConfig.isMobile(context)?Alignment.topLeft:Alignment.centerLeft,
          children: [
            /// screen content
            Container(
              margin: EdgeInsets.only(
                top: SizeConfig.isMobile(context)?SizeConfig.height*0.05:SizeConfig.height*0.04,
                bottom: SizeConfig.isMobile(context)?SizeConfig.height*0.02:SizeConfig.height*0.04,
                right: SizeConfig.isMobile(context)?SizeConfig.height*0.02:SizeConfig.height*0.04,
                left:SizeConfig.isMobile(context)?SizeConfig.height*0.02:SizeConfig.height*0.04,
              ),
              decoration: mainCardDecoration.copyWith(
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/background_circle.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  /// app details
                  Expanded(
                    flex: SizeConfig.isDesktop(context)?1:2,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.isMobile(context)?SizeConfig.height*0.005:SizeConfig.height*0.04,
                        right:SizeConfig.isMobile(context)?SizeConfig.height*0.03: SizeConfig.height*0.0,
                        left:SizeConfig.isMobile(context)?SizeConfig.height*0.02: SizeConfig.height*0.06,
                      ),
                      child: Column(
                        children: [

                          ScrollConfiguration(
                              behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                              child: Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    bottom: SizeConfig.height*0.02,
                                  ),
                                  child: ListView(
                                    padding: EdgeInsets.only(bottom: SizeConfig.height*0.02,top: SizeConfig.height*0.02,),
                                    children: [
                                      /// header
                                      // app icon and name and buttons
                                      AppDataAndButtonsWidget(
                                        appColor: ColorConfig().cardGreenColor(1),
                                        iconUrl: 'https://play-lh.googleusercontent.com/iUg7cpfDT8ZtybZPWP_TZZgK62LvCc5Rjyx8FG6mjU7QlhK3Uo_Irx0lV0BtAQcpHUDo=s180-rw',
                                        appName:'E7la2ly' ,
                                        appBio: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform ',
                                        appleStoreOnTap: (){
                                          singleAppHelper.downloadAppUrl(
                                            context: context,
                                            appStoreId: appStoreId,
                                            androidAppBundleId: androidAppBundleId,
                                            webUrl: "https://apps.apple.com/us/app/tshtri/id$appStoreId",
                                          );
                                        },
                                        playStoreOnTap: (){
                                          singleAppHelper.downloadAppUrl(
                                            context: context,
                                            appStoreId: appStoreId,
                                            androidAppBundleId: androidAppBundleId,
                                            webUrl: "https://play.google.com/store/apps/details?id=$androidAppBundleId",
                                          );
                                        },
                                      ),


                                      Visibility(
                                        visible:SizeConfig.isDesktop(context),
                                        child: TopDividerWidget(
                                          appColor: widget.appColor,
                                        ),
                                      ),
                                      // description
                                      const FullDescriptionWidget(
                                        fullDescription: 'An experienced Flutter developer Morethan 3 years,and I developed more than 10 Apps nowon Google play, and I developed morethan 10 Apps now  on Google play,and I developed more than 10 Apps now on Google play,  ',
                                      ),

                                      // Futures
                                      SingleFeaturesListWidget(
                                        appMainColor: widget.appColor,
                                        futureList: const [
                                          ProjectFutureItemModel(
                                            future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                                          ),
                                          ProjectFutureItemModel(
                                            future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                                          ),
                                          ProjectFutureItemModel(
                                            future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                                          ),
                                          ProjectFutureItemModel(
                                            future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                                          ),
                                          ProjectFutureItemModel(
                                            future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                                          ),
                                          ProjectFutureItemModel(
                                            future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                                          ),
                                          ProjectFutureItemModel(
                                            future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                                          ),
                                          ProjectFutureItemModel(
                                            future: 'Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform Cross-platform',
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                          ),




                        ],
                      ),
                    ),
                  ),
                  /// preview image for desktop
                  Visibility(
                    visible: !SizeConfig.isMobile(context),
                    child: Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight:Radius.circular(20),
                          bottomRight:Radius.circular(20),
                        ),
                        child: Container(
                          alignment: Alignment.bottomRight,
                          child: Image.network(
                            'https://raw.githubusercontent.com/islamAlheki2019/heke_support/master/assets/images/Scroll%20Group%2012.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /// desktop back button
            Visibility(
              visible: !SizeConfig.isMobile(context),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Container(
                      height: SizeConfig.height*0.05,
                      width: SizeConfig.height*0.05,
                      margin: EdgeInsets.only(
                        top: SizeConfig.height*0.025,
                        left:SizeConfig.height*0.015,
                      ),
                      decoration: BoxDecoration(
                        color: widget.appColor,
                        borderRadius:BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: widget.appColor.withOpacity(0.01),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: const Offset(0, 5), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: ColorConfig().iconWhiteColor(1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            /// mobile back button
            Visibility(
              visible:SizeConfig.isMobile(context),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: SizeConfig.height*0.005,
                        left: SizeConfig.height*0.02,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: ColorConfig().buttonBlackColor(1),
                        size: SizeConfig.height*0.03,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
