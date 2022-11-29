import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/home/provider/helper/today_chart_helper.dart';
import 'package:islam_portfolio/pages/home/view/widget/today_counter_item_card.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:provider/provider.dart';

class SideTodayCounterWidget extends StatelessWidget {
  final int viewsCount;
  final int partnerCount;
  final int androidAppsCount;
  final int iosAppsCount;

  const SideTodayCounterWidget({
    required this.viewsCount,
    required this.partnerCount,
    required this.androidAppsCount,
    required this.iosAppsCount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TodayChartHelper todayChartHelper =Provider.of<TodayChartHelper>(context);

    return  Align(
      alignment: Alignment.topRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// title
          Text(
            'Today!',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline3!.copyWith(
              fontWeight: FontWeight.w600,
              color: ColorConfig().fontBlackColor(1),
            ),
          ),
          SizedBox(
            height: SizeConfig.height*0.0,
          ),

          // CircularPercentIndicator(
          //   radius: SizeConfig.height*0.07,
          //   lineWidth: SizeConfig.height*0.013,
          //   animation: true,
          //   animationDuration: 5000,
          //   addAutomaticKeepAlive: false,
          //   animateFromLastPercent: true,
          //   curve: Curves.easeInOutCirc,
          //   backgroundColor: ColorConfig().loadingCyanColor(0.1),
          //   percent: 0.5,
          //   center: Text(
          //     "${viewsCount.toString()}\nView’s",
          //     textAlign: TextAlign.center,
          //     style: Theme.of(context).textTheme.headline5!.copyWith(
          //       fontWeight: FontWeight.w600,
          //       color: ColorConfig().fontBlackColor(1),
          //     ),
          //   ),
          //   circularStrokeCap: CircularStrokeCap.round,
          //   progressColor: ColorConfig().loadingCyanColor(1),
          //
          // ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // views
              TodayCounterItemCardWidget(
                cardColor: ColorConfig().cardGreenColor(0.7),
                lineColor:ColorConfig().cardGreenColor(1) ,
                countNumber:viewsCount ,
                fullUnit: 'View’s',
                mainChart:todayChartHelper.viewsMainChart ,
                changeChartOnTap: todayChartHelper.changeViewsChartType,
              ),
              SizedBox(
                width:SizeConfig.isMobile(context)?SizeConfig.height*0.01: SizeConfig.height*0.02,
              ),
              // projects
              TodayCounterItemCardWidget(
                cardColor: ColorConfig().cardBlueColor(0.7),
                lineColor:ColorConfig().cardBlueColor(1) ,
                countNumber:partnerCount ,
                fullUnit: 'Project’s',
                mainChart:todayChartHelper.projectsMainChart ,
                changeChartOnTap: todayChartHelper.changeProjectsChartType,

              ),
              SizedBox(
                width:SizeConfig.isMobile(context)?SizeConfig.height*0.01: SizeConfig.height*0.02,
              ),
              // partners
              TodayCounterItemCardWidget(
                cardColor: ColorConfig().iconYellowColor(1),
                lineColor:ColorConfig().loadingOrangeColor(1) ,
                countNumber:partnerCount ,
                fullUnit: 'Partner’s',
                mainChart:todayChartHelper.partnerMainChart ,
                changeChartOnTap: todayChartHelper.changePartnerChartType,
              ),
            ],
          ),

          /// counter cards

          ///
          // Row(
          //   children: [
          //     Expanded(
          //       child: SizedBox(
          //         height: SizeConfig.height*0.25,
          //         child:LineChartSample1(),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
