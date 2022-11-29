import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/shared_preference.dart';
import 'package:islam_portfolio/pages/splash/model/app_config_model.dart';
import 'package:islam_portfolio/provider/app_config_respnse.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class AppSettingProvider extends ChangeNotifier {
  late bool themeIsDarkMode=UserDataFromStorage.themeIsDarkMode;
  late int appFontSize=UserDataFromStorage.appSettingFontSize;

  late AppConfigModel appConfig ;
  late final ThemeMode _mode =UserDataFromStorage.themeIsDarkMode?ThemeMode.dark:ThemeMode.light;
  ThemeMode get theMode => _mode;


  setThemeIsDarkMode(bool darkMode){
    themeIsDarkMode=darkMode;
    UserDataFromStorage.setThemeIsDarkMode(darkMode);
    notifyListeners();
  }

  Future getAppConfigResponse() async {
    notifyListeners();
    appConfig = await AppConfigResponse().getAppConfigResponse();
    notifyListeners();
  }

  setAppFontSize(int size,String lang){
    UserDataFromStorage.setAppSettingFontSize(size);
    appFontSize=size;
    notifyListeners();
    if (kDebugMode) {
      print('appFont Size set is $size');
    }
    notifyListeners();
  }

}
