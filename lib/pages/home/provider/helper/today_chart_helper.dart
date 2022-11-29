import 'package:flutter/cupertino.dart';
import 'package:islam_portfolio/provider/launcher_helper_provider.dart';
import 'package:provider/provider.dart';

class TodayChartHelper extends ChangeNotifier{

  bool viewsMainChart=true;
  bool projectsMainChart=true;
  bool partnerMainChart=true;

  changeViewsChartType(){
    viewsMainChart=!viewsMainChart;
    notifyListeners();
  }
  changeProjectsChartType(){
    projectsMainChart=!projectsMainChart;
    notifyListeners();
  }
  changePartnerChartType(){
    partnerMainChart=!partnerMainChart;
    notifyListeners();
  }

}

