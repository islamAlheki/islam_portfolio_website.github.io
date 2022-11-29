
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/home/view/widget/custom_chart_today.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class TodayCounterItemCardWidget extends StatelessWidget {
  final int countNumber;
  final String fullUnit;
  final Color cardColor;
  final VoidCallback changeChartOnTap;
  final bool mainChart;
  final Color lineColor;


  const TodayCounterItemCardWidget({
    Key? key,
    required this.countNumber,
    required this.fullUnit,
    required this.cardColor,
    required this.mainChart,
    required this.changeChartOnTap,
    required this.lineColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Container(
        height:SizeConfig.isMobile(context)?SizeConfig.height*0.16: SizeConfig.height*0.2,
        padding: EdgeInsets.only(
          left: SizeConfig.height*0.01,
          right: SizeConfig.height*0.01,
          top: SizeConfig.height*0.01,
          bottom: SizeConfig.height*0.01,
        ),
        margin: EdgeInsets.only(
          top: SizeConfig.height*0.018,
          bottom: SizeConfig.height*0.015,
        ),
        decoration: BoxDecoration(
          color:cardColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: cardColor.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            /// count and title
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title
                Text(
                  fullUnit.toString(),
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: ColorConfig().fontWhiteColor(1),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.height*0.002,
                ),
                //count and unit
                Row(
                  children: [
                    // count
                    Text(
                      countNumber.toString(),
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: ColorConfig().fontGrey1Color(1),
                      ),
                    ),

                  ],
                ),
                SizedBox(
                  height: SizeConfig.height*0.001,
                ),

              ],
            ),

            /// chart
            // Container(
            //   padding: const EdgeInsets.all(0),
            //   width: SizeConfig.height*0.3,
            //   height: SizeConfig.height*0.07,
            //   child: LineChart(
            //     LineChartData(
            //       borderData: FlBorderData(show: false),
            //       titlesData: FlTitlesData(show: false),
            //
            //       lineBarsData: [
            //       LineChartBarData(
            //         show: true,
            //         isCurved: true,
            //         color: ColorConfig().loadingWhiteColor(1),
            //         spots: [
            //           const FlSpot(0, 1),
            //           const FlSpot(1, 3),
            //           const FlSpot(2, 10),
            //           const FlSpot(3, 7),
            //           const FlSpot(4, 12),
            //           const FlSpot(5, 13),
            //           const FlSpot(6, 17),
            //           const FlSpot(7, 15),
            //           const FlSpot(8, 20)
            //         ],
            //       )
            //     ],
            //     ),
            //   ),
            // ),
            Expanded(
              child: SizedBox(
                height:SizeConfig.isMobile(context)?SizeConfig.height*0.18: SizeConfig.height*0.2,
                child: CustomChartTodayWidget(
                  mainChart: mainChart,
                  lineColor:lineColor ,
                  // isProjects: isProjects,
                  // isPartner:isPartner ,
                  // isViews: isViews,
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.height*0.001,
            ),
            // fullUnit
            Padding(
              padding: EdgeInsets.only(left:SizeConfig.height*0.01,right:SizeConfig.height*0.01 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible:!SizeConfig.isMobile(context),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.refresh,
                        color: ColorConfig().iconWhiteColor(1),
                        size: SizeConfig.width*0.015,
                      ),
                      onPressed: changeChartOnTap,
                    ),
                  ),

                  Expanded(
                    child: Text(
                      DateFormat.MMMM().format(DateTime.now()).toString(),
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.normal,
                        color: ColorConfig().fontWhiteColor(1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
