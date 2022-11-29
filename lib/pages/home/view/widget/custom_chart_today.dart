import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';


class CustomChartTodayWidget extends StatefulWidget {
  final bool mainChart;
  final Color lineColor;
  const CustomChartTodayWidget({Key? key,required this.mainChart,required this.lineColor,}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CustomChartTodayWidgetState();
}

class CustomChartTodayWidgetState extends State<CustomChartTodayWidget> {


  LineChartData get sampleData1 => LineChartData(
    lineTouchData: lineTouchData1,
    gridData: gridData,
    titlesData: titlesData1,
    borderData: borderData,
    lineBarsData: lineBarsData1,
    minX: 0,
    maxX: 14,
    maxY: 4,
    minY: 0,
  );

  LineChartData get sampleData2 => LineChartData(
    lineTouchData: lineTouchData2,
    gridData: gridData,
    titlesData: titlesData2,
    borderData: borderData,
    lineBarsData: lineBarsData2,
    minX: 0,
    maxX: 14,
    maxY: 6,
    minY: 0,
  );

  LineTouchData get lineTouchData1 => LineTouchData(
    handleBuiltInTouches: true,
    touchTooltipData: LineTouchTooltipData(
      tooltipBgColor: widget.lineColor.withOpacity(0.1),
    ),
  );

  FlTitlesData get titlesData1 => FlTitlesData(
    bottomTitles: AxisTitles(
      sideTitles: bottomTitles,
    ),
    rightTitles: AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    topTitles: AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    leftTitles: AxisTitles(
      sideTitles: leftTitles(),
    ),
  );

  List<LineChartBarData> get lineBarsData1 => [
    lineChartBarData1_2,
  ];

  LineTouchData get lineTouchData2 => LineTouchData(
    enabled: false,
  );

  FlTitlesData get titlesData2 => FlTitlesData(
    bottomTitles: AxisTitles(
      sideTitles: bottomTitles,
    ),
    rightTitles: AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    topTitles: AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    leftTitles: AxisTitles(
      sideTitles: leftTitles(),
    ),
  );

  List<LineChartBarData> get lineBarsData2 => [
    lineChartBarData2_2,
  ];

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    return const SizedBox(height: 0,width: 0,);
  }

  SideTitles leftTitles() => SideTitles(
    getTitlesWidget: leftTitleWidgets,
    showTitles: false,
    interval: 1,
    reservedSize: 0,
  );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    return const SizedBox(height: 0,width: 0,);
  }

  SideTitles get bottomTitles => SideTitles(
    showTitles: false,
    reservedSize: 0,
    interval: 1,
    getTitlesWidget: bottomTitleWidgets,
  );

  FlGridData get gridData => FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
    show: false,
    border: const Border(
      bottom: BorderSide(color: Color(0xff4e4965), width: 0),
      left: BorderSide(color: Colors.transparent),
      right: BorderSide(color: Colors.transparent),
      top: BorderSide(color: Colors.transparent),
    ),
  );


  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
    isCurved: true,
    color: widget.lineColor,
    barWidth:SizeConfig.isMobile(context)?SizeConfig.height*0.004: SizeConfig.height*0.008,
    isStrokeCapRound: true,
    dotData: FlDotData(show: false),
    belowBarData: BarAreaData(
      show: false,
      color: const Color(0x00aa4cfc),
    ),
    spots: const [
      FlSpot(1, 1.2),
      FlSpot(3, 2.8),
      FlSpot(7, 1.2),
      FlSpot(10, 2.8),
      FlSpot(12, 2.6),
      FlSpot(13, 3.9),
    ],
  );



  LineChartBarData get lineChartBarData2_2 => LineChartBarData(
    isCurved: true,
    color: widget.lineColor,
    barWidth: SizeConfig.height*0.006,
    isStrokeCapRound: true,
    dotData: FlDotData(show: false),
    belowBarData: BarAreaData(
      show: true,
      color: widget.lineColor.withOpacity(0.3),
    ),
    spots: const [
      FlSpot(1, 1),
      FlSpot(3, 2.8),
      FlSpot(7, 1.2),
      FlSpot(10, 2.8),
      FlSpot(12, 2.6),
      FlSpot(13, 3.9),
    ],
  );


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: LineChart(
            widget.mainChart ? sampleData1 : sampleData2,
            swapAnimationDuration: const Duration(milliseconds: 250),
          ),
        ),
      ],
    );
  }
}
