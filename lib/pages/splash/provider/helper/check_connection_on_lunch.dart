import 'package:islam_portfolio/helper/connectivity_helpers/connectivity_init_provider.dart';
import 'package:islam_portfolio/helper/shared_preference.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/main.dart';
import 'package:islam_portfolio/pages/splash/provider/helper/check_authorize.dart';
import 'package:islam_portfolio/pages/splash/provider/helper/splash_provider.dart';
import 'package:islam_portfolio/provider/app_setting_provider.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

class CheckConnectionOnLunch{

  static checkHaveConnectionOnLunch()async{

    ColorConfig.appConfig=Provider.of<AppSettingProvider>(IslamPortfolio.navigatorKey.currentState!.overlay!.context,listen: false,);
    await IslamPortfolio.navigatorKey.currentState!.overlay!.context.read<AppSettingProvider>().getAppConfigResponse();
    await IslamPortfolio.navigatorKey.currentState!.overlay!.context.read<AppSettingProvider>().setAppFontSize(UserDataFromStorage.appSettingFontSize, UserDataFromStorage.languageCodeFromStorage);

    /// if have connection
    if(IslamPortfolio.navigatorKey.currentState!.overlay!.context.read<ConnectivityInitProvider>().hasConnection){
      // check if login or not
      await CheckAuthorizeUser.checkAuthorize();
    }

    /// no connection
    else{
      await IslamPortfolio.navigatorKey.currentState!.overlay!.context.read<SplashProvider>().setConnectionCheckedBefore(checked: true);
      // FlutterNativeSplash.remove();
    }


  }

}