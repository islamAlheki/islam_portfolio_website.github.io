
import 'package:islam_portfolio/helper/connectivity_helpers/connectivity_init_provider.dart';
import 'package:islam_portfolio/pages/side_menu/provider/helper/side_menu_helper.dart';
import 'package:islam_portfolio/pages/splash/provider/helper/splash_provider.dart';
import 'package:islam_portfolio/provider/app_setting_provider.dart';
import 'package:islam_portfolio/provider/loading_provider.dart';

class PublicProviders {
  static late AppSettingProvider appSettingProvider=AppSettingProvider();
  static late SideMenuHelper sideMenuProvider=SideMenuHelper();
  static late LoadingProviderClass loadingProviderClass=LoadingProviderClass();
  static late SplashProvider splashProvider=SplashProvider();
  static late ConnectivityInitProvider connectivityInitProvider=ConnectivityInitProvider();

}
