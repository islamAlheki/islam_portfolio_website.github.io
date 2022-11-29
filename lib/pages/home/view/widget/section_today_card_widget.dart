import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_decorations_config.dart';
import 'package:islam_portfolio/pages/home/model/base_info_item_model.dart';
import 'package:islam_portfolio/pages/home/provider/helper/intro_card_helper.dart';
import 'package:islam_portfolio/pages/home/view/widget/base_info_widget.dart';
import 'package:islam_portfolio/pages/home/view/widget/side_base_info.dart';
import 'package:islam_portfolio/pages/home/view/widget/side_today_counter.dart';
import 'package:islam_portfolio/pages/home/view/widget/today_counter_item_card.dart';
import 'package:islam_portfolio/pages/home/view/widget/today_platform_card.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/widgets/buttons.dart';
import 'package:islam_portfolio/widgets/chart/pie_chart_widget.dart';
import 'package:provider/provider.dart';

class SectionTodayCardWidget extends StatelessWidget {
  final int viewsCount;
  final int totalAppsCount;
  final int partnerCount;
  final int androidAppsCount;
  final int iosAppsCount;
  final List<BaseInfoItem> infoList;

  const SectionTodayCardWidget({
    Key? key,
    required this.viewsCount,
    required this.totalAppsCount,
    required this.partnerCount,
    required this.androidAppsCount,
    required this.iosAppsCount,
    required this.infoList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      // height: SizeConfig.height*0.34,
      padding: EdgeInsets.only(
        top:SizeConfig.isMobile(context)?SizeConfig.height*0.03:SizeConfig.height*0.04,
        bottom:SizeConfig.isMobile(context)?SizeConfig.height*0.03:SizeConfig.height*0.04,
        left:SizeConfig.isMobile(context)?SizeConfig.height*0.03:SizeConfig.height*0.04,
        right:SizeConfig.isMobile(context)?SizeConfig.height*0.03:SizeConfig.height*0.04,
      ),
      margin: EdgeInsets.only(
        top:SizeConfig.isDesktop(context)?SizeConfig.height*0.03:SizeConfig.height*0.015,
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
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// left desktop responsive
              Visibility(
                visible:SizeConfig.isDesktop(context),
                child: Expanded(
                  child: SideBaseInfoWidget(
                    infoList: infoList,
                    largeMode: true,
                  ),
                ),
              ),


              /// chart
              Expanded(
                child: SideTodayCounterWidget(
                  viewsCount: viewsCount,
                  partnerCount: partnerCount,
                  iosAppsCount: iosAppsCount,
                  androidAppsCount: androidAppsCount,
                ),
              ),
            ],
          ),

          /// chart mobile responsive
          Visibility(
            visible:!SizeConfig.isDesktop(context),
            child: Padding(
              padding:EdgeInsets.only(top: SizeConfig.height*0.04),
              child:SideBaseInfoWidget(
                infoList: infoList,
                largeMode: true,
              ),
            ),
          ),
        ],
      ),
    );
  }

}


