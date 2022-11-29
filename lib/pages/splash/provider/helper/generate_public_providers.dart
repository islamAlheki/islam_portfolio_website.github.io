import 'package:flutter/cupertino.dart';
import 'package:islam_portfolio/helper/connectivity_helpers/connectivity_init_provider.dart';
import 'package:islam_portfolio/pages/side_menu/provider/helper/side_menu_helper.dart';
import 'package:islam_portfolio/pages/splash/provider/helper/splash_provider.dart';
import 'package:islam_portfolio/provider/app_setting_provider.dart';
import 'package:islam_portfolio/provider/loading_provider.dart';
import 'package:islam_portfolio/provider/public_providers.dart';
import 'package:provider/provider.dart';

class GeneratePublicProviders{

  static generatePublicProvidersOnLunch({required BuildContext context}){
    PublicProviders.appSettingProvider=Provider.of<AppSettingProvider>(context,listen: false,);
    PublicProviders.loadingProviderClass=Provider.of<LoadingProviderClass>(context,listen: false,);
    PublicProviders.sideMenuProvider=Provider.of<SideMenuHelper>(context,listen: false,);
    PublicProviders.splashProvider=Provider.of<SplashProvider>(context,listen: false,);
    PublicProviders.connectivityInitProvider=Provider.of<ConnectivityInitProvider>(context,listen: false,);
  }
}