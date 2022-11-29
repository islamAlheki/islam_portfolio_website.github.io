import 'package:flutter/foundation.dart';



class SplashProvider extends ChangeNotifier{

  bool isSplashScreen=true;
  bool connectionCheckedBefore=false;

  setConnectionCheckedBefore({required bool checked}){
    connectionCheckedBefore=checked;
    notifyListeners();
    if (kDebugMode) {
      print('connection Checked Before= $connectionCheckedBefore');
    }
  }


  setIsSplashScreen({required bool splash}){
    isSplashScreen=splash;
    notifyListeners();
    if (kDebugMode) {
      print('isSplashScreen= $isSplashScreen');
    }
  }

  disposeIsSplashScreen({required bool splash}) {
    isSplashScreen=splash;
    if (kDebugMode) {
      print('isSplashScreen= $isSplashScreen');
    }
  }


}