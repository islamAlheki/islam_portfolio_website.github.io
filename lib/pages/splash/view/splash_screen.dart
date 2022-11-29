import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:islam_portfolio/helper/connectivity_helpers/connectivity_init_provider.dart';
import 'package:islam_portfolio/helper/info_helpers/device_app_helper.dart';
import 'package:islam_portfolio/helper/shared_preference.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/main.dart';
import 'package:islam_portfolio/pages/splash/provider/helper/check_connection_on_lunch.dart';
import 'package:islam_portfolio/pages/splash/provider/helper/splash_provider.dart';
import 'package:islam_portfolio/provider/app_setting_provider.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:provider/provider.dart';

class SplashScreenClass extends StatefulWidget {
  const SplashScreenClass({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SplashClass();
  }
}

class SplashClass extends State<SplashScreenClass> {


  lunchApp()async{
    ColorConfig.appConfig=Provider.of<AppSettingProvider>(IslamPortfolio.navigatorKey.currentState!.overlay!.context,listen: false,);
    await IslamPortfolio.navigatorKey.currentState!.overlay!.context.read<AppSettingProvider>().getAppConfigResponse();
    await IslamPortfolio.navigatorKey.currentState!.overlay!.context.read<AppSettingProvider>().setAppFontSize(UserDataFromStorage.appSettingFontSize, UserDataFromStorage.languageCodeFromStorage);
    await CheckConnectionOnLunch.checkHaveConnectionOnLunch();
  }


  @override
  void initState() {
    super.initState();
    UserDataFromStorage.getData();
    DeviceAppInformation.getDevicePlatform();
    WidgetsBinding.instance!.addPostFrameCallback((_)async{
      if(mounted){
        Provider.of<SplashProvider>(context, listen: false).setIsSplashScreen(splash: true);
        Provider.of<SplashProvider>(context, listen: false).setConnectionCheckedBefore(checked: false);
        await Provider.of<ConnectivityInitProvider>(context, listen: false).initConnectivity();
        lunchApp();
      }
    });
  }


  @override
  void deactivate() async{
    await Provider.of<SplashProvider>(context, listen: false).disposeIsSplashScreen(splash: false);
    super.deactivate();
  }


  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
    final connectivityInitProvider=Provider.of<ConnectivityInitProvider>(context);
    SizeConfig.isDesktop(context);
    SizeConfig.isTablet(context);
    SizeConfig.isMobile(context);

    return  Scaffold(
      backgroundColor: ColorConfig().appbarBackgroundColor(1),
      body: Container(
        height:SizeConfig.height ,
        width: SizeConfig.width,
        color: ColorConfig().appbarBackgroundColor(1),
        child: Visibility(
          visible: !connectivityInitProvider.hasConnection,
          child: Stack(
            alignment: Alignment.center,
            children: [

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // gif
                  SizedBox(
                    width: SizeConfig.height*0.3,
                    height: SizeConfig.height*0.3,
                    child:Lottie.asset(
                      "assets/gif/no_internet2.json",
                      fit: BoxFit.contain,
                    ),
                  ),
                  //text No internet connection
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.height*0.02,left: SizeConfig.height * 0.004635,right: SizeConfig.height * 0.004635),
                    child: Text(
                      'splashLostInternet',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),

              // circles background
              // VerticalLogoWidget(
              //   logoImgSize: SizeConfig.height*0.09,
              //   logoTextSize: SizeConfig.height*0.1,
              // ),

            ],
          ),
        ),
      ),
    );
  }
}

